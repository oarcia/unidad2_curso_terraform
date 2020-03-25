# resource "aws_iam_group" "administrators" {
#   name = "admin_TI"
# }

# resource "aws_iam_policy_attachment" "policy_admin" {
#   name = "admin_attach"
#   groups = ["${aws_iam_group.administrators.name}"]
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
#   #la mejor manera de verificar el arn de las politicas es desde la consola es decir a estos usuarios
#   #como son admin les daremos full access
# }
# #gregamos dos usuarios que tendran estos privilegios como admin
# resource "aws_iam_user" "admin_user_1" {
#   name = "admin_t1"
# }

# resource "aws_iam_user" "admin_user_2" {
#   name = "admin_t2"
# }

# resource "aws_iam_group_membership" "administrators-TI" {
#   name = "admintrator_user"
#   users = [
#       "${aws_iam_user.admin_user_1.name}",
#       "${aws_iam_user.admin_user_2.name}",
#   ]
#   group = "${aws_iam_group.administrators.name}"
# }

# resource "aws_iam_access_key" "key_admin1" {
#     user = "${aws_iam_user.admin_user_1.name}"
# }

# resource "aws_iam_access_key" "key_admin2" {
#     user = "${aws_iam_user.admin_user_2.name}"
# }

# #para sacar el secret key para que este completa
# output "admin1_secret_key" {
#   value = "${aws_iam_access_key.key_admin1.secret}"
# }
# output "admin1_acces_key" {
#   value = "${aws_iam_access_key.key_admin1.id}"
# }

# #admin2
# output "admin2_secret_key" {
#   value = "${aws_iam_access_key.key_admin2.secret}"
# }
# output "admin2_acces_key" {
#   value = "${aws_iam_access_key.key_admin2.id}"
# }