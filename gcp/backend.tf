terraform {
  backend "gcs" {
    bucket  = "tf-state-workshop-falcon"
    prefix  = "dev"
  }
}