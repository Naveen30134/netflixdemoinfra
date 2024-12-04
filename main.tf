provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0166fe664262f664c"
instance_type = "t2.medium"
key_name = "babu"
vpc_security_group_ids = ["sg-018100971f03ffabf"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1",  "Monitoring server"]
}
