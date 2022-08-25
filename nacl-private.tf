resource "aws_network_acl" "StudentPlacement-integration-NACL-private" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  subnet_ids = [ "${aws_subnet.StudentPlacement-integration-private-subnet-1a.id}",
  "${aws_subnet.StudentPlacement-integration-private-subnet-1b.id}",
  "${aws_subnet.StudentPlacement-integration-private-subnet-1c.id}"
   ]
# allow port 22
  ingress {
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.ingressdefaultCIDRblock
  }

  #  ingress {
  # from_port       = 0
  # to_port         = 0
  # protocol        = "-1"
  #   rule_no    = 101
  #   action     = "allow"
  #   cidr_block = var.ingressShared_VPNCIDRblock
  # }

   ingress {
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
    rule_no    = 143
    action     = "allow"
    cidr_block = var.ingressdefaultCIDRblock
  }

  ingress {
  from_port       = 1024
  to_port         = 65535
  protocol        = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = var.ingressdefaultCIDRblock
  }

   ingress {
  from_port       = 1024
  to_port         = 65535
  protocol        = "udp"
    rule_no    = 201
    action     = "allow"
    cidr_block = var.ingressdefaultCIDRblock
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
    Name = "StudentPlacement-integration-NACL-private"
    }
}
