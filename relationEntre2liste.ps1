# Création de la liste Clients
New-PnPList -Title "Clients" -Template GenericList
Add-PnPField -List "Clients" -DisplayName "Nom" -InternalName "Nom" -Type Text -AddToDefaultView
Add-PnPField -List "Clients" -DisplayName "Email" -InternalName "Email" -Type Text -AddToDefaultView

# Création de la liste Commandes
New-PnPList -Title "Commandes" -Template GenericList
Add-PnPField -List "Commandes" -DisplayName "Produit" -InternalName "Produit" -Type Text -AddToDefaultView
Add-PnPField -List "Commandes" -DisplayName "Montant" -InternalName "Montant" -Type Number -AddToDefaultView
Add-PnPField -List "Commandes" -DisplayName "Client" -InternalName "Client" -Type Lookup -LookupList "Clients" -LookupField "Nom" -AddToDefaultView

# Insertion des données dans la liste Clients
$clientA = Add-PnPListItem -List "Clients" -Values @{Nom="Client A"; Email="clientA@example.com"}
$clientB = Add-PnPListItem -List "Clients" -Values @{Nom="Client B"; Email="clientB@example.com"}

# Insertion des données dans la liste Commandes avec les IDs des clients
Add-PnPListItem -List "Commandes" -Values @{Produit="Produit 1"; Montant=100; ClientLookupId=$clientA.Id}
Add-PnPListItem -List "Commandes" -Values @{Produit="Produit 2"; Montant=200; ClientLookupId=$clientB.Id}
