# ----------------web-01-------------------
/*
resource "yandex_compute_instance" "web01" {
  name = "web01"
  hostname = "web01"
  zone = var.zone
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image-id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-terraform.id
    ip_address = "192.168.1.10"
    nat = true
  }

  metadata = {
    user-data = file("user-data.yaml")
  }
}
*/
# ----------------gitlab-------------------
resource "yandex_compute_instance" "gitlab" {
  name = "gitlab"
  hostname = "gitlab"
  zone = var.zone
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id = var.image-id
      size = 20
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-terraform.id
    ip_address = "192.168.1.20"
    nat = true
    nat_ip_address = "84.201.134.238"
  }

  metadata = {
    user-data = file("user-data.yaml")
  }
}
