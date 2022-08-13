resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = "t2.micro"
    associate_public_ip_address = true 
    subnet_id = "subnet-0c391f9678454b79f"
    vpc_security_group_ids = [var.sg_id]

    tags = {
        name = "netflix-web-server"
    }    
}
