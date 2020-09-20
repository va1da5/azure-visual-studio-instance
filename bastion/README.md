# Windows Virtual Machine Accessible via Bastion

The Azure Bastion service is a new fully platform-managed PaaS service that you provision inside your virtual network. It provides secure and seamless RDP/SSH connectivity to your virtual machines directly in the Azure portal over TLS. When you connect via Azure Bastion, your virtual machines do not need a public IP address. However, it is worth noting, that provided WEB client does not allow to share local directories/files with the virtual machine instances.

## Variables

```bash
# In order to provide values to the Terraform variables use the following
export TF_VAR_admin_username=bob
export TF_VAR_admin_password=Sup3r_S3cr3t!
```

## References

- [What is Azure Bastion?](https://docs.microsoft.com/en-us/azure/bastion/bastion-overview)
- [Connect to a Windows virtual machine using Azure Bastion](https://docs.microsoft.com/en-us/azure/bastion/bastion-connect-vm-rdp#:~:text=Open%20the%20Azure%20portal.,tab%20is%20active%20by%20default.)
