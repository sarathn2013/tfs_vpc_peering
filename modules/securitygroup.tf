

# Creating security group for primary vpc public subnet 
resource "aws_security_group" "primary-sg-public" {
  vpc_id = "${aws_vpc.primary-vpc.id}"
  name = "primary-sg-public"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
}

#Creating security group for Primary vpc private subnet
resource "aws_security_group" "primary-sg-private" {
  vpc_id = "${aws_vpc.primary-vpc.id}"
  name = "primary-sg-private"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["10.0.1.0/24"]
  }
  
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["172.30.131.0/24"]
  }

  ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["10.0.1.0/24"]
  }

  ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["172.30.131.0/24"]
  }

}






# Creating security group for secondary vpc public subnet 
resource "aws_security_group" "secondary-sg-public" {
  vpc_id = "${aws_vpc.secondary-vpc.id}"
  name = "secondary-sg-public"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}


# Creating security group for secondary vpc private subnet
resource "aws_security_group" "secondary-sg-private" {
  vpc_id = "${aws_vpc.secondary-vpc.id}"
  name = "secondary-sg-private"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["172.30.131.0/24"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["10.0.1.0/24"]
  }

   ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["172.30.131.0/24"]
  }
  
  ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["10.0.1.0/24"]
  }



}


