variable "var_credential" {
  default = "service_account_key.json"
}
variable "var_project" {
  default = "falcontest-272900"
}

variable "instance_name" {
  type = string
}

variable instance_machine_type {}
variable instance_zone         {}
variable instance_image        {}
variable subnet_name          {}
variable external_enabled      {}
variable project               {}
variable region                {}