resource "aws_network_acl" "StudentPlacement-integration-NACL-public" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  subnet_ids = [ "${aws_subnet.StudentPlacement-integration-public-subnet-1a.id}",
  "${aws_subnet.StudentPlacement-integration-public-subnet-1b.id}",
  "${aws_subnet.StudentPlacement-integration-public-subnet-1c.id}"
   ]
# allow port 22
  ingress {
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.destinationCIDRblock

  }

# allow egress ephemeral ports
  egress {

    rule_no    = 100
    action     = "allow"
    cidr_block = var.destinationCIDRblock
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
  }

  
tags = {
    Name = "StudentPlacement-integration-NACL"
    }
}