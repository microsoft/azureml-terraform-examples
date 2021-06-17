# Copyright (c) 2021 Microsoft
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

# Azure Kubernetes Service (not deployed per default)

resource "azurerm_kubernetes_cluster" "aml_aks" {
  count               = var.deploy_aks ? 1 : 0
  name                = "${var.prefix}-aks-${random_string.postfix.result}"
  location            = azurerm_resource_group.aml_rg.location
  resource_group_name = azurerm_resource_group.aml_rg.name
  dns_prefix          = "aks"

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_DS2_v2"
  }
  
  identity {
    type = "SystemAssigned"
  }
  
  provisioner "local-exec" {
    command = "az ml computetarget attach aks -n ${azurerm_kubernetes_cluster.aml_aks[count.index].name} -i ${azurerm_kubernetes_cluster.aml_aks[count.index].id} -g ${var.resource_group} -w ${azurerm_machine_learning_workspace.aml_ws.name}"
  }
  
  depends_on = [azurerm_machine_learning_workspace.aml_ws]
}
