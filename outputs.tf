output "images_lookup_id" {
  description = "Map of id values across all images_lookup, keyed the same as var.images_lookup"
  value       = { for k, v in data.azurerm_images.images_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "images_lookup_images" {
  description = "Map of images values across all images_lookup, keyed the same as var.images_lookup"
  value       = { for k, v in data.azurerm_images.images_lookup : k => v.images if v.images != null && length(v.images) > 0 }
}
output "images_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all images_lookup, keyed the same as var.images_lookup"
  value       = { for k, v in data.azurerm_images.images_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "images_lookup_tags_filter" {
  description = "Map of tags_filter values across all images_lookup, keyed the same as var.images_lookup"
  value       = { for k, v in data.azurerm_images.images_lookup : k => v.tags_filter if v.tags_filter != null && length(v.tags_filter) > 0 }
}

