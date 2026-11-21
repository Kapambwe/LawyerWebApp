# Create Law Firm Sample Data Structure
# Usage: .\create-lawfirm.ps1 -Country "usa" -FirmCode "new-firm" -FirmName "New Law Firm"

param(
    [Parameter(Mandatory=$true)]
    [string]$Country,
    
    [Parameter(Mandatory=$true)]
    [string]$FirmCode,
    
    [Parameter(Mandatory=$true)]
    [string]$FirmName
)

$basePath = ".\$Country\$FirmCode"

Write-Host "Creating law firm structure for: $FirmName" -ForegroundColor Green
Write-Host "Country: $Country" -ForegroundColor Cyan
Write-Host "Firm Code: $FirmCode" -ForegroundColor Cyan
Write-Host "Path: $basePath" -ForegroundColor Cyan
Write-Host ""

# Check if directory already exists
if (Test-Path $basePath) {
    Write-Host "Error: Directory already exists at $basePath" -ForegroundColor Red
    exit 1
}

# Create main directory
New-Item -ItemType Directory -Path $basePath -Force | Out-Null

# Create all subdirectories
$directories = @(
    'auth', 'cases', 'clients', 'lawyers', 'documents', 'billing', 
    'calendar', 'tasks', 'time', 'expenses', 'payments', 'trust', 
    'accrual', 'accounting', 'referrals', 'workflows', 'email', 
    'reports', 'settings', 'security', 'portal', 'customer-portal', 
    'projects', 'ai', 'audit'
)

Write-Host "Creating directories..." -ForegroundColor Yellow
foreach ($dir in $directories) {
    New-Item -ItemType Directory -Path "$basePath\$dir" -Force | Out-Null
    Write-Host "  ✓ $dir" -ForegroundColor Gray
}

# Create README.md
$readmeContent = @"
# $FirmName - Sample Data

This directory contains sample data for $FirmName, a fictional law firm.

## Firm Information

- **Name:** $FirmName
- **Country:** $Country
- **Firm Code:** $FirmCode
- **Location:** [City, State/Province]
- **Practice Areas:** [List practice areas]
- **Size:** [Number of attorneys, paralegals, staff]
- **Founded:** [Year]

## Directory Structure

See parent SAMPLE_DATA_STRUCTURE.md for complete directory documentation.

## Test Users

See ``auth/users.json`` for available test users and their roles.

## Data Status

- [ ] Authentication data (users.json)
- [ ] Cases
- [ ] Clients
- [ ] Lawyers
- [ ] Documents
- [ ] Billing/Invoices
- [ ] Calendar/Court Dates
- [ ] Tasks
- [ ] Timesheets
- [ ] Expenses
- [ ] Payments
- [ ] Trust Accounting
- [ ] Accrual Accounting
- [ ] General Accounting
- [ ] Referrals
- [ ] Workflows
- [ ] Email Templates
- [ ] Reports
- [ ] Settings
- [ ] Security/Permissions
- [ ] Portal Data
- [ ] Projects
- [ ] AI Data
- [ ] Audit Logs

## Notes

All data in this directory is fictional and generated for testing purposes only.
Any resemblance to real persons, companies, or cases is purely coincidental.

## Last Updated

$(Get-Date -Format "yyyy-MM-dd")
"@

Set-Content -Path "$basePath\README.md" -Value $readmeContent

# Create default users.json
$usersContent = @"
[
  {
    "username": "admin",
    "displayName": "Admin User",
    "role": "Administrator",
    "email": "admin@$($FirmCode.Replace('-', '')).com",
    "firstName": "Admin",
    "lastName": "User",
    "permissions": ["all"]
  },
  {
    "username": "lawyer1",
    "displayName": "Senior Lawyer",
    "role": "Senior Partner",
    "email": "senior.lawyer@$($FirmCode.Replace('-', '')).com",
    "firstName": "Senior",
    "lastName": "Lawyer",
    "permissions": ["cases", "clients", "documents", "billing"]
  },
  {
    "username": "lawyer2",
    "displayName": "Associate Lawyer",
    "role": "Associate Attorney",
    "email": "associate.lawyer@$($FirmCode.Replace('-', '')).com",
    "firstName": "Associate",
    "lastName": "Lawyer",
    "permissions": ["cases", "clients", "documents"]
  },
  {
    "username": "paralegal",
    "displayName": "Paralegal User",
    "role": "Senior Paralegal",
    "email": "paralegal@$($FirmCode.Replace('-', '')).com",
    "firstName": "Paralegal",
    "lastName": "User",
    "permissions": ["documents", "calendar"]
  }
]
"@

Set-Content -Path "$basePath\auth\users.json" -Value $usersContent

Write-Host ""
Write-Host "✓ Law firm structure created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Edit $basePath\README.md with firm details"
Write-Host "2. Update $basePath\auth\users.json with realistic users"
Write-Host "3. Add sample data files to each directory"
Write-Host "4. Update TestLogin.razor to include this firm in LoadLawFirms()"
Write-Host ""
Write-Host "Add to TestLogin.razor:" -ForegroundColor Cyan
Write-Host "  new LawFirmOption { Code = `"$FirmCode`", Name = `"$FirmName`" }" -ForegroundColor Gray
Write-Host ""
