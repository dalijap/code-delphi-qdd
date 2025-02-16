unit MainF;

interface

uses
  Winapi.Windows, Winapi.Messages, ShellAPI, System.SysUtils, System.IOUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainFrom = class(TForm)
    Memo: TMemo;
    RunBtn: TButton;
    procedure RunBtnClick(Sender: TObject);
  public
  end;

var
  MainFrom: TMainFrom;

implementation

{$R *.dfm}

function RunBatchFile(const FileName: string): Integer;
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  ExitCode: DWORD;
begin
  Result := -1;
  StartupInfo := Default(TStartupInfo);
  StartupInfo.cb := SizeOf(StartupInfo);
  ProcessInfo := Default(TProcessInformation);
  if CreateProcess(nil, PChar('cmd.exe /C ' + FileName), nil, nil, False, 0, nil,
    PChar(ExtractFilePath(FileName)), StartupInfo, ProcessInfo) then
  begin
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    if GetExitCodeProcess(ProcessInfo.hProcess, ExitCode) then
      Result := ExitCode;
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;


procedure TMainFrom.RunBtnClick(Sender: TObject);
var
  Code: Integer;
begin
  Code := RunBatchFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'build.bat');
  if Code = 0 then
    Memo.Lines.Add('Build success')
  else
    Memo.Lines.Add('Build failed ' + Code.ToString);
end;

end.
