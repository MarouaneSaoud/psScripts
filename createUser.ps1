# Connexion à Azure Active Directory
Connect-AzureAD

# Définir les informations de l'utilisateur
$userDisplayName = "John Doe"
$userLoginName = "john.doe@mysothemalab.com"
$userPassword = "YourPassword123" | ConvertTo-SecureString -AsPlainText -Force

# Créer un nouvel utilisateur
New-AzureADUser -DisplayName $userDisplayName -UserPrincipalName $userLoginName -Password $userPassword -AccountEnabled $true
