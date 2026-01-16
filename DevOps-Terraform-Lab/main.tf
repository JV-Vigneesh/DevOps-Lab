# Pull nginx image from Docker Hub
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

# Create nginx container using the pulled image
resource "docker_container" "nginx_container" {
  name  = "terraform-nginx"

  # Correct attribute to reference docker image
  image = docker_image.nginx_image.image_id

  ports {
    internal = 80
    external = 8080
  }
}
