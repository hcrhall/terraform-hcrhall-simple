resource "null_resource" "this" {
    triggers = {time = timestamp()}
    provisioner "local-exec" {
      command = "echo ${var.generic_input}"
    }
}

module "child" {
  source = "github.com/hcrhall/terraform-hcrhall-simple"
  generic_input = "This is child"
}