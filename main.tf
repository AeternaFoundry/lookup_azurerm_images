data "azurerm_images" "images_lookup" {
  for_each = var.images_lookup

  resource_group_name = each.value.resource_group_name
  tags_filter         = each.value.tags_filter
}

