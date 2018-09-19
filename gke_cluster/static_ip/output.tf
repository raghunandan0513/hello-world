// displays IP of service on which load balancer is running on the console at the end of the execution
output "service_address" {
  value = "${google_compute_address.static.0.address}"
}

