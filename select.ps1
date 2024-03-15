$listItems = Get-PnPListItem -List "lstAffaires" | Where-Object { $_["MontantHT"] -gt 100 -and $_["Etat"] -eq "En cours" }

foreach ($item in $listItems) {
    Write-Host "ID: $($item.Id)"
    Write-Host "Titre: $($item.FieldValues['Title'])"
    Write-Host "MontantHT: $($item.FieldValues['MontantHT'])"
    Write-Host "État: $($item.FieldValues['Etat'])"
    Write-Host "-----------------------------------"
} 

$listItems = Get-PnPListItem -List "lstAffaires" | Where-Object { $_["MontantHT"] -gt 500 -and $_["Fournisseur"] -eq "FournisseurX" }

$dateLimite = Get-Date "2024-03-01"
$listItems = Get-PnPListItem -List "lstAffaires" | Where-Object { $_["DateDebut"] -gt $dateLimite }

$listItems = Get-PnPListItem -List "lstAffaires" | Where-Object { $_["Title"] -like "Préfixe*" }

$listItems = Get-PnPListItem -List "lstAffaires" | Where-Object { $_["ID"] -gt 1000 }

$listItems = Get-PnPListItem -List "lstAffaires" | Where-Object { $_["Responsable"] -eq $null }

Get-PnPListItem -List "lstAffaires" | Where-Object { $_["LivraisonEtranger"] -eq "non" }
Get-PnPListItem -List "lstAffaires" | Where-Object { $_["MontantHT"] -ge 50 }


# -eq: Égal à
# -ne: Différent de
# -gt: Plus grand que
# -lt: Plus petit que
# -ge: Plus grand ou égal à
# -le: Plus petit ou égal à
# -like: Correspondance de modèle, utilise des caractères génériques pour trouver des correspondances partielles.
# -notlike: Négation de la correspondance de modèle.
# -contains: Vérifie si une collection contient un élément spécifique.
# -notcontains: Négation de -contains.
# -in: Vérifie si une valeur est présente dans une collection.
# -notin: Négation de -in.
# -match: Correspondance avec une expression régulière.
# -notmatch: Négation de -match.
# -is: Vérifie le type d'objet.
# -isnot: Négation de -is.

$groupName = "CustomPerm"

# Obtenir les rôles attribués au groupe spécifié
$groupRoles = Get-PnPGroupPermissions -Identity $groupName

# Afficher les noms des rôles attribués
foreach ($groupRole in $groupRoles) {
    Write-Host "Nom du rôle : $($groupRole.RoleName)"
}