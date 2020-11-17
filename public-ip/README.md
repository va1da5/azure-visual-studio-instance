# Windows Virtual Machine with a Public IP Address

Access is being limited by Azure Network Security Group

## Variables

```bash
# In order to provide values to the Terraform variables use the following
export TF_VAR_admin_username=$(whoami)
export TF_VAR_admin_password=$(openssl rand -base64 12)
# Only the defined IP is going to be allowed to access the server
export TF_VAR_client_public_ip=$(curl -s ifconfig.me)
```

## FreeRDP

Connect with FreeRDP

```bash
# Find public IP address using Terraform
terraform refresh

# Initiates RDP connection with mounted volume
xfreerdp +nego +sec-rdp +sec-tls +sec-nla +clipboard \
  /u:$TF_VAR_admin_username \
  /p:$TF_VAR_admin_password \
  /drive:home,/home/$TF_VAR_admin_username \
  /size:1180x708 \
  /v:$(terraform output server_public_ip)

# Initiates RDP connection with mounted volume and full screen on selected monitor
#   Use [Ctrl+Atl+Enter] to toggle between full screen and application views
xfreerdp +nego +sec-rdp +sec-tls +sec-nla +clipboard \
  /u:$TF_VAR_admin_username \
  /p:$TF_VAR_admin_password \
  /drive:home,/home/$TF_VAR_admin_username \
  /f /monitors:0 \
  /v:$(terraform output server_public_ip)
```
