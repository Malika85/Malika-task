resource "aws_instance" "web" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"

  tags = {
    Name = "nginx-web-server"
  }
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
  EOF

}

git config --global  user.name    Malika85
git config --global  user.email   malikakh0619@gmail.com