terraform {
  required_version = ">= 1.6.3"
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc3"
      # version = "2.9.13"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://proxmox.example.com:8006/api2/json"
  pm_user         = "root@pam"
  pm_password     = "password"
  pm_tls_insecure = true
}