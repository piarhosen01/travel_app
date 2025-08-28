# flutter_wifi_connect.ps1
# Navigate to the Flutter project root
Set-Location "$PSScriptRoot\travelapp"

$adbPath = "C:\Users\piarh\AppData\Local\Android\Sdk\platform-tools\adb.exe"
$phoneIP = "192.168.0.177:5555"

# Connect device over WiFi
& $adbPath tcpip 5555
Start-Sleep -Seconds 2
& $adbPath connect $phoneIP

# List devices
& $adbPath devices

# Run Flutter app on the WiFi device
flutter run -d $phoneIP
#to run in mobile via wifi run this command in powershell
#.\flutter_wifi_connect.ps1