
$employeesData = @(
    @{
        Nom = "Doe"
        Prenom = "John"
        Departement = "Ventes"
        Poste = "Manager"
        DateEmbauche = "01/01/2023"
        Salaire = 50000
        Adresse = "123 Rue des Employés"
        Ville = "Ville1"
        CodePostal = "12345"
        Telephone = "555-1234"
        Email = "john.doe@example.com"
    },
    @{
        Nom = "Smith"
        Prenom = "Jane"
        Departement = "Ressources Humaines"
        Poste = "Spécialiste RH"
        DateEmbauche = "01/02/2023"
        Salaire = 45000
        Adresse = "456 Rue des Employés"
        Ville = "Ville2"
        CodePostal = "54321"
        Telephone = "555-5678"
        Email = "jane.smith@example.com"
    }
)

# Ajouter chaque employé à la liste
foreach ($employeeData in $employeesData) {
    Add-PnPListItem -List "Employes" -Values $employeeData
}
