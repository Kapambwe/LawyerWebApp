# Create Custom Lawyers Data for African Law Firms
# This script creates custom lawyers/lawyers.json for each firm

Write-Host "Creating custom lawyers data for African law firms..." -ForegroundColor Cyan
Write-Host ""

# Define firm lawyers data
$firmLawyers = @{
    "south-africa/webber-wentzel" = @(
        @{id="1"; firstName="Thabo"; lastName="Leeuw"; email="t.leeuw@webberwentzel.com"; phone="+27-11-530-5000"; specializations=@("corporateLaw","mergersAcquisitions"); barNumber="SA-12345"; yearsOfExperience=25; hourlyRate=500; status="active"}
        @{id="2"; firstName="Nomsa"; lastName="Khumalo"; email="n.khumalo@webberwentzel.com"; phone="+27-11-530-5001"; specializations=@("corporateLaw","banking"); barNumber="SA-12346"; yearsOfExperience=15; hourlyRate=450; status="active"}
        @{id="3"; firstName="Pieter"; lastName="van der Merwe"; email="p.vandermerwe@webberwentzel.com"; phone="+27-11-530-5002"; specializations=@("mergersAcquisitions","privatEquity"); barNumber="SA-12347"; yearsOfExperience=18; hourlyRate=480; status="active"}
    )
    "south-africa/bowmans" = @(
        @{id="1"; firstName="Ezra"; lastName="Davids"; email="e.davids@bowmanslaw.com"; phone="+27-11-669-9000"; specializations=@("banking","finance"); barNumber="SA-22345"; yearsOfExperience=22; hourlyRate=520; status="active"}
        @{id="2"; firstName="Zanele"; lastName="Mbatha"; email="z.mbatha@bowmanslaw.com"; phone="+27-11-669-9001"; specializations=@("banking","capitalMarkets"); barNumber="SA-22346"; yearsOfExperience=14; hourlyRate=440; status="active"}
        @{id="3"; firstName="Johan"; lastName="Botha"; email="j.botha@bowmanslaw.com"; phone="+27-11-669-9002"; specializations=@("mining","energy"); barNumber="SA-22347"; yearsOfExperience=20; hourlyRate=490; status="active"}
    )
    "south-africa/cliffe-dekker-hofmeyr" = @(
        @{id="1"; firstName="Bongani"; lastName="Nkosi"; email="b.nkosi@cdhlegal.com"; phone="+27-11-562-1000"; specializations=@("litigation","arbitration"); barNumber="SA-32345"; yearsOfExperience=24; hourlyRate=510; status="active"}
        @{id="2"; firstName="Anél"; lastName="Ferreira"; email="a.ferreira@cdhlegal.com"; phone="+27-11-562-1001"; specializations=@("competition","antitrust"); barNumber="SA-32346"; yearsOfExperience=16; hourlyRate=460; status="active"}
        @{id="3"; firstName="Thabo"; lastName="Molefe"; email="t.molefe@cdhlegal.com"; phone="+27-11-562-1002"; specializations=@("litigation","commercialLaw"); barNumber="SA-32347"; yearsOfExperience=19; hourlyRate=475; status="active"}
    )
    "kenya/anjarwalla-khanna" = @(
        @{id="1"; firstName="Karim"; lastName="Anjarwalla"; email="k.anjarwalla@africalegalnetwork.com"; phone="+254-20-364-0000"; specializations=@("corporateLaw","mergersAcquisitions"); barNumber="KE-12345"; yearsOfExperience=23; hourlyRate=400; status="active"}
        @{id="2"; firstName="Wanjiru"; lastName="Gikonyo"; email="w.gikonyo@africalegalnetwork.com"; phone="+254-20-364-0001"; specializations=@("corporateLaw","banking"); barNumber="KE-12346"; yearsOfExperience=13; hourlyRate=350; status="active"}
        @{id="3"; firstName="Omar"; lastName="Hassan"; email="o.hassan@africalegalnetwork.com"; phone="+254-20-364-0002"; specializations=@("banking","finance"); barNumber="KE-12347"; yearsOfExperience=17; hourlyRate=380; status="active"}
    )
    "kenya/coulson-harney" = @(
        @{id="1"; firstName="James"; lastName="Coulson"; email="j.coulson@coulsonharney.com"; phone="+254-20-289-9000"; specializations=@("realEstate","property"); barNumber="KE-22345"; yearsOfExperience=26; hourlyRate=420; status="active"}
        @{id="2"; firstName="Grace"; lastName="Mwangi"; email="g.mwangi@coulsonharney.com"; phone="+254-20-289-9001"; specializations=@("realEstate","construction"); barNumber="KE-22346"; yearsOfExperience=15; hourlyRate=360; status="active"}
        @{id="3"; firstName="David"; lastName="Ochieng"; email="d.ochieng@coulsonharney.com"; phone="+254-20-289-9002"; specializations=@("litigation","commercialLaw"); barNumber="KE-22347"; yearsOfExperience=18; hourlyRate=390; status="active"}
    )
    "kenya/tripleoklaw" = @(
        @{id="1"; firstName="Otieno"; lastName="Kondele"; email="o.kondele@tripleoklaw.com"; phone="+254-20-271-9000"; specializations=@("employment","labor"); barNumber="KE-32345"; yearsOfExperience=21; hourlyRate=410; status="active"}
        @{id="2"; firstName="Amina"; lastName="Mohamed"; email="a.mohamed@tripleoklaw.com"; phone="+254-20-271-9001"; specializations=@("employment","humanRights"); barNumber="KE-32346"; yearsOfExperience=14; hourlyRate=355; status="active"}
        @{id="3"; firstName="Peter"; lastName="Kamau"; email="p.kamau@tripleoklaw.com"; phone="+254-20-271-9002"; specializations=@("commercialLaw","contracts"); barNumber="KE-32347"; yearsOfExperience=16; hourlyRate=370; status="active"}
    )
    "zimbabwe/scanlen-holderness" = @(
        @{id="1"; firstName="Michael"; lastName="Holderness"; email="m.holderness@scanlen.co.zw"; phone="+263-24-2794571"; specializations=@("corporateLaw","commercialLaw"); barNumber="ZW-12345"; yearsOfExperience=27; hourlyRate=300; status="active"}
        @{id="2"; firstName="Tendai"; lastName="Moyo"; email="t.moyo@scanlen.co.zw"; phone="+263-24-2794572"; specializations=@("corporateLaw","banking"); barNumber="ZW-12346"; yearsOfExperience=16; hourlyRate=250; status="active"}
        @{id="3"; firstName="Rumbi"; lastName="Ncube"; email="r.ncube@scanlen.co.zw"; phone="+263-24-2794573"; specializations=@("mining","naturalResources"); barNumber="ZW-12347"; yearsOfExperience=19; hourlyRate=280; status="active"}
    )
    "zimbabwe/atherstone-cook" = @(
        @{id="1"; firstName="James"; lastName="Atherstone"; email="j.atherstone@atherstonecook.com"; phone="+263-24-2702891"; specializations=@("commercialLaw","litigation"); barNumber="ZW-22345"; yearsOfExperience=24; hourlyRate=310; status="active"}
        @{id="2"; firstName="Chipo"; lastName="Mutasa"; email="c.mutasa@atherstonecook.com"; phone="+263-24-2702892"; specializations=@("commercialLaw","contracts"); barNumber="ZW-22346"; yearsOfExperience=15; hourlyRate=260; status="active"}
        @{id="3"; firstName="Tapiwa"; lastName="Chigwedere"; email="t.chigwedere@atherstonecook.com"; phone="+263-24-2702893"; specializations=@("property","realEstate"); barNumber="ZW-22347"; yearsOfExperience=17; hourlyRate=270; status="active"}
    )
    "zimbabwe/coghlan-welsh" = @(
        @{id="1"; firstName="Patrick"; lastName="Coghlan"; email="p.coghlan@coghlanwelsh.com"; phone="+263-24-2794301"; specializations=@("litigation","arbitration"); barNumber="ZW-32345"; yearsOfExperience=28; hourlyRate=320; status="active"}
        @{id="2"; firstName="Nyasha"; lastName="Gumbo"; email="n.gumbo@coghlanwelsh.com"; phone="+263-24-2794302"; specializations=@("litigation","civilLaw"); barNumber="ZW-32346"; yearsOfExperience=14; hourlyRate=255; status="active"}
        @{id="3"; firstName="Farai"; lastName="Madzima"; email="f.madzima@coghlanwelsh.com"; phone="+263-24-2794303"; specializations=@("banking","finance"); barNumber="ZW-32347"; yearsOfExperience=18; hourlyRate=275; status="active"}
    )
    "nigeria/aluko-oyebode" = @(
        @{id="1"; firstName="Gbenga"; lastName="Oyebode"; email="g.oyebode@aluko-oyebode.com"; phone="+234-1-462-8360"; specializations=@("corporateLaw","mergersAcquisitions"); barNumber="NG-12345"; yearsOfExperience=30; hourlyRate=550; status="active"}
        @{id="2"; firstName="Funke"; lastName="Adekoya"; email="f.adekoya@aluko-oyebode.com"; phone="+234-1-462-8361"; specializations=@("corporateLaw","capitalMarkets"); barNumber="NG-12346"; yearsOfExperience=20; hourlyRate=480; status="active"}
        @{id="3"; firstName="Chidi"; lastName="Okonkwo"; email="c.okonkwo@aluko-oyebode.com"; phone="+234-1-462-8362"; specializations=@("energy","oilGas"); barNumber="NG-12347"; yearsOfExperience=22; hourlyRate=500; status="active"}
    )
    "nigeria/udo-udoma-belo-osagie" = @(
        @{id="1"; firstName="Christine"; lastName="Belo-Osagie"; email="c.belo-osagie@uubo.org"; phone="+234-1-462-2307"; specializations=@("banking","finance"); barNumber="NG-22345"; yearsOfExperience=28; hourlyRate=530; status="active"}
        @{id="2"; firstName="Folake"; lastName="Elias-Adebowale"; email="f.elias@uubo.org"; phone="+234-1-462-2308"; specializations=@("banking","projectFinance"); barNumber="NG-22346"; yearsOfExperience=19; hourlyRate=470; status="active"}
        @{id="3"; firstName="Adekunle"; lastName="Obebe"; email="a.obebe@uubo.org"; phone="+234-1-462-2309"; specializations=@("capitalMarkets","securities"); barNumber="NG-22347"; yearsOfExperience=21; hourlyRate=490; status="active"}
    )
    "nigeria/templars" = @(
        @{id="1"; firstName="Olumide"; lastName="Akpata"; email="o.akpata@templars-law.com"; phone="+234-1-461-2820"; specializations=@("technology","intellectualProperty"); barNumber="NG-32345"; yearsOfExperience=25; hourlyRate=520; status="active"}
        @{id="2"; firstName="Ijeoma"; lastName="Uju"; email="i.uju@templars-law.com"; phone="+234-1-461-2821"; specializations=@("technology","dataPrivacy"); barNumber="NG-32346"; yearsOfExperience=17; hourlyRate=460; status="active"}
        @{id="3"; firstName="Babatunde"; lastName="Fagbohunlu"; email="b.fagbohunlu@templars-law.com"; phone="+234-1-461-2822"; specializations=@("litigation","arbitration"); barNumber="NG-32347"; yearsOfExperience=23; hourlyRate=510; status="active"}
    )
    "ghana/bentsi-enchill-letsa" = @(
        @{id="1"; firstName="Ace"; lastName="Ankomah"; email="a.ankomah@belghana.com"; phone="+233-30-221-1301"; specializations=@("litigation","constitutionalLaw"); barNumber="GH-12345"; yearsOfExperience=26; hourlyRate=380; status="active"}
        @{id="2"; firstName="Nana Asante"; lastName="Bediatuo"; email="n.bediatuo@belghana.com"; phone="+233-30-221-1302"; specializations=@("corporateLaw","mergersAcquisitions"); barNumber="GH-12346"; yearsOfExperience=18; hourlyRate=340; status="active"}
        @{id="3"; firstName="Yaa Pokua"; lastName="Afriyie"; email="y.afriyie@belghana.com"; phone="+233-30-221-1303"; specializations=@("banking","finance"); barNumber="GH-12347"; yearsOfExperience=20; hourlyRate=360; status="active"}
    )
    "ghana/sam-okudzeto" = @(
        @{id="1"; firstName="Sam"; lastName="Okudzeto"; email="s.okudzeto@okudzeto.com"; phone="+233-30-276-6271"; specializations=@("litigation","criminalLaw"); barNumber="GH-22345"; yearsOfExperience=29; hourlyRate=400; status="active"}
        @{id="2"; firstName="Akosua"; lastName="Frimpong"; email="a.frimpong@okudzeto.com"; phone="+233-30-276-6272"; specializations=@("litigation","civilLaw"); barNumber="GH-22346"; yearsOfExperience=16; hourlyRate=330; status="active"}
        @{id="3"; firstName="Kwame"; lastName="Owusu"; email="k.owusu@okudzeto.com"; phone="+233-30-276-6273"; specializations=@("realEstate","property"); barNumber="GH-22347"; yearsOfExperience=19; hourlyRate=350; status="active"}
    )
    "ghana/reindorf-chambers" = @(
        @{id="1"; firstName="Thaddeus"; lastName="Sory"; email="t.sory@reindorfchambers.com"; phone="+233-30-222-1234"; specializations=@("constitutionalLaw","humanRights"); barNumber="GH-32345"; yearsOfExperience=27; hourlyRate=390; status="active"}
        @{id="2"; firstName="Ama Pokuaa"; lastName="Fenny"; email="a.fenny@reindorfchambers.com"; phone="+233-30-222-1235"; specializations=@("commercialLaw","contracts"); barNumber="GH-32346"; yearsOfExperience=15; hourlyRate=325; status="active"}
        @{id="3"; firstName="Kofi"; lastName="Abotsi"; email="k.abotsi@reindorfchambers.com"; phone="+233-30-222-1236"; specializations=@("constitutionalLaw","publicLaw"); barNumber="GH-32347"; yearsOfExperience=21; hourlyRate=370; status="active"}
    )
}

$count = 0
foreach ($firmPath in $firmLawyers.Keys) {
    $lawyers = $firmLawyers[$firmPath]
    $lawyersPath = "wwwroot/sample-data/$firmPath/lawyers/lawyers.json"
    
    # Create lawyers array with proper structure
    $lawyersArray = @()
    foreach ($lawyer in $lawyers) {
        $lawyersArray += @{
            id = $lawyer.id
            firstName = $lawyer.firstName
            lastName = $lawyer.lastName
            fullName = "$($lawyer.firstName) $($lawyer.lastName)"
            email = $lawyer.email
            phone = $lawyer.phone
            specializations = $lawyer.specializations
            barNumber = $lawyer.barNumber
            yearsOfExperience = $lawyer.yearsOfExperience
            hourlyRate = $lawyer.hourlyRate
            isAvailable = $true
            status = $lawyer.status
            joinedDate = (Get-Date).AddYears(-$lawyer.yearsOfExperience).ToString("yyyy-MM-ddTHH:mm:ssZ")
        }
    }
    
    # Convert to JSON and save
    $json = $lawyersArray | ConvertTo-Json -Depth 10
    Set-Content -Path $lawyersPath -Value $json -Force
    
    $count++
    $firmName = $firmPath.Split("/")[1]
    Write-Host "✓ Created lawyers for: $firmName" -ForegroundColor Green
}

Write-Host ""
Write-Host "✓ Created custom lawyers.json for all $count firms!" -ForegroundColor Cyan
