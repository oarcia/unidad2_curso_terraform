resource "aws_security_group" "securitygroup_course" {
  name = "sgcourse"
  vpc_id = "${aws_vpc.example.id}"
  description = "ssh22 and ping 23"

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port = "-1"
      to_port = "-1"
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
  }  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
      Name = "sg_ssh"
  }
}

resource "aws_security_group" "demo-web" {
  name = "sg_web"
  vpc_id = "${aws_vpc.example.id}"
  description = "security group para app web"
    #para el acceso via http
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    #dsl
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    #salida de trafico
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
      Name = "security_group_web"
  }
}