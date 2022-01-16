variable "public_key_path" {
    description = "path to ssh pub key"
}
variable "db_disk_image" {
    default = "reddit-db-base"
    description = "My DB image ID"
}
variable "subnet_id" {
    description = "ru-central1-a id"

}
