resource "aws_vpc" "task" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "task-vpc"
  }
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.task.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "task-public-subnet"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.task.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "task-private-subnet"
  }
}