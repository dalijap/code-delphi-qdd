program MyProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  MyProjectMainF in 'MyProjectMainF.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
