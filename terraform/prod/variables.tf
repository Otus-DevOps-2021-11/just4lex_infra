variable service_account_key {
  description = "auth token for service account"
}

variable "service_account_file" {
  description = "json key file for service account"
}

variable "cloud_id" {
  description = "Yandex Cloud ID"
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID"
}

variable "zone" {
  default     = "ru-central1-a"
  description = "Yandex Cloud Zone"
}

variable "app_disk_image" {
  default     = "reddit-app-base"
  description = "My reddit image ID"
}

variable "db_disk_image" {
  default     = "reddit-db-base"
  description = "My DB image ID"
}

variable "subnet_id" {
  description = "ru-central1-a id"

}

variable "public_key_path" {
  description = "path to ssh pub key"
}

variable "private_key_path" {
  description = "path to ssh private key"
}
