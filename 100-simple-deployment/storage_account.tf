# Copyright (c) 2021 Microsoft
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

# Default Storage Account for Azure Machine Learning

resource "azurerm_storage_account" "aml_sa" {
  name                     = "${var.prefix}sa${random_string.postfix.result}"
  location                 = azurerm_resource_group.aml_rg.location
  resource_group_name      = azurerm_resource_group.aml_rg.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}