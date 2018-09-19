This module is defined to create a static IPs for gce instance and for load balancer service.

To know about the variables defined in this module, please check "variable.tf" file

we defined "output.tf" file and assigned variables "gce_address" and "service_address" which we print to console at the end of the script execution.
(which is internally dependent on variable `static_ip_count` you reserve)
