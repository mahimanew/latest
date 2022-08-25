resource "aws_network_acl" "StudentPlacement-integration-NACL-restricted" {
  vpc_id = "${aws_vpc.StudentPlacement-integration.id}"
  subnet_ids = [ "${aws_subnet.StudentPlacement-integration-restricted-subnet-1a.id}",
  "${aws_subnet.StudentPlacement-integration-restricted-subnet-1b.id}",
  "${aws_subnet.StudentPlacement-integration-restricted-subnet-1c.id}"
   ]
# allow port 22

# ingress {
#   from_port       = 0
#   to_port         = 0
#   protocol        = "-1"
#     rule_no    = 110
#     action     = "allow"
#     cidr_block = var.ingressrestrictedNACLCIDRblock

#   }

  # ingress {
  # from_port       = 0
  # to_port         = 0
  # protocol        = "-1"
  #   rule_no    = 120
  #   action     = "allow"
  #   cidr_block = var.ingressrestrictedNACLCIDRblock-two

  # }


# ingress {
#   from_port       = 5432
#   to_port         = 5432
#   protocol        = "tcp"
#     rule_no    = 200
#     action     = "allow"
#     cidr_block = var.ingressPostgreCIDRblock

#   }

  
  

  
# allow egress ephemeral ports
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
    Name = "StudentPlacement-integration-NACL-restricted"
    }
}