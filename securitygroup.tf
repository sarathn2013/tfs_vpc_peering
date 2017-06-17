

# Creating security group that will have two rules which allow tcp protocol on port 22 and icmp protocol and this will be attached to ec2 instance in the public subnet of primary vpc 
resource "aws_security_group" "primary-sg" {
  vpc_id = "${aws_vpc.primary-vpc.id}"
  name = "primary-allow-ssh"
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
tags {
    Name = "primary-sg"
  }
}


# Creating security group
resource "aws_security_group" "secondary-sg" {
  vpc_id = "${aws_vpc.secondary-vpc.id}"
  name = "secondary-allow-ssh"
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

tags {
    Name = "secondary-sg"
  }
}

