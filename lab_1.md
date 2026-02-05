### Step 1:

First we create the directory `PowerShellReports` at the path `C:/`. Next we move into the directory so future commands are shorter and I feel like it makes things more intuitive. I found the information for flags to use from `get-help -Full New-Item` and `get-help -Full Set-Location`

```Powershell
New-Item -Path "C:/" -Name "PowerShellReports" -ItemType "Directory" && Set-Location "C:/PowerShellReports"
```

### Step 2:

Next we create the file using New-Item. Normally I would combine this with the next command as using a redirect into a file creates the file. The information for this is from `get-help -Full New-Item`

```Powershell
New-Item "ProcessReport.txt"
```

### Step 3:

In this step the output of `Get-Process` is redirected into `ProcessReport.txt`. The information on how to do this is a carryover from my time using redirects in zsh.

```Powershell
Get-Process > "ProcessReport.txt"
```

### Step 4:

In this step I use two commands to make it easier to parse. The first line is saving the filename as a variable for use later. It uses process command substitution which I know from my time using zsh. The second line copies the file and uses the variable from the first line to name the copied file. The arguments for `Copy-Item` I found using `get-help -Full Copy-Item`

```Powershell
$NAME = "ProcessReport_Hans_$(Get-Date -Format "MM_dd_yyyy").txt"

Copy-Item -Path "ProcessReport.txt" -Destination $NAME
```

### Step 5:

In the last step we get a list of the files in the current directory using the `Get-ChildItem` command. We talked about this command in class which is how I know to use it.

```Powershell
Get-ChildItem .
```
