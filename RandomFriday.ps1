######################################################################
# Script pour savoir qui sera d'astreinte le vendredi soir
# version: 2.0
# Auteur: tiphergane / Meoowrwa & friends
# Synopsis: Donne le nom du technicien qui sera d'astreinte le vendredi soir
# Usage: dans un powershell , executer le script et croiser les doigts.
######################################################################

# Attendre que l'utilisateur presse une touche pour continuer le script
function Pause ($Message="Press any key to continue...")
{
    Write-Host -NoNewLine $Message
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    Write-Host ""
}

# Création de la barre de progression
function Progress () {
    $Status = (($i*100)/$seed)
    Write-Progress -Activity "Tirage au sort du gagant" -Status "$Status % Complete:" -PercentComplete $Status;
}

$seed = Get-Random -Minimum 200 -Maximum 1000
$i = 0

while ($i -lt $seed) { 
    $random = Get-Random -Minimum 1 -Maximum 5
    $i++
    Progress
}

switch ($random) {
    1 { Write-Output Miaou }
    2 { Write-Output Wouf }
    3 { Write-Output Tweet }
    4 { Write-Output Moo }
}
Write-Output "Il y a eu $seed tirages avant de donner la réponse"
Pause
exit 0
