object MainFrom: TMainFrom
  Left = 0
  Top = 0
  Caption = 'MainFrom'
  ClientHeight = 313
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo: TMemo
    Left = 8
    Top = 56
    Width = 505
    Height = 245
    TabOrder = 0
  end
  object RunBtn: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Run Batch'
    TabOrder = 1
    OnClick = RunBtnClick
  end
end
