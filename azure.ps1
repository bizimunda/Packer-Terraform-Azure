# Install Azure CLI on Windows https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli
# Install Packer https://www.packer.io/downloads

# 1 Create resource group
az group create -n myResourceGroup -l eastus --tags 'contact=Azure' 'customer=Azure'

# 2 Get subscription id
az account show --query "{ subscription_id: id }"

# 3 add Contributor role
az ad sp create-for-rbac --role Contributor --scopes /subscriptions/059c1847-bbc4-4585-ac6d-3eef6830da49 --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"

# 4 Paste client id, secret id, tenant id, subscription_id into .json file
"subscription_id": "",
"client_id": "",
"client_secret": "",
"tenant_id": "",

# 5 Build image
packer build ubuntu.json


# 6 Paste client id, secret id, tenant id, subscription_id into main.tf file
"subscription_id": "",
"client_id": "",
"client_secret": "",
"tenant_id": "",

# 7 paste subscription id into the output section
subscription_id

# 8 Execute terraform commands one by one
terraform init
terraform validate
terraform apply

# 9 copy the pubic ip address and see if ngnix is working or not 

