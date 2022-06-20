# module "vcn" {
#   source = "./modules/vcn"
#   compartment_id = var.compartment_id
#   vcn_display_name = "kube-vcn"
# }

data "oci_core_subnet" "test_subnet" {
    subnet_id = var.subnet_id
}

resource "oci_containerengine_cluster" "test_cluster" {
    #Required
    compartment_id = var.compartment_id
    kubernetes_version = var.cluster_kubernetes_version
    name = var.cluster_name
    vcn_id = data.oci_core_subnet.test_subnet.vcn_id

    # #Optional
    # defined_tags = {"Operations.CostCenter"= "42"}
    # endpoint_config {

    #     #Optional
    #     is_public_ip_enabled = var.cluster_endpoint_config_is_public_ip_enabled
    #     nsg_ids = var.cluster_endpoint_config_nsg_ids
    #     subnet_id = oci_core_subnet.test_subnet.id
    # }
    # freeform_tags = {"Department"= "Finance"}
    # image_policy_config {

    #     #Optional
    #     is_policy_enabled = var.cluster_image_policy_config_is_policy_enabled
    #     key_details {

    #         #Optional
    #         kms_key_id = oci_kms_key.test_key.id
    #     }
    # }
    # kms_key_id = oci_kms_key.test_key.id
    # options {

    #     #Optional
    #     add_ons {

    #         #Optional
    #         is_kubernetes_dashboard_enabled = var.cluster_options_add_ons_is_kubernetes_dashboard_enabled
    #         is_tiller_enabled = var.cluster_options_add_ons_is_tiller_enabled
    #     }
    #     admission_controller_options {

    #         #Optional
    #         is_pod_security_policy_enabled = var.cluster_options_admission_controller_options_is_pod_security_policy_enabled
    #     }
    #     kubernetes_network_config {

    #         #Optional
    #         pods_cidr = var.cluster_options_kubernetes_network_config_pods_cidr
    #         services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
    #     }
    #     persistent_volume_config {

    #         #Optional
    #         defined_tags = {"Operations.CostCenter"= "42"}
    #         freeform_tags = {"Department"= "Finance"}
    #     }
    #     service_lb_config {

    #         #Optional
    #         defined_tags = {"Operations.CostCenter"= "42"}
    #         freeform_tags = {"Department"= "Finance"}
    #     }
    #     service_lb_subnet_ids = var.cluster_options_service_lb_subnet_ids
    # }
}


resource "oci_containerengine_node_pool" "test_node_pool" {
    #Required
    cluster_id = oci_containerengine_cluster.test_cluster.id
    compartment_id = var.compartment_id
    name = "node_pool1"
    #node_shape = var.node_pool_node_shape

    # #Optional
    # defined_tags = {"Operations.CostCenter"= "42"}
    # freeform_tags = {"Department"= "Finance"}
    # initial_node_labels {

    #     #Optional
    #     key = var.node_pool_initial_node_labels_key
    #     value = var.node_pool_initial_node_labels_value
    # }
    kubernetes_version = var.cluster_kubernetes_version
    node_config_details {
        #Required
        placement_configs {
            #Required
            # availability_domain = var.node_pool_node_config_details_placement_configs_availability_domain
            availability_domain = "xNCC:AP-MUMBAI-I-AD-1"
            subnet_id = var.subnet_id

            # #Optional
            # capacity_reservation_id = oci_containerengine_capacity_reservation.test_capacity_reservation.id
            # fault_domains = var.node_pool_node_config_details_placement_configs_fault_domains
        }
        size = var.node_pool_node_config_details_size

        # #Optional
        # is_pv_encryption_in_transit_enabled = var.node_pool_node_config_details_is_pv_encryption_in_transit_enabled
        # kms_key_id = oci_kms_key.test_key.id
        # defined_tags = {"Operations.CostCenter"= "42"}
        # freeform_tags = {"Department"= "Finance"}
        # nsg_ids = var.node_pool_node_config_details_nsg_ids
    }
    # node_image_name = oci_core_image.test_image.name
    # node_metadata = var.node_pool_node_metadata
    # node_shape_config {

    #     #Optional
    #     memory_in_gbs = var.node_pool_node_shape_config_memory_in_gbs
    #     ocpus = var.node_pool_node_shape_config_ocpus
    # }
    node_source_details {
        #Required
        image_id = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaajtjrqgsa775zbcinia33cwvztztcqlbrikdcxv5hfmbhyu37as3a"
        source_type = "IMAGE"

        #Optional
        # boot_volume_size_in_gbs = var.node_pool_node_source_details_boot_volume_size_in_gbs
    }
    # quantity_per_subnet = var.node_pool_quantity_per_subnet
    # ssh_public_key = var.node_pool_ssh_public_key
    # subnet_ids = var.node_pool_subnet_ids
}