resource "docker_container" "redis" {
  name  = "redis"
  image = "redis:8.2.1-alpine"
  ports {
    internal = 6379
    external = 6379
  }
}

resource "docker_container" "postgres" {
  name  = "postgres"
  image = "postgres:13-alpine3.22"
  
  ports {
    internal = 5432
    external = 5432
  }
}