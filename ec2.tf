resource "aws_instance" "public_ec2" {
  count                       = length(var.subnet_cidr)
  ami                         = var.ami_id # us-west-2
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = element(aws_subnet.public_subnet.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "${var.vpc_name}-ec2-${count.index}"
  }
}