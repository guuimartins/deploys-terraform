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
  pm_api_url      = "https://${var.cluster_ip}:8006/api2/json"
  pm_user         = "root@pam" 
  pm_password     = ""
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "criacao_das_vms" {
  count = var.vm_count

  name       = "${var.vm_name_prefix}-${count.index + 1}"
  vmid       = 30000 + count.index

  target_node = var.proxmox_host
  clone      = var.template_name

  agent     = 0
  os_type   = "cloud-init"
  cores     = var.vm_cores
  sockets   = 1
  cpu       = "host"
  memory    = var.vm_ram
  scsihw    = "virtio-scsi-pci"
  bootdisk  = "scsi0"

  disks {
    scsi {
      scsi0 {
        disk {
          size    = var.vm_disk
          storage = "local-lvm"
        }
      }
    }
  }

  network {
    model   = "virtio"
    bridge  = "vmbr0"
  }

  ipconfig0 = "ip=${var.ip_base}.${var.ip_last_octet + count.index}/24,gw=192.168.1.3"
}