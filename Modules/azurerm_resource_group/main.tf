
resource "azurerm_resource_group" "ChildRG" {
  name     = var.ChildRG
  location = var.ChildRGlocation
}
resource "azurerm_storage_account" "storage_account" {
  depends_on = [azurerm_resource_group.ChildRG]
  name                     = var.storage_account
  resource_group_name      = var.ChildRG
  location                 = var.ChildRGlocation
  account_tier             = "Standard"
  account_replication_type = "GRS"
}