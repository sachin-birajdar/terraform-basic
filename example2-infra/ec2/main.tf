resource "aws_instance" "app" {
  
ami = "ami-02367f873ab738292"

instance_type = "t2.micro"

#security_group_ids = [var.sg]

tags = {
    Name = "terraform instance"
}

}

#variable "sg" {}

output "public_ip" {
  
  value= aws_instance.app.public_ip
}