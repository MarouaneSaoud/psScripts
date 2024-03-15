# Ajouter une permission de lecture d'une liste pour un utilisateur 
Set-PnPListPermission -Identity 'Documents' -User 'user@contoso.com' -AddRole 'Read'
# Supprimer une permission de lecture d'une liste pour un utilisateur 
Set-PnPListPermission -Identity 'Documents' -User 'user@contoso.com' -RemoveRole 'Read'