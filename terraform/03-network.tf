resource "yandex_vpc_network" "network-terraform" {
  name = "network-terraform"
}

resource "yandex_vpc_subnet" "subnet-terraform" {
  network_id     = yandex_vpc_network.network-terraform.id
  v4_cidr_blocks = ["192.168.1.0/24"]
}