variable "container_port" {
  description	= "Port exposé par Docker"
  type		= number
  default	= 9090
}

variable "docker_container_name" {
  description   = "Nom du conteneur docker"
  type          = string
}

variable "image_name" {
  description   = "Image du conteneur docker"
  type          = string
}
