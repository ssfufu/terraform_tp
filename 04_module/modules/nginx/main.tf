resource "docker_image" "this" {
  name         = var.image_name
  keep_locally = true
}

resource "docker_container" "this" {
  name    = var.docker_container_name
  image   = docker_image.this.image_id

  ports {
    external = var.container_port
    internal = 80
  }
}
