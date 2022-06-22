resource "oci_containerengine_cluster" "test_cluster" {
    compartment_id = var.compartment_id
    kubernetes_version = var.cluster_kubernetes_version
    name = var.cluster_name
    vcn_id = var.vcn_id
}


resource "oci_containerengine_node_pool" "test_node_pool" {
    cluster_id = oci_containerengine_cluster.test_cluster.id
    compartment_id = var.compartment_id
    name = "node_pool1"
    node_shape = var.node_pool_node_shape
    kubernetes_version = var.cluster_kubernetes_version
    node_config_details {
        placement_configs {
            availability_domain = "xNCC:AP-MUMBAI-1-AD-1"
            subnet_id = var.subnet_id
        }
        size = var.node_pool_node_config_details_size
    }
    node_shape_config {
        memory_in_gbs = var.node_pool_node_shape_config_memory_in_gbs
        ocpus = var.node_pool_node_shape_config_ocpus
    }
    node_source_details {
        image_id = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaaykbqyfrl3pwkotoi7f5d32rqrfgdhwdh3hs3a2yzwt4r4qzjxicq"
        source_type = "IMAGE"
    }
    ssh_public_key = var.node_pool_ssh_public_key
}