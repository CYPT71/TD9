Dim Shell, DesktopPath, INK
Set Shell = CreateObject("WScript.Shell")
DesktopPath = Shell.SpecialFolders("Desktop")
Set Ink = Shell.CreateShortcut(DesktopPath & "\TD9.lnk")
Ink.TargetPath = "C:\Users\cypri\Desktop\TD9\launcher.bat"
Ink.WindowStyle = 1
Ink.IconLocation = "C:\Users\cypri\Desktop\TD9\favicon.ico"
Ink.Save