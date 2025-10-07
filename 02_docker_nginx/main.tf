terraform {
 required_providers {
   docker = {
     source  = "kreuzwerker/docker"
     version = "3.6.2"
   }
 }
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  name    = "nginx"
  image   = docker_image.nginx.image_id

  ports {
    external = 8080
    internal = 80
  }
}
