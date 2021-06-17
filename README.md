# Azure Machine Learning Enterprise Terraform Examples

This repo shows several examples for rolling out complete Azure Machine Learning enterprise enviroments via Terraform.

![Deployed resources](media/architecture_200.png "Deployed resources")

Depending on the scneario you want to roll out, this includes the following resources:

* Azure Machine Learning Workspace (optionally with Private Link)
* Azure Storage Account (optionally with VNET binding (using Service Endpoints) and Private Link for Blob and File)
* Azure Key Vault (optionally with VNET binding (using Service Endpoints) and Private Link)
* Azure Container Registry (optionally with VNET binding and Private Link)
* Azure Application Insights
* Virtual Network (optional)
* Jumphost (Windows) with Bastion for easy access to the VNET (optional)
* Compute Cluster (in VNET)
* Compute Instance (in VNET)
* Azure Kubernetes Service (optional)

## Instructions

Make sure you have the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) and the Azure Machine Learning CLI extension installed (`az extension add -n azure-cli-ml`).

1. Navigate to the scenario folder you want to deploy
1. Copy `terraform.tfvars.example` to `terraform.tfvars`
1. Update `terraform.tfvars` with your desired values
1. Run Terraform
    ```console
    $ cd <scenario you want to deply>
    $ terraform init
    $ terraform plan
    $ terraform apply
    ```

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
