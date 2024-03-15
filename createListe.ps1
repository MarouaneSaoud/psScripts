# Connexion à SharePoint
Connect-PnPOnline -Url "https://mysothemalab.sharepoint.com/sites/PFE" -Credentials (Get-Credential)

# Créer une nouvelle liste "Employes"
New-PnPList -Title "Employes" -Template GenericList

# Ajouter une colonne pour le nom
Add-PnPField -List "Employes" -DisplayName "Nom" -InternalName "Nom" -Type Text -AddToDefaultView

# Ajouter une colonne pour le prénom
Add-PnPField -List "Employes" -DisplayName "Prenom" -InternalName "Prenom" -Type Text -AddToDefaultView

# Ajouter une colonne pour le département
Add-PnPField -List "Employes" -DisplayName "Departement" -InternalName "Departement" -Type Text -AddToDefaultView

# Ajouter une colonne pour le poste
Add-PnPField -List "Employes" -DisplayName "Poste" -InternalName "Poste" -Type Text -AddToDefaultView

# Ajouter une colonne pour la date d'embauche
Add-PnPField -List "Employes" -DisplayName "DateEmbauche" -InternalName "DateEmbauche" -Type DateTime -AddToDefaultView

# Ajouter une colonne pour le salaire
Add-PnPField -List "Employes" -DisplayName "Salaire" -InternalName "Salaire" -Type Number -AddToDefaultView

# Ajouter une colonne pour l'adresse
Add-PnPField -List "Employes" -DisplayName "Adresse" -InternalName "Adresse" -Type Text -AddToDefaultView

# Ajouter une colonne pour la ville
Add-PnPField -List "Employes" -DisplayName "Ville" -InternalName "Ville" -Type Text -AddToDefaultView

# Ajouter une colonne pour le code postal
Add-PnPField -List "Employes" -DisplayName "CodePostal" -InternalName "CodePostal" -Type Text -AddToDefaultView

# Ajouter une colonne pour le numéro de téléphone
Add-PnPField -List "Employes" -DisplayName "Telephone" -InternalName "Telephone" -Type Text -AddToDefaultView

# Ajouter une colonne pour l'email
Add-PnPField -List "Employes" -DisplayName "Email" -InternalName "Email" -Type Text -AddToDefaultView



# Créer une bibliothèque de documents
New-PnPList -Title "Ma Bibliothèque de Documents" -Template DocumentLibrary

# Créer un calendrier
New-PnPList -Title "Mon Calendrier" -Template Events

# Créer une liste de tâches
New-PnPList -Title "Ma Liste de Tâches" -Template Tasks
$dueDate = Get-Date "2024-03-15" -Format "yyyy-MM-dd"
# Ajouter une tâche à la liste de tâches
Add-PnPListItem -List "Ma Liste de Tâches" -Values @{
    "Title" = "Tâche 1";
    "AssignedTo" = "m.saoud@mysothemalab.com";  # Remplacer par le nom d'utilisateur ou l'adresse e-mail de la personne assignée
    "DueDate" = $dueDate;                        # Date d'échéance de la tâche
    "Status" = "Not Started";                    # État de la tâche
}

# Créer une liste d'annonces
New-PnPList -Title "Mes Annonces" -Template Announcements

# Créer une liste de contacts
New-PnPList -Title "Mes Contacts" -Template Contacts
# Ajouter un contact à la liste de contacts
Add-PnPListItem -List "Mes Contacts" -Values @{
    "Title" = "John Doe";
    "FirstName" = "John";
    "Email" = "john.doe@example.com";
    "Organization" = "XYZ Corp";  # Le champ peut être nommé autrement selon la liste de contacts
}


# Créer un forum de discussion
New-PnPList -Title "Mon Forum de Discussion" -Template DiscussionBoard
# Créer un nouvel élément de discussion
New-PnPListItem -List "Mon Forum de Discussion" -Values @{
    "Title" = "Titre de la Discussion";
    "Body" = "Contenu de la Discussion";
}

# Créer une liste de suivi des problèmes
New-PnPList -Title "Suivi des Problèmes" -Template IssueTracking

# Créer un sondage
New-PnPList -Title "Mon Sondage" -Template Survey

Get-PnPListItem -List "Ma Liste de Tâches"
