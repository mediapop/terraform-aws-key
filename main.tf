data "external" "external" {
  program = ["./generate.sh", "${pathexpand(var.path)}"]
}

resource "aws_key_pair" "key" {
  public_key = "${data.external.external.result.public_key}"
}
