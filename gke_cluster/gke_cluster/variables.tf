// defines all the variables used in this module
variable "cluster_name" {
  description = "Name given for the GKE cluster"
}

variable "IMAGE_PATH" {
  description = "PATH of the image file from the bucket which you want to use for getting the portal and portlets with tag"
}


variable "master_auth_user" {
  description = "Username to manage the GKE cluster"
}

variable "master_auth_pswd" {
  description = "Password of the user managing the GKE cluster"
}

variable "project_name" {
  description = "Name of the project to which you want to connect"
}


variable "REPLICA_COUNT" {
  description = "number of replicas you want to create for kubernetes pods"
}

variable "network" {
  description = "name of the network in which you need to set-up the environment"
}

variable "static_service_ip_address" {
  description = "static IP for the load balancer service"
}

