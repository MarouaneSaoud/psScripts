
# Créer un groupe "Lecture" et lui attribuer des permissions de lecture
New-PnPGroup -Title "Groupe Lecture" -Description "Ce groupe a des droits de lecture uniquement"
Set-PnPGroupPermissions -Identity "Groupe Lecture" -AddRole "Lecture"

# Créer un groupe "Ecriture" et lui attribuer des permissions de lecture et d'écriture
New-PnPGroup -Title "Groupe Ecriture" -Description "Ce groupe a des droits de lecture et d'écriture"
Set-PnPGroupPermissions -Identity "Groupe Ecriture" -AddRole "Contribute" 

# Afficher les groupes créés
Get-PnPGroup

# Liste des utilisateurs à ajouter aux groupes
$usersToAdd = @(
    "user1@domain.com",
    "user2@domain.com",
    "user3@domain.com"
)

# Ajouter les utilisateurs à des groupes
foreach ($user in $usersToAdd) {
    # Ajouter l'utilisateur au groupe "GroupeLecture"
    Add-PnPGroupMember -LoginName $user -Group 'Groupe Lecture'

    # Ajouter l'utilisateur au groupe "GroupeEcriture"
    Add-PnPGroupMember -LoginName $user -Identity "GroupeEcriture"
}


# Retirer l'utilisateur du groupe "GroupeLecture"
Remove-PnPGroupMember -Identity "Groupe1" -LoginName "m.saoud@mysothemalab.com" -Confirm:$false

# Récupérer les informations du groupe par son nom
$groupName = "NomDuGroupe"
$groupInfo = Get-PnPGroup -Identity $groupName

# Afficher les informations du groupe
$groupInfo


# Nom du groupe à supprimer
$groupName = "NomDuGroupe"

# Supprimer le groupe
Remove-PnPGroup -Identity $groupName

# Recuperer la liste des utilisateur du groupe Ecriture
Get-PnPGroupMember -Group "Groupe Ecriture"

# Pour afficher les rôles attribués aux groupes
Get-PnPGroupPermissions -Identity "Groupe Ecriture"

