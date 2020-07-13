//provider section
provider "google" {
  project = var.var_project
  credentials = file(var.var_credential)
  region      = var.region
}