

resource "aws_security_group" "sg" {

    name = "robo"
    description = "allow all"




dynamic "ingress" {
  
    for_each = var.ingress

    content {

        from_port = ingress.value["from_port"]
        to_port = ingress.value["to_port"]
        cidr_blocks = ingress.value["cidr_blocks"]
        protocol = ingress.value["protocol"]
        
    }

}

# egress = Outbound means outgoing traffic from your EC2 instances. To connect internet or any browser you have to add outbound rule
egress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}


tags = {

    default = "robo"

}



}