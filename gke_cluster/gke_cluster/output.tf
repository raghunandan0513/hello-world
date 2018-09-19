// used as a dependent variable for email notification module which waits till the execution of GKE cluster module
output "gke_id" {
  value = "${join(" ", google_container_cluster.kube_cluster.*.id)}"
}

