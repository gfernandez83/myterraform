resource "aws_opsworks_stack" "sample" {
  name                              = "my first stack"
  region                            = "ap-northeast-1"
  service_role_arn                  = "${aws_iam_role.opsworks.arn}"
  default_instance_profile_arn      = "${aws_iam_instance_profile.opsworks.arn}"

  tags = {
    Name = "first-stack"
  }

  custom_json = <<EOT
  {
    "foobar" : {
      "Version" : "1.0.0"
    }
  }
  EOT
}