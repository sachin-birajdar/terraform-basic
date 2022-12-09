resource "aws_instance" "Web" {
  
ami = "ami-02367f873ab738292"

instance_type =  "t2.micro"

tags = {
    Name = "this is sample terraform instance"
}

}

output "private_ip" {
    value = aws_instance.Web.private_dns
    value = aws_instance.Web.private_ip
}