data "docker_image" "image_lookup" {
  for_each = var.image_lookup

  name = each.value.name
}

