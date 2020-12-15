resource "null_resource" "this" {
    triggers = {time = timestamp()}
    provisioner "local-exec" {
      command = "echo ${var.generic_input}"
    }
}
