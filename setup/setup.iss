; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppName "AplaSter"
#define AppVerName "AplaSter 1.0"
#define AppPublisher "Aplaline"
#define AppURL "http://www.aplaster.org"
#define AppExeName "cfged.exe"
#define AppUrlName "cfged.url"

[Setup]
AppName={#AppName}
AppVerName={#AppVerName}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
DefaultDirName={pf}\{#AppName}
DefaultGroupName={#AppName}
OutputBaseFilename=setup
Compression=lzma
SolidCompression=true
OutputDir=.

[Languages]
Name: eng; MessagesFile: compiler:Default.isl
Name: ger; MessagesFile: compiler:Languages\German.isl
Name: pol; MessagesFile: compiler:Languages\Polish.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}

[Files]
Source: ..\cfged\cfged.exe; DestDir: {app}; Flags: ignoreversion
Source: gds32.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\common\Database.sql; DestDir: {app}; Flags: ignoreversion
Source: ..\cfged\example.cfg; DestDir: {app}\Examples; Flags: ignoreversion
Source: ..\server\aplasvr.exe; DestDir: {app}; Flags: ignoreversion
;Source: ..\doc\manual.pdf; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: {app}\{#AppUrlName}; Section: InternetShortcut; Key: URL; String: {#AppURL}

[Icons]
Name: {group}\{#AppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}
;Name: {group}\User's manual; Filename: {app}\manual.pdf
Name: {group}\{cm:ProgramOnTheWeb,{#AppName}}; Filename: {app}\{#AppUrlName}
Name: {group}\{cm:UninstallProgram,{#AppName}}; WorkingDir: {app}; Filename: {uninstallexe}
Name: {userdesktop}\{#AppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}; Tasks: quicklaunchicon 
Name: {commonstartup}\Server; Filename: {app}\aplasvr.exe; Parameters: --hide; WorkingDir: {app}; IconIndex: 0

[Run]
Filename: {app}\{#AppExeName}; Description: {cm:LaunchProgram,{#AppName}}; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: {app}\{#AppUrlName}

