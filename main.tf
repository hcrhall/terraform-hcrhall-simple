resource "null_resource" "this" {
    triggers = {time = timestamp()}
    provisioner "local-exec" {
      command = "echo ${var.generic_input}"
    }
}

module "sub" {
  source = "./modules/sub"
  generic_input = "This is sub"
}
