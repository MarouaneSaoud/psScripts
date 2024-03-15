Add-PnPFolder -Name NewFolder -Folder "\parent"

Rename-PnPFolder -Folder NewFolder -TargetFolderName 'scripts'

# Chemin local du dossier contenant les fichiers à ajouter
$localFolderPath = "C:\Users\PC\OneDrive\Documents\psScripts"

# URL du dossier SharePoint où vous souhaitez ajouter les fichiers
$sharePointFolderPath = "scripts"

# Récupérer les fichiers locaux dans le dossier spécifié
$files = Get-ChildItem -Path $localFolderPath

# Ajouter chaque fichier à SharePoint dans le même dossier
foreach ($file in $files) {
    Add-PnPFile -Path $file.FullName -Folder $sharePointFolderPath
}

# Afficher la liste des fichiers
# Spécifier le chemin du dossier
$folderPath = "scripts"

# Récupérer les fichiers dans le dossier
$files = Get-PnPFolderItem -FolderSiteRelativeUrl $folderPath

foreach ($file in $files) {
    Write-Host $file.Name
}


# Spécifier le chemin complet du fichier
$filePath = "scripts/createUser.ps1"

# Récupérer le contenu du fichier
$fileContent = Get-PnPFile -Url $filePath -AsString

# Afficher le contenu du fichier
Write-Host $fileContent

# Supprimer le dossier spécifié
Remove-PnPFolder -Name "scripts" -Force


Add-PnPFolderUserSharingLink -Folder "/PFE/scripts" -Users "m.saoud@mysothemalab.com","k.elhardi@mysothemalab.com"
