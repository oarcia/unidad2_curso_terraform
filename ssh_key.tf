resource "aws_key_pair" "key_course" {
  key_name = "aws_key_instance"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDVeaBcBldgqhtctPt/4lnkbzAGFslLypHCEPgnIMBmdocw2a+gouaIONltS745iJrUlv9TEEPkLmItaBYAqY4N+7iHGkfA3ogTqLFh+/G4ektfplv8tvDwUyfEy2No4BieE75tU4Vcgk1opZ2NovLEgH9IB/b9dhGIQoYU1kaY+prxi7aHx/Zb1nE/V8EmEFY33goqjDbHivY+/60Ush3jW+LnEnTE+ng1UK9co7YgT+QtGw+qtrm9dr9MClQKloC7DqvH495KvVX7Cx2ZeKOFnGKS789li2tN7XAXV3y6pW1WFjqz/YpfBzTkQznQPmqUF9BM0g5bDPFIOIJczdNMcdCcvhaCEwTf1wXZFLzvEjP+pY8ft5FUIjiU4fllM5X0c4RFIEAAqyolxjpco2c/np7e81uKfau+XvUQX37/Cm9ASMlur/ZVO3cwuTJeuy91YByHtlJd2Hwzdu9BATbJ3f36Pww4hVQ8x3jjWXqplmiyBzKMxWTac5vuveQpur5rTY8txu5OF+crlOFfjKzz5iesB5Ff58DTzSzJyh+UlnxreJcdE55Ywf4XqBFlp9zUPk7sPdsyuZeCRT33zBJL0kb5izDO30QKRUIZvGQQClgoszJLPYgOEK6NbT7KZqQ1wVrA1T97gIKgGgUdVLkZJ8CLS/lS/DWdLu1vpt308Q=="
}

resource "aws_key_pair" "key_course2" {
    key_name = "aws_key_instance_2"
    public_key = "${file("/home/oscar/Documentos/developer/curso_terraform/keys/class_key.pem.pub")}"
  
}
