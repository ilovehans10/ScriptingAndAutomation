New-Item -Path "C:/" -Name "PowerShellReports" -ItemType "Directory" && Set-Location "C:/PowerShellReports"
New-Item "ProcessReport.txt"
Get-Process > "ProcessReport.txt"
$NAME = "ProcessReport_Hans_$(Get-Date -Format "MM_dd_yyyy").txt"
Copy-Item -Path "ProcessReport.txt" -Destination $NAME
Get-ChildItem .
