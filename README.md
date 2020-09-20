# Terraform Configs for Windows VM with Visual Studio in Azure

There are times when we might need to quickly get hold of Visual Studio development environment while only having Linux based system. Azure provides pre-baked Windows virtual machines with Visual Studio installed. This repository contains two Terraform configuration for provisioning such environments:

- [bastion](bastion/README.md) - the VM is within internal network and only accessable through Bastion using RDP via WEB client.
- [public-ip](public-op/README.md) - the VM has a public IP assigned, but access is limited only to a clients' public IP.

## Requirements

- Terraform
- Azure CLI

## References

- [Azure Terraform Provider](https://www.terraform.io/docs/providers/azurerm/index.html)
- [Azure Terraform Examples](https://github.com/terraform-providers/terraform-provider-azurerm/tree/master/examples)
- [Install the Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
