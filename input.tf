variable "path" {
  default     = "~/.ssh/id_rsa"
  description = "Path to the private SSH key."
}

locals {
  private_key_path = pathexpand(var.path)
}
