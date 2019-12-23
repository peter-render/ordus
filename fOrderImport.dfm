object frmOrderImport: TfrmOrderImport
  Left = 555
  Top = 344
  ActiveControl = btnBrowse
  Caption = 'Importera orderfiler fr'#229'n leverant'#246'ren'
  ClientHeight = 561
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 811
    Top = 0
    Width = 126
    Height = 561
    Align = alRight
    TabOrder = 0
    object Button1: TButton
      Left = 26
      Top = 13
      Width = 81
      Height = 27
      Caption = 'S&t'#228'ng'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 561
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 809
      Height = 559
      Align = alClient
      TabOrder = 0
      object Label6: TLabel
        Left = 73
        Top = 155
        Width = 72
        Height = 14
        Caption = 'Godsm'#228'rkning:'
      end
      object Label7: TLabel
        Left = 73
        Top = 103
        Width = 69
        Height = 14
        Caption = 'Ordernummer:'
      end
      object Label8: TLabel
        Left = 73
        Top = 180
        Width = 48
        Height = 14
        Caption = 'Referens:'
      end
      object Label1: TLabel
        Left = 73
        Top = 129
        Width = 60
        Height = 14
        Caption = 'Orderdatum:'
      end
      object Label5: TLabel
        Left = 73
        Top = 60
        Width = 28
        Height = 14
        Caption = 'Kund:'
      end
      object Label2: TLabel
        Left = 73
        Top = 206
        Width = 78
        Height = 14
        Caption = 'Leveransdatum:'
      end
      object Label4: TLabel
        Left = 73
        Top = 30
        Width = 13
        Height = 14
        Caption = 'Fil:'
      end
      object lv: TListView
        Left = 67
        Top = 250
        Width = 709
        Height = 246
        Columns = <
          item
            AutoSize = True
            Caption = 'Beteckning'
            MinWidth = 40
          end
          item
            Caption = 'Artikelnnummer'
            Width = 96
          end
          item
            Caption = 'Antal'
            Width = 54
          end
          item
            Caption = 'Pris'
            Width = 54
          end>
        IconOptions.AutoArrange = True
        IconOptions.WrapText = False
        RowSelect = True
        ShowWorkAreas = True
        TabOrder = 9
        TabStop = False
        ViewStyle = vsReport
      end
      object edtOrdernr: TEdit
        Left = 159
        Top = 99
        Width = 131
        Height = 21
        TabOrder = 3
      end
      object edtOrderdatum: TEdit
        Left = 159
        Top = 125
        Width = 131
        Height = 21
        TabOrder = 4
      end
      object edtGodsmarkning: TEdit
        Left = 159
        Top = 151
        Width = 131
        Height = 21
        TabOrder = 5
      end
      object edtReferens: TEdit
        Left = 159
        Top = 177
        Width = 131
        Height = 21
        TabOrder = 6
      end
      object LU_kund: TwwDBLookupCombo
        Left = 157
        Top = 56
        Width = 225
        Height = 22
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Kundnamn'#9'50'#9'Kundnamn'#9'F')
        LookupTable = qryLU_Kund
        LookupField = 'KundID'
        Style = csDropDownList
        DropDownCount = 30
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object Edit2: TEdit
        Left = 157
        Top = 26
        Width = 540
        Height = 21
        TabOrder = 0
      end
      object btnBrowse: TButton
        Left = 703
        Top = 25
        Width = 61
        Height = 25
        Caption = '&Bl'#228'ddra'
        TabOrder = 1
        OnClick = btnBrowseClick
      end
      object btnImport: TButton
        Left = 558
        Top = 513
        Width = 132
        Height = 27
        Caption = 'Importera best'#228'llning'
        Default = True
        Enabled = False
        TabOrder = 10
        OnClick = btnImportClick
      end
      object btnAvbryt: TButton
        Left = 696
        Top = 513
        Width = 80
        Height = 27
        Caption = 'Avbryt'
        Enabled = False
        TabOrder = 11
        OnClick = btnAvbrytClick
      end
      object edtLeveransdatum: TwwDBDateTimePicker
        Left = 159
        Top = 202
        Width = 131
        Height = 22
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers]
        Epoch = 1950
        ShowButton = True
        TabOrder = 7
        OnCloseUp = edtLeveransdatumCloseUp
      end
      object cbImportPris: TCheckBox
        Left = 323
        Top = 206
        Width = 212
        Height = 18
        Caption = 'Importera '#228'ven priskolumnen'
        TabOrder = 8
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel-filer (*.xls)|*.xls|CSV (*.csv)|*.csv'
    Left = 784
    Top = 116
  end
  object qryLU_Kund: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Id KundId,* from kund order by kundnamn')
    Left = 572
    Top = 344
    object qryLU_KundKundnamn: TStringField
      DisplayWidth = 50
      FieldName = 'Kundnamn'
      Size = 50
    end
    object qryLU_KundID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryLU_KundKundId: TAutoIncField
      FieldName = 'KundId'
      ReadOnly = True
    end
  end
  object sp: TADOStoredProc
    ProcedureName = 'OrderImport;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@KundID'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = 10
        Value = Null
      end
      item
        Name = '@Ordernummer'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@OrderDatum'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Godsm'#228'rke'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Referens'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Leveransdatum'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@OrderID'
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 558
    Top = 396
  end
  object sp_OrderRadImport: TADOStoredProc
    ProcedureName = 'OrderradImport;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@KundId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OrderId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Artikelnummer'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Artikelbeteckning'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Antal'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PrisperEnhet'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@Positionnummer'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 565
    Top = 452
  end
end
