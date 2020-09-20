# Windows Virtual Machine with a Public IP Address

Access is being limited by Azure Network Security Group

## Variables

```bash
# In order to provide values to the Terraform variables use the following
export TF_VAR_admin_username=john
export TF_VAR_admin_password=Sup3r_S3cr3t!
# Only the defined IP is going to be allowed to access the server
export TF_VAR_client_public_ip=1.1.1.1
```

## FreeRDP

Connect with FreeRDP

```bash
# Find public IP address using Terraform
terraform refresh

# Initiates RDP connection with mounted volume
xfreerdp +nego +sec-rdp +sec-tls +sec-nla \
  /u:<username>\
  /size:1180x708 \
  /drive:home,/home/<username> \
  /v:<ip-address>
```
