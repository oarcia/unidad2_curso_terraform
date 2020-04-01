variable "region" {
  description = "Region de infra empresa es ohio"
  #default = "us-west-2"
}


variable "block_cidr" {
  description = "Rango de ips"
  #default = "10.0.0.0/16"
}

variable "subnet_block_1" {
  description = "subnet1 block cidr_1"
  #default = "10.0.15.0/24"
}

variable "subnet_block_2" {
  description = "subnet block cidr2"
  #default = "10.0.20.0/24"
}

variable "subnet_block_3" {
  description = "subnet block cidr3"
  #default = "10.0.25.0/24"
}


variable "avalability_zone_a" {
    description="zona subnet a"
   # default = "us-west-2a"
}

variable "avalability_zone_b" {
    description="zona subnet b"
    #default = "us-west-2b"
}

variable "avalability_zone_c" {
    description="zona subnet c"
    #default = "us-west-2c"
}

variable "ami_id" {
  description = "imagen amazon linux"
  #default = "ami-0ce21b51cb31a48b8"
}
