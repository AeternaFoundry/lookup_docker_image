output "image_lookup_id" {
  description = "Map of id values across all image_lookup, keyed the same as var.image_lookup except keys with no id are omitted"
  value       = { for k, v in data.docker_image.image_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "image_lookup_name" {
  description = "Map of name values across all image_lookup, keyed the same as var.image_lookup except keys with no name are omitted"
  value       = { for k, v in data.docker_image.image_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "image_lookup_repo_digest" {
  description = "Map of repo_digest values across all image_lookup, keyed the same as var.image_lookup except keys with no repo_digest are omitted"
  value       = { for k, v in data.docker_image.image_lookup : k => v.repo_digest if v.repo_digest != null && length(v.repo_digest) > 0 }
}

