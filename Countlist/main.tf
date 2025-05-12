resource "azurerm_resource_group" "resource_group" {
  #for_each = toset(var.resource_group)
  #name     = each.key
  count = length(var.resource_group)
  name = var.resource_group[count.index]
  location = var.resource_loaction
}
