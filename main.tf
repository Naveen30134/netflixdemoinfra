provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-04681163a08179f28"
instance_type = "t2.medium"
key_name = "babu"
vpc_security_group_ids = ["sg-018100971f03ffabf"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1",  "Monitoring server","tomcat-2"]
}
