# Qual o IP do cluster que será criado a VM
cluster_ip    = "192.168.100.101"

# Nome da VM que será criada
vm_name_prefix = "create-by-terraform"

# Inserir notas na VM
# ambiente = "Desenvolvimento"

# Quantidade de VMs a serem criadas
vm_count      = 1

# Ultimo número do IP. Exemplo: já está criado o 
# 192.168.1. = basta inserir apenas o ultimo numero (octeto)
ip_last_octet = 124

# Configurações do hardware das VMs criadas
vm_cores      = 2
vm_ram        = 1024
vm_disk       = "16"
