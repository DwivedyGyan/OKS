resource "oci_core_vcn" "test_vcn" {
    #Required
    compartment_id = var.compartment_id
    cidr_block = var.vcn_cidr_block
    display_name = var.vcn_display_name
}