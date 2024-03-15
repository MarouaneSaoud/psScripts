
Add-PnPRoleDefinition -RoleName "NoDelete" -Clone "Contribute" -Exclude DeleteListItems

# Afficher les rôles créés
Write-Host "Liste des rôles créés :"
Get-PnPRoleDefinition | Select-Object Name, Description

# Supprimer un rôle
Remove-PnPRoleDefinition -Identity "AutreRole"
Write-Host "Le rôle 'AutreRole' a été supprimé avec succès."

# Afficher à nouveau les rôles après la suppression
Write-Host "Liste des rôles après la suppression :"
Get-PnPRoleDefinition | Select-Object Name, Description
