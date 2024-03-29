; This script is best executed by Meddy's "Make" utility.

#define MyAppVersion "2.11.2.428"
#define MyAppName "Meddy"
#define MyAppExeName "Meddy.exe"
#define MyAppPublisher "APL Team Ltd"
#define MyAppURL "https://github.com/aplteam/Meddy"
#define MyAppIcoName "Meddy2.ico"
#define MyBlank " "
#define TargetDir "Dist\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{8CE7BDB0-E90D-4B09-8E2A-221C11643A3A}

AppName="{#MyAppName}"
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf32}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
OutputDir=C:/Users/kai/AppData/Local/Temp/InnoTempDir
OutputBaseFilename="SetUp_{#MyAppName}_{#MyAppVersion}"
Compression=lzma
SolidCompression=yes
SetupIconFile={#MyAppIcoName}
;UninstallDisplayIcon={app}\{#MyAppIcoName}


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License";

[Registry]
; Globals
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}"; Flags: uninsdeletekeyifempty
Root: HKLM32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; Flags: uninsdeletekey
Root: HKCR;   Subkey: ".md"; ValueType: string; ValueName: ""; ValueData: "markdownfile"; Flags: uninsdeletevalue; Tasks: DefaultApp
Root: HKCR;   Subkey: "markdownfile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletevalue; Tasks: DefaultApp
;User-specific 
Root: HKCU32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\MainForm"; ValueType: string; ValueName: "Splitter1Posn"; ValueData: ""; Flags: uninsdeletekey
Root: HKCU32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\MainForm"; ValueType: string; ValueName: "Splitter2Posn"; ValueData: ""; Flags: uninsdeletekey
Root: HKCU32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; ValueType: dword; ValueName: "FontSize"; ValueData: 17; Flags: uninsdeletekey
Root: HKCU32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; ValueType: string; ValueName: "RecentFiles"; ValueData: ""; Flags: uninsdeletekey
Root: HKCU32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\Preferences"; ValueType: dword; ValueName: "FirstFlag"; ValueData: 1; Flags: uninsdeletekey
Root: HKCU32; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}\Preferences"; ValueType: dword; ValueName: "SaveHTML"; ValueData: 1; Flags: uninsdeletekey

[Dirs]
Name: "{commonappdata}\{#MyAppName}"; Permissions: users-modify

[Files]
; Source: "MarkAPL.dyalog"; DestDir: "{commonappdata}\{#MyAppName}";
Source: "MarkAPL.html"; DestDir: "{app}";
Source: "MarkAPL_CheatSheet.html"; DestDir: "{app}";
Source: "LeanPubExtensions.html"; DestDir: "{app}";
Source: "QuickIntro.html"; DestDir: "{app}";
Source: "Styles.html"; DestDir: "{app}";
Source: "Presentations.html"; DestDir: "{app}";
Source: "CSS/MarkAPL_print.css"; DestDir: "{app}/CSS";
Source: "CSS/MarkAPL_screen.css"; DestDir: "{app}/CSS";
Source: "CSS/BlackOnWhite_print.css"; DestDir: "{app}/CSS";
Source: "CSS/BlackOnWhite_screen.css"; DestDir: "{app}/CSS";
Source: "CSS/PresentAPL_Blue.css"; DestDir: "{app}/CSS";
Source: "CSS/PresentAPL_Green.css"; DestDir: "{app}/CSS"; 

; The Conga DLLs are needed for "Check for updates" (and potentially a Ride)
Source: "conga33ssl32.dll"; DestDir: "{app}";
Source: "conga33_32.dll"; DestDir: "{app}";

; These files are needed for the "Check for updates" command via .NET:
Source: "bridge180_unicode.dll"; DestDir: "{app}";
Source: "dyalognet.dll"; DestDir: "{app}"     

;Source: "Dyalog.Net.Bridge.dll"; DestDir: "{app}"          ; Only needed for .NET 
;Source: "Dyalog.Net.Bridge.Host.dll"; DestDir: "{app}"     ; Only needed for .NET 

Source: "{#TargetDir}\{#MyAppExeName}"; DestDir: "{app}"
Source: "ReadMe.html"; DestDir: "{app}";
Source: "ReleaseNotes.html"; DestDir: "{app}";
Source: "Meddy2.ico"; DestDir: "{app}";
Source: "app.ini.remove_me"; DestDir: "{app}"; DestName:"app.ini"; Flags: onlyifdoesntexist;
Source: "specialchars.ini.remove_me"; DestDir: "{app}"; DestName:"specialchars.ini"; Flags: onlyifdoesntexist;
Source: {#MyAppIcoName}; DestDir: "{app}";
Source: "C:\Windows\Fonts\apl385.ttf"; DestDir: "{fonts}"; FontInstall: "APL385 Unicode"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "LICENSE"; DestDir: "{app}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files


[Icons]
Name: "{group}\Start Meddy"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}\";  IconFilename: "{app}\{#MyAppIcoName}" 
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\{#MyAppIcoName}"; Tasks: desktopicon

[Run]
Filename: "{app}\ReadMe.html"; Description: "View the README file"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\ReleaseNotes.html"; Description: "View the Release Notes"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Meddy"; Flags: postinstall skipifsilent nowait

; Strangely sometimes (rarely) this seems to be required in order to be able to Ride into Meddy:
; Filename: "netsh"; Description:"Give Meddy network access";  Parameters: "advfirewall firewall add rule dir=in program=""{{DefaultDirName}}\Meddy.exe"" action=allow"; Flags: postinstall nowait runhidden unchecked
; I've seen this once in a VM.

[Tasks]
Name: "DefaultApp"; Description: "Make Meddy the default application for any markdown (*.md) files";
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Code]
