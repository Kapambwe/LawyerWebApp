# Sample Data Structure Guide

## Overview

This directory contains sample data organized by country and law firm for testing purposes.

## Directory Structure

```
sample-data/
├── {country}/                    # Country code (usa, uk, canada, australia)
│   └── {lawfirm}/               # Law firm code (kebab-case)
│       ├── README.md            # Firm information and description
│       ├── auth/                # Authentication and user data
│       │   └── users.json       # Test users for this firm
│       ├── cases/               # Case management data
│       │   └── cases.json
│       ├── clients/             # Client information
│       │   └── clients.json
│       ├── lawyers/             # Lawyer profiles
│       │   └── lawyers.json
│       ├── documents/           # Document metadata
│       ├── billing/             # Invoices and billing
│       ├── calendar/            # Court dates and appointments
│       ├── tasks/               # Task management
│       ├── time/                # Timesheet entries
│       ├── expenses/            # Expense tracking
│       ├── payments/            # Payment records
│       ├── trust/               # Trust accounting
│       ├── accrual/             # Accrual accounting
│       ├── accounting/          # General ledger
│       ├── referrals/           # Referral management
│       ├── workflows/           # Workflow templates
│       ├── email/               # Email templates
│       ├── reports/             # Report templates
│       ├── settings/            # Firm settings
│       ├── security/            # Roles and permissions
│       ├── portal/              # Client portal
│       ├── customer-portal/     # Customer portal
│       ├── projects/            # Project costing
│       ├── ai/                  # AI assistant data
│       └── audit/               # Audit logs
│
└── [legacy directories]         # Original sample data (for backward compatibility)
    ├── accounting/
    ├── accrual/
    ├── ai/
    └── ...
```

## Available Law Firms

### South Africa (south-africa)

#### webber-wentzel
- **Name:** Webber Wentzel
- **Location:** Johannesburg & Cape Town, South Africa
- **Practice Areas:** Corporate Law, M&A, Banking & Finance, Private Equity, Competition Law
- **Size:** Leading full-service law firm
- **Status:** ✅ Active with sample data
- **Notable:** One of Africa's premier law firms with continental reach

#### bowmans
- **Name:** Bowmans
- **Location:** Johannesburg & Cape Town, South Africa
- **Practice Areas:** Banking & Finance, Capital Markets, Mining, Corporate Law, Competition Law
- **Size:** Pan-African law firm
- **Status:** ✅ Active with sample data
- **Notable:** Strong presence across Africa with expertise in mining and natural resources

#### cliffe-dekker-hofmeyr
- **Name:** Cliffe Dekker Hofmeyr
- **Location:** Johannesburg, Cape Town & Stellenbosch, South Africa
- **Practice Areas:** Litigation, Arbitration, Competition Law, Commercial Law, Corporate Law
- **Size:** Leading South African law firm
- **Status:** ✅ Active with sample data
- **Notable:** Renowned for litigation and dispute resolution

### Kenya (kenya)

#### anjarwalla-khanna
- **Name:** Anjarwalla & Khanna (A&K)
- **Location:** Nairobi, Kenya
- **Practice Areas:** Corporate & Commercial Law, Banking & Finance, M&A, Capital Markets, Private Equity
- **Size:** Leading East African law firm
- **Status:** ✅ Active with sample data
- **Notable:** Part of Africa Legal Network with offices across East Africa

#### coulson-harney
- **Name:** Coulson Harney
- **Location:** Nairobi, Kenya
- **Practice Areas:** Real Estate, Property, Construction, Litigation, Commercial Law
- **Size:** Established Kenyan law firm
- **Status:** ✅ Active with sample data
- **Notable:** Strong expertise in real estate and property law

#### tripleoklaw
- **Name:** TripleOKLaw Advocates
- **Location:** Nairobi, Kenya
- **Practice Areas:** Employment & Labor Law, Human Rights, Commercial Law, Contracts
- **Size:** Boutique law firm
- **Status:** ✅ Active with sample data
- **Notable:** Specialized in employment and labor matters

### Nigeria (nigeria)

#### aluko-oyebode
- **Name:** Aluko & Oyebode
- **Location:** Lagos, Nigeria
- **Practice Areas:** Corporate Law, M&A, Capital Markets, Energy, Oil & Gas, Banking & Finance
- **Size:** Premier Nigerian law firm
- **Status:** ✅ Active with sample data
- **Notable:** One of Nigeria's most prestigious law firms with expertise in energy sector

#### udo-udoma-belo-osagie
- **Name:** Udo Udoma & Belo-Osagie
- **Location:** Lagos, Nigeria
- **Practice Areas:** Banking & Finance, Project Finance, Capital Markets, Securities
- **Size:** Leading Nigerian law firm
- **Status:** ✅ Active with sample data
- **Notable:** Renowned for banking and finance expertise

#### templars
- **Name:** Templars
- **Location:** Lagos, Nigeria
- **Practice Areas:** Technology, Intellectual Property, Data Privacy, Litigation, Arbitration
- **Size:** Full-service Nigerian law firm
- **Status:** ✅ Active with sample data
- **Notable:** Leading technology and IP practice in Nigeria

### Ghana (ghana)

#### bentsi-enchill-letsa
- **Name:** Bentsi-Enchill, Letsa & Ankomah
- **Location:** Accra, Ghana
- **Practice Areas:** Litigation, Constitutional Law, Corporate Law, M&A, Banking & Finance
- **Size:** Leading Ghanaian law firm
- **Status:** ✅ Active with sample data
- **Notable:** Strong constitutional and litigation practice

#### sam-okudzeto
- **Name:** Sam Okudzeto & Associates
- **Location:** Accra, Ghana
- **Practice Areas:** Litigation, Criminal Law, Civil Law, Real Estate, Property
- **Size:** Established Ghanaian law firm
- **Status:** ✅ Active with sample data
- **Notable:** Renowned litigation and criminal law practice

#### reindorf-chambers
- **Name:** Reindorf Chambers
- **Location:** Accra, Ghana
- **Practice Areas:** Constitutional Law, Human Rights, Public Law, Commercial Law, Contracts
- **Size:** Boutique law firm
- **Status:** ✅ Active with sample data
- **Notable:** Specialized in constitutional and human rights matters

### Zimbabwe (zimbabwe)

#### scanlen-holderness
- **Name:** Scanlen & Holderness
- **Location:** Harare, Zimbabwe
- **Practice Areas:** Corporate & Commercial Law, Banking, Mining, Natural Resources
- **Size:** Leading Zimbabwean law firm
- **Status:** ✅ Active with sample data
- **Notable:** One of Zimbabwe's oldest and most established law firms

#### atherstone-cook
- **Name:** Atherstone & Cook
- **Location:** Harare, Zimbabwe
- **Practice Areas:** Commercial Law, Litigation, Contracts, Property, Real Estate
- **Size:** Established Zimbabwean law firm
- **Status:** ✅ Active with sample data
- **Notable:** Strong commercial and property law practice

#### coghlan-welsh
- **Name:** Coghlan Welsh & Guest
- **Location:** Harare, Zimbabwe
- **Practice Areas:** Litigation, Arbitration, Civil Law, Banking, Finance
- **Size:** Zimbabwean law firm
- **Status:** ✅ Active with sample data
- **Notable:** Expertise in litigation and dispute resolution

### Zambia (zambia)

#### simeza-sangwa
- **Name:** Simeza, Sangwa & Associates
- **Location:** Lusaka, Zambia
- **Practice Areas:** Constitutional Law, Corporate & Commercial Law, Litigation, Banking & Finance, Mining & Energy
- **Size:** 12 partners (including 3 State Counsel), 18 associates, 15 support staff
- **Status:** ✅ Active with sample data
- **Notable:** Leading full-service law firm with expertise in constitutional matters

#### makebi-zulu
- **Name:** Makebi Zulu Advocates
- **Location:** Lusaka, Zambia
- **Practice Areas:** Constitutional Law, Electoral Law, Criminal Law, Civil Litigation, Corporate Law
- **Size:** 1 founding partner, 6 associates, 4 paralegals, 3 administrative staff
- **Status:** ✅ Active with sample data
- **Notable:** Known for constitutional matters and strong advocacy

#### mwenye-mwitwa
- **Name:** Mwenye & Mwitwa Advocates
- **Location:** Lusaka, Zambia
- **Practice Areas:** Corporate Law, Mining & Energy, Banking & Finance, Government Advisory
- **Size:** 8 partners (including 2 State Counsel), 15 associates, 12 support staff
- **Status:** ✅ Active with sample data
- **Notable:** Former Attorney General Musa Mwenye SC is founding partner

#### dickson-jere
- **Name:** Dickson Jere & Associates
- **Location:** Lusaka, Zambia
- **Practice Areas:** Employment Law, Litigation, Business Advisory, Mining Law, Property Law
- **Size:** 1 founding partner, 5 associates, 3 paralegals, 2 administrative staff
- **Status:** ✅ Active with sample data
- **Notable:** Founded by journalist-turned-lawyer Dickson Jere, admitted to bar March 14, 2014

#### mulenga-company
- **Name:** MC Mulenga & Company
- **Location:** Lusaka, Zambia
- **Practice Areas:** Corporate Law, Commercial Law, Litigation, Property Law, Debt Collection
- **Size:** 1 founding partner, 4 associates, 3 paralegals, 2 administrative staff
- **Status:** ✅ Active with sample data
- **Notable:** Founded by Simon Mwila Mulenga, focused on building long-term client relationships

### United States (usa)

#### smith-associates
- **Name:** Smith & Associates Law Firm
- **Location:** New York, NY
- **Practice Areas:** Corporate Law, Litigation, Real Estate, Family Law
- **Size:** 15 attorneys, 8 paralegals, 5 administrative staff
- **Status:** ✅ Active with sample data

## File Formats

### users.json

```json
[
  {
    "username": "string",
    "displayName": "string",
    "role": "string",
    "email": "string",
    "firstName": "string",
    "lastName": "string",
    "permissions": ["array", "of", "strings"]
  }
]
```

### Standard Data Files

Most data files follow this pattern:
- Array of objects
- Each object has an `id` field
- Dates in ISO 8601 format
- Currency values as numbers
- Enums as strings

## Creating New Law Firm Data

### Quick Start

1. **Copy Template:**
   ```bash
   cp -r sample-data/usa/smith-associates sample-data/{country}/{new-firm}
   ```

2. **Update users.json:**
   - Edit `auth/users.json` with firm-specific users
   - Update email domains to match firm

3. **Customize Data:**
   - Update firm information in README.md
   - Modify sample data to reflect firm specifics
   - Adjust case types, practice areas, etc.

4. **Register in TestLogin:**
   - Add firm to `TestLogin.razor` in `LoadLawFirms()` method

### Detailed Steps

See `TEST_LOGIN_IMPLEMENTATION.md` for complete instructions.

## Data Relationships

### Key Relationships

- **Cases** → Clients (via `clientId`)
- **Cases** → Lawyers (via `assignedLawyerId`)
- **Documents** → Cases (via `caseId`)
- **Time Entries** → Cases (via `caseId`)
- **Time Entries** → Lawyers (via `lawyerId`)
- **Invoices** → Clients (via `clientId`)
- **Payments** → Invoices (via `invoiceId`)
- **Tasks** → Cases (via `caseId`)
- **Tasks** → Lawyers (via `assignedTo`)

### ID Conventions

- Use GUIDs for IDs: `"id": "123e4567-e89b-12d3-a456-426614174000"`
- Keep IDs consistent across related data
- Use meaningful prefixes for readability (optional)

## Best Practices

### Data Quality

1. **Realistic Data:** Use realistic names, dates, and values
2. **Consistency:** Keep data relationships valid
3. **Variety:** Include different scenarios and edge cases
4. **Completeness:** Populate all required fields
5. **Privacy:** Use fictional data only

### File Organization

1. **One File Per Entity Type:** e.g., `cases.json`, `clients.json`
2. **Descriptive Names:** Use clear, consistent naming
3. **JSON Formatting:** Pretty-print with 2-space indentation
4. **Comments:** Use README.md for documentation (JSON doesn't support comments)

### Testing Coverage

Include data for:
- ✅ Happy path scenarios
- ✅ Edge cases (empty lists, null values)
- ✅ Different user roles
- ✅ Various statuses and states
- ✅ Date ranges (past, present, future)
- ✅ Different currencies and locales

## Maintenance

### Regular Updates

- Review and update sample data quarterly
- Add new features' sample data
- Remove deprecated data structures
- Keep documentation current

### Version Control

- Commit sample data changes with descriptive messages
- Tag major data structure changes
- Document breaking changes in README

## Legacy Data

The root `sample-data/` directories (without country/firm structure) are maintained for backward compatibility. New development should use the country/firm structure.

## Tools and Scripts

### Planned Tools

- Data generator script
- Data validator
- Firm cloner
- Data reset utility
- Import/export tools

## Support

For questions or issues with sample data:
1. Check this documentation
2. Review `TEST_LOGIN_IMPLEMENTATION.md`
3. Examine existing law firm data as examples
4. Contact the development team

## Contributing

When adding new law firms:
1. Follow the directory structure
2. Include complete sample data
3. Document in README.md
4. Update this file with firm information
5. Test thoroughly before committing
