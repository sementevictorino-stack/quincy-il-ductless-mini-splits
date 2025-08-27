# Final cleanup for remaining artifacts
$files = Get-ChildItem "C:\Users\USER\Desktop\quincy" -Recurse -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Fix remaining word fragments
    $content = $content -replace "conditionILg", "conditioning"
    $content = $content -replace "heatILg", "heating"
    $content = $content -replace "coolILg", "cooling"
    $content = $content -replace "buildILg", "building"
    $content = $content -replace "feelILg", "feeling"
    $content = $content -replace "workILg", "working"
    $content = $content -replace "servILg", "serving"
    $content = $content -replace "runILg", "running"
    $content = $content -replace "operatILg", "operating"
    $content = $content -replace "cleaILg", "cleaning"
    $content = $content -replace "testILg", "testing"
    $content = $content -replace "schedilILg", "scheduling"
    $content = $content -replace "systemILg", "systems"
    $content = $content -replace "equipmentILg", "equipment"
    $content = $content -replace "proceduresILg", "procedures"
    $content = $content -replace "requirementsILg", "requirements"
    $content = $content -replace "solutionsILg", "solutions"
    $content = $content -replace "applicationsILg", "applications"
    $content = $content -replace "installationsILg", "installations"
    $content = $content -replace "connectionsILg", "connections"
    $content = $content -replace "specificationsILg", "specifications"
    $content = $content -replace "recommendationsILg", "recommendations"
    $content = $content -replace "preparationsILg", "preparations"
    $content = $content -replace "configurationsILg", "configurations"
    $content = $content -replace "optimizationsILg", "optimizations"
    $content = $content -replace "consultationsILg", "consultations"
    $content = $content -replace "certificationsILg", "certifications"
    $content = $content -replace "qualificationsILg", "qualifications"
    $content = $content -replace "ILspectionsILg", "inspections"
    $content = $content -replace "repairILg", "repairing"
    $content = $content -replace "durILg", "during"
    $content = $content -replace "ensurILg", "ensuring"
    $content = $content -replace "maximizILg", "maximizing"
    $content = $content -replace "minimizILg", "minimizing"
    $content = $content -replace "understandILg", "understanding"
    $content = $content -replace "provIdILg", "providing"
    $content = $content -replace "improvILg", "improving"
    $content = $content -replace "reducILg", "reducing"
    $content = $content -replace "ILcreasILg", "increasing"
    $content = $content -replace "maintainILg", "maintaining"
    $content = $content -replace "achievILg", "achieving"
    
    # Save final content
    $content | Set-Content $file.FullName -Encoding UTF8
    
    Write-Host "Final cleanup: $($file.Name)"
}

Write-Host "All text artifacts cleaned!"
