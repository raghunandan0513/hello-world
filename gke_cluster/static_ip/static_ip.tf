// creates static IP
resource "google_compute_address" "static" {
  // number of static IP you want to create
  count = "${var.static_ip_count}"
  // name given to reserve the static IPs
  name = "${var.static_ip_name}-${count.index}"
}

