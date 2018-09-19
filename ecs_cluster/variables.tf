// defines all the variables used in this module
variable "access_key" {
  description = "Access key of AWS user"
}

variable "secret_key" {
  description = "Secret key of the AWS user mentioned"
}

variable "project_region" {
  description = "Region in which the project exist"
}

variable "cluster_name" {
  description = "Name of the ECS cluster"
}

variable "image_id" {
  type    = "map"
  description = "Image ID of the ECS cluster with respect to the zone"
  default = {
        "us-east-2" = "ami-1b90a67e"
        "us-east-1" = "ami-cb17d8b6"
        "us-west-2" = "ami-05b5277d"
        "us-west-1" = "ami-9cbbaffc"
        "eu-west-2" = "ami-a48d6bc3"
        "eu-west-3" = "ami-914afcec"
        "eu-west-1" = "ami-bfb5fec6"
        "eu-central-1" = "ami-ac055447"
        "ap-northeast-2" = "ami-ba74d8d4"
        "ap-northeast-1" = "ami-5add893c"
        "ap-southeast-2" = "ami-4cc5072e"
        "ap-southeast-1" = "ami-acbcefd0"
        "ca-central-1" = "ami-a535b2c1"
        "ap-south-1" = "ami-2149114e"
        "sa-east-1" = "ami-d3bce9bf"
  }
}

variable "instance_type" {
  description = "hardware configuration of the nodes of the cluster"
}

variable "security_group_id" {
  type = "list"
  description = "Security group ID to assign for cluster"
}

variable "availability_zones" {
  type    = "list"
  description = "available zones for auto scaling group"
}

variable "autoscaling_group_name" {
  description = "name for the autoscaling group"
}

variable "min_size" {
  description = "Minimum size of the autoscaling group"
}

variable "max_size" {
  description = "Max size of the autoscaling group"
}

variable "desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
}

variable "vpc_zone_identifier" {
  type    = "list"
  description = "vpc zone identifier for auto scaling group"
}
