resource "aws_instance" "ec2_course" {
  ami = "${var.ami_id}"
  instance_type = "t2.micro"
  #count = 2
  associate_public_ip_address = true
  subnet_id = "${aws_subnet.subnet_course.id}"
  vpc_security_group_ids = ["${aws_security_group.demo-web.id}","${aws_security_group.securitygroup_course.id}"]
  private_ip = "10.0.15.12"
  key_name = "${aws_key_pair.key_course2.id}"

  user_data = <<-EOF
            #!/bin/bash
            sudo yum update
            sudo amazon-linux-extras install nginx1.12 -y
            sudo service nginx start
            EOF

  tags = {
      Name = "ec2_testing"
      Owner = "devops_company"
      Env = "Continuos_Testing"
  }
  
}

#resource "aws_instance" "ec2_course_2" {
#  ami = "ami-0ce21b51cb31a48b8"
#  instance_type = "t2.micro"
#  #count = 2
#  associate_public_ip_address = true
#  subnet_id = "${aws_subnet.subnet_course.id}"
#  vpc_security_group_ids = ["${aws_security_group.demo-web.id}","${aws_security_group.securitygroup_course.id}"]
#  private_ip = "10.0.15.14"
#  key_name = "${aws_key_pair.key_course.id}"
#
#  user_data = "${file("user_data.sh")}"
#  tags = {
#      Name = "ec2_production"
#      Owner = "server_producction"
#      Env = "producction"
#  }
#  
#}