locals {
  "private_key_path" = "${pathexpand(var.path)}"
}

data "external" "external" {
  program = ["${join("", list(path.module, "/generate.sh"))}", "${local.private_key_path}"]
}

resource "aws_key_pair" "key" {
  public_key = "${data.external.external.result.public_key}"
}
