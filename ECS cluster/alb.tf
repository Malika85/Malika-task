resource "aws_alb" "example" {
  name            = "ec2-alb"
  internal        = false
  security_groups = ["sg-0d33d891cd2f4cf0a"]
  subnets         = ["subnet-039da3a423ff49a0a", "subnet-0ba9afdbfdc8cb1a3"]

  tags = {
    Name = "aws-alb"
  }
}