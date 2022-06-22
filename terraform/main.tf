data "oci_core_subnet" "test_subnet" {
    subnet_id = var.subnet_id
}

module "kubernates" {
  source = "./modules/kube"
  compartment_id = var.compartment_id
  cluster_name = var.cluster_name
  vcn_id = data.oci_core_subnet.test_subnet.vcn_id
  node_pool_ssh_public_key = var.node_pool_ssh_public_key
  node_pool_node_config_details_size = var.node_pool_node_config_details_size
}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [module.kubernates]
  create_duration = "30s"
}

resource "null_resource" "helm" {
  depends_on = [
    module.kubernates,
    time_sleep.wait_30_seconds
  ]
  provisioner "local-exec" {
    command = "helm install mydep jenkins"
    working_dir = "../"
  }
}