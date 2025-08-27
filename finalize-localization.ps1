# Final localization script for Quincy, IL
$files = Get-ChildItem "C:\Users\USER\Desktop\quincy" -Recurse -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Fix remaining location issues
    $content = $content -replace "Installation IL Quincy, IL", "Installation in Quincy, IL"
    $content = $content -replace "in Quincy IL", "in Quincy, IL"
    $content = $content -replace "Quincy IL", "Quincy, IL"
    $content = $content -replace "serving IL", "serving"
    $content = $content -replace "IL Quincy", "in Quincy"
    $content = $content -replace "Installation IL", "Installation in"
    $content = $content -replace "available IL", "available in"
    $content = $content -replace "emergency repair IL", "emergency repair in"
    $content = $content -replace "services IL", "services in"
    $content = $content -replace "located IL", "located in"
    $content = $content -replace "Installation IL", "Installation in"
    $content = $content -replace "Quincy, IL customers", "Quincy customers"
    $content = $content -replace "Quincy, IL homes", "Quincy homes"
    $content = $content -replace "Quincy, IL residents", "Quincy residents"
    $content = $content -replace "Quincy, IL homeowners", "Quincy homeowners"
    $content = $content -replace "Quincy, IL properties", "Quincy properties"
    $content = $content -replace "Quincy, IL businesses", "Quincy businesses"
    $content = $content -replace "Installation Quincy, IL", "Installation in Quincy, IL"
    
    # Fix repeated patterns
    $content = $content -replace "62301, 62301", "Adams County"
    $content = $content -replace "Adams County, Adams County", "Adams County"
    
    # Fix specific service file names that might reference old locations
    if ($file.Name -like "*fort-wayne*") {
        $newName = $file.Name -replace "fort-wayne", "quincy"
        $newPath = Join-Path $file.Directory.FullName $newName
        Move-Item $file.FullName $newPath -Force
        $file = Get-Item $newPath
    }
    
    if ($file.Name -like "*huntertown*") {
        $newName = $file.Name -replace "huntertown", "quincy"
        $newPath = Join-Path $file.Directory.FullName $newName
        Move-Item $file.FullName $newPath -Force
        $file = Get-Item $newPath
    }
    
    # Save corrected content
    $content | Set-Content $file.FullName -Encoding UTF8
    
    Write-Host "Localized: $($file.Name)"
}

Write-Host "Final localization completed!"
