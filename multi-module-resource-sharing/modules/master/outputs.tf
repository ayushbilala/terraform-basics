output "public_ip" {
    value = "${google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip}"
}

output "private_ip" {
    value = "${google_compute_instance.vm_instance.network_interface.0.network_ip}"
}

output "link" {
    value = "${google_compute_network.vpc_network.self_link}"
}
