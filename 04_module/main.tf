module "nginx_mod" {
  source	= "./modules/nginx"
  docker_container_name = "nginx1"
  container_port	= 10001
  image_name = "nginx:latest"
}

module "nginx_mod_2" {
  source	= "./modules/nginx"
  docker_container_name = "nginx2"
  container_port	= 10002
  image_name = "nginx:latest"
}  
