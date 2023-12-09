output "public_subnet_id" {
 value = "${aws_subnet.Public_subnet.id}"
}

output "private_subnet_id" {
 value = "${aws_subnet.Private_subnet.id}"
}
