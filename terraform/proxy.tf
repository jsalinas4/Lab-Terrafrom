resource "docker_container" "proxy" {
    name  = "nginx-proxy"
    image = "nginx:stable-perl"
    
    ports {
        internal = 80
        external = 80
    }
    
  
}