// creates GKE cluster
resource "google_container_cluster" "kube_cluster" {
  // name given to the cluster
  name               = "${var.cluster_name}"
  // zone in which the cluster is created
  zone               = "us-central1-f"
  // no. of nodes to be created in each zone
  initial_node_count = 1
  // network used to create the cluster
  //network            = "${var.network}"
  // subnetwork used to create the cluster
  //subnetwork         = "${var.subnetwork}"
  // additional zones in which the nodes to be created
  additional_zones = [
    "us-central1-b",
#    "us-central1-c",
  ]
  // authentication credentials defined to the cluster
  master_auth {
    username = "${var.master_auth_user}"
    password = "${var.master_auth_pswd}"
  }
  // cluster hardware configuration and required scopes are defined
  node_config {
    machine_type = "n1-standard-1"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
  // displays statement on the console when the module is started its execution
  provisioner "local-exec" {
    command = "sudo echo '*********started creating GKE cluster and will take 3-5 min nearly*******'"
  }
  // replacing the text REPLICA_COUNT with the variable REPLICA_COUNT in the file gke_cluster/deploy.yml
  provisioner "local-exec" {
    command = "sudo sed -i '9s/REPLICA_COUNT/${var.REPLICA_COUNT}/g' gke_cluster/deploy.yml"
  }
  // replacing the text IMAGE_PATH with the variable IMAGE_PATH in the file gke_cluster/deploy.yml
  provisioner "local-exec" {
    command = "sudo sed -i 's/IMAGE_PATH/${var.IMAGE_PATH}/g' gke_cluster/deploy.yml"
  }
  // replacing the text service_ip with the variable static_service_ip_address in the file gke_cluster/svc.yml
  provisioner "local-exec" {
    command = "sudo sed -i 's/service_ip/${var.static_service_ip_address}/g' gke_cluster/svc.yml"
  }
  // connecting to the GKE cluster
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${var.cluster_name} --zone us-central1-f --project ${var.project_name}"
  }  
  // creates containers with the image specified
  provisioner "local-exec" {
    command = "kubectl create -f gke_cluster/deploy.yml"
  }
  // creates Load balancer service
  provisioner "local-exec" {
    command = "kubectl create -f gke_cluster/svc.yml"
  }
  // replacing the variable IMAGE_PATH with the text IMAGE_PATH in the file gke_cluster/deploy.yml
  provisioner "local-exec" {
    command = "sudo sed -i 's/${var.IMAGE_PATH}/IMAGE_PATH/g' gke_cluster/deploy.yml"
  }
  // replacing the variable REPLICA_COUNT with the text REPLICA_COUNT in the file gke_cluster/deploy.yml
  provisioner "local-exec" {
    command = "sudo sed -i '9s/${var.REPLICA_COUNT}/REPLICA_COUNT/g' gke_cluster/deploy.yml"
  }
  // replacing the variable static_service_ip_address with the text service_ip in the file gke_cluster/svc.yml
  provisioner "local-exec" {
    command = "sudo sed -i 's/${var.static_service_ip_address}/service_ip/g' gke_cluster/svc.yml"
  }
  // prints the line on the console
  provisioner "local-exec" {
    command = "sudo echo '*********creating GKE cluster is done*******'"
  }

}
