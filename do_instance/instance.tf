variable "instance_name" {}
variable "number_of_instances" {}
variable "ssh_keys" {
    type = "list"
}
variable "key_file" {}

resource "digitalocean_droplet" "droplet" {
  ssh_keys = [
      "${var.ssh_keys}"
  ]
	image = "${var.ubuntu}"
	region = "${var.do_tor1}"
	size = "2gb"
	private_networking = true
	name = "${var.instance_name}"
  count = "${var.number_of_instances}"

  provisioner "remote-exec" {
    inline = [
    "export PATH=$PATH:/usr/bin",
    "sudo apt-get update",
    "sudo apt-get -y install nginx"
    ]
    connection {
      type = "ssh"
      key_file = "${var.key_file}"
      user = "root"
      timeout = "2m"
    }
  }
}
