object frmOrderImportIntersystem: TfrmOrderImportIntersystem
  Left = 555
  Top = 344
  Caption = 'Importera orderfiler fr'#229'n Intersystem'
  ClientHeight = 136
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 136
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 776
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 435
      Height = 134
      Align = alClient
      AutoSize = True
      TabOrder = 0
      ExplicitWidth = 774
      DesignSize = (
        435
        134)
      object Label1: TLabel
        Left = 36
        Top = 60
        Width = 40
        Height = 13
        Anchors = [akLeft]
        Caption = 'Orderfil:'
      end
      object btnBrowse: TButton
        Left = 87
        Top = 53
        Width = 134
        Height = 30
        Anchors = [akLeft]
        Caption = 'V'#228'lj orderfil (*.csv, *.xml)'
        ModalResult = 1
        TabOrder = 0
        OnClick = btnBrowseClick
        ExplicitTop = 59
      end
      object Button1: TButton
        Left = 267
        Top = 53
        Width = 113
        Height = 30
        Anchors = [akLeft]
        Caption = 'Avbryt'
        ModalResult = 2
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'CSV  eller XML|*.csv;*.xml'
    Left = 612
    Top = 72
  end
end
