# Update navigation links to reflect new city
$files = Get-ChildItem "C:\Users\USER\Desktop\quincy" -Recurse -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Update location navigation links
    $content = $content -replace 'href="([^"]*/)fort-wayne-ductless-mini-splits.html"', 'href="$1quincy-ductless-mini-splits.html"'
    $content = $content -replace 'href="([^"]*/)huntertown-ductless-mini-splits.html"', 'href="$1quincy-ductless-mini-splits.html"'
    $content = $content -replace 'href="fort-wayne-ductless-mini-splits.html"', 'href="quincy-ductless-mini-splits.html"'
    $content = $content -replace 'href="huntertown-ductless-mini-splits.html"', 'href="quincy-ductless-mini-splits.html"'
    
    # Update location names in navigation
    $content = $content -replace '>Fort Wayne<', '>Quincy<'
    $content = $content -replace '>Huntertown<', '>Quincy<'
    
    # Update other old city references in links that should now point to Illinois cities
    $content = $content -replace '>New Haven<', '>Hannibal<'
    $content = $content -replace '>Woodburn<', '>Palmyra<'
    $content = $content -replace '>Grabill<', '>Payson<'
    $content = $content -replace '>Auburn<', '>Barry<'
    $content = $content -replace '>Garrett<', '>Liberty<'
    $content = $content -replace '>Butler<', '>Camp Point<'
    $content = $content -replace '>Waterloo<', '>Mendon<'
    $content = $content -replace '>Angola<', '>Hull<'
    $content = $content -replace '>Fremont<', '>Pittsfield<'
    
    # Save updated content
    $content | Set-Content $file.FullName -Encoding UTF8
    
    Write-Host "Updated navigation: $($file.Name)"
}

Write-Host "Navigation links updated!"
