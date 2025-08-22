# Setup script for Windows 11

# Set winget to use the Microsoft Store as a source
winget source add --name msstore --arg https://storeedgefd.dsx.mp.microsoft.com/v9.0

# Install my applications, use the windows store where possible
winget install Proton.ProtonDrive Proton.ProtonMail Proton.ProtonPass Proton.ProtonVPN OpenWhisperSystems.Signal 9NKSQGP7F2NH XP8JNQFBQH6PVF 9NZVDKPMR9RD XP9KHM4BK9FZ7Q 9PD9BHGLFC7H 9PNSJCLXDZ0V 9PFHDD62MXS1 XP89DCGQ3K6VLD 9PFHDD62MXS1

# Set up Windows settings

Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name MMTaskbarMode -Value 1
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name "sShortTime" -Value "HH:mm"
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name "sTimeFormat" -Value "HH:mm:ss"
Stop-Process -Name explorer -Force
Start-Process explorer.exe