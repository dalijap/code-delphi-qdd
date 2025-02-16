unit MyProjectMainF;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.Objects;

type
  TMainForm = class(TForm)
    Memo: TMemo;
    procedure FormCreate(Sender: TObject);
  public
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  {$IFDEF RELEASE}
  Memo.Lines.Add('RELEASE');
  {$ELSE}
  Memo.Lines.Add('DEBUG');
  {$ENDIF}
  {$IFDEF FOO}
  Memo.Lines.Add('FOO');
  {$ENDIF}
end;

end.
