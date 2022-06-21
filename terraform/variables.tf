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

variable "node_pool_ssh_public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5b7ucNqfvp4I9sFt/cgbqYIAVi3Xp7zjIAI8Qp84uyvIMq18ywHg9OBS0Tzu0lr4dUhIVpt7afkzHLImpEgwr8fxSOCJdwjrwagl850PqGFQEPgtsVbH0Bcz0sep9bCQtQbgVOW+kxIpO8No9YvAzh6QCtE1SYy+jJBeHvQlanWngYS71sdU1Fdlk3CXg8CvfqacnbYoc8+cieAiWTWR1ef0C3he0dq56T9Irnu8AwRUIRuvH3F+tvYAxz6Aytbe/HsexSeDa0Bg81bj5FY0X+WHZuX/z9tVwrXyF+qtwVP13N5u1suB7kDHzmVCh/7/IYsCdrPB+6ao99Pa04GRf ssh-key-2022-06-18"
}