# Terraform example to create a namespace 

terraform {
  required_providers {
    temporalcloud = {
      source = "temporalio/temporalcloud"
    }
  }
}

provider "temporalcloud" {
  api_key = var.api_key
}

resource "temporalcloud_namespace" "rross-automation" {
  name               = var.namespace_name
  regions            = [ var.region1 ]  
  accepted_client_ca = base64encode(file(var.path_to_ca_cert))
  retention_days     = 90
}


