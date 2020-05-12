Dim Shell, DesktopPath, INK, Commande,WSHShell
Set Shell = CreateObject("WScript.Shell")
DesktopPath = Shell.SpecialFolders("Desktop")
Set Ink = Shell.CreateShortcut(DesktopPath & "\TD9.lnk")
Ink.TargetPath = "C:\Users\cypri\Desktop\TD9\installateur\launcher.bat"
Ink.WindowStyle = 1
Ink.IconLocation = "C:\Users\cypri\Desktop\TD9\installateur\favicon.ico"
Ink.Save
Set WSHShell = CreateObject("WScript.Shell")
Commande = "C:\Users\cypri\Desktop\TD9\installateur\launcher.bat"
WSHShell.Run Commande
Set WSHShell = Nothing