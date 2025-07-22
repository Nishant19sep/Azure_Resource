resource "azurerm_storage_account" "stg" {
  name = var.storage_account_name
  location= var.location
  resource_group_name = var.resource_group_name
  account_tier = var.tier
  account_replication_type = var.replication_type
}