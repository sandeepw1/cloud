resource "local_file" "index1" {
  content  = "This site is under construction!!"
  filename = "${path.module}/index.html"
}

#resource "local_sensitive_file" "index1" {
#  content  = "password@123"
#  filename = "/home/admin/pass.txt"
#}

resource "local_sensitive_file" "index2" {
  content  = "admin@123"
  filename = "/home/admin/tf-demo/pass1.txt"
}

