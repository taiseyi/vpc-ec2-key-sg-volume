resource "aws_instance" "server1" {
    ami = "ami-071226ecf16aa7d96"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.pusub1.id
    vpc_security_group_ids = [ aws_security_group.web_server_sg.id ]
    key_name = aws_key_pair.key1.key_name
    user_data = ("setup.sh")

    tags = (
        Name = "Terraform_instance"
    )
  
}