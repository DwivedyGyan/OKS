# Assignment

Following tasks are performed:

- Terraform module to create kubernates cluster and node pool
- Terraform main file to trigger creation of k8s cluster and then install a helm release
- Helm chart to deploy a jenkins container
- Jenkinsfile to build and archive a sample java application. 


## Dependencies on host machine (where tf is triggered)

- Terraform
- Helm
- Kubectl
- OCI - command line
- git

## Dependencies on jenkins

- java
- mvn
