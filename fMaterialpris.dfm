inherited frmMaterialpris: TfrmMaterialpris
  Left = 328
  Top = 387
  Caption = 'Materialpris'
  ClientHeight = 420
  ClientWidth = 663
  ExplicitWidth = 669
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 544
    Height = 420
    ExplicitLeft = 8
    ExplicitWidth = 473
    ExplicitHeight = 420
    inherited Bevel2: TBevel
      Left = 8
      Top = 391
      ExplicitLeft = 8
      ExplicitTop = 391
    end
    object Label1: TLabel [2]
      Left = 36
      Top = 239
      Width = 30
      Height = 13
      Caption = 'Fr o m'
    end
    object Label2: TLabel [3]
      Left = 36
      Top = 264
      Width = 55
      Height = 13
      Caption = 'Materialpris'
    end
    object Label3: TLabel [4]
      Left = 36
      Top = 289
      Width = 43
      Height = 13
      Caption = 'Laserpris'
    end
    object Label4: TLabel [5]
      Left = 36
      Top = 317
      Width = 49
      Height = 13
      Caption = 'Ink'#246'pspris'
    end
    object Label5: TLabel [6]
      Left = 36
      Top = 344
      Width = 42
      Height = 13
      Caption = 'Skrotpris'
    end
    object Label6: TLabel [7]
      Left = 221
      Top = 344
      Width = 308
      Height = 13
      Caption = '(finns inget v'#228'rde h'#228'r anv'#228'nds ink'#246'pspriset f'#246'r prisber'#228'kningen)'
    end
    inherited dbGrid: TwwDBGrid
      Top = 19
      Width = 513
      Selected.Strings = (
        'Fom'#9'19'#9'Fom'
        'Pris'#9'16'#9'Pris'
        'Laserpris'#9'14'#9'Laserpris'
        'Ink'#246'pspris'#9'15'#9'Ink'#246'pspris'
        'Skrotpris'#9'12'#9'Skrotpris')
      ExplicitTop = 19
      ExplicitWidth = 513
    end
    object DBEditN1: TDBEditN
      Left = 96
      Top = 259
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'Pris'
      DataSource = DataSource1
      TabOrder = 1
      ColorOnFocus = clWhite
      ColorOnNotFocus = clWhite
      FontColorOnFocus = clRed
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditKeyByTab = #9
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
      TextHint = True
    end
    object DBEditN2: TDBEditN
      Left = 96
      Top = 287
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'Laserpris'
      DataSource = DataSource1
      TabOrder = 2
      ColorOnFocus = clWhite
      ColorOnNotFocus = clWhite
      FontColorOnFocus = clRed
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditKeyByTab = #9
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
      TextHint = True
    end
    object dbedit1: TwwDBDateTimePicker
      Left = 96
      Top = 231
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'Fom'
      DataSource = DataSource1
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
      UnboundDataType = wwDTEdtDate
    end
    object DBEditN3: TDBEditN
      Left = 96
      Top = 314
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'Ink'#246'pspris'
      DataSource = DataSource1
      TabOrder = 4
      ColorOnFocus = clWhite
      ColorOnNotFocus = clWhite
      FontColorOnFocus = clRed
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditKeyByTab = #9
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
      TextHint = True
    end
    object DBEditN4: TDBEditN
      Left = 96
      Top = 341
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'Skrotpris'
      DataSource = DataSource1
      TabOrder = 5
      ColorOnFocus = clWhite
      ColorOnNotFocus = clWhite
      FontColorOnFocus = clRed
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditKeyByTab = #9
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
      TextHint = True
    end
  end
  inherited Panel2: TPanel
    Left = 544
    Height = 420
    ExplicitLeft = 473
    ExplicitHeight = 367
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited DataSource1: TDataSource
    Left = 36
    Top = 32
  end
  inherited FDQuery1: TFDQuery
    Active = True
    MasterSource = frmYtbehandling.DataSource1
    MasterFields = 'Id'
    SQL.Strings = (
      'Select '
      'Id, '
      'YtbehandlingId,Fom,Pris,Laserpris ,'
      'Ink'#246'pspris,Skrotpris'
      'from YtbehandlingPris '
      'where YtbehandlingID = :Id '
      'order by Fom desc'
      '')
    Left = 92
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FDQuery1Fom: TSQLTimeStampField
      DisplayWidth = 19
      FieldName = 'Fom'
      Origin = 'Fom'
      Required = True
    end
    object FDQuery1Pris: TCurrencyField
      DisplayWidth = 16
      FieldName = 'Pris'
      Origin = 'Pris'
    end
    object FDQuery1Laserpris: TCurrencyField
      DisplayWidth = 14
      FieldName = 'Laserpris'
      Origin = 'Laserpris'
    end
    object FDQuery1Inköpspris: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Ink'#246'pspris'
      Origin = '[Ink'#246'pspris]'
    end
    object FDQuery1Skrotpris: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Skrotpris'
      Origin = 'Skrotpris'
    end
    object FDQuery1Id: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object FDQuery1YtbehandlingId: TIntegerField
      DisplayWidth = 10
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
  end
end
