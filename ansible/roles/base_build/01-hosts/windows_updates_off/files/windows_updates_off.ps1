$ServiceName = "wuauserv"
sc.exe config $ServiceName start=disabled

$Service = Get-Service -Name $ServiceName
if ($Service.Status -ne 'Stopped') {
	Stop-Service $ServiceName
}

New-Item -Path 'HKLM:\Software\Policies\Microsoft\Windows' -Name 'WindowsUpdate' -Force
New-Item -Path 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate' -Name 'AU' -Force
New-ItemProperty 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU' -name 'NoAutoUpdate' -value '1' -propertyType "DWord" -force