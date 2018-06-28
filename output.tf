output "name" {
  value       = "${aws_key_pair.key.key_name}"
  description = "The name of the key."
}

output "private_key_path" {
  value = "${local.private_key_path}"
}
