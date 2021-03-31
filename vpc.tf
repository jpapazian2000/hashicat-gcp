module "network" {
  source  = "app.terraform.io/jpapazian-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "test"
  project_id = var.project
  subnets = [
      {
      subnet_name = "gaurav_subent"
      subnet_ip =  "10.100.10.0/24"
      subnet_region = var.region
      }
  ]

}