resource "null_resource" "push_to_registry" {
  triggers = {
    image_id = docker_image.zoo.image_id
  }

  provisioner "local-exec" {
    command = "docker push 000100000/demo:latest" # Replace with your registry URL and image name
  }
}