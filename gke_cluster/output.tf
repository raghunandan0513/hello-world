// displays the static IP of the load balancer service on the console at the end of the execution
output "static_ip_service_address"                  { value = "${module.static_ip.service_address}" }
