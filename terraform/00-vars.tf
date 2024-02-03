#============================= Yandex Cloud variables ==============================#

variable "zone" {
  description = "default zone"
  default = "ru-central1-a"
}

variable "token" {
  description = "yandex token"
}

variable "cloud-id" {
  description = "yandex cloud_id"
}

variable "folder-id" {
  description = "yandex folder_id"
}

#=============================== Instances variables ==================================#
variable "image-id" {
  description = "Image Ubuntu 22.04"
  default = "fd80bm0rh4rkepi5ksdi"
}