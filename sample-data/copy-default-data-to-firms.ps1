# Copy Default Sample Data to All Law Firms
# This script copies all JSON files from the default folder to each law firm

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Copy Default Data to Law Firms" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Define all law firms by country
$lawFirms = @{
    "usa" = @("smith-associates")
    "zambia" = @("simeza-sangwa", "makebi-zulu", "mwenye-mwitwa", "dickson-jere", "mulenga-company")
}

# Get all JSON files from default folder
$defaultPath = ".\default"
$jsonFiles = Get-ChildItem -Path $defaultPath -Recurse -Filter "*.json"

Write-Host "Found $($jsonFiles.Count) JSON files in default folder" -ForegroundColor Green
Write-Host ""

$totalCopied = 0
$totalSkipped = 0

# Process each country
foreach ($country in $lawFirms.Keys) {
    Write-Host "Processing country: $country" -ForegroundColor Yellow
    
    # Process each law firm in the country
    foreach ($firm in $lawFirms[$country]) {
        $firmPath = ".\$country\$firm"
        
        if (-not (Test-Path $firmPath)) {
            Write-Host "  ⚠️  Firm directory not found: $firmPath" -ForegroundColor Red
            continue
        }
        
        Write-Host "  Processing firm: $firm" -ForegroundColor Cyan
        
        $copiedCount = 0
        $skippedCount = 0
        
        # Copy each JSON file
        foreach ($file in $jsonFiles) {
            # Get relative path from default folder
            $relativePath = $file.FullName.Replace($defaultPath, "").TrimStart("\")
            $targetPath = Join-Path $firmPath $relativePath
            $targetDir = Split-Path $targetPath -Parent
            
            # Create target directory if it doesn't exist
            if (-not (Test-Path $targetDir)) {
                New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
            }
            
            # Check if file already exists
            if (Test-Path $targetPath) {
                # Skip if file already exists (don't overwrite custom data)
                $skippedCount++
            } else {
                # Copy the file
                Copy-Item -Path $file.FullName -Destination $targetPath -Force
                $copiedCount++
            }
        }
        
        Write-Host "    ✓ Copied: $copiedCount files" -ForegroundColor Green
        Write-Host "    ⊘ Skipped: $skippedCount files (already exist)" -ForegroundColor Gray
        
        $totalCopied += $copiedCount
        $totalSkipped += $skippedCount
    }
    
    Write-Host ""
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Summary" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Total files copied: $totalCopied" -ForegroundColor Green
Write-Host "Total files skipped: $totalSkipped" -ForegroundColor Gray
Write-Host ""
Write-Host "✓ All law firms now have complete sample data!" -ForegroundColor Green
Write-Host ""
