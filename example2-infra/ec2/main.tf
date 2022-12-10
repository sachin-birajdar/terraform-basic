resource "aws_instance" "app" {
  
ami = data.aws_ami.myami.id

instance_type = "t2.micro"

vpc_security_group_ids = [var.sg]

tags = {
    Name = "terraform instance"
}

}

variable "sg" {}

output "public_ip" {
  
  value= aws_instance.app.public_ip
}