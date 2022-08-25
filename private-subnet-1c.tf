resource "aws_subnet" "StudentPlacement-integration-private-subnet-1c" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  cidr_block = var.subnetCIDRblock-private-c
  availability_zone = var.availabilityzone-c

  tags = {
    Name = "StudentPlacement-integration-private-subnet-1c"
  }
}

resource "aws_route_table" "StudentPlacement-integration-private-subnet-1c-router" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.StudentPlacement-integration-nat-Gateway.id}"
  }

   tags = {
   Name = "StudentPlacement-integration-private-subnet-1c-router"
  }
}

resource "aws_route_table_association" "StudentPlacement-integration-private-1c-association" {
  subnet_id      = "${aws_subnet.StudentPlacement-integration-private-subnet-1c.id}"
  route_table_id = "${aws_route_table.StudentPlacement-integration-private-subnet-1c-router.id}"
}
