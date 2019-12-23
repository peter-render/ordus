object frmOrderradUpdate: TfrmOrderradUpdate
  Left = 355
  Top = 292
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Best'#228'llning'
  ClientHeight = 545
  ClientWidth = 1144
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1144
    Height = 545
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1142
      Height = 43
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 150
        Top = 6
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kund:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 368
        Top = 6
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Best'#228'llnings-nr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 149
        Top = 23
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Referens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 368
        Top = 23
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Godsm'#228'rke:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 217
        Top = 6
        Width = 148
        Height = 17
        DataField = 'Kundnamn'
      end
      object DBText3: TDBText
        Left = 218
        Top = 23
        Width = 147
        Height = 17
        DataField = 'emailadress'
      end
      object DBText4: TDBText
        Left = 460
        Top = 6
        Width = 185
        Height = 17
        DataField = 'Ordernummer'
      end
      object DBText5: TDBText
        Left = 460
        Top = 23
        Width = 149
        Height = 17
        DataField = 'Godsm'#228'rke'
      end
      object Label5: TLabel
        Left = 12
        Top = 6
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ordernr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 64
        Top = 6
        Width = 65
        Height = 17
        DataField = 'OrderID'
        DataSource = dsoOrderrad
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 44
      Width = 1142
      Height = 500
      Align = alClient
      BorderWidth = 10
      Caption = 'Panel4'
      TabOrder = 1
      object wwDBGrid1: TwwDBGrid
        Left = 11
        Top = 11
        Width = 1120
        Height = 478
        Margins.Top = 4
        Margins.Bottom = 4
        ControlType.Strings = (
          'SenastePrisPerEnhet;CustomEdit;LU_senastePriser;F'
          'PrisperEnhetAuto;CustomEdit;LU_Prisinfo;F')
        Selected.Strings = (
          'Positionnummer'#9'5'#9'Pos'#9#9
          'Artikelnummer'#9'16'#9'Artikelnummer'#9#9
          'ArtikelBeteckning'#9'24'#9'ArtikelBeteckning'#9#9
          'YtbehandlingBeteckning'#9'21'#9'Ytbehandling'#9#9
          'Antal'#9'6'#9'Antal'#9#9
          'PrisperEnhetAuto'#9'16'#9'Pris per enhet /auto'#9#9
          'PrisperEnhet'#9'12'#9'Pris per enhet'#9#9
          'SenastePrisPerEnhet'#9'14'#9'Senaste pris'#9#9
          'SenasteOrderdatum'#9'14'#9'Senaste prisdatum'#9#9
          'AvrapporteradDatum'#9'21'#9'Avrapporterad'#9#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clActiveCaption
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsoOrderrad
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFixedResizable]
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        LineColors.DataColor = clBlack
        LineColors.ShadowColor = clBlack
        OnCalcCellColors = wwDBGrid1CalcCellColors
        PadColumnStyle = pcsPadHeader
        ExplicitLeft = 12
      end
      object LU_senastePriser: TwwDBLookupCombo
        Left = 596
        Top = 407
        Width = 377
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Orderdatum'#9'10'#9'Orderdatum'#9'F'#9
          'OrdertypString'#9'2'#9'Typ'#9'F'
          'antal'#9'5'#9'Antal'#9'F'#9
          'PrisPerEnhet'#9'10'#9'Pris/enhet'#9'T'#9
          'Ytbehandling'#9'30'#9'Ytbehandling'#9'F')
        DataSource = dsoOrderrad
        LookupTable = qryOrderhistory
        LookupField = 'Id'
        Options = [loTitles]
        DropDownCount = 12
        DropDownWidth = 230
        ReadOnly = True
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = []
        OrderByDisplay = False
        PreciseEditRegion = True
        AllowClearKey = False
      end
      object LU_Prisinfo: TwwDBLookupCombo
        Left = 236
        Top = 407
        Width = 161
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Beteckning'#9'10'#9'Beteckning'#9'F'
          'Belopp'#9'10'#9'Belopp'#9'F')
        LookupTable = qryPrisinfo
        LookupField = 'orderradID'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
  end
  object dsoOrderrad: TDataSource
    DataSet = qryOrderrad
    Left = 885
    Top = 197
  end
  object PopupMenu1: TPopupMenu
    Left = 285
    Top = 261
    object Tabort1: TMenuItem
      Caption = 'Ta bort en hel rad'
      OnClick = Tabort1Click
    end
  end
  object sp_OrderradDelete: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.OrderRadDelete'
    Left = 477
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OrderradID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryOrderhistory: TFDQuery
    MasterSource = dsoOrderrad
    MasterFields = 'Id'
    DetailFields = 'Id'
    Connection = dm.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select orad.Id ,a2.artikelnummer,y.Beteckning Ytbehandling,'
      'orad2.PrisPerEnhet,o.Orderdatum ,'
      'orad2.antal,'
      'case when o.OrdertypId= 3 then '#39'O'#39' else '#39#39' end OrdertypString'
      'from '
      'orderrad orad'
      'join artikel a2 on a2.id = orad.ArtikelID'
      'join orderrad orad2 on orad2.ArtikelID = a2.id'
      
        'join Orderhuvud o on o.Id = orad2.OrderID and o.Id <> orad.Order' +
        'ID'
      'left join Ytbehandling y on y.id = orad2.YtbehandlingId'
      ''
      'where orad.id = :Id'
      'and orad2.prisperenhet is not null'
      ''
      'order by orad2.Datum desc')
    Left = 732
    Top = 388
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 8236
      end>
    object qryOrderhistoryOrderdatum: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'Orderdatum'
      Origin = 'Orderdatum'
      Required = True
    end
    object qryOrderhistoryOrdertypString: TStringField
      DisplayLabel = 'Typ'
      DisplayWidth = 2
      FieldName = 'OrdertypString'
      Origin = 'OrdertypString'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qryOrderhistoryantal: TFMTBCDField
      DisplayLabel = 'Antal'
      DisplayWidth = 5
      FieldName = 'antal'
      Origin = 'antal'
      Precision = 19
      Size = 2
    end
    object qryOrderhistoryPrisPerEnhet: TCurrencyField
      DisplayLabel = 'Pris/enhet'
      DisplayWidth = 10
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
    end
    object qryOrderhistoryYtbehandling: TStringField
      DisplayWidth = 30
      FieldName = 'Ytbehandling'
      Origin = 'Ytbehandling'
      Size = 50
    end
    object qryOrderhistoryartikelnummer: TStringField
      FieldName = 'artikelnummer'
      Origin = 'artikelnummer'
      Required = True
      Visible = False
      Size = 30
    end
    object qryOrderhistoryId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
  end
  object qryPrisinfo: TFDQuery
    MasterSource = dsoOrderrad
    MasterFields = 'Id'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select o.orderradID,p.Beteckning,o.Belopp '
      'from orderradprisinfo o'
      'Join prisinfotyp p on p.Id = o.prisinfotypId'
      'where OrderradID = :Id'
      'order by p.Sortorder')
    Left = 344
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPrisinfoBeteckning: TStringField
      DisplayWidth = 10
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 50
    end
    object qryPrisinfoBelopp: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Belopp'
      Origin = 'Belopp'
    end
    object qryPrisinfoorderradID: TIntegerField
      FieldName = 'orderradID'
      Origin = 'orderradID'
      Required = True
      Visible = False
    end
  end
  object qryOrderrad: TFDQuery
    MasterSource = frmOrderLista.dsoOrderlist
    MasterFields = 'OrderID'
    DetailFields = 'OrderId'
    Connection = dm.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select '
      #9'orad.Id,'
      #9'orad.OrderId,'
      #9'orad.Positionnummer,'
      #9'orad.ArtikelId,'
      #9'orad.YtbehandlingId,'
      #9'orad.Antal,'
      #9'orad.PrisperEnhet,'
      #9'orad.PrisperEnhetAuto,'
      #9'orad.Avrapporterad,'
      #9'orad.AvrapporteradDatum'
      ''
      '        ,per.F'#246'rnamn + '#39' '#39'+ per.Efternamn AvrapporteradAv,'
      #9'a.Artikelnummer,'
      #9'a.beteckning ArtikelBeteckning,'
      #9'y.Beteckning YtbehandlingBeteckning'
      ''
      #9',senaste.Prisperenhet SenastePrisPerEnhet'
      #9',senaste.OrdertypId SenasteOrdertypId'
      #9',Senaste.Orderdatum SenasteOrderdatum'
      ''
      'from orderrad orad'
      ''
      ''
      'outer apply('
      #9'select '
      #9#9'top 1 or2.PrisPerEnhet,oh2.OrdertypId ,OrderDatum'
      #9'from Orderrad or2 '
      #9#9'join Orderhuvud oh2 on oh2.Id = or2.OrderId'
      #9'where or2.ArtikelID = orad.ArtikelID '
      #9#9'and or2.orderid <> orad.OrderID and'
      #9#9'or2.Prisperenhet is not null'
      #9'order by oh2.ordertypId desc, oh2.Orderdatum desc) senaste'
      ''
      'join Artikel a on a.Id = orad.ArtikelId'
      'left join Ytbehandling y on y.id = orad.YtbehandlingId'
      'left join personal per on per.id = orad.AvrapporteradPersonID'
      ''
      'where orad.OrderID = :orderId'
      'order by orad.Radnr'
      ''
      '-- 8236')
    Left = 876
    Top = 124
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 8236
      end>
    object qryOrderradPositionnummer: TIntegerField
      DisplayLabel = 'Pos'
      DisplayWidth = 5
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryOrderradArtikelnummer: TStringField
      DisplayWidth = 16
      FieldName = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryOrderradArtikelBeteckning: TStringField
      DisplayWidth = 24
      FieldName = 'ArtikelBeteckning'
      Origin = 'ArtikelBeteckning'
      Size = 200
    end
    object qryOrderradYtbehandlingBeteckning: TStringField
      DisplayLabel = 'Ytbehandling'
      DisplayWidth = 21
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryOrderradAntal: TFMTBCDField
      DisplayWidth = 6
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderradPrisperEnhetAuto: TCurrencyField
      DisplayLabel = 'Pris per enhet /auto'
      DisplayWidth = 16
      FieldName = 'PrisperEnhetAuto'
      Origin = 'PrisperEnhetAuto'
    end
    object qryOrderradPrisperEnhet: TCurrencyField
      DisplayLabel = 'Pris per enhet'
      DisplayWidth = 12
      FieldName = 'PrisperEnhet'
      Origin = 'PrisperEnhet'
    end
    object qryOrderradSenastePrisPerEnhet: TCurrencyField
      DisplayLabel = 'Senaste pris'
      DisplayWidth = 14
      FieldName = 'SenastePrisPerEnhet'
      Origin = 'SenastePrisPerEnhet'
    end
    object qryOrderradSenasteOrderdatum: TSQLTimeStampField
      DisplayLabel = 'Senaste prisdatum'
      DisplayWidth = 14
      FieldName = 'SenasteOrderdatum'
      Origin = 'SenasteOrderdatum'
    end
    object qryOrderradAvrapporteradDatum: TSQLTimeStampField
      DisplayLabel = 'Avrapporterad'
      DisplayWidth = 21
      FieldName = 'AvrapporteradDatum'
      Origin = 'AvrapporteradDatum'
    end
    object qryOrderradSenasteOrdertypId: TIntegerField
      DisplayWidth = 14
      FieldName = 'SenasteOrdertypId'
      Origin = 'SenasteOrdertypId'
      Visible = False
    end
    object qryOrderradId: TFDAutoIncField
      FieldName = 'Id'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object qryOrderradOrderId: TIntegerField
      FieldName = 'OrderId'
      Required = True
      Visible = False
    end
    object qryOrderradArtikelId: TIntegerField
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      Required = True
      Visible = False
    end
    object qryOrderradYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
    object qryOrderradAvrapporterad: TBooleanField
      FieldName = 'Avrapporterad'
      Origin = 'Avrapporterad'
      Required = True
      Visible = False
    end
  end
end
