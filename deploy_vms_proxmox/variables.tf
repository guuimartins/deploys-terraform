variable "cluster_ip" {
  description = "Endereço IP do cluster Proxmox"
  type        = string
  default     = "192.168.100.22"  # IP padrão do cluster
}

variable "vm_name_prefix" {
  description = "Prefixo para o nome da VM"
  default     = ""
}

variable "vm_count" {
  description = "Número de VMs a serem criadas"
  type        = number
  default     = 1
}

variable "vm_cores" {
  description = "Número de cores da CPU para a VM"
  type        = number
  default     = 2
}

variable "vm_ram" {
  description = "Quantidade de memória RAM em MB"
  type        = number
  default     = 2048
}

variable "vm_disk" {
  description = "Tamanho do disco da VM em GB"
  type        = string
  default     = "8G"
}

variable "ip_base" {
  description = "Base do endereço IP (primeiros três octetos)"
  type        = string
  default     = "192.168.100"
}

variable "ip_last_octet" {
  description = "Último octeto do endereço IP"
  type        = number
}

variable "proxmox_host" {
  description = "Nome do host Proxmox onde as VMs serão criadas"
  type        = string
  default     = ""  # Ajuste conforme necessário (nome do cluster proxmox)
}

variable "template_name" {
  description = "Nome do template a ser usado para clonar a VM"
  type        = string
  default     = ""
}

# variable "ssh_key" {
#   description = "Chave SSH para acesso"
#   default     = ""
# }