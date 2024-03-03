object frmOrderPlanering: TfrmOrderPlanering
  Left = 0
  Top = 450
  BorderStyle = bsDialog
  Caption = #196'ndra order / planera'
  ClientHeight = 521
  ClientWidth = 534
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
  DesignSize = (
    534
    521)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 82
    Top = 38
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Kund:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 22
    Top = 67
    Width = 88
    Height = 13
    Alignment = taRightJustify
    Caption = 'Best'#228'llningsdatum:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 42
    Top = 92
    Width = 68
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Best'#228'llningsnr:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label5: TLabel
    Left = 56
    Top = 118
    Width = 54
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Er referens:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label6: TLabel
    Left = 53
    Top = 179
    Width = 57
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Godsm'#228'rke:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label7: TLabel
    Left = 34
    Top = 269
    Width = 76
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Leveransdatum:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label8: TLabel
    Left = 79
    Top = 297
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fritext:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 34
    Top = 242
    Width = 76
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Till ytbehandling'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label10: TLabel
    Left = 203
    Top = 415
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Inplanerad tid:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 403
    Top = 416
    Width = 38
    Height = 13
    Caption = 'Label11'
  end
  object Label12: TLabel
    Left = 160
    Top = 390
    Width = 110
    Height = 13
    Alignment = taRightJustify
    Caption = 'Arbetstid autober'#228'knad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 403
    Top = 391
    Width = 38
    Height = 13
    Caption = 'Label13'
  end
  object Label14: TLabel
    Left = 176
    Top = 442
    Width = 94
    Height = 13
    Alignment = taRightJustify
    Caption = 'Arbetstid att planera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 403
    Top = 443
    Width = 38
    Height = 13
    Caption = 'Label15'
  end
  object Label2: TLabel
    Left = 37
    Top = 205
    Width = 74
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Egen m'#228'rkning:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label16: TLabel
    Left = 50
    Top = 145
    Width = 57
    Height = 13
    Caption = 'V'#229'r referens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtLevdatum: TwwDBDateTimePicker
    Left = 121
    Top = 267
    Width = 149
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers, mdoNoTodayCircle]
    DataField = 'Leveransdatum'
    DataSource = dsoOrderedit
    Epoch = 1950
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 9
  end
  object LU_Kundperson: TwwDBLookupCombo
    Left = 120
    Top = 115
    Width = 225
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Namn'#9'40'#9'Namn'#9'F')
    DataField = 'ReferensID'
    DataSource = dsoOrderedit
    LookupTable = dm.sp_KundpersonlistforKund
    LookupField = 'KundpersonId'
    ParentFont = False
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object DBEdit1: TDBEdit
    Left = 122
    Top = 89
    Width = 148
    Height = 21
    DataField = 'OrderNummer'
    DataSource = dsoOrderedit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 176
    Width = 225
    Height = 21
    DataField = 'Godsm'#228'rke'
    DataSource = dsoOrderedit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBMemo1: TDBMemo
    Left = 121
    Top = 294
    Width = 399
    Height = 74
    DataField = 'Fritext'
    DataSource = dsoOrderedit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object edtDatumYtbehandling: TwwDBDateTimePicker
    Left = 121
    Top = 241
    Width = 149
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers, mdoNoTodayCircle]
    DataField = 'YtbehandlingDatum'
    DataSource = dsoOrderedit
    Epoch = 1950
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 7
  end
  object LUYtbehandling: TwwDBLookupCombo
    Left = 282
    Top = 241
    Width = 238
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Beteckning'#9'40'#9'Beteckning'#9'T')
    DataField = 'YtbehandlingId'
    DataSource = dsoOrderedit
    LookupTable = dm.qryLUYtbehandling
    LookupField = 'Id'
    Style = csDropDownList
    DropDownCount = 20
    ParentFont = False
    TabOrder = 8
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 534
    Height = 41
    Align = alBottom
    TabOrder = 15
    ExplicitWidth = 543
    DesignSize = (
      534
      41)
    object btnSparaPlanera: TButton
      Left = 301
      Top = 8
      Width = 134
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Spara och planera'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSparaPlaneraClick
      ExplicitLeft = 310
    end
    object Button2: TButton
      Left = 449
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Avbryt'
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 458
    end
    object btnSpara: TButton
      Left = 166
      Top = 8
      Width = 121
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Spara'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
      OnClick = btnSparaClick
      ExplicitLeft = 175
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 544
    Top = 9
    Width = 384
    Height = 185
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DataSource1
    TabOrder = 14
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object edtTotaltidPlanerad: TDBEditN
    Left = 276
    Top = 413
    Width = 121
    Height = 21
    TabStop = False
    Color = clMenu
    DataField = 'ArbetstidPlanerad'
    DataSource = frmOrderLista.dsoOrderlist
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
    OnChange = edtTotaltidPlaneradChange
    ColorOnFocus = clWhite
    ColorOnNotFocus = clSilver
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditKeyByTab = #9
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
    TextHint = True
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker
    Left = 121
    Top = 64
    Width = 149
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'Tahoma'
    CalendarAttributes.Font.Style = []
    DataField = 'Orderdatum'
    DataSource = dsoOrderedit
    Epoch = 1950
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowButton = True
    TabOrder = 1
    UnboundDataType = wwDTEdtDate
  end
  object edtAutotid: TDBEditN
    Left = 276
    Top = 387
    Width = 121
    Height = 21
    TabStop = False
    Color = clMenu
    DataField = 'KalkArbetstid'
    DataSource = frmOrderLista.dsoOrderlist
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
    OnChange = edtAutotidChange
    ColorOnFocus = clWhite
    ColorOnNotFocus = clSilver
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditKeyByTab = #9
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
    TextHint = True
  end
  object Memo1: TMemo
    Left = 544
    Top = 200
    Width = 384
    Height = 256
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 16
  end
  object BitBtn1: TBitBtn
    Left = 495
    Top = 8
    Width = 25
    Height = 25
    Caption = '>'
    TabOrder = 17
    TabStop = False
    OnClick = BitBtn1Click
  end
  object edtTotalTid: TEditN
    Left = 276
    Top = 439
    Width = 121
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    TextHint = True
    OnChange = edtTotalTidChange
    OnExit = edtTotalTidExit
    ColorOnFocus = clWhite
    ColorOnNotFocus = clSilver
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditType = etInteger
    EditKeyByTab = #9
    EditAlign = etAlignNone
    EditLengthAlign = 0
    EditPrecision = 0
    ValueInteger = 0
    ValueDate = 41687.000000000000000000
    ValueTime = 0.423863900462963000
    TimeSeconds = False
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
  end
  object luKund: TwwDBLookupCombo
    Left = 121
    Top = 35
    Width = 224
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Kundnamn'#9'50'#9'Kundnamn'#9'F')
    DataField = 'KundID'
    DataSource = dsoOrderedit
    LookupTable = dm.qryLU_Kund
    LookupField = 'KundID'
    Enabled = False
    ParentFont = False
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object CheckBox1: TCheckBox
    Left = 360
    Top = 38
    Width = 124
    Height = 16
    TabStop = False
    Caption = 'L'#229's upp kundv'#228'ljaren'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = CheckBox1Click
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 202
    Width = 225
    Height = 21
    DataField = 'Egenm'#228'rkning'
    DataSource = dsoOrderedit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edtVarReferens: TwwDBLookupCombo
    Left = 120
    Top = 142
    Width = 225
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Namn'#9'101'#9'Namn'#9'F')
    DataField = 'V'#229'rReferensPersonId'
    DataSource = dsoOrderedit
    LookupTable = qryLU_personal
    LookupField = 'Id'
    Color = clWhite
    DropDownCount = 40
    DropDownWidth = 220
    ParentFont = False
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object spPlaneringPerResursDagGetlist: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'PlaneringPerResursDagGetlist'
    Left = 44
    Top = 372
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ResursId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Datum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object spPlaneringPerResursDagGetlistStarttid: TStringField
      FieldName = 'Starttid'
      Origin = 'Starttid'
      Required = True
      Size = 50
    end
    object spPlaneringPerResursDagGetlistSluttid: TStringField
      FieldName = 'Sluttid'
      Origin = 'Sluttid'
      Required = True
      Size = 50
    end
  end
  object qryDagar: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Datum,Vecka,Arbetsdag,Veckodag,AntalResurser from Dagar'
      'where Datum = :Datum'
      '')
    Left = 40
    Top = 496
    ParamData = <
      item
        Name = 'DATUM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryDagarDatum: TDateField
      FieldName = 'Datum'
      Origin = 'Datum'
      Required = True
    end
    object qryDagarVecka: TByteField
      FieldName = 'Vecka'
      Origin = 'Vecka'
    end
    object qryDagarArbetsdag: TBooleanField
      FieldName = 'Arbetsdag'
      Origin = 'Arbetsdag'
    end
    object qryDagarVeckodag: TByteField
      FieldName = 'Veckodag'
      Origin = 'Veckodag'
    end
    object qryDagarAntalResurser: TByteField
      FieldName = 'AntalResurser'
      Origin = 'AntalResurser'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 424
    Top = 12
  end
  object spSkapaPlanering: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'SkapaPlanering'
    Left = 48
    Top = 400
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OrderId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ResursId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@FromDatum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TomDatum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TransaktionsId'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryDay: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id,Arbetsstart,Arbetsslut from veckodagar'
      'where id = :Id'
      '')
    Left = 120
    Top = 492
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object qryDayId: TIntegerField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDayArbetsstart: TStringField
      FieldName = 'Arbetsstart'
      Origin = 'Arbetsstart'
      Required = True
      Size = 5
    end
    object qryDayArbetsslut: TStringField
      FieldName = 'Arbetsslut'
      Origin = 'Arbetsslut'
      Required = True
      Size = 5
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 476
    Top = 92
  end
  object spIsArbetsdag: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'IsAbetsdag'
    Left = 52
    Top = 444
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Datum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object qryOrderEdit: TFDQuery
    MasterSource = frmOrderLista.dsoOrderlist
    MasterFields = 'OrderID'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select  o.Id , o.KundId,Ordernummer,Orderdatum,k.Kundnamn,'
      'Godsm'#228'rke,EgenM'#228'rkning,'
      
        'ReferensId,OrdertypId,OrderStatusId,Leveransdatum,Fakturanummer,' +
        'Fakturadatum,Fritext,'
      'YtbehandlingDatum,YtbehandlingId,V'#229'rReferensPersonId'
      'from OrderHuvud o '
      'left join kund k on k.id = o.Kundid'
      'where o.Id = :OrderID')
    Left = 360
    Top = 52
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 8241
      end>
    object qryOrderEditId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOrderEditKundId: TIntegerField
      FieldName = 'KundId'
      Origin = 'KundId'
      Required = True
    end
    object qryOrderEditOrdernummer: TStringField
      FieldName = 'Ordernummer'
      Origin = 'Ordernummer'
      Required = True
      Size = 30
    end
    object qryOrderEditOrderdatum: TSQLTimeStampField
      FieldName = 'Orderdatum'
      Origin = 'Orderdatum'
      Required = True
    end
    object qryOrderEditGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryOrderEditReferensId: TIntegerField
      FieldName = 'ReferensId'
      Origin = 'ReferensId'
    end
    object qryOrderEditOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryOrderEditOrderStatusId: TIntegerField
      FieldName = 'OrderStatusId'
      Origin = 'OrderStatusId'
    end
    object qryOrderEditLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryOrderEditFakturanummer: TStringField
      FieldName = 'Fakturanummer'
      Origin = 'Fakturanummer'
    end
    object qryOrderEditFritext: TStringField
      FieldName = 'Fritext'
      Origin = 'Fritext'
      Size = 2000
    end
    object qryOrderEditYtbehandlingDatum: TSQLTimeStampField
      FieldName = 'YtbehandlingDatum'
      Origin = 'YtbehandlingDatum'
    end
    object qryOrderEditYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
    end
    object qryOrderEditKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Size = 50
    end
    object qryOrderEditFakturadatum: TDateField
      FieldName = 'Fakturadatum'
      Origin = 'Fakturadatum'
    end
    object qryOrderEditEgenMärkning: TStringField
      FieldName = 'EgenM'#228'rkning'
      Origin = '[EgenM'#228'rkning]'
      Size = 50
    end
    object qryOrderEditVårReferensPersonId: TIntegerField
      FieldName = 'V'#229'rReferensPersonId'
      Origin = '[V'#229'rReferensPersonId]'
    end
  end
  object dsoOrderedit: TDataSource
    DataSet = qryOrderEdit
    Left = 395
    Top = 98
  end
  object fdcTrans: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select isnull(max(TransaktionsId),0) TransaktionsId from Planeri' +
        'ng')
    Left = 488
    Top = 60
    object fdcTransTransaktionsId: TIntegerField
      FieldName = 'TransaktionsId'
      Origin = 'TransaktionsId'
      ReadOnly = True
      Required = True
    end
  end
  object spNextWorkdayGet: TFDStoredProc
    MasterSource = DataSource1
    Connection = dm.FDConnection1
    StoredProcName = 'NextWorkdayGet'
    Left = 520
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@datum'
        DataType = ftDate
        ParamType = ptInput
      end>
    object spNextWorkdayGetDatum: TDateField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
    end
  end
  object spPreviousWorkdayGet: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'PreviousWorkdayGet'
    Left = 516
    Top = 416
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@datum'
        DataType = ftDate
        ParamType = ptInput
      end>
    object spPreviousWorkdayGetDatum: TDateField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
    end
  end
  object qryLU_personal: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select Id, F'#246'rnamn + '#39' '#39' + Efternamn Namn from Personal where ak' +
        'tiv = 1 and '#196'rAdministrat'#246'r = 1'
      'order by f'#246'rnamn')
    Left = 508
    Top = 172
    object qryLU_personalNamn: TStringField
      DisplayWidth = 101
      FieldName = 'Namn'
      Origin = 'Namn'
      ReadOnly = True
      Size = 101
    end
    object qryLU_personalId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
  end
end
