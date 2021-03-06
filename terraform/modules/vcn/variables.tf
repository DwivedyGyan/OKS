variable "vcn_cidr_block" {
  type = string
  default = "10.10.30.0/24"
}

variable "compartment_id" {
  type = string
}

variable "vcn_display_name" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
  default = "10.10.30.0/28"
}