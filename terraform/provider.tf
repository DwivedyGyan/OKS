terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
    }
  }
}

provider "oci" {
  region              = "ap-mumbai-1"
  compartment_id      = var.compartment_id
}
