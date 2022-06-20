resource "oci_core_vcn" "test_vcn" {
    compartment_id = var.compartment_id
    cidr_block = var.vcn_cidr_block
    display_name = var.vcn_display_name
}

resource "oci_core_subnet" "test_subnet" {
    cidr_block = var.subnet_cidr_block
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id
}