; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AuthPass"
#ifndef MyAppVersion
  #define MyAppVersion "1.5"
#endif
#define MyAppPublisher "CodeUX.design e.U."
#define MyAppURL "https://authpass.app/"
#define MyAppExeName "authpass.exe"
#define AuthPassSourceDir "../.."
#define BaseDirSource "."
#define BaseDirRelease "build\_authpass\windows\release\authpass"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5083967D-6871-4C02-9015-ACF70795300F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=build\_authpass\windows\setup
OutputBaseFilename=AuthPassSetup-{#MyAppVersion}
SetupIconFile={#BaseDirSource}\_tools\windows\authpass-logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SourceDir={#AuthPassSourceDir}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#BaseDirRelease}\authpass.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#BaseDirRelease}\file_chooser_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#BaseDirRelease}\flutter_windows.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#BaseDirRelease}\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#BaseDirRelease}\url_launcher_fde_plugin.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#BaseDirRelease}\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#BaseDirRelease}\vcruntime140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseDirRelease}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

