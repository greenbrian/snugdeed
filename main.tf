



resource "digitalocean_ssh_key" "default" {
    name = "Terraform Example"
    public_key = "${file("/Users/terraform/.ssh/id_rsa.pub")}"
}
