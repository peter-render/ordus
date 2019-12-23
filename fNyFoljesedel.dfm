object frmNyFoljesedel: TfrmNyFoljesedel
  Left = 521
  Top = 356
  ActiveControl = Edit1
  Caption = 'Ny f'#246'ljesedel'
  ClientHeight = 132
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 60
    Top = 35
    Width = 100
    Height = 13
    Caption = 'F'#246'ljesedelbeteckning'
  end
  object Edit1: TEdit
    Left = 60
    Top = 51
    Width = 270
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object btnOK: TButton
    Left = 212
    Top = 93
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 292
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Avbryt'
    ModalResult = 2
    TabOrder = 2
  end
end
