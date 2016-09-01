provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "testserver" {
  ssh_keys = ["${var.ssh_keys}"]
	image = "${var.ubuntu}"
	region = "${var.do_tor1}"
	size = "2gb"
	private_networking = true
	name = "testserver"

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
