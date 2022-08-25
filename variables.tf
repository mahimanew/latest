variable "access_key" {
  default = "AKIAX5X5QY6HVTRYXDYS"
}

variable "secret_key" {
  default = "TcxfoM6v0gZBQBsOCCo4iYAY2IhQhhd8ZIg06UbL"
}

variable "region" {                
 default = "us-east-2"
}

variable "availabilityzone-a" {
        default = "us-east-2a"
}
variable "availabilityzone-b" {
        default = "us-east-2b"
}

variable "availabilityzone-c" {
        default = "us-east-2c"
}

variable "instanceTenancy" {
 default = "default"
}
variable "dnsSupport" {
 default = true
}
variable "dnsHostNames" {
        default = true
}
variable "vpcCIDRblock" {
 type = string
 default = "172.24.0.0/22"
}

variable "subnetCIDRblock-public-a" {
       type = string
       default = "172.24.1.0/26"
}


variable "subnetCIDRblock-public-b" {
        type = string
        default = "172.24.1.64/26"
}

variable "subnetCIDRblock-public-c" {
        type = string
        default = "172.24.1.128/26"
}

variable "subnetCIDRblock-private-a" {
        type = string
        default = "172.24.2.0/25"
}

variable "subnetCIDRblock-private-b" {
        type = string
        default = "172.24.3.0/25"
}

variable "subnetCIDRblock-private-c" {
        type = string
        default = "172.24.2.128/25"
}

variable "subnetCIDRblock-connectivity-a" {
        type = string
        default = "172.24.0.128/27"
}

variable "subnetCIDRblock-connectivity-b" {
        type = string
        default = "172.24.0.160/27"
}

variable "subnetCIDRblock-connectivity-c" {
        type = string
        default = "172.24.0.192/27"
}

variable "subnetCIDRblock-restricted-a" {
        type = string
        default = "172.24.3.128/27"
}

variable "subnetCIDRblock-restricted-b" {
        type = string
        default = "172.24.3.160/27"
}

variable "subnetCIDRblock-restricted-c" {
        type = string
        default = "172.24.3.192/27"
}

# variable "ingressrestrictedNACLCIDRblock" {
#         type = string
#         default = "0.0.0.0/0"
# }

# variable "ingressrestrictedNACLCIDRblock-two" {
#         type = string
#         default = "TF_VAR_ingressrestrictedNACLCIDRblock_two"
# }

variable "destinationCIDRblock" {
        type = string
        default = "0.0.0.0/0"
}
variable "ingressCIDRblock" {
        type = string
        default = "0.0.0.0/0"
}

variable "ingressdefaultCIDRblock" {
        type = string
        default = "0.0.0.0/0" 
}

# variable "ingressShared_VPNCIDRblock" {
#         type = string
#         default = "TF_VAR_ingreShared_VPNCIDRblock"
# }

# variable "ingressPostgreCIDRblock" {
#         type = string
#         default = "TF_VAR_ingressPostgreCIDRblock"
# }


variable "mapPublicIP" {
        type = string
        default = false
}

variable "mapPrivateIP" {
        default = false
}

variable "CostCenter" {
 default = "StudentPlacement"
}

variable "BusinessUnit" {
 default = "AWSInfrastructure"
}

variable "Product" {
 default = "AWSIntegration"
}

variable "DataSensitivity" {
 default = "Yes"
}




