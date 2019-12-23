object frmOrderImportIntersystem: TfrmOrderImportIntersystem
  Left = 555
  Top = 344
  ActiveControl = btnBrowse
  Caption = 'Importera orderfiler fr'#229'n Intersystem'
  ClientHeight = 136
  ClientWidth = 776
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
    Width = 776
    Height = 136
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 774
      Height = 134
      Align = alClient
      Caption = 'tbut'
      TabOrder = 0
      DesignSize = (
        774
        134)
      object Label4: TLabel
        Left = 28
        Top = 56
        Width = 36
        Height = 13
        Caption = 'Orderfil:'
      end
      object Edit2: TEdit
        Left = 74
        Top = 52
        Width = 423
        Height = 21
        TabOrder = 0
      end
      object btnBrowse: TButton
        Left = 503
        Top = 51
        Width = 116
        Height = 23
        Anchors = [akTop, akRight]
        Caption = 'V'#228'lj orderfil (*.csv)'
        ModalResult = 1
        TabOrder = 1
        OnClick = btnBrowseClick
      end
      object Button1: TButton
        Left = 636
        Top = 50
        Width = 113
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Avbryt'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'CSV (*.csv)|*.csv'
    Left = 612
    Top = 72
  end
  object sp: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderImport'
    Left = 352
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@KundID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Ordernummer'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = '@OrderDatum'
        DataType = ftString
        ParamType = ptInput
        Size = 16
      end
      item
        Position = 5
        Name = '@Godsm'#228'rke'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 6
        Name = '@Referens'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = '@Leveransdatum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OrderId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_OrderRadImport: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderradImport'
    Left = 472
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@KundId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OrderId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Artikelnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 5
        Name = '@Artikelbeteckning'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = '@Antal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@PrisperEnhet'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Positionnummer'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
