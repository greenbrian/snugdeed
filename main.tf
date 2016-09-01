provider "digitalocean" {
  token = "${var.do_token}"
}

module "do_instance" {
  source = "./do_instance"
  instance_name = "vault"
  number_of_instances = 3
  ssh_keys = ["${var.ssh_keys}"]
  key_file = "${var.key_file}"
}
