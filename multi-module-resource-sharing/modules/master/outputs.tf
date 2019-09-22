output "public_ip" {
    value = "${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}"
}

output "private_ip" {
    value = "${google_compute_instance.vm_instance.network_interface.0.network_ip}"
}

output "subnet" {
    value = "${google_compute_subnetwork.vpc_network_subnetwork.name}"
}
