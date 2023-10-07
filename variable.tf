variable "ami_id" {

    type = string

   default =  "ami-03265a0778a880afb"

}


variable "instances" {

    type = map 

     default =  {

      cart = "t2.micro"
      redis = "t2.micro"
      payment = "t2.micro"
      shipping = "t2.micro"
      mysql = "t2.micro"
      web = "t2.micro"
      rabbitmq = "t2.micro"
      catalogue = "t2.micro"
      user = "t2.micro"
      mongodb = "t2.micro"

    }      

}


variable "hosted_zone"{

    default = "saidev.world"
}


# ingress = Inbound means incoming traffic coming to your EC2 instances.


variable "ingress" {
    type = list
    default = [
        {
  
    from_port = 80
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp" #it allows all
},

{
    
    from_port = 443
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp" # it allows all

},

{
    from_port = 22
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp" # it allows all

}

]


}

