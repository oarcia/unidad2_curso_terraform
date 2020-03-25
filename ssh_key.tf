resource "aws_key_pair" "key_course" {
  key_name = "aws_key_instance"
  public_key = ""
}

resource "aws_key_pair" "key_course2" {
    key_name = "aws_key_instance_2"
    public_key = "${file("")}"
  
}
