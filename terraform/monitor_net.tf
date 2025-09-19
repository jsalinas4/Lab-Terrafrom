resource "docker_container" "grafana" {
  name  = "grafana"
  image = "grafana/grafana:10.4.1"
  ports {
    internal = 3000
    external = 3000
  }
}