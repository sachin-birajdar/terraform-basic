resource "aws_instance" "Web" {
  
ami = "ami-02367f873ab738292"

instance_type =  "t2.micro"

vpc_security_group_ids = [aws_security_group.allow_ssh.id]

tags = {
    Name = "terraform instance"
}

}

output "private_ip" {
    value = aws_instance.Web.private_dns
   
}

#create security group
resource "aws_security_group" "allow_all" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}