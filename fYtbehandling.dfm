inherited frmYtbehandling: TfrmYtbehandling
  Left = 347
  Top = 186
  ActiveControl = btnAngra
  Caption = 'Ytbehandlingar'
  ClientHeight = 566
  ClientWidth = 849
  ExplicitWidth = 855
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 705
    Height = 566
    ExplicitLeft = 6
    ExplicitTop = 24
    ExplicitWidth = 705
    ExplicitHeight = 566
    inherited Bevel1: TBevel
      Left = 29
      Top = 421
      ExplicitLeft = 29
      ExplicitTop = 421
    end
    inherited Bevel2: TBevel
      Left = 29
      Top = 541
      ExplicitLeft = 29
      ExplicitTop = 541
    end
    object Label2: TLabel [2]
      Left = 54
      Top = 443
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Beteckning'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [3]
      Left = 60
      Top = 471
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sortorder'
      FocusControl = DBEdit3
    end
    object Label1: TLabel [4]
      Left = 37
      Top = 500
      Width = 70
      Height = 13
      Caption = 'Bakgrundsf'#228'rg'
      FocusControl = DBEdit1
    end
    inherited dbGrid: TwwDBGrid
      Left = 29
      Top = 19
      Width = 660
      Height = 390
      Selected.Strings = (
        'Beteckning'#9'30'#9'Beteckning'
        'Sortorder'#9'10'#9'Sortorder'
        'Pris'#9'16'#9'Pris'
        'Laserpris'#9'9'#9'Laserpris'
        'Ink'#246'pspris'#9'11'#9'Ink'#246'pspris'
        'Skrotpris'#9'10'#9'Skrotpris'
        'BGColor'#9'12'#9'BGColor')
      OnCalcCellColors = dbGridCalcCellColors
      ExplicitLeft = 29
      ExplicitTop = 19
      ExplicitWidth = 660
      ExplicitHeight = 390
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 440
      Width = 249
      Height = 21
      DataField = 'Beteckning'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 468
      Width = 89
      Height = 21
      DataField = 'Sortorder'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 496
      Width = 89
      Height = 21
      DataField = 'BGColor'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
    end
    object btnEditcolor: TButton
      Left = 207
      Top = 494
      Width = 134
      Height = 25
      Caption = #196'ndra bakgrundsf'#228'rg'
      Enabled = False
      TabOrder = 4
      OnClick = btnEditcolorClick
    end
  end
  inherited Panel2: TPanel
    Left = 705
    Width = 144
    Height = 566
    ExplicitLeft = 552
    ExplicitWidth = 144
    ExplicitHeight = 369
    inherited btnNy: TButton
      Width = 122
      ExplicitWidth = 122
    end
    inherited btnAndra: TButton
      Width = 122
      ExplicitWidth = 122
    end
    inherited btnAngra: TButton
      Width = 122
      ExplicitWidth = 122
    end
    inherited btnSpara: TButton
      Width = 122
      ExplicitWidth = 122
    end
    inherited btnBort: TButton
      Width = 122
      ExplicitWidth = 122
    end
    inherited btnStang: TButton
      Width = 122
      ExplicitWidth = 122
    end
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
    object Button1: TButton
      Left = 12
      Top = 226
      Width = 122
      Height = 25
      Caption = 'Material-/Laserpris'
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 348
    Top = 268
  end
  inherited DataSource1: TDataSource
    OnStateChange = DataSource1StateChange
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'Select y.Id'
      ',y.Beteckning'
      ',y.Sortorder'
      
        ',Fom = (Select cast(max(fom) as datetime) from YtbehandlingPris ' +
        'where YtbehandlingID= y.ID and fom <= getdate())'
      
        ',Pris = (select Pris from Ytbehandlingpris where YtbehandlingID ' +
        '= y.Id and fom = (Select max(fom) from YtbehandlingPris where Yt' +
        'behandlingID= y.ID and fom <= getdate()))'
      
        ',Laserpris '#9'= (select Laserpris from Ytbehandlingpris where Ytbe' +
        'handlingID = y.Id and fom = (Select max(fom) from YtbehandlingPr' +
        'is where YtbehandlingID= y.ID and fom <= getdate()))'
      
        ',Ink'#246'pspris'#9'= (select Ink'#246'pspris from Ytbehandlingpris where Ytb' +
        'ehandlingID = y.Id and fom = (Select max(fom) from YtbehandlingP' +
        'ris where YtbehandlingID= y.ID and fom <= getdate()))'
      
        ',Skrotpris'#9'= (select Skrotpris from Ytbehandlingpris where Ytbeh' +
        'andlingID = y.Id and fom = (Select max(fom) from YtbehandlingPri' +
        's where YtbehandlingID= y.ID and fom <= getdate()))'
      ',BGColor'
      'from Ytbehandling Y')
    Left = 340
    Top = 96
    object FDQuery1Beteckning: TStringField
      DisplayWidth = 30
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 50
    end
    object FDQuery1Sortorder: TSmallintField
      DisplayWidth = 10
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
    end
    object FDQuery1Pris: TCurrencyField
      DisplayWidth = 16
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
    end
    object FDQuery1Laserpris: TCurrencyField
      DisplayWidth = 9
      FieldName = 'Laserpris'
      Origin = 'Laserpris'
      ReadOnly = True
    end
    object FDQuery1Inköpspris: TCurrencyField
      DisplayWidth = 11
      FieldName = 'Ink'#246'pspris'
      Origin = '[Ink'#246'pspris]'
      ReadOnly = True
    end
    object FDQuery1Skrotpris: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Skrotpris'
      Origin = 'Skrotpris'
      ReadOnly = True
    end
    object FDQuery1BGColor: TStringField
      DisplayWidth = 12
      FieldName = 'BGColor'
      Origin = 'BGColor'
      FixedChar = True
      Size = 10
    end
    object FDQuery1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object FDQuery1Fom: TSQLTimeStampField
      FieldName = 'Fom'
      Origin = 'Fom'
      ReadOnly = True
      Visible = False
    end
  end
  object ColorDialog1: TColorDialog
    Left = 448
    Top = 264
  end
end
