object frmOrderNew: TfrmOrderNew
  Left = 409
  Top = 263
  ActiveControl = luKund
  BorderStyle = bsDialog
  Caption = 'Ny order'
  ClientHeight = 617
  ClientWidth = 564
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
    Left = 82
    Top = 62
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Kund:'
  end
  object Label3: TLabel
    Left = 22
    Top = 88
    Width = 88
    Height = 13
    Alignment = taRightJustify
    Caption = 'Best'#228'llningsdatum:'
  end
  object Label4: TLabel
    Left = 42
    Top = 115
    Width = 68
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Best'#228'llningsnr:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label5: TLabel
    Left = 64
    Top = 140
    Width = 46
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Referens:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = Label5Click
  end
  object Label7: TLabel
    Left = 34
    Top = 295
    Width = 76
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Leveransdatum:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label8: TLabel
    Left = 78
    Top = 323
    Width = 31
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Fritext:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label2: TLabel
    Left = 39
    Top = 261
    Width = 76
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Till ytbehandling'
    ParentShowHint = False
    ShowHint = True
  end
  object Label6: TLabel
    Left = 53
    Top = 196
    Width = 57
    Height = 13
    Hint = 'Kundens best'#228'llningsnummer'
    Alignment = taRightJustify
    Caption = 'Godsm'#228'rke:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label9: TLabel
    Left = 36
    Top = 223
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'Egen m'#228'rkning:'
    ParentShowHint = False
    ShowHint = True
  end
  object lblTyp: TLabel
    Left = 26
    Top = 16
    Width = 61
    Height = 16
    Caption = 'Ny order'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 51
    Top = 169
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
  object luKund: TwwDBLookupCombo
    Left = 121
    Top = 57
    Width = 224
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Kundnamn'#9'50'#9'Kundnamn'#9'F')
    LookupTable = dm.sp_KundLookuplist
    LookupField = 'KundID'
    DropDownCount = 30
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnCloseUp = luKundCloseUp
  end
  object edtOrderdatum: TwwDBDateTimePicker
    Left = 121
    Top = 84
    Width = 224
    Height = 21
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers, mdoNoTodayCircle]
    Epoch = 1950
    ButtonEffects.Flat = True
    ShowButton = True
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 121
    Top = 111
    Width = 224
    Height = 21
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 560
    Width = 564
    Height = 57
    Align = alBottom
    TabOrder = 11
    ExplicitWidth = 558
    DesignSize = (
      564
      57)
    object Button1: TButton
      Left = 397
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Spara'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 391
    end
    object Button2: TButton
      Left = 478
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Avbryt'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 472
    end
  end
  object edtLevdatum: TwwDBDateTimePicker
    Left = 121
    Top = 292
    Width = 134
    Height = 21
    DisableThemes = True
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers, mdoNoTodayCircle]
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ShowButton = True
    TabOrder = 9
  end
  object LU_Kundperson: TwwDBLookupCombo
    Left = 121
    Top = 138
    Width = 224
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Namn'#9'40'#9'Namn'#9'F')
    LookupTable = sp_KundpersonlistforKund
    LookupField = 'KundpersonId'
    Style = csDropDownList
    Enabled = False
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object edtFritext: TMemo
    Left = 121
    Top = 323
    Width = 413
    Height = 225
    TabOrder = 10
  end
  object edtDatumYtbehandling: TwwDBDateTimePicker
    Left = 121
    Top = 258
    Width = 134
    Height = 21
    DisableThemes = True
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers, mdoNoTodayCircle]
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ShowButton = True
    TabOrder = 7
  end
  object LUYtbehandling: TwwDBLookupCombo
    Left = 261
    Top = 258
    Width = 272
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Beteckning'#9'20'#9'Beteckning'#9'T')
    LookupTable = dm.qryLUYtbehandling
    LookupField = 'Id'
    DropDownCount = 20
    TabOrder = 8
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnCloseUp = LUYtbehandlingCloseUp
  end
  object Edit3: TEdit
    Left = 121
    Top = 193
    Width = 224
    Height = 21
    TabOrder = 5
  end
  object edtEgenMarkning: TEdit
    Left = 121
    Top = 220
    Width = 224
    Height = 21
    TabOrder = 6
  end
  object edtVarReferens: TwwDBLookupCombo
    Left = 121
    Top = 166
    Width = 224
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
  object dsoKundPersonlistforKund: TDataSource
    DataSet = sp_KundpersonlistforKund
    Left = 472
    Top = 88
  end
  object dsoLUKund: TDataSource
    DataSet = dm.qryLU_Kund
    Left = 368
    Top = 260
  end
  object sp_insert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.OrderhuvudInsert'
    Left = 360
    Top = 124
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
        Name = '@OrderNummer'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@Orderdatum'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Godsm'#228'rke'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@Egenm'#228'rkning'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = '@ReferensID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OrdertypId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@Leveransdatum'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@Fritext'
        DataType = ftString
        ParamType = ptInput
        Size = 2000
      end
      item
        Position = 11
        Name = '@YtbehandlingDatum'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@YtbehandlingId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@OrderstatusId'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_KundpersonlistforKund: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'KundPersonListForKund'
    Left = 468
    Top = 20
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@Kundid'
        DataType = ftInteger
        ParamType = ptInput
        Value = '63'
      end>
    object sp_KundpersonlistforKundKundpersonId: TFDAutoIncField
      FieldName = 'KundpersonId'
      Origin = 'KundpersonId'
      ReadOnly = True
    end
    object sp_KundpersonlistforKundNamn: TStringField
      FieldName = 'Namn'
      Origin = 'Namn'
      ReadOnly = True
      Size = 101
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
