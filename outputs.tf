output "image_lookup_id" {
  description = "Map of id values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.docker_image.image_lookup : k => v.id }
}
output "image_lookup_name" {
  description = "Map of name values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.docker_image.image_lookup : k => v.name }
}
output "image_lookup_repo_digest" {
  description = "Map of repo_digest values across all image_lookup, keyed the same as var.image_lookup"
  value       = { for k, v in data.docker_image.image_lookup : k => v.repo_digest }
}

