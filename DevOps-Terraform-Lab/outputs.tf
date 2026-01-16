# Output container name
output "container_name" {
  value = docker_container.nginx_container.name
}
