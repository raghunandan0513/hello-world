// Configure the Google Cloud provider
provider "google" {
  credentials 			= "${file("gce_creds.json")}"
  project     			= "${var.project_name}"
  region      			= "us-central1"
}

// Creates static IP
module "static_ip" {
  source = "./static_ip"

  static_ip_name 		= "${var.static_ip_name}"
  static_ip_count 		= "${var.static_ip_count}"
}


// Creates GKE cluster 
module "gke_cluster" {
  source = "./gke_cluster"

  cluster_name          	= "${var.cluster_name}"
  IMAGE_PATH            	= "${var.IMAGE_PATH}"
  master_auth_user      	= "${var.master_auth_user}"
  master_auth_pswd      	= "${var.master_auth_pswd}"
  project_name          	= "${var.project_name}"
  REPLICA_COUNT         	= "${var.REPLICA_COUNT}"
  network      		 	= "${var.network}"
  static_service_ip_address  	= "${module.static_ip.service_address}"
}
