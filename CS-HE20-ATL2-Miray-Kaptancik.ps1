<#
.SYNOPSIS
Erstkonfiguration Client
.DESCRIPTION
#Define Hostname
#Authentication Domain User
Dieses Skript ermöglicht die Erstkonfiguration von einem Client mit dem OS Windows 10. 
Als erstes werden nicht benötigte Programme deeinstalliert. Danach Windows Updates installiert.
Anschliessend benötigte Softwares installiert. 
Der hostname geändert und anschliessend wird der Host in die Domäne aufgenommen.
Zuguterletzt einige "design" Funktionen deaktiviert.


.NOTES
Author: 	Miray Kaptancik
Date: 		16.11.2022
Version:	1.0
File:		CS-HE20-ATL2-Miray-Kaptancik.ps1
#>

#Requires -RunAsAdministrator

function uninstall_apps {
$SoftwareLocation = 'C:\Program Files, C:\Program Files (x86), C:\Program Files directory'
Test-Path $SoftwareLocation
if (Test-Path $app = True) {

  Remove-Item $app

}

    $app.uninstall = @(
        @{name = "Energy Star" },
        @{name = "HP Documentation" },
        @{name = "HP Jump Start Bridge" },
        @{name = "HP Jump Start Launch" },
        @{name = "HP Registration Service" },
        @{name = "HP Support Solutions Framework" },
        @{name = "HP ePrint" },
        @{name = "HP ClientSecurity Manager" },
        @{name = "HP Drive Encryption" },
        @{name = "HP File Sanitizer" },
        @{name = "HP Software Set up" },
        @{name = "HP Theft Recovery" },
        @{name = "Skype" },
        @{name = "Spotify" },
        @{name = "XING" },
        @{name = "OneDrive" },
        @{name = "Spotify" }
    );
    Get-AppxProvisionedPackage -online | % { if ($_.packagename -match "Microsoft.Office.Desktop") { $_ | Remove-AppxProvisionedPackage -AllUsers } }
}

function install_WinUpdates {
    $Updates = Start-WUScan -SearchCriteria "IsInstalled=0 AND IsHidden=0 AND IsAssigned=1"
    Install-WUUpdates -Updates $Updates
}

function install_apps {
    $apps = @(
        @{name = "Adobe.Acrobat.Reader.64-bit" },
        @{name = "Google.Chrome" }
    );
    Foreach ($app in $apps) {
        $listApp = winget list --exact -q $app.name
        if (![String]::Join("", $listApp).Contains($app.name)) {
            Write-host "Installiert: " $app.name
            winget install -e -h --accept-source-agreements --accept-package-agreements --id $app.name 
        }
        else {
            Write-host "Skipping: " $app.name " (bereits installiert)"
        }
    }

function rename-Host {
    [String]$Hostname = Read-Host
    Rename-Host -"" $Hostname
    Echo " Das Gerät muss neu gestartet werden!"
    Restart-Host
    }

funtion addinDomain {
    Add-Computer -DomainName ringele1 -Credential "" -Restart 
    }

function design{
    CortanaButton -Hide
    CortanaAutostart -Disable
    TaskbarSearch -Hide
    NewsInterests -Disable
    UnpinTaskbarShortcuts -Shortcuts Edge, Store, Mail
 }
}
