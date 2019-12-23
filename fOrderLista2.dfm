object frmOrderLista: TfrmOrderLista
  Left = 686
  Top = 375
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Orderlista'
  ClientHeight = 701
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesigned
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 640
    Top = 320
    Width = 32
    Height = 14
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 701
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1184
      Height = 37
      Align = alTop
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 74
        Height = 35
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '   Orderlista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 75
        Top = 1
        Width = 1108
        Height = 35
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 508
          Top = 12
          Width = 70
          Height = 13
          Caption = '&Best'#228'llningsnr:'
          FocusControl = wwIncrementalSearch1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 24
          Top = 11
          Width = 24
          Height = 13
          Caption = '&Kund'
          FocusControl = wwDBLookupCombo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 332
          Top = 11
          Width = 38
          Height = 13
          Caption = '&Ordernr'
          FocusControl = sokOrdernummer
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 796
          Top = 11
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object wwIncrementalSearch1: TwwIncrementalSearch
          Left = 582
          Top = 9
          Width = 115
          Height = 21
          DataSource = dsoOrderlist
          SearchField = 'Ordernummer'
          TabOrder = 2
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 54
          Top = 8
          Width = 157
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'kundnamn'#9'30'#9'kundnamn'#9'F')
          LookupTable = sp_KundLookuplist
          LookupField = 'Kundid'
          Color = clWhite
          DropDownCount = 40
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
          OnCloseUp = wwDBLookupCombo1CloseUp
        end
        object Button1: TButton
          Left = 212
          Top = 7
          Width = 24
          Height = 23
          Caption = 'X'
          TabOrder = 3
          OnClick = Button1Click
        end
        object sokOrdernummer: TEdit
          Left = 376
          Top = 8
          Width = 109
          Height = 21
          TabOrder = 0
          OnChange = sokOrdernummerChange
          OnEnter = sokOrdernummerEnter
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 75
      Width = 1184
      Height = 626
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object wwDBGrid1: TwwDBGrid
        Left = 5
        Top = 5
        Width = 1174
        Height = 616
        Selected.Strings = (
          'OrderID'#9'8'#9'Ordernr'
          'Kundnamn'#9'14'#9'Kundnamn'
          'Ordernummer'#9'9'#9'Best.Nr'
          'OrderDatum'#9'12'#9'OrderDatum'
          'Ytbehandlingdatum'#9'10'#9'Ytbeh datum'
          'leveransdatum'#9'11'#9'Lev datum'
          'Godsm'#228'rke'#9'24'#9'Godsm'#228'rke'
          'EgenM'#228'rkning'#9'23'#9'Egen m'#228'rkning'
          'Kundreferens'#9'14'#9'Kundreferens'
          'AntalTotal'#9'4'#9'  B'
          'AntalAvrapporterad'#9'3'#9'  '#197
          'Antalprissatt'#9'3'#9'  P'
          'Fakturanummer'#9'9'#9'Fakturanr'
          'Fakturadatum'#9'9'#9'Fakt datum'
          'KalkArbetstidTime'#9'10'#9'Utr'#228'knat'
          'ArbetstidPlaneradTime'#9'13'#9'Inplanerad')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnMultiSelectRecord = wwDBGrid1MultiSelectRecord
        OnRowChanged = wwDBGrid1RowChanged
        FixedCols = 0
        ShowHorzScrollBar = False
        Align = alClient
        Color = clWhite
        DataSource = dsoOrderlist
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Default'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnTitleButtonClick = wwDBGrid1TitleButtonClick
        OnDblClick = wwDBGrid1DblClick
        OnKeyDown = wwDBGrid1KeyDown
        PadColumnStyle = pcsPadHeader
        GroupFieldName = 'Fakturanummer'
      end
      object wwExpandButton1: TwwExpandButton
        Left = 600
        Top = 112
        Width = 97
        Height = 17
        DisableThemes = False
        Caption = 'wwExpandButton1'
        TabOrder = 1
        Visible = False
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 37
      Width = 1184
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 45
      Width = 1184
      Height = 30
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 3
      TabWidth = 130
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        Highlighted = True
      end
    end
  end
  object dsoOrderlist: TDataSource
    AutoEdit = False
    DataSet = sp_Orderlist
    Left = 948
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 100
    Top = 180
    object Sattfakturadatum2: TMenuItem
      Action = actSattFakturadata
    end
    object actTaBortFakturamärkning: TMenuItem
      Caption = 'Ta bort fakturam'#228'rkning'
    end
    object Lggtillndrapositioner1: TMenuItem
      Action = actOrderLäggtillÄndraPositioner
    end
    object Uppdatera1: TMenuItem
      Action = actOrderlistaRefresh
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Nybestllningoffert1: TMenuItem
      Action = actNyBestallning
    end
    object ndraorderhuvud1: TMenuItem
      Action = actOrderEdit
    end
    object Sttordertstatus1: TMenuItem
      Action = actOrderStatusUpdate
    end
    object actCopyOrder1: TMenuItem
      Action = actCopyOrder
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Skapaplanering1: TMenuItem
      Action = actPlaneringSkapa
    end
    object abortplaneringfrorder1: TMenuItem
      Action = actPlaneringTabort
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Visautskrift1: TMenuItem
      Action = actOrderVisa
      Caption = 'Visa best'#228'llning'
    end
    object actSkrivUtBeställning: TMenuItem
      Action = actSkrivUt
      Caption = 'Skapa PDF-best'#228'llning'
    end
    object Skrivutorderbekrftelse1: TMenuItem
      Action = actOrderSkrivut
      Caption = 'Skapa PDF-orderbekr'#228'ftelse'
    end
    object offertsommailtillkund2: TMenuItem
      Action = actOffertSendViamail
      Caption = 'Skapa PDF-offert'
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Skrivutfakturaunderlag1: TMenuItem
      Tag = 2
      Action = actFakturaunderlagPrint
      Caption = 'Visa fakturaunderlag'
      Visible = False
    end
    object N5: TMenuItem
      Caption = '-'
      Visible = False
    end
    object actPallEtikett1: TMenuItem
      Action = actPallEtikett
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Prissttningpositioner1: TMenuItem
      Action = actPrissattningPositioner
    end
    object Skrivutfakturaunderlag: TMenuItem
      Tag = 1
      Action = actFakturaunderlagPrint
      Caption = 'Skriv ut fakturaunderlag*'
    end
    object actFaktutarunderlagXML1: TMenuItem
      Action = actFaktutarunderlagXML
      Caption = 'Skapa XML - fakturaunderlag'
      Hint = 'XML filen hittar du i samma katalog som PDF filen'
    end
    object Sttfakturadatum1: TMenuItem
      Action = actSattFakturadatum
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Tabort1: TMenuItem
      Action = actOrderTaBort
      Caption = 'Ta bort best'#228'llning / offert'
    end
    object N6: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Skrivutorderbekrftelse2: TMenuItem
      Action = actOrderbekräftleseViaMail
      Visible = False
    end
    object Skrivutetiketter1: TMenuItem
      Action = actEtiketterSkrivUt
      Visible = False
    end
    object Skrivutfljesedel1: TMenuItem
      Action = actFöljesdelUtskrift
      Caption = 'Skriv ut f'#246'ljesdel*'
      Visible = False
    end
    object Skrivutritningar1: TMenuItem
      Action = actOrderPDFPrint
      Caption = 'Skriv ut PDF - ritningar'
      Visible = False
    end
  end
  object ActionList1: TActionList
    Left = 104
    Top = 119
    object actNyBestallning: TAction
      Caption = 'Ny best'#228'llning / offert'
      OnExecute = actNyBestallningExecute
    end
    object actSkrivUt: TAction
      Caption = 'Skriv ut'
      OnExecute = actSkrivUtExecute
    end
    object actSattFakturadatum: TAction
      Caption = 'S'#228'tt fakturadatum'
      OnExecute = actSattFakturadatumExecute
    end
    object actPrissattningPositioner: TAction
      Caption = 'Priss'#228'tta positioner'
      OnExecute = actPrissattningPositionerExecute
    end
    object actOrderTaBort: TAction
      Caption = 'Ta bort order'
      OnExecute = actOrderTaBortExecute
    end
    object actOffertSendViamail: TAction
      Caption = 'Offert som mail till kund'
      OnExecute = actOffertSendViamailExecute
    end
    object actOrderEdit: TAction
      Caption = #196'ndra orderhuvud'
      OnExecute = actOrderEditExecute
    end
    object actFakturaunderlagPrint: TAction
      Tag = 2
      Caption = 'Skriv ut fakturaunderlag'
      OnExecute = actFakturaunderlagPrintExecute
    end
    object actOrderradUpdate: TAction
      Caption = 'Updatera orderrader'
      OnExecute = actOrderradUpdateExecute
    end
    object actOrderVisa: TAction
      Caption = 'Visa utskrift'
      OnExecute = actOrderVisaExecute
    end
    object actOrderStatusUpdate: TAction
      Caption = #196'ndra orderstatus manuellt'
      OnExecute = actOrderStatusUpdateExecute
    end
    object actPallEtikett: TAction
      Caption = 'Uskrift palletikett'
      OnExecute = actPallEtikettExecute
    end
    object actArbetsorderPrint: TAction
      Caption = 'Utskrift arbetsorder'
      OnExecute = actArbetsorderPrintExecute
    end
    object actOrderPDFPrint: TAction
      Caption = 'Skriv ut ritningar'
      OnExecute = actOrderPDFPrintExecute
    end
    object actOrderlistaRefresh: TAction
      Caption = 'Refresh orderlista'
      OnExecute = actOrderlistaRefreshExecute
    end
    object actImporteraIntersystem: TAction
      Caption = 'actImporteraIntersystem'
      OnExecute = actImporteraIntersystemExecute
    end
    object actPlaneringSkapa: TAction
      Caption = 'Skapa planering'
      OnExecute = actPlaneringSkapaExecute
    end
    object actPlaneringTabort: TAction
      Caption = 'Ta bort planering'
      OnExecute = actPlaneringTabortExecute
    end
    object actOrderSkrivut: TAction
      Caption = 'Skriv ut best'#228'llning'
      OnExecute = actOrderSkrivutExecute
    end
    object actEtiketterSkrivUt: TAction
      Caption = 'Skriv ut etiketter'
      OnExecute = actEtiketterSkrivUtExecute
    end
    object actFöljesdelUtskrift: TAction
      Caption = 'Skriv ut f'#246'ljesdel'
      OnExecute = actFöljesdelUtskriftExecute
    end
    object actOrderbekräftleseViaMail: TAction
      Caption = 'Skicka orderbekr'#228'ftlese via epost'
      OnExecute = actOrderbekräftleseViaMailExecute
    end
    object actOrderLäggtillÄndraPositioner: TAction
      Caption = 'L'#228'gg till/'#228'ndra pos. (dubbelklick)'
      OnExecute = actOrderLäggtillÄndraPositionerExecute
    end
    object actFakturaunderlagPDF: TAction
      Caption = 'actFakturaunderlagPDF'
    end
    object actFaktutarunderlagXML: TAction
      Caption = 'actFaktutarunderlagXML'
      OnExecute = actFaktutarunderlagXMLExecute
    end
    object actCopyOrder: TAction
      Caption = 'Kopiera Order'
      OnExecute = actCopyOrderExecute
    end
    object actSattFakturadata: TAction
      Caption = 'S'#228'tt fakturam'#228'rkning'
      OnExecute = actSattFakturadataExecute
    end
  end
  object sp_ftgsystem: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'FtgSystemGet'
    Left = 1132
    Top = 296
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
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@V'#228'rde'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 100
      end>
  end
  object sp_OrderDelete: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderDelete'
    Left = 1132
    Top = 348
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OrderID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Custom_OrderhuvudFakturadataUpdate: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.Custom_OrderhuvudFakturadataUpdate'
    Left = 1120
    Top = 624
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OrderhuvudId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Fakturanummer'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = '@Fakturadatum'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end>
  end
  object qryKundFilter: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'select 0 Kundid,'#39'<alla>'#39' Kundnamn,10000000'
      'union all'
      'Select '
      #9'k.id Kundid,k.kundnamn ,count(*)'
      'from orderhuvud oh'
      'join kund k on k.id = oh.kundid'
      'group by k.id,k.Kundnamn'
      'order by 3 desc,2 asc')
    Left = 1124
    Top = 240
    object qryKundFilterKundid: TIntegerField
      FieldName = 'Kundid'
      Origin = 'Kundid'
      ReadOnly = True
      Required = True
    end
    object qryKundFilterKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qryKundFilterUnnamed3: TIntegerField
      FieldName = 'Unnamed3'
      Origin = 'Unnamed3'
      ReadOnly = True
    end
  end
  object qryEtiketter: TFDQuery
    MasterSource = dsoOrderlist
    MasterFields = 'OrderID'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'oh.Id OrderId,'
      'k.Kundnamn,'
      'isnull(ak.F'#246'rnamn,'#39#39') + isnull(ak.Efternamn,'#39#39') Referens,'
      'oh.ordernummer,'
      'oh.Godsm'#228'rke,'
      'oh.orderdatum,'
      'oh.Leveransdatum,'
      'orad.Positionnummer,'
      'y.Beteckning YtbehandlingBeteckning,'
      'a.Beteckning,'
      'orad.Antal,'
      'orad.Prisperenhet,'
      'oh.fritext,'
      'orad.Prisperenhet * orad.Antal as Pris  ,'
      'oh.OrdertypId'
      'from OrderRad orad'
      'join Artikel a on orad.artikelID = a.Id'
      'join OrderHuvud oh on oh.ID = orad.OrderID'
      'join kund k on k.Id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'left join akt'#246'r ak on ak.id = kp.Id'
      'left join personal p on orad.avrapporteradPersonID = p.id'
      'join Ytbehandling y on orad.ytbehandlingID = y.ID'
      'where oh.id = :OrderId'
      'and orad.Antal <> 0'
      'order by orad.Radnr'
      ' ')
    Left = 1124
    Top = 180
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEtiketterOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryEtiketterKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryEtiketterReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryEtiketterordernummer: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object qryEtiketterGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryEtiketterorderdatum: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object qryEtiketterLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryEtiketterPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryEtiketterYtbehandlingBeteckning: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryEtiketterBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryEtiketterAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryEtiketterPrisperenhet: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object qryEtiketterfritext: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object qryEtiketterPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qryEtiketterOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
  end
  object spPlaneringDelete: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'PlaneringDelete'
    Left = 1140
    Top = 404
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
      end>
  end
  object sp_Orderlist: TFDStoredProc
    Connection = dm.FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    StoredProcName = 'OrderList'
    Left = 948
    Top = 168
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
      end
      item
        Position = 3
        Name = '@OrderstatusId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@orderby'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object sp_OrderlistOrderID: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'Ordernr'
      DisplayWidth = 8
      FieldName = 'OrderID'
      Origin = 'OrderID'
      ReadOnly = True
    end
    object sp_OrderlistKundnamn: TStringField
      DisplayWidth = 14
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object sp_OrderlistOrdernummer: TStringField
      DisplayLabel = 'Best.Nr'
      DisplayWidth = 9
      FieldName = 'Ordernummer'
      Origin = 'Ordernummer'
      Required = True
      Size = 30
    end
    object sp_OrderlistOrderDatum: TSQLTimeStampField
      Alignment = taCenter
      DisplayWidth = 12
      FieldName = 'OrderDatum'
      Origin = 'OrderDatum'
      Required = True
    end
    object sp_OrderlistYtbehandlingdatum: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Ytbeh datum'
      DisplayWidth = 10
      FieldName = 'Ytbehandlingdatum'
      Origin = 'Ytbehandlingdatum'
    end
    object sp_Orderlistleveransdatum: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Lev datum'
      DisplayWidth = 11
      FieldName = 'leveransdatum'
      Origin = 'leveransdatum'
    end
    object sp_OrderlistGodsmärke: TStringField
      DisplayWidth = 24
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object sp_OrderlistEgenMärkning: TStringField
      DisplayLabel = 'Egen m'#228'rkning'
      DisplayWidth = 23
      FieldName = 'EgenM'#228'rkning'
      Origin = '[EgenM'#228'rkning]'
      Size = 50
    end
    object sp_OrderlistKundreferens: TStringField
      DisplayWidth = 14
      FieldName = 'Kundreferens'
      Origin = 'Kundreferens'
      ReadOnly = True
      Size = 101
    end
    object sp_OrderlistAntalTotal: TIntegerField
      DisplayLabel = '  B'
      DisplayWidth = 4
      FieldName = 'AntalTotal'
      Origin = 'AntalTotal'
      ReadOnly = True
      DisplayFormat = '####'
    end
    object sp_OrderlistAntalAvrapporterad: TIntegerField
      DisplayLabel = '  '#197
      DisplayWidth = 3
      FieldName = 'AntalAvrapporterad'
      Origin = 'AntalAvrapporterad'
      ReadOnly = True
      DisplayFormat = '####'
    end
    object sp_OrderlistAntalprissatt: TIntegerField
      DisplayLabel = '  P'
      DisplayWidth = 3
      FieldName = 'Antalprissatt'
      Origin = 'Antalprissatt'
      ReadOnly = True
      DisplayFormat = '####'
    end
    object sp_OrderlistFakturanummer: TStringField
      DisplayLabel = 'Fakturanr'
      DisplayWidth = 9
      FieldName = 'Fakturanummer'
      Origin = 'Fakturanummer'
    end
    object sp_OrderlistFakturadatum: TDateField
      DisplayLabel = 'Fakt datum'
      DisplayWidth = 9
      FieldName = 'Fakturadatum'
      Origin = 'Fakturadatum'
    end
    object sp_OrderlistKalkArbetstidTime: TStringField
      DisplayLabel = 'Utr'#228'knat'
      DisplayWidth = 10
      FieldName = 'KalkArbetstidTime'
      Origin = 'KalkArbetstidTime'
      ReadOnly = True
      Size = 200
    end
    object sp_OrderlistArbetstidPlaneradTime: TStringField
      DisplayLabel = 'Inplanerad'
      DisplayWidth = 13
      FieldName = 'ArbetstidPlaneradTime'
      Origin = 'ArbetstidPlaneradTime'
      ReadOnly = True
      Size = 200
    end
    object sp_OrderlistOrdertypId: TIntegerField
      DisplayWidth = 9
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
      Visible = False
    end
    object sp_OrderlistArbetstidManuelltTime: TStringField
      DisplayLabel = 'Manuellt'
      DisplayWidth = 13
      FieldName = 'ArbetstidManuelltTime'
      Origin = 'ArbetstidManuelltTime'
      ReadOnly = True
      Visible = False
      Size = 200
    end
    object sp_OrderlistKalkArbetstid: TFloatField
      DisplayWidth = 10
      FieldName = 'KalkArbetstid'
      Origin = 'KalkArbetstid'
      ReadOnly = True
      Visible = False
      DisplayFormat = '#########.##'
    end
    object sp_OrderlistArbetstidManuellt: TIntegerField
      DisplayWidth = 10
      FieldName = 'ArbetstidManuellt'
      Origin = 'ArbetstidManuellt'
      Visible = False
    end
    object sp_OrderlistoTyp: TStringField
      FieldName = 'oTyp'
      Origin = 'oTyp'
      ReadOnly = True
      Visible = False
      Size = 11
    end
    object sp_Orderlistemailadress: TStringField
      FieldName = 'emailadress'
      Origin = 'emailadress'
      Visible = False
      Size = 50
    end
    object sp_OrderlistKundID: TIntegerField
      FieldName = 'KundID'
      Origin = 'KundID'
      Required = True
      Visible = False
    end
    object sp_OrderlistSortorder: TSmallintField
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      Required = True
      Visible = False
    end
    object sp_OrderlistBGColor: TStringField
      FieldName = 'BGColor'
      Origin = 'BGColor'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object sp_OrderlistOrderStatusId: TIntegerField
      FieldName = 'OrderStatusId'
      Origin = 'OrderStatusId'
      Visible = False
    end
    object sp_OrderlistArbetstidPlanerad: TIntegerField
      FieldName = 'ArbetstidPlanerad'
      Origin = 'ArbetstidPlanerad'
      ReadOnly = True
      Visible = False
    end
    object sp_OrderlistTabId: TSmallintField
      FieldName = 'TabId'
      Origin = 'TabId'
      Visible = False
    end
  end
  object wwDataSource1: TwwDataSource
    Left = 1244
    Top = 37
  end
  object gtPDFDocument1: TgtPDFDocument
    About = 'Gnostice PDFtoolkit (www.gnostice.com)'
    Version = '5.0.0.589'
    OpenAfterSave = False
    MergeOptions = []
    EMailAfterSave = False
    ShowSetupDialog = False
    Left = 1116
    Top = 513
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 1124
    Top = 565
  end
  object QRExp: TgtQRExport
    Version = '17.5.1180.3440'
    EncodersSettings.PDF.FileExtension = 'pdf'
    EncodersSettings.PDF.FileDescription = 'Adobe PDF Files'
    EncodersSettings.PDF.PDFVersion = PDF_VER14
    EncodersSettings.PDF.DigitalSignature.Enabled = False
    EncodersSettings.PDF.DigitalSignature.Field.Visible = True
    EncodersSettings.PDF.DigitalSignature.Field.FillColor = clWhite
    EncodersSettings.PDF.DigitalSignature.Field.PageNumber = 1
    EncodersSettings.PDF.DigitalSignature.Field.FieldAppearenceOptions = [sfaoxShowName, sfaoxShowReason, sfaoxShowLocation, sfaoxShowDate, sfaoxShowLabels]
    EncodersSettings.PDF.ImageSettings.JPEGQuality = 50
    EncodersSettings.PDF.ImageSettings.OutputFormat = pifJPEG
    EncodersSettings.PDF.FontSettings.Embedding = efmSubset
    EncodersSettings.PDF.FontSettings.Encoding = fenWinAnsiEncoding
    EncodersSettings.PDF.LineJoinStyle = ljsMiter
    EncodersSettings.PDF.LineCapStyle = lcsFlat
    EncodersSettings.XLSX.FileExtension = 'xlsx'
    EncodersSettings.XLSX.FileDescription = 'Microsoft Excel Workbook'
    EncodersSettings.XLSX.Formatting.RowSpacing = 0
    EncodersSettings.XLSX.Formatting.ScaleX = 1.000000000000000000
    EncodersSettings.XLSX.Formatting.ScaleY = 1.000000000000000000
    EncodersSettings.XLSX.Formatting.DefaultColumnWidth = 8.000000000000000000
    EncodersSettings.XLSX.NumberFormatDecimalPlaces = 0
    EncodersSettings.XLSX.PagesPerWorksheet = 0
    EncodersSettings.RTF.FileExtension = 'rtf'
    EncodersSettings.RTF.FileDescription = 'Rich Text Format'
    EncodersSettings.RTF.ImageSettings.JPEGQuality = 50
    EncodersSettings.RTF.ImageSettings.OutputFormat = rifJPEG
    EncodersSettings.HTML.FileExtension = 'htm'
    EncodersSettings.HTML.FileDescription = 'HyperText Markup Language'
    EncodersSettings.HTML.ImageSettings.JPEGQuality = 50
    EncodersSettings.HTML.ImageSettings.OutputFormat = hifJPEG
    EncodersSettings.XHTML.FileExtension = 'htm'
    EncodersSettings.XHTML.FileDescription = 'Extended HyperText Markup Language'
    EncodersSettings.XHTML.ImageSettings.JPEGQuality = 50
    EncodersSettings.XHTML.ImageSettings.OutputFormat = hifJPEG
    EncodersSettings.TEXT.FileExtension = 'txt'
    EncodersSettings.TEXT.FileDescription = 'Text Document'
    EncodersSettings.SVG.FileExtension = 'svg'
    EncodersSettings.SVG.FileDescription = 'Scalable Vector Graphics'
    EncodersSettings.SVG.ImageSettings.JPEGQuality = 50
    EncodersSettings.SVG.ImageSettings.OutputFormat = sifJPEG
    EncodersSettings.TIFF.FileExtension = 'tif'
    EncodersSettings.TIFF.FileDescription = 'Tagged Image File Format'
    EncodersSettings.TIFF.Grayscale = False
    EncodersSettings.TIFF.CompressionType = ctLZW
    EncodersSettings.TIFF.MultiPage = True
    EncodersSettings.PNG.FileExtension = 'png'
    EncodersSettings.PNG.FileDescription = 'Portable Network Graphics'
    EncodersSettings.JPEG.FileExtension = 'jpg'
    EncodersSettings.JPEG.FileDescription = 'JPEG File Interchange Format'
    EncodersSettings.JPEG.ProgressiveEncoding = False
    EncodersSettings.GIF.FileExtension = 'gif'
    EncodersSettings.GIF.FileDescription = 'Graphics Interchange Format'
    EncodersSettings.BMP.FileExtension = 'bmp'
    EncodersSettings.BMP.FileDescription = 'Windows Bitmap'
    VisibleFormats = [PDF, XLSX, RTF, HTML, XHTML, TEXT, SVG, TIFF, PNG, JPEG, GIF, BMP]
    Left = 1124
    Top = 461
  end
  object qryOrder: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'oh.Id OrderId,'
      'k.Kundnamn,'
      'isnull(ak.F'#246'rnamn,'#39#39') + isnull(ak.Efternamn,'#39#39') Referens,'
      'oh.ordernummer,'
      'oh.Godsm'#228'rke,'
      'oh.orderdatum,'
      'oh.Leveransdatum,'
      'orad.Positionnummer,'
      'y.Beteckning YtbehandlingBeteckning,'
      'a.Beteckning,'
      'a.Artikelnummer,'
      'orad.Antal,'
      'oh.OrdertypId,'
      'orad.Prisperenhet,'
      'oh.fritext,'
      'orad.Prisperenhet * orad.Antal as Pris  '
      'from OrderRad orad'
      'join Artikel a on orad.artikelID = a.Id'
      'join OrderHuvud oh on oh.ID = orad.OrderID'
      'join kund k on k.Id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'left join akt'#246'r ak on ak.id = kp.Id'
      'left join personal p on orad.avrapporteradPersonID = p.id'
      'left join Ytbehandling y on orad.ytbehandlingID = y.ID'
      'where oh.id = :OrderId'
      '')
    Left = 1120
    Top = 129
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrderOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryOrderKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryOrderReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryOrderordernummer: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object qryOrderGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryOrderorderdatum: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object qryOrderLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryOrderPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryOrderYtbehandlingBeteckning: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryOrderBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryOrderArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryOrderAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryOrderPrisperenhet: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object qryOrderfritext: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object qryOrderPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object qry: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'oh.Id OrderId,'
      'k.Kundnamn,'
      'isnull(ak.F'#246'rnamn,'#39#39') +'#39' '#39'+ isnull(ak.Efternamn,'#39#39') Referens,'
      'oh.ordernummer,'
      'oh.Godsm'#228'rke,'
      'oh.orderdatum,'
      'oh.Leveransdatum,'
      'orad.Positionnummer,'
      'y.Beteckning YtbehandlingBeteckning,'
      'a.Beteckning,'
      'a.Artikelnummer,'
      'orad.Antal,'
      'oh.OrdertypId,'
      'orad.Prisperenhet,'
      'oh.fritext,'
      'orad.Prisperenhet * orad.Antal as Pris  ,'
      'cast(getdate() as date) Dagensdatum'
      'from OrderRad orad'
      'join Artikel a on orad.artikelID = a.Id'
      'join OrderHuvud oh on oh.ID = orad.OrderID'
      'join kund k on k.Id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'left join akt'#246'r ak on ak.id = kp.Id'
      'left join personal p on orad.avrapporteradPersonID = p.id'
      'left join Ytbehandling y on orad.ytbehandlingID = y.ID'
      'where oh.id = :OrderId'
      '')
    Left = 1156
    Top = 33
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryordernummer: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object qryGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryorderdatum: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object qryLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryYtbehandlingBeteckning: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryPrisperenhet: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object qryfritext: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object qryPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qryDagensdatum: TDateField
      FieldName = 'Dagensdatum'
      Origin = 'Dagensdatum'
      ReadOnly = True
    end
  end
  object qryOrderSok: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select OrderStatusId from Orderhuvud where Id = :Orderid')
    Left = 860
    Top = 312
    ParamData = <
      item
        Name = 'ORDERID'
        ParamType = ptInput
      end>
  end
  object sp_OrderKopiera: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.OrderKopiera'
    Left = 868
    Top = 372
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
        Name = '@OrderId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OrderIDNew'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_KundLookuplist: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'KundLookuplist'
    Left = 968
    Top = 364
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object sp_KundLookuplistKundnamn: TStringField
      DisplayLabel = 'kundnamn'
      DisplayWidth = 30
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Size = 100
    end
    object sp_KundLookuplistKundId: TIntegerField
      FieldName = 'KundId'
      Origin = 'KundId'
      Visible = False
    end
  end
  object qryOrderstatus: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      ''
      'SELECT [Id]'
      '      ,[Orderstatus]'
      '      ,[Beteckning]'
      '      ,[Sortorder]'
      '      ,[BGColor]'
      '      ,[TabId]'
      '      ,[TabBeteckning]'
      '      ,[Oms'#228'ttningsgrundande]'
      '  FROM [dbo].[Orderstatus]'
      ''
      'order by TabId')
    Left = 588
    Top = 356
    object qryOrderstatusId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOrderstatusOrderstatus: TStringField
      FieldName = 'Orderstatus'
      Origin = 'Orderstatus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryOrderstatusBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Required = True
      Size = 50
    end
    object qryOrderstatusSortorder: TSmallintField
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      Required = True
    end
    object qryOrderstatusBGColor: TStringField
      FieldName = 'BGColor'
      Origin = 'BGColor'
      FixedChar = True
      Size = 10
    end
    object qryOrderstatusTabId: TSmallintField
      FieldName = 'TabId'
      Origin = 'TabId'
    end
    object qryOrderstatusTabBeteckning: TStringField
      FieldName = 'TabBeteckning'
      Origin = 'TabBeteckning'
      Size = 30
    end
    object qryOrderstatusOmsättningsgrundande: TBooleanField
      FieldName = 'Oms'#228'ttningsgrundande'
      Origin = '[Oms'#228'ttningsgrundande]'
    end
  end
  object qryOrdersummaGet: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select sum(antal * PrisPerEnhet) Ordersumma from orderrad where ' +
        'OrderID = :orderid'
      '')
    Left = 612
    Top = 428
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
