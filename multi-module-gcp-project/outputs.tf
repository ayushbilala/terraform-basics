output "master_public_ip" {
    value = "${module.master.public_ip}"
}

output "master_private_ip" {
    value = "${module.master.private_ip}"
}

output "worker_public_ip" {
    value = "${module.worker.public_ip}"
}

output "worker_private_ip" {
    value = "${module.worker.private_ip}"
}
