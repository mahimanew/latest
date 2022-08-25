resource "aws_subnet" "StudentPlacement-integration-connectivity-subnet-1c" {
  vpc_id     = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-connectivity-c
  availability_zone = var.availabilityzone-c

  tags = {
    Name = "StudentPlacement-integration-connectivity-subnet-1c"
  }
}
