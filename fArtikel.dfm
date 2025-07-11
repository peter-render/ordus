﻿inherited frmArtikel: TfrmArtikel
  Left = 302
  Top = 231
  ActiveControl = nil
  Caption = 'Artikelregister'
  ClientHeight = 641
  ClientWidth = 926
  ExplicitWidth = 932
  ExplicitHeight = 670
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 807
    Height = 641
    Font.Color = clBlack
    Font.Name = 'MS Sans Serif'
    ParentFont = False
    ExplicitWidth = 807
    ExplicitHeight = 641
    inherited Bevel1: TBevel
      Top = 214
      Width = 689
      Height = 23
      ExplicitTop = 214
      ExplicitWidth = 689
      ExplicitHeight = 23
    end
    inherited Bevel2: TBevel
      Left = 0
      Top = 644
      ExplicitLeft = 0
      ExplicitTop = 644
    end
    object Label6: TLabel [2]
      Left = 16
      Top = 20
      Width = 87
      Height = 13
      Caption = 'S'#246'k artikelnummer'
    end
    object Label8: TLabel [3]
      Left = 20
      Top = 442
      Width = 76
      Height = 13
      Caption = 'Underartiklar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited dbGrid: TwwDBGrid
      Left = 20
      Top = 43
      Width = 757
      Height = 158
      ControlType.Strings = (
        'BockritningFinns;CheckBox;True;False'
        'FixaturFinns;CheckBox;1;0'
        'RitningsnoterigFinns;CheckBox;True;False'
        'RitningsnoteringFinns;CheckBox;1;0'
        'cRitningsnoteringFinns;CheckBox;True;False')
      Selected.Strings = (
        'Artikelnummer'#9'16'#9'Artikelnummer'#9#9
        'Beteckning'#9'36'#9'Beteckning'#9#9
        'PDFFilnamn'#9'13'#9'PDFFilnamn'#9#9
        'Lagersaldo'#9'10'#9'Lagersaldo'#9#9
        'PDFFinns'#9'10'#9'PDFFinns'#9#9
        'Lagerplats'#9'10'#9'Lagerplats'#9#9
        'PrisPerEnhet'#9'10'#9'Senaste pris'#9'F'
        'cRitningsnoteringFinns'#9'2'#9'R'#9#9
        'FixaturFinns'#9'2'#9'F'#9#9
        'BockritningFinns'#9'2'#9'B'#9#9)
      TitleButtons = True
      TitleMenuAttributes.Options = []
      OnCalcCellColors = dbGridCalcCellColors
      OnCalcTitleAttributes = dbGridCalcTitleAttributes
      OnTitleButtonClick = dbGridTitleButtonClick
      ImageList = ImageList1
      ExplicitLeft = 20
      ExplicitTop = 43
      ExplicitWidth = 757
      ExplicitHeight = 158
    end
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 108
      Top = 16
      Width = 141
      Height = 21
      DataSource = DataSource1
      SearchField = 'Artikelnummer'
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 20
      Top = 222
      Width = 689
      Height = 214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 21
        Top = 41
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Artikelnummer'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 37
        Top = 64
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Beteckning'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 10
        Top = 91
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ytbehandlad def'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 65
        Top = 17
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kund'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 33
        Top = 116
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ritning-PDF'
        FocusControl = DBEdit2
      end
      object Label7: TLabel
        Left = 37
        Top = 140
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lagersaldo'
        FocusControl = DBEdit2
      end
      object Label9: TLabel
        Left = 395
        Top = 117
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Artikeltyp'
        FocusControl = DBEdit1
      end
      object Label10: TLabel
        Left = 403
        Top = 142
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fastpris'
        FocusControl = DBEdit1
      end
      object Label11: TLabel
        Left = 11
        Top = 165
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ritningsnotering'
        FocusControl = DBEdit2
      end
      object Label12: TLabel
        Left = 391
        Top = 169
        Width = 50
        Height = 13
        Caption = 'Lagerplats'
        FocusControl = DBEdit7
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 37
        Width = 265
        Height = 21
        DataField = 'Artikelnummer'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 61
        Width = 265
        Height = 21
        DataField = 'Beteckning'
        DataSource = DataSource1
        TabOrder = 2
      end
      object edtYtbehandling: TwwDBLookupCombo
        Left = 96
        Top = 87
        Width = 265
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Beteckning'#9'39'#9'Beteckning'#9'F')
        DataField = 'YtbehandlingIDdefault'
        DataSource = DataSource1
        LookupTable = dm.qryLUYtbehandling
        LookupField = 'YtbehandlingID'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object edtKund: TwwDBLookupCombo
        Left = 96
        Top = 13
        Width = 265
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Kundnamn'#9'50'#9'Kundnamn'#9'F'#9)
        DataField = 'KundID'
        DataSource = DataSource1
        LookupTable = qryLU_Kund
        LookupField = 'KundID'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 113
        Width = 265
        Height = 21
        DataField = 'PDFFilNamn'
        DataSource = DataSource1
        TabOrder = 4
      end
      object Button1: TButton
        Left = 362
        Top = 113
        Width = 22
        Height = 22
        Caption = '...'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 139
        Width = 264
        Height = 21
        DataField = 'Lagersaldo'
        DataSource = DataSource1
        TabOrder = 6
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 447
        Top = 113
        Width = 228
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Beteckning'#9'30'#9'Beteckning'#9'F')
        DataField = 'ArtikeltypId'
        DataSource = DataSource1
        LookupTable = qryLU_Artikeltyp
        LookupField = 'Id'
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 447
        Top = 62
        Width = 97
        Height = 20
        Caption = 'Bockritning finns'
        DataField = 'BockritningFinns'
        DataSource = DataSource1
        TabOrder = 8
      end
      object DBCheckBox2: TDBCheckBox
        Left = 447
        Top = 86
        Width = 97
        Height = 20
        Caption = 'Fixatur finns'
        DataField = 'FixaturFinns'
        DataSource = DataSource1
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 447
        Top = 12
        Width = 61
        Height = 21
        TabStop = False
        Color = clInactiveCaption
        DataField = 'Id'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit6: TDBEdit
        Left = 447
        Top = 139
        Width = 97
        Height = 21
        DataField = 'Fastpris'
        DataSource = DataSource1
        TabOrder = 11
      end
      object DBMemo1: TDBMemo
        Left = 96
        Top = 165
        Width = 265
        Height = 42
        DataField = 'Notering'
        DataSource = DataSource1
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 447
        Top = 166
        Width = 134
        Height = 21
        DataField = 'Lagerplats'
        DataSource = DataSource1
        TabOrder = 13
      end
    end
    object Panel4: TPanel
      Left = 11
      Top = 462
      Width = 785
      Height = 168
      Align = alBottom
      Caption = 'Panel3'
      TabOrder = 3
      object Panel5: TPanel
        Left = 638
        Top = 1
        Width = 146
        Height = 166
        Align = alRight
        TabOrder = 0
        object Button2: TButton
          Left = 11
          Top = 12
          Width = 124
          Height = 25
          Caption = 'L'#228'gg till ny'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'application.DefaultFont.Name:='#39'Tahoma'#39';'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 11
          Top = 43
          Width = 124
          Height = 25
          Caption = #196'ndra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'application.DefaultFont.Name:='#39'Tahoma'#39';'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 11
          Top = 74
          Width = 124
          Height = 25
          Caption = 'Ta bort'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'application.DefaultFont.Name:='#39'Tahoma'#39';'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button4Click
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 637
        Height = 166
        Align = alClient
        BorderWidth = 3
        Caption = 'Panel5'
        TabOrder = 1
        object wwDBGrid1: TwwDBGrid
          Left = 4
          Top = 4
          Width = 629
          Height = 158
          Selected.Strings = (
            'UnderartikelNummer'#9'16'#9'Artikelnr'
            'UnderartikelBeteckning'#9'38'#9'Beteckning'
            'Antal'#9'19'#9'Antal'
            'Fastpris'#9'10'#9'Fastpris')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsoArtikelgrupp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Default'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          PadColumnStyle = pcsPadHeader
        end
      end
    end
    object cbLagersaldo: TCheckBox
      Left = 283
      Top = 18
      Width = 121
      Height = 17
      Caption = 'Enbart lagerartiklar'
      TabOrder = 4
      OnClick = cbLagersaldoClick
    end
  end
  inherited Panel2: TPanel
    Left = 807
    Height = 641
    ExplicitLeft = 807
    ExplicitHeight = 641
    inherited DBNav: TDBNavigator
      Top = 318
      Hints.Strings = ()
      ExplicitTop = 318
    end
    object Button5: TButton
      Left = 12
      Top = 239
      Width = 95
      Height = 25
      Caption = '&Lagerlista'
      TabOrder = 7
      OnClick = btnLagerlistaClick
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 640
    Top = 168
  end
  inherited DataSource1: TDataSource
    Left = 360
    Top = 68
  end
  inherited FDQuery1: TFDQuery
    OnCalcFields = FDQuery1CalcFields
    SQL.Strings = (
      'Select '
      'a.Id, '
      'a.Artikelnummer, '
      'a.Beteckning, '
      'a.YtbehandlingIdDefault, '
      'a.KundID, a.PDFFinns, '
      'a.PDFFilnamn, '
      'a.Lagersaldo, '
      'a.Lagerplats, '
      'a._YtbehandlingIDdefault, '
      'a.ArtikeltypId, '
      'a.BockritningFinns, '
      'a.FixaturFinns, '
      'a.Skapatdatum, '
      'a.Fastpris, '
      'a.Notering,'
      'typ.Beteckning ArtikeltypBeteckning,'
      'typ.systemname ArtikeltypSystemname'
      ',PrisPerEnhet = (Select top 1 Prisperenhet from orderrad orad '
      #9#9#9#9'join orderhuvud h on h.id = orad.orderid '
      #9#9#9#9'where h.orderstatusid = 1'
      #9#9#9#9'and ArtikelID = a.Id'
      #9#9#9#9'order by fakturadatum desc)'
      'from Artikel a'
      'left join Artikeltyp typ on typ.id = a.ArtikeltypId'
      'where a.borttagen is null'
      'order by Artikelnummer')
    Left = 448
    Top = 72
    object FDQuery1Artikelnummer: TStringField
      DisplayWidth = 16
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object FDQuery1Beteckning: TStringField
      DisplayWidth = 36
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object FDQuery1PDFFilnamn: TStringField
      DisplayWidth = 13
      FieldName = 'PDFFilnamn'
      Origin = 'PDFFilnamn'
      Size = 100
    end
    object FDQuery1Lagersaldo: TBCDField
      DisplayWidth = 10
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Precision = 18
      Size = 0
    end
    object FDQuery1PDFFinns: TIntegerField
      DisplayWidth = 10
      FieldName = 'PDFFinns'
      Origin = 'PDFFinns'
    end
    object FDQuery1Lagerplats: TStringField
      DisplayWidth = 10
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
    end
    object FDQuery1PrisPerEnhet: TCurrencyField
      DisplayLabel = 'Senaste pris'
      DisplayWidth = 10
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
      ReadOnly = True
      DisplayFormat = '### ###.##'
    end
    object FDQuery1cRitningsNotereingFinns: TBooleanField
      DisplayLabel = 'R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns'
      Calculated = True
    end
    object FDQuery1FixaturFinns: TBooleanField
      DisplayLabel = 'F'
      DisplayWidth = 2
      FieldName = 'FixaturFinns'
      Origin = 'FixaturFinns'
    end
    object FDQuery1BockritningFinns: TBooleanField
      DisplayLabel = 'B'
      DisplayWidth = 2
      FieldName = 'BockritningFinns'
      Origin = 'BockritningFinns'
    end
    object FDQuery1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object FDQuery1YtbehandlingIdDefault: TIntegerField
      FieldName = 'YtbehandlingIdDefault'
      Origin = 'YtbehandlingIdDefault'
      Visible = False
    end
    object FDQuery1KundID: TIntegerField
      FieldName = 'KundID'
      Origin = 'KundID'
      Visible = False
    end
    object FDQuery1ArtikeltypId: TIntegerField
      FieldName = 'ArtikeltypId'
      Origin = 'ArtikeltypId'
      Visible = False
    end
    object FDQuery1ArtikeltypBeteckning: TStringField
      FieldName = 'ArtikeltypBeteckning'
      Origin = 'ArtikeltypBeteckning'
      Visible = False
      Size = 50
    end
    object FDQuery1ArtikeltypSystemname: TStringField
      FieldName = 'ArtikeltypSystemname'
      Origin = 'ArtikeltypSystemname'
      Visible = False
      Size = 30
    end
    object FDQuery1_YtbehandlingIDdefault: TStringField
      FieldName = '_YtbehandlingIDdefault'
      Origin = '_YtbehandlingIDdefault'
      Visible = False
      Size = 10
    end
    object FDQuery1Fastpris: TCurrencyField
      FieldName = 'Fastpris'
      Origin = 'Fastpris'
      Visible = False
    end
    object FDQuery1Notering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      Visible = False
      BlobType = ftMemo
      Size = 2147483647
    end
  end
  object Custom_Artikel_Delete: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'Custom_Artikel_Delete'
    Left = 588
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ArtikelId'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Custom_ArtikelGrupp_add: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'Custom_ArtikelGrupp_add'
    Left = 380
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ArtikelId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UnderartikelId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@antal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Leverant'#246'r'
        DataType = ftString
        ParamType = ptInput
        Size = 1000
      end>
  end
  object qryArtikelgrupp: TFDQuery
    AggregatesActive = True
    MasterSource = DataSource1
    MasterFields = 'Id'
    DetailFields = 'Id'
    Connection = dm.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvRefreshMode]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      'Select ag.Id,'
      'ag.ArtikelId ,'
      'ag.UnderartikelId, '
      'ag.Antal,'
      'ag.Leverant'#246'r,'
      'a1.Artikelnummer,'
      'a2.Artikelnummer UnderartikelNummer,'
      'a2.Beteckning UnderartikelBeteckning,'
      'a2.Fastpris,'
      'ag.Borttagen'
      'from Artikelgrupp ag'
      'join artikel a1 on a1.Id = Ag.ArtikelId'
      'join artikel a2 on a2.Id = Ag.UnderArtikelId'
      'where ag.Artikelid = :Id'
      'and ag.Borttagen is null')
    Left = 756
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 51296
      end>
    object qryArtikelgruppUnderartikelNummer: TStringField
      DisplayLabel = 'Artikelnr'
      DisplayWidth = 16
      FieldName = 'UnderartikelNummer'
      Origin = 'UnderartikelNummer'
      Required = True
      Size = 30
    end
    object qryArtikelgruppUnderartikelBeteckning: TStringField
      DisplayLabel = 'Beteckning'
      DisplayWidth = 38
      FieldName = 'UnderartikelBeteckning'
      Origin = 'UnderartikelBeteckning'
      Size = 200
    end
    object qryArtikelgruppAntal: TBCDField
      DisplayWidth = 19
      FieldName = 'Antal'
      Origin = 'Antal'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryArtikelgruppFastpris: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Fastpris'
      Origin = 'Fastpris'
    end
    object qryArtikelgruppId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryArtikelgruppArtikelId: TIntegerField
      DisplayWidth = 10
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      Required = True
      Visible = False
    end
    object qryArtikelgruppUnderartikelId: TIntegerField
      DisplayWidth = 10
      FieldName = 'UnderartikelId'
      Origin = 'UnderartikelId'
      Required = True
      Visible = False
    end
    object qryArtikelgruppLeverantör: TStringField
      DisplayWidth = 1000
      FieldName = 'Leverant'#246'r'
      Origin = '[Leverant'#246'r]'
      Visible = False
      Size = 1000
    end
    object qryArtikelgruppArtikelnummer: TStringField
      DisplayWidth = 30
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Visible = False
      Size = 30
    end
    object qryArtikelgruppBorttagen: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Borttagen'
      Origin = 'Borttagen'
      Visible = False
    end
  end
  object dsoArtikelgrupp: TDataSource
    DataSet = qryArtikelgrupp
    Left = 760
    Top = 412
  end
  object qryLU_Artikeltyp: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select NULL Id, '#39'<ingen artikeltyp>'#39' Beteckning'
      'Union all'
      'Select '
      'Id ,Beteckning'
      'from artikeltyp '
      'order by Id')
    Left = 492
    Top = 140
    object qryLU_ArtikeltypBeteckning: TStringField
      DisplayWidth = 30
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 50
    end
    object qryLU_ArtikeltypId: TIntegerField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object qryLU_Kund: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id KundId, * from kund order by Kundnamn')
    Left = 312
    Top = 136
    object qryLU_KundKundnamn: TStringField
      DisplayWidth = 50
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryLU_KundKundId: TFDAutoIncField
      FieldName = 'KundId'
      Origin = 'KundId'
      ReadOnly = True
      Visible = False
    end
    object qryLU_KundID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryLU_KundKortbeteckning: TStringField
      FieldName = 'Kortbeteckning'
      Origin = 'Kortbeteckning'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object ImageList1: TImageList
    Left = 336
    Top = 272
    Bitmap = {
      494C010102000500340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFF9FF00000000FFFFF0FF00000000
      FFFFE07F00000000FFFFE63F00000000FFFFEF1F00000000FFFFFF8F00000000
      FFFFFFC700000000FFFFFFE700000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object wwDataSource1: TwwDataSource
    Left = 468
    Top = 108
  end
end
