data "azurerm_subscription" "current" {
}
data "azurerm_management_group" "parent"{
    name = var.name
}
/*




resource "azurerm_management_group" "test" {
  #display_name = "ParentGroup"

  #subscription_ids = [
   # data.azurerm_subscription.current.subscription_id,
  #]
}*/
resource "azurerm_management_group" "mg_group" {
  display_name               = var.display_name
  #id = azurerm_management_group.example_child.display_name
  parent_management_group_id = data.azurerm_management_group.parent.id

   #subscription_ids = [
   # data.azurerm_subscription.current.subscription_id,
  #]
  # other subscription IDs can go here
}
 