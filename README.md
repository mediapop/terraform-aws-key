# Terraform AWS Key

*This terraform module is maintained by [Media Pop](https://www.mediapop.co), a software consultancy. Hire us to solve your DevOps challenges.*

Simplest way of putting a SSH key pair on AWS.

# Usage


```hcl
module "key" {
  source = "mediapop/key/aws"
}

resource "aws_instance" "instance" {
  key_name = "${module.key.name}"
  // ...
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| path | The path to the private SSH key | string | ~/.ssh/id_rsa | no |

## Outputs

| Name | Description | Type |
|------|-------------|:----:|
| name | The AWS key name | string |

## License

MIT
