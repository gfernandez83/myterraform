resource "aws_opsworks_stack" "sample" {
  name                              = "my first stack"
  region                            = "ap-northeast-1"
  service_role_arn                  = "arn:aws:iam::x:role/service-role/aws-opsworks-ec2-role"
  default_instance_profile_arn      = "arn:aws:iam::x:instance-profile/aws-opsworks-ec2-role"

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