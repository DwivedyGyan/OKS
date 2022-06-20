variable "compartment_id" {
  type = string
  default = "ocid1.tenancy.oc1..aaaaaaaa3kxlkkmpaaar5vamcwcpl5gxiyxtiktgxyav7s5whuxbdmjbyeia"
}

variable "subnet_id" {
  type = string
  default = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaacpeq5ui4vwkpkfx6vzkordjbc5v3rtz6lry4ltlvpt5cjpnv57pa"
}



variable "cluster_kubernetes_version" {
  type = string
  default = "v1.23.4"
}

variable "cluster_name" {
  type = string
  default = "kube"
}

variable "node_pool_node_shape" {
  type = string
  default = "VM.Standard.E3.Flex"
}

variable "node_pool_node_config_details_size" {
  type = number
  default = 3
}