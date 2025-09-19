resource "docker_container" "nginx-app_net" {
  for_each = var.nginx_external_port
  
  name = "nginx-${each.key}"
  image = "nginx:stable-alpine3.21-perl"

   command = [
    "-text","Hola mundo desde ${each.key}"
  ]

  ports {
    internal = 80
    external = each.value
  }

}