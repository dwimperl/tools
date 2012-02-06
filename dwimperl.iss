; -- dwimperl.iss --

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!
; using ISC 5.4.2(a)

; TODO: Restrict the installation path to have  no non-ascii characters in the path
; TODO: do we need to set Environment variable other than Path ? e.g. file extension mapping?
; TODO: Add alot more menu items that the original Strawberry also adds
; TODO: Add desktop icon for Padre (ask user?)
; TODO: add License
; TODO: add README
; TODO: check for other perl installations (eg. in the Path variable) and warn or even abort if there is another one

[Setup]
AppName=DwimPerl
AppVersion=0.06
DefaultDirName=\Dwimperl
DefaultGroupName=DWIM Perl
; UninstallDisplayIcon={app}\MyProg.exe
Compression=lzma2
SolidCompression=yes
SourceDir=c:\strawberry
OutputDir=c:\output
OutputBaseFilename=dwimperl
;AppComments=
AppContact=http://dwimperl.com/
; AppCopyright=
AppId=dwimperl
; AppMutex= TODO!
AppPublisherURL=http://dwimperl.com/

ChangesAssociations=yes
ChangesEnvironment=yes
;InfoAfterFile=README_FIRST.txt




[Run]
Filename: "{app}\relocation.pl.bat";

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; \
    ValueName: "Path"; ValueType: expandsz; ValueData: "{olddata};{code:getPath}"; \
    Check: NeedsAddPath('\perl\site\bin');
; TODO: don't add the leading semi-colon to the Path if there is already a trailing one

[Files]

Source: "*"; DestDir: "{app}"; Flags: "recursesubdirs"; Excludes: "\cpan\cpan_sqlite_log.*,\cpan\build,\cpan\sources,\cpan\Bundle"; 

; Use the following to play with the packaging with only a few files
; In production, comment out these lines an enable the one above
; Source: "README.txt"; DestDir: "{app}"
; Source: "perl\site\bin\padre.exe"; DestDir: "{app}\perl\site\bin\"
; Source: "relocation.pl.bat"; DestDir: "{app}"
; Source: "win32\*"; DestDir: "{app}\win32\";

[Icons]
Name: "{group}\Padre, the Perl IDE"; Filename: "{app}\perl\site\bin\padre.exe"
Name: "{group}\Strawberry Perl README"; Filename: "{app}\README.txt"
Name: "{group}\Perl (command line)"; \
    Filename: "C:\WINDOWS\system32\cmd.exe"; \
    Comment: "Quick way to get to the command line in order to use Perl."
;    WorkingDir: "C:\Documents and Settings\Gabor Szabo\My Documents\"
   
Name: "{group}\Strawberry Perl Release Notest"; \
    Filename: "{app}\win32\Strawberry Perl Release Notes.url"; \
    IconFilename: "{app}\win32\strawberry.ico";
Name: "{group}\Uninstall"; Filename: "{app}\unins000.exe"

Name: "{group}\Related Websites\Beginning Perl (online book)"; \
    Filename: "{app}\win32\Beginning Perl (online book).url"; \
    IconFilename: "{app}\win32\perlhelp.ico"; \
    WorkingDir: "{app}\win32"; \
    Comment: "Beginning Perl (online book)";

Name: "{group}\Related Websites\learn.perl.org (tutorials, links)"; \
    Filename: "{app}\win32\learn.perl.org (tutorials, links).url"; \
    IconFilename: "{app}\win32\perlhelp.ico"; \
    WorkingDir: "{app}\win32"; \
    Comment: "learn.perl.org (tutorials, links)";

Name: "{group}\Related Websites\Strawberry Perl Website"; \
    Filename: "{app}\win32\Strawberry Perl Website.url"; \
    IconFilename: "{app}\win32\strawberry.ico"; \
    WorkingDir: "{app}\win32"; \
    Comment: "Strawberry Perl Website";

Name: "{group}\Related Websites\CPAN Module Search"; \
    Filename: "{app}\win32\CPAN Module Search.url"; \
    IconFilename: "{app}\win32\cpan.ico"; \
    WorkingDir: "{app}\win32"; \
    Comment: "CPAN Module Search";

Name: "{group}\Related Websites\Live Support"; \
    Filename: "{app}\win32\Live Support.url"; \
    IconFilename: "{app}\win32\perldoc.ico"; \
    WorkingDir: "{app}\win32"; \
    Comment: "Live Support";

Name: "{group}\Related Websites\Padre Website"; \
    Filename: "{app}\win32\Padre Website.url"; \
    IconFilename: "{app}\win32\padre.ico"; \
    WorkingDir: "{app}\win32"; \
    Comment: "Padre Website";

Name: "{group}\Tools\Check installed versions of modules"; \
    Filename: "{app}\perl\bin\module-version.bat"; \
    WorkingDir: "{app}\perl\bin\"; \
    IconFilename: "{app}\win32\strawberry.ico";

Name: "{group}\Tools\Create local library areas"; \
    Filename: "{app}\perl\bin\llw32helper.bat"; \
    WorkingDir: "{app}\perl\bin\"; \
    IconFilename: "{app}\win32\strawberry.ico";
                                               
Name: "{group}\Tools\CPAN client"; \
    Filename: "{app}\perl\bin\cpan.bat"; \
    WorkingDir: "{app}\perl\bin\"; \
    IconFilename: "{app}\win32\cpan.ico";

Name: "{group}\Games\Zumbis"; \
    Filename: "{app}\perl\site\bin\zumbis.bat"; \
    IconFilename: "{app}\win32\zumbis.ico";

Name: "{group}\Games\Frozen Bubble"; \
    Filename: "{app}\perl\site\bin\frozen-bubble.bat"; \
    IconFilename: "{app}\win32\frozen-bubble.ico";

Name: "{group}\Games\SDL Perl Website"; \
    Filename: "{app}\win32\SDL Perl Website.url"; \
    WorkingDir: "{app}\win32"; \
    Comment: "SDL Perl Website"; \
    IconFilename: "{app}\win32\sdl-perl.ico";



    ; copy file from Padre\win32\padre.ico to c:\strawberry\win32
; copy file from tools\strawberry\Padre Website.url to c:\strawberry\win32


[Code]
function getPath(Param: String): string;
begin
  Result := ExpandConstant('{app}') + '\perl\bin;' + ExpandConstant('{app}') + '\perl\site\bin;' + ExpandConstant('{app}') + '\c\bin;'
end;

// From http://stackoverflow.com/questions/3304463/how-do-i-modify-the-path-environment-variable-when-running-an-inno-setup-installe
function NeedsAddPath(Param: string): boolean;
var
  OrigPath: string;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  // look for the path with leading and trailing semicolon
  // Pos() returns 0 if not found
  //Result := Pos(';' + ExpandConstant('{app}') + Param + ';', OrigPath) = 0;
  Result := Pos(getPath(''), OrigPath) = 0;
end;

function RemovePath(): boolean;
var
  OrigPath: string;
  start_pos: Longint;
  end_pos: Longint;
  new_str: string;
begin
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', OrigPath)
  then begin
    Result := True;
    exit;
  end;
  start_pos  := Pos(getPath(''), OrigPath);
  end_pos    := start_pos + Length(getPath(''));
  new_str    := Copy(OrigPath, 0, start_pos-1) + Copy(OrigPath, end_pos, Length(OrigPath));
  RegWriteExpandStringValue(HKEY_LOCAL_MACHINE,
    'SYSTEM\CurrentControlSet\Control\Session Manager\Environment',
    'Path', new_str);
  Result := True;
end;
function InitializeUninstall(): Boolean;
begin
  Result := True;
//  Result := MsgBox('InitializeUninstall:' #13#13 'Uninstall is initializing. Do you really want to start Uninstall?', mbConfirmation, MB_YESNO) = idYes;
//  if Result = False then
//    MsgBox('InitializeUninstall:' #13#13 'Ok, bye bye.', mbInformation, MB_OK);
  RemovePath();  
end;
// C:\Program Files\CollabNet\Subversion Client;%SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem;C:\strawberry\c\bin;C:\strawberry\perl\site\bin;C:\strawberry\perl\bin;;C:\Str\perl\bin;C:\Str\perl\site\bin;C:\Str\c\bin;d:\;


// Restrict the installation path to have no space 
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result :=True;
  case CurPageID of
    wpSelectDir :
    begin
    if Pos(' ', ExpandConstant('{app}') ) <> 0 then
      begin
        MsgBox('You cannot install to a path containing spaces. Please select a different path.', mbError, mb_Ok);
        Result := False;
      end;
    end;
  end;
end;
