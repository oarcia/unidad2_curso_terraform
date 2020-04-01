provider "aws" {
  version = "~> 2.0"  
  region  = "${var.region}"
}

#creando la vpc
resource "aws_vpc" "example" {
  cidr_block = "${var.block_cidr}"
  enable_dns_hostnames = true
  tags = {
      Name = "vpc_public"
  }
}

resource "aws_subnet" "subnet_course" {
  vpc_id = "${aws_vpc.example.id}"
  cidr_block = "${var.subnet_block_1}"
  map_public_ip_on_launch = true
  availability_zone = "${var.avalability_zone_a}"

  tags = {
    Name = "Subnet_course_1"
  }
}
#subnet de desafio
resource "aws_subnet" "subnet_course2" {
  vpc_id = "${aws_vpc.example.id}"
  cidr_block = "${var.subnet_block_2}"
  map_public_ip_on_launch = true
  availability_zone = "${var.avalability_zone_b}"

  tags = {
    Name = "Subnet_course_2-2b"
  }
}
#subnet de desafio
resource "aws_subnet" "subnet_course3" {
  vpc_id = "${aws_vpc.example.id}"
  cidr_block = "${var.subnet_block_3}"
  map_public_ip_on_launch = true
  availability_zone = "${var.avalability_zone_c}"

  tags = {
    Name = "Subnet_course_3-2c"
  }
}


resource "aws_internet_gateway" "gw_course" {
  vpc_id = "${aws_vpc.example.id}"
  tags = {
    Name = "gtw_course"
  }
}

resource "aws_route_table" "rtb_course" {
  vpc_id = "${aws_vpc.example.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw_course.id}"
  }  
    tags = {
      Name = "rtbl_course"
    }
}

resource "aws_route_table_association" "rtbl_course_subnet_1" {
  subnet_id = "${aws_subnet.subnet_course.id}"
  route_table_id = "${aws_route_table.rtb_course.id}"
}
#asociacion para el desafio
resource "aws_route_table_association" "rtbl_course_subnet_2" {
  subnet_id = "${aws_subnet.subnet_course2.id}"
  route_table_id = "${aws_route_table.rtb_course.id}"
}
#asociacion para el desafio
resource "aws_route_table_association" "rtbl_course_subnet_3" {
  subnet_id = "${aws_subnet.subnet_course3.id}"
  route_table_id = "${aws_route_table.rtb_course.id}"
}




