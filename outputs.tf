# Ім'я RG великими літерами
output "rg_upper" {
  value       = upper(azurerm_resource_group.rg.name)
  description = "Resource group name in UPPERCASE"
}

# join() для тегів
output "tags_joined" {
  value       = join(",", [for k, v in local.common_tags : "${k}:${v}"])
  description = "Common tags joined into one string"
}

# for-цикл по ID ВМ
output "vm_ids" {
  value       = [for v in azurerm_linux_virtual_machine.vm : v.id]
  description = "IDs of all created VMs"
}

# Публічний IP nic-a (щоб зручно було перевіряти)
output "public_ip_nic_a" {
  value       = azurerm_public_ip.pip.ip_address
  description = "Public IP for NIC-A"
}
