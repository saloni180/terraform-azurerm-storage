//Include an output variables for the Storage Account ID.

output "storage_account_id" {
  value       = azurerm_storage_account.storage.id
  description = "The storage account name"
}