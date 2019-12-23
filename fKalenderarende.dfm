object frmKalenderarende: TfrmKalenderarende
  Left = 0
  Top = 0
  ActiveControl = edtMemo
  Caption = 'Kalender'#228'rende'
  ClientHeight = 252
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 211
    Width = 489
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      489
      41)
    object btnPost: TButton
      Left = 317
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Spara'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 398
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 211
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 29
      Width = 36
      Height = 13
      Caption = 'Starttid'
    end
    object Label2: TLabel
      Left = 32
      Top = 51
      Width = 30
      Height = 13
      Caption = 'Sluttid'
    end
    object edtMemo: TMemo
      Left = 105
      Top = 88
      Width = 367
      Height = 89
      TabOrder = 0
    end
  end
  object edtStartdatum: TDateTimePicker
    Left = 105
    Top = 24
    Width = 164
    Height = 21
    Date = 41371.535308379630000000
    Time = 41371.535308379630000000
    TabOrder = 2
  end
  object edtSlutdatum: TDateTimePicker
    Left = 105
    Top = 51
    Width = 164
    Height = 21
    Date = 41371.535308379630000000
    Time = 41371.535308379630000000
    TabOrder = 3
  end
end
