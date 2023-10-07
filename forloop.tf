# for each perform like iterating all the values 


resource "aws_instance" "foreach"{
    for_each = var.instances
    ami =  var.ami_id
    instance_type = each.value

    tags = {


        Name = each.key
    }
}


# output "eachfor" {
  

#   value = aws_instance.roboshop
# } 

 resource "aws_route53_zone" "public" {
         name = var.hosted_zone

}

resource "aws_route53_record" "records"{

    for_each = aws_instance.foreach
    name = "${each.key}.${var.hosted_zone}"
    zone_id = aws_route53_zone.public.zone_id
   
    type = "A"
    ttl = 1
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]


}
