resource "docker_container" "kishore" {
  name  = "checking"
  image = docker_image.zoo.image_id

  ports {
    internal = "80"
    external = "9000"
  }
}