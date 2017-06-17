
# Creating ec2 instance and attaching it to public subnet of the primary vpc
resource "aws_instance" "primary-vpc-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  subnet_id = "${aws_subnet.primary-public-1.id}"

  vpc_security_group_ids = ["${aws_security_group.primary-sg.id}"]

  key_name = "${aws_key_pair.mykeypair.key_name}"
  tags {
    Name = "primary-vpc-instance"
   }
}





# Creating ec2 instance and attaching it to public subnet of the secondary vpc
resource "aws_instance" "secondary-vpc-instance" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  subnet_id = "${aws_subnet.secondary-public-1.id}"

  vpc_security_group_ids = ["${aws_security_group.secondary-sg.id}"]

  key_name = "${aws_key_pair.mykeypair.key_name}"
  tags {
    Name = "secondary-vpc-instance"
   }
}


