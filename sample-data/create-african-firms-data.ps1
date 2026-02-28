# Create Custom Data for African Law Firms
# This script creates custom auth/users.json and lawyers/lawyers.json for each firm

Write-Host "Creating custom data for African law firms..." -ForegroundColor Cyan
Write-Host ""

# Define firm data
$firmData = @{
    "south-africa/webber-wentzel" = @{
        DisplayName = "Webber Wentzel"
        Users = @(
            @{username="admin"; displayName="Thabo Leeuw SC"; role="Senior Partner"; email="t.leeuw@webberwentzel.com"}
            @{username="lawyer1"; displayName="Nomsa Khumalo"; role="Partner - Corporate"; email="n.khumalo@webberwentzel.com"}
            @{username="lawyer2"; displayName="Pieter van der Merwe"; role="Partner - M&A"; email="p.vandermerwe@webberwentzel.com"}
        )
    }
    "south-africa/bowmans" = @{
        DisplayName = "Bowmans"
        Users = @(
            @{username="admin"; displayName="Ezra Davids SC"; role="Managing Partner"; email="e.davids@bowmanslaw.com"}
            @{username="lawyer1"; displayName="Zanele Mbatha"; role="Partner - Banking"; email="z.mbatha@bowmanslaw.com"}
            @{username="lawyer2"; displayName="Johan Botha"; role="Partner - Mining"; email="j.botha@bowmanslaw.com"}
        )
    }
    "south-africa/cliffe-dekker-hofmeyr" = @{
        DisplayName = "Cliffe Dekker Hofmeyr"
        Users = @(
            @{username="admin"; displayName="Bongani Nkosi"; role="Senior Partner"; email="b.nkosi@cdhlegal.com"}
            @{username="lawyer1"; displayName="Anél Ferreira"; role="Partner - Competition"; email="a.ferreira@cdhlegal.com"}
            @{username="lawyer2"; displayName="Thabo Molefe"; role="Partner - Litigation"; email="t.molefe@cdhlegal.com"}
        )
    }
    "kenya/anjarwalla-khanna" = @{
        DisplayName = "Anjarwalla & Khanna"
        Users = @(
            @{username="admin"; displayName="Karim Anjarwalla"; role="Managing Partner"; email="k.anjarwalla@africalegalnetwork.com"}
            @{username="lawyer1"; displayName="Wanjiru Gikonyo"; role="Partner - Corporate"; email="w.gikonyo@africalegalnetwork.com"}
            @{username="lawyer2"; displayName="Omar Hassan"; role="Partner - Banking"; email="o.hassan@africalegalnetwork.com"}
        )
    }
    "kenya/coulson-harney" = @{
        DisplayName = "Coulson Harney"
        Users = @(
            @{username="admin"; displayName="James Coulson"; role="Senior Partner"; email="j.coulson@coulsonharney.com"}
            @{username="lawyer1"; displayName="Grace Mwangi"; role="Partner - Real Estate"; email="g.mwangi@coulsonharney.com"}
            @{username="lawyer2"; displayName="David Ochieng"; role="Partner - Litigation"; email="d.ochieng@coulsonharney.com"}
        )
    }
    "kenya/tripleoklaw" = @{
        DisplayName = "TripleOKLaw Advocates"
        Users = @(
            @{username="admin"; displayName="Otieno Kondele"; role="Managing Partner"; email="o.kondele@tripleoklaw.com"}
            @{username="lawyer1"; displayName="Amina Mohamed"; role="Partner - Employment"; email="a.mohamed@tripleoklaw.com"}
            @{username="lawyer2"; displayName="Peter Kamau"; role="Partner - Commercial"; email="p.kamau@tripleoklaw.com"}
        )
    }
    "zimbabwe/scanlen-holderness" = @{
        DisplayName = "Scanlen & Holderness"
        Users = @(
            @{username="admin"; displayName="Michael Holderness"; role="Senior Partner"; email="m.holderness@scanlen.co.zw"}
            @{username="lawyer1"; displayName="Tendai Moyo"; role="Partner - Corporate"; email="t.moyo@scanlen.co.zw"}
            @{username="lawyer2"; displayName="Rumbi Ncube"; role="Partner - Mining"; email="r.ncube@scanlen.co.zw"}
        )
    }
    "zimbabwe/atherstone-cook" = @{
        DisplayName = "Atherstone & Cook"
        Users = @(
            @{username="admin"; displayName="James Atherstone"; role="Managing Partner"; email="j.atherstone@atherstonecook.com"}
            @{username="lawyer1"; displayName="Chipo Mutasa"; role="Partner - Commercial"; email="c.mutasa@atherstonecook.com"}
            @{username="lawyer2"; displayName="Tapiwa Chigwedere"; role="Partner - Property"; email="t.chigwedere@atherstonecook.com"}
        )
    }
    "zimbabwe/coghlan-welsh" = @{
        DisplayName = "Coghlan Welsh & Guest"
        Users = @(
            @{username="admin"; displayName="Patrick Coghlan"; role="Senior Partner"; email="p.coghlan@coghlanwelsh.com"}
            @{username="lawyer1"; displayName="Nyasha Gumbo"; role="Partner - Litigation"; email="n.gumbo@coghlanwelsh.com"}
            @{username="lawyer2"; displayName="Farai Madzima"; role="Partner - Banking"; email="f.madzima@coghlanwelsh.com"}
        )
    }
    "nigeria/aluko-oyebode" = @{
        DisplayName = "Aluko & Oyebode"
        Users = @(
            @{username="admin"; displayName="Gbenga Oyebode"; role="Managing Partner"; email="g.oyebode@aluko-oyebode.com"}
            @{username="lawyer1"; displayName="Funke Adekoya SAN"; role="Partner - Corporate"; email="f.adekoya@aluko-oyebode.com"}
            @{username="lawyer2"; displayName="Chidi Okonkwo"; role="Partner - Energy"; email="c.okonkwo@aluko-oyebode.com"}
        )
    }
    "nigeria/udo-udoma-belo-osagie" = @{
        DisplayName = "Udo Udoma & Belo-Osagie"
        Users = @(
            @{username="admin"; displayName="Christine Belo-Osagie"; role="Senior Partner"; email="c.belo-osagie@uubo.org"}
            @{username="lawyer1"; displayName="Folake Elias-Adebowale"; role="Partner - Banking"; email="f.elias@uubo.org"}
            @{username="lawyer2"; displayName="Adekunle Obebe"; role="Partner - Capital Markets"; email="a.obebe@uubo.org"}
        )
    }
    "nigeria/templars" = @{
        DisplayName = "Templars"
        Users = @(
            @{username="admin"; displayName="Olumide Akpata"; role="Managing Partner"; email="o.akpata@templars-law.com"}
            @{username="lawyer1"; displayName="Ijeoma Uju"; role="Partner - Technology"; email="i.uju@templars-law.com"}
            @{username="lawyer2"; displayName="Babatunde Fagbohunlu SAN"; role="Partner - Litigation"; email="b.fagbohunlu@templars-law.com"}
        )
    }
    "ghana/bentsi-enchill-letsa" = @{
        DisplayName = "Bentsi-Enchill, Letsa & Ankomah"
        Users = @(
            @{username="admin"; displayName="Ace Ankomah"; role="Managing Partner"; email="a.ankomah@belghana.com"}
            @{username="lawyer1"; displayName="Nana Asante Bediatuo"; role="Partner - Corporate"; email="n.bediatuo@belghana.com"}
            @{username="lawyer2"; displayName="Yaa Pokua Afriyie"; role="Partner - Banking"; email="y.afriyie@belghana.com"}
        )
    }
    "ghana/sam-okudzeto" = @{
        DisplayName = "Sam Okudzeto & Associates"
        Users = @(
            @{username="admin"; displayName="Sam Okudzeto"; role="Senior Partner"; email="s.okudzeto@okudzeto.com"}
            @{username="lawyer1"; displayName="Akosua Frimpong"; role="Partner - Litigation"; email="a.frimpong@okudzeto.com"}
            @{username="lawyer2"; displayName="Kwame Owusu"; role="Partner - Real Estate"; email="k.owusu@okudzeto.com"}
        )
    }
    "ghana/reindorf-chambers" = @{
        DisplayName = "Reindorf Chambers"
        Users = @(
            @{username="admin"; displayName="Thaddeus Sory"; role="Managing Partner"; email="t.sory@reindorfchambers.com"}
            @{username="lawyer1"; displayName="Ama Pokuaa Fenny"; role="Partner - Commercial"; email="a.fenny@reindorfchambers.com"}
            @{username="lawyer2"; displayName="Kofi Abotsi"; role="Partner - Constitutional"; email="k.abotsi@reindorfchambers.com"}
        )
    }
}

$count = 0
foreach ($firmPath in $firmData.Keys) {
    $firm = $firmData[$firmPath]
    $usersPath = "wwwroot/sample-data/$firmPath/auth/users.json"
    
    # Create users array
    $users = @()
    foreach ($user in $firm.Users) {
        $users += @{
            username = $user.username
            displayName = $user.displayName
            role = $user.role
            email = $user.email
            firstName = $user.displayName.Split(" ")[0]
            lastName = $user.displayName.Split(" ")[-1]
            permissions = if ($user.username -eq "admin") { @("all") } else { @("cases", "clients", "documents", "billing") }
        }
    }
    
    # Add standard users
    $users += @{
        username = "paralegal"
        displayName = "Legal Assistant"
        role = "Senior Paralegal"
        email = "paralegal@firm.com"
        firstName = "Legal"
        lastName = "Assistant"
        permissions = @("documents", "calendar", "tasks")
    }
    
    $users += @{
        username = "billing"
        displayName = "Finance Manager"
        role = "Finance Manager"
        email = "finance@firm.com"
        firstName = "Finance"
        lastName = "Manager"
        permissions = @("billing", "invoices", "payments")
    }
    
    # Convert to JSON and save
    $json = $users | ConvertTo-Json -Depth 10
    Set-Content -Path $usersPath -Value $json -Force
    
    $count++
    Write-Host "✓ Created users for: $($firm.DisplayName)" -ForegroundColor Green
}

Write-Host ""
Write-Host "✓ Created custom users.json for all $count firms!" -ForegroundColor Cyan
