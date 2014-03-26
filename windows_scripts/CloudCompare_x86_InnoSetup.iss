; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CloudCompare"
#define MyAppVersion "2.5.4"
#define MyAppPublisher "Daniel Girardeau-Montaut"
#define MyAppURL "http://www.cloudcompare.org/"
#define MyAppExeName "CloudCompare.exe"
#define MyVCRedistPath "E:\Incoming\vc_redist"
#define MyCCPath "E:\These\C++\CloudCompare\bin_x86_msvc_2008\CloudCompare"
#define MyOutputDir "E:\These\C++\CloudCompare\bin_x86_msvc_2008"
#define MyCreationDate GetDateTimeString('mm_dd_yyyy', '', '')

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppID={{4DE0A2C8-03F9-4B3F-BAFC-1D5F2141464B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=true
OutputBaseFilename={#MyAppName}_v{#MyAppVersion}_setup_x86
Compression=lzma2/Ultra64
SolidCompression=true
OutputDir={#MyOutputDir}
InternalCompressLevel=Ultra64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#MyCCPath}\CloudCompare.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyCCPath}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "{#MyVCRedistPath}\vcredist_x86.exe"; DestDir: {tmp}; Flags: deleteafterinstall 32bit; 

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
Filename: "{tmp}\vcredist_x86.exe"; Parameters: "/q"
