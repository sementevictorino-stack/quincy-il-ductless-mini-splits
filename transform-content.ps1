# PowerShell script to transform all HTML files from Indiana locations to Quincy, IL
# CATEGORY = Ductless Mini split, CITY = quincy, STATE = IL, Full = quincy IL

# Get all HTML files
$htmlFiles = Get-ChildItem -Path "C:\Users\USER\Desktop\quincy" -Filter "*.html" -Recurse

foreach ($file in $htmlFiles) {
    Write-Host "Processing: $($file.FullName)"
    
    # Read file content
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Replace location references
    $content = $content -replace "Huntertown, IN", "Quincy, IL"
    $content = $content -replace "Huntertown IN", "Quincy IL" 
    $content = $content -replace "Fort Wayne, IN", "Quincy, IL"
    $content = $content -replace "Fort Wayne IN", "Quincy IL"
    $content = $content -replace "Fort Wayne", "Quincy"
    $content = $content -replace "Huntertown", "Quincy"
    $content = $content -replace "Indiana", "Illinois"
    $content = $content -replace "IN", "IL"
    
    # Replace zip codes and area references
    $content = $content -replace "46748", "62301"
    $content = $content -replace "46845", "62301" 
    $content = $content -replace "46805", "62301"
    $content = $content -replace "Allen County", "Adams County"
    $content = $content -replace "northeastern Indiana", "west central Illinois"
    $content = $content -replace "Fort Wayne metropolitan area", "West Central Illinois region"
    
    # Replace coordinates for Quincy, IL
    $content = $content -replace "41\.1306", "39.9356"
    $content = $content -replace "-85\.1394", "-91.4099"
    $content = $content -replace "41\.0793", "39.9356"
    
    # Replace addresses
    $content = $content -replace "12845 Coldwater Road", "1425 Broadway"
    $content = $content -replace "3402 Fairfield Avenue", "1425 Broadway"
    
    # Replace climate and regional references
    $content = $content -replace "northeastern Indiana communities", "west central Illinois communities"
    $content = $content -replace "Indiana's varied climate", "Illinois's varied climate"
    $content = $content -replace "Indiana's coldest months", "Illinois's coldest months"
    $content = $content -replace "Indiana's continental climate", "Illinois's continental climate"
    
    # Update customer review locations
    $content = $content -replace "- Sarah M\., Huntertown", "- Sarah M., Quincy"
    $content = $content -replace "- Mike T\., Huntertown", "- Mike T., Quincy"
    $content = $content -replace "- Lisa Davis, Huntertown", "- Lisa Davis, Quincy"
    $content = $content -replace "- Jennifer K\., Huntertown", "- Jennifer K., Quincy"
    $content = $content -replace "- Robert M\., Huntertown", "- Robert M., Quincy"
    $content = $content -replace "- Michelle K\., Fort Wayne", "- Michelle K., Quincy"
    $content = $content -replace "- Brian L\., Fort Wayne", "- Brian L., Quincy"
    
    # Save the modified content back to file
    $content | Set-Content $file.FullName -Encoding UTF8
}

Write-Host "Transformation completed for all HTML files!"
