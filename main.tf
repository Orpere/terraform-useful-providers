resource "random_pet" "example" {
  length = 2
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo ${random_pet.example.id}"
  }

}