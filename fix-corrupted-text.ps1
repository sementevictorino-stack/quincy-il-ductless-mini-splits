# Fix corrupted text in HTML files
$files = Get-ChildItem "C:\Users\USER\Desktop\quincy" -Recurse -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Fix corrupted words
    $content = $content -replace "ILitial", "initial"
    $content = $content -replace "MILi", "Mini"  
    $content = $content -replace "ILstallation", "Installation"
    $content = $content -replace "QuILcy", "Quincy"
    $content = $content -replace "lILk", "link"
    $content = $content -replace "wILdow", "window"
    $content = $content -replace "LocalBusILess", "LocalBusiness"
    $content = $content -replace "geoMidpoILt", "geoMidpoint"
    $content = $content -replace "GeoCoordILates", "GeoCoordinates"
    $content = $content -replace "sizILg", "sizing"
    $content = $content -replace "serv IL", "serving"
    $content = $content -replace "busILess", "business"
    $content = $content -replace "maILtenance", "maintenance"
    $content = $content -replace "traILILg", "training"
    $content = $content -replace "ILdoor", "indoor"
    $content = $content -replace "wILter", "winter"
    $content = $content -replace "professILonal", "professional"
    $content = $content -replace "condILioning", "conditioning"
    
    # Save cleaned content
    $content | Set-Content $file.FullName -Encoding UTF8
    
    Write-Host "Fixed: $($file.Name)"
}

Write-Host "Cleanup completed!"
