module "rg" {
    source = "../Child Module/resource_group"
  resource_group_name = "test-rg"
  resource_group_location ="Central India"
}

module "stg" {
source ="../Child Module/Storage_account"
depends_on = [ module.rg ]
storage_account_name = "teststgpipeline"
location = "Central India"
resource_group_name = "test-rg"
tier = "Standard"
replication_type = "GRS"
}

