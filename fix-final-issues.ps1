# Fix remaining artifacts in navigation and content
$files = Get-ChildItem "C:\Users\USER\Desktop\quincy" -Recurse -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Fix navigation links
    $content = $content -replace "ILdex\.html", "index.html"
    $content = $content -replace "header-contaILer", "header-container"
    $content = $content -replace "contaILer", "container"
    $content = $content -replace "duct-cleanILg", "duct-cleaning"
    $content = $content -replace "CleanILg", "Cleaning"
    $content = $content -replace "cleanILg", "cleaning"
    $content = $content -replace "traILILg", "training"
    $content = $content -replace "maILtenance", "maintenance"
    $content = $content -replace "maintenance", "maintenance"
    $content = $content -replace "ductless-MILi-split", "ductless-mini-split"
    $content = $content -replace "ductless-Mini-split", "ductless-mini-split"
    $content = $content -replace "MILi Split", "Mini Split"
    $content = $content -replace "Mini Split", "Mini Split"
    $content = $content -replace "heat-pump-services", "heat-pump-services"
    $content = $content -replace "indoor Air Quality", "Indoor Air Quality"
    $content = $content -replace "heating Services", "Heating Services"
    $content = $content -replace "hvac-Installation", "hvac-installation"
    $content = $content -replace "Installation", "installation"
    $content = $content -replace "installation", "installation"
    $content = $content -replace "HVAC installation", "HVAC Installation"
    $content = $content -replace "Mini Split installation", "Mini Split Installation"
    
    # Save updated content
    $content | Set-Content $file.FullName -Encoding UTF8
    
    Write-Host "Fixed final issues: $($file.Name)"
}

Write-Host "All final issues resolved!"
