
# Creating ec2 instance and attaching it to public subnet of the primary vpc
resource "aws_instance" "primary-vpc-public-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  subnet_id = "${aws_subnet.primary-public-1.id}"

  vpc_security_group_ids = ["${aws_security_group.primary-sg-public.id}"]

  key_name = "${aws_key_pair.mykeypair.key_name}"

  tags {
    Name = "primary-vpc-public-instance"
   }
}

# Creating ec2 instance and attaching it to private subnet of the primary vpc
resource "aws_instance" "primary-vpc-private-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  subnet_id = "${aws_subnet.primary-private-1.id}"

  vpc_security_group_ids = ["${aws_security_group.primary-sg-private.id}"]

  associate_public_ip_address = false

  key_name = "${aws_key_pair.mykeypair.key_name}"

  tags {
    Name = "primary-vpc-private-instance"
   }
}






# Creating ec2 instance and attaching it to public subnet of the secondary vpc
resource "aws_instance" "secondary-vpc-public-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  subnet_id = "${aws_subnet.secondary-public-1.id}"

  vpc_security_group_ids = ["${aws_security_group.secondary-sg-public.id}"]

  key_name = "${aws_key_pair.mykeypair.key_name}"
  tags {
    Name = "secondary-vpc-public-instance"
   }
}


# Creating ec2 instance and attaching it to private subnet of the secondary vpc
resource "aws_instance" "secondary-vpc-private-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  subnet_id = "${aws_subnet.secondary-private-1.id}"

  vpc_security_group_ids = ["${aws_security_group.secondary-sg-private.id}"]

  associate_public_ip_address = false

  key_name = "${aws_key_pair.mykeypair.key_name}"
  
  tags {
    Name = "secondary-vpc-private-instance"
   }
}

