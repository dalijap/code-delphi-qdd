program RunBatch;

uses
  Vcl.Forms,
  MainF in 'MainF.pas' {MainFrom};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFrom, MainFrom);
  Application.Run;
end.
