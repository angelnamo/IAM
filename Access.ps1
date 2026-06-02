# Inicio de codigo
cls
$token = [System.Net.NetworkCredential]::new("",(Read-Host "Ingrese Token GitHub" -AsSecureString)).Password

$headers = @{
    Authorization = "token $token"
    Accept        = "application/vnd.github.v3.raw"
}

iex (Invoke-RestMethod `
    -Uri "https://api.github.com/repos/angelnamo/TSP_Angel_Namo/contents/Menu_Opciones.ps1" `
    -Headers $headers)
