﻿object frmOrderLista: TfrmOrderLista
  Left = 686
  Top = 375
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Orderlista'
  ClientHeight = 881
  ClientWidth = 1369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenuOrderlista
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
    Height = 13
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
    Width = 1369
    Height = 881
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
      Width = 1369
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
        Width = 1293
        Height = 35
        Align = alClient
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          1293
          35)
        object lblsokbeställningsnummer: TLabel
          Left = 448
          Top = 11
          Width = 70
          Height = 13
          Caption = '&Best'#228'llningsnr:'
          FocusControl = sokBeställningsnummer
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
          Left = 280
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
          Left = 995
          Top = 8
          Width = 46
          Height = 19
          Caption = 'Label5'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Default'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label1: TLabel
          Left = 648
          Top = 11
          Width = 26
          Height = 13
          Caption = '&Text:'
          FocusControl = edtTextsok
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 1094
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Label6'
          Color = 52224
          ParentColor = False
          Visible = False
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 54
          Top = 8
          Width = 157
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'kundnamn'#9'30'#9'kundnamn'#9'F')
          LookupTable = dm.sp_KundLookuplist
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
          TabOrder = 2
          OnClick = Button1Click
        end
        object sokOrdernummer: TEdit
          Left = 320
          Top = 8
          Width = 109
          Height = 21
          TabOrder = 0
          OnChange = sokOrdernummerChange
          OnEnter = sokOrdernummerEnter
        end
        object cbVisaAllaFakturor: TCheckBox
          Left = 1159
          Top = 10
          Width = 97
          Height = 17
          Hint = 'det visas enbart fakturor ett '#229'r tillbaka'
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Visa alla fakturor'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnClick = cbVisaAllaFakturorClick
        end
        object btnStatusByteNext: TButton
          Left = 943
          Top = 7
          Width = 33
          Height = 22
          Hint = 'Byta till n'#228'sta status'
          Caption = 'S >'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnStatusByteNextClick
        end
        object sokBeställningsnummer: TEdit
          Left = 524
          Top = 8
          Width = 109
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          OnChange = sokBeställningsnummerChange
          OnEnter = sokBeställningsnummerEnter
        end
        object btnStatusBytePrev: TButton
          Left = 904
          Top = 7
          Width = 33
          Height = 22
          Hint = 'Byta till f'#246'reg'#229'ende status'
          Caption = '< S'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnStatusBytePrevClick
        end
        object edtTextsok: TEdit
          Left = 679
          Top = 8
          Width = 139
          Height = 21
          TabOrder = 7
          OnChange = edtTextsokChange
        end
        object btnSok: TButton
          Left = 820
          Top = 6
          Width = 65
          Height = 25
          Caption = '&S'#246'k'
          Enabled = False
          TabOrder = 8
          OnClick = btnSokClick
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 75
      Width = 1369
      Height = 806
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
        Width = 1359
        Height = 796
        ControlType.Strings = (
          #196'rPrissatt;CheckBox;1;0')
        PictureMasks.Strings = (
          'Ordersumma'#9'### ### ###0,00'#9'T'#9'F'
          'Lagersaldo'#9'###'#9'T'#9'T')
        Selected.Strings = (
          'OrderID'#9'6'#9'Ordernr'#9#9
          'Kundnamn'#9'15'#9'Kundnamn'#9#9
          'cAntalArtikelNoteringar'#9'2'#9' R'#9#9
          'Lagersaldo'#9'4'#9'    L'#9#9
          'Ordernummer'#9'9'#9'Best.Nr'#9#9
          'OrderDatum'#9'12'#9'OrderDatum'#9#9
          'Ytbehandlingdatum'#9'10'#9'Ytbeh datum'#9#9
          'leveransdatum'#9'11'#9'Lev datum'#9#9
          'Godsm'#228'rke'#9'24'#9'Godsm'#228'rke'#9#9
          'EgenM'#228'rkning'#9'25'#9'Egen m'#228'rkning'#9#9
          'Kundreferens'#9'14'#9'Kundreferens'#9#9
          #196'rAvrapporterad'#9'13'#9#196'rAvrapporterad'#9#9
          'AntalTotal'#9'4'#9'  B'#9#9
          'AntalAvrapporterad'#9'3'#9'  '#197#9#9
          'Antalprissatt'#9'3'#9'  P'#9#9
          'Fakturadatum'#9'10'#9'Fakt datum'#9#9
          'KalkArbetstidTime'#9'10'#9'Utr'#228'knat'#9#9
          'ArbetstidPlaneradTime'#9'13'#9'Inplanerad'#9#9
          'Ordersumma'#9'14'#9'Ordersumma'#9#9
          #196'rPrissatt'#9'10'#9#196'rPrissatt'#9'T'
          'F'#246'rfallodatum'#9'11'#9'F'#246'rfallodatum'#9#9
          'Fakturanummer'#9'20'#9'Fakturanummer'#9#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnMultiSelectRecord = wwDBGrid1MultiSelectRecord
        OnRowChanged = wwDBGrid1RowChanged
        FixedCols = 0
        ShowHorzScrollBar = False
        EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
        Align = alClient
        Color = clWhite
        DataSource = dsoOrderlist
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        KeyOptions = []
        MultiSelectOptions = [msoShiftSelect]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgColLinesDisableFixed]
        ParentFont = False
        PopupMenu = PopupMenuOrderlista
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Default'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        TitleMenuAttributes.Options = [sfoSortAscending, sfoSortDescending, sfoFilter, sfoCreateIndexes, sfoAutoTitleButtonSort]
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnTitleButtonClick = wwDBGrid1TitleButtonClick
        OnDblClick = wwDBGrid1DblClick
        OnKeyDown = wwDBGrid1KeyDown
        IndicatorIconColor = clBlue
        PadColumnStyle = pcsPadHeader
      end
      object wwExpandButton1: TwwExpandButton
        Left = 599
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
      Width = 1369
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 45
      Width = 1369
      Height = 30
      ActivePage = TabSheet1
      Align = alTop
      HotTrack = True
      TabOrder = 3
      TabWidth = 130
      OnChange = PageControl1Change
      OnDrawTab = PageControl1DrawTab
      ExplicitLeft = 1
      ExplicitTop = 44
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
  object PopupMenuOrderlista: TPopupMenu
    MenuAnimation = [maTopToBottom]
    OnPopup = PopupMenuOrderlistaPopup
    Left = 232
    Top = 140
    object mnuLäggtillÄndrapositioner: TMenuItem
      Tag = 1
      Action = actOrderLäggtillÄndraPositioner
    end
    object mnuResfreshOrderlista: TMenuItem
      Tag = 2
      Action = actOrderlistaRefresh
      Visible = False
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mnuNyOrder: TMenuItem
      Action = actOrderNew
    end
    object mnuSkapaPlanering: TMenuItem
      Action = actPlaneringSkapa
    end
    object mnuKopieraOrder: TMenuItem
      Action = actCopyOrder
    end
    object mnuTaBortPlanering: TMenuItem
      Action = actPlaneringTabort
    end
    object mnuTabortOrder: TMenuItem
      Action = actOrderTaBort
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object mnuPrissättaPositioner: TMenuItem
      Action = actPrissattningPositioner
    end
    object mnuSättfakturamärkning: TMenuItem
      Action = actSattFakturadata
    end
    object mnuÄndraOrderstatusManuellt: TMenuItem
      Action = actOrderStatusUpdate
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object mnuNyOffert: TMenuItem
      Action = actOffertNew
      Caption = 'Ny  offert'
    end
    object mnuOffertEdit: TMenuItem
      Action = actOrderEdit
    end
    object mnuLaggtilloffertrader: TMenuItem
      Action = actOrderKalkylAddrows
    end
    object mnuSkapaorderfrånOffert: TMenuItem
      Action = actSkapaOrderfrånOffert
    end
    object mnuKopieraOffert: TMenuItem
      Action = actCopyOffert
    end
    object mnuTaBortOffert: TMenuItem
      Action = actOffertTaBort
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnuVisaOrder: TMenuItem
      Action = actOrderVisa
      Caption = '1 Visa order'
    end
    object mnuSkapaPDFOrder: TMenuItem
      Action = actSkrivUt
      Caption = '2 Skapa PDF-order'
    end
    object mnuSkspaPDFOrderbekräftlese: TMenuItem
      Action = actOrderSkrivut
      Caption = '3 Skapa PDF-orderbekr'#228'ftelse'
    end
    object mnuSkapaPDFOffert: TMenuItem
      Action = actOffertSendViamail
      Caption = '4 Skapa PDF-offert'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mnuSkrivutfakturaunderlag: TMenuItem
      Tag = 1
      Action = actFakturaunderlagPrint
    end
    object mnuSkapaSamlingsfaktura: TMenuItem
      Tag = 1
      Action = actSammelfakturaPrint
      Caption = 'Skriv ut samlingsfaktura (PDF)'
      Hint = 'Skapar samtidig XML filen'
    end
    object mnuSkapaXMLFakturaunderlag: TMenuItem
      Action = actFakturarunderlagXML
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuSkickaOrderbekräftelseViaEpost: TMenuItem
      Action = actOrderbekräftleseViaMail
      Visible = False
    end
    object Skickaorderbekrftleseviaepost1: TMenuItem
      Action = actOrderbekräftleseExcelViaEpost
    end
    object mnuUtsktriftPalletikett: TMenuItem
      Action = actPallEtikett
    end
    object mnuSkrivutetiketter: TMenuItem
      Action = actEtiketterSkrivUt
      Visible = False
    end
    object mnuSkrivutfljesedel: TMenuItem
      Action = actFöljesdelUtskrift
      Caption = 'Skriv ut f'#246'ljesdel*'
      Visible = False
    end
    object mnuSkrivutritningar: TMenuItem
      Action = actOrderPDFPrint
      Caption = 'Skriv ut PDF - ritningar'
      Visible = False
    end
    object N6: TMenuItem
      Caption = '-'
      Visible = False
    end
    object A1: TMenuItem
      Action = actArkivera
    end
  end
  object ActionList1: TActionList
    Left = 104
    Top = 131
    object actOffertNew: TAction
      Caption = 'Ny Offert'
      OnExecute = actOffertNewExecute
    end
    object actOrderNew: TAction
      Caption = 'Ny order'
      OnExecute = actOrderNewExecute
    end
    object actSkrivUt: TAction
      Caption = 'Skriv ut '
      OnExecute = actSkrivUtExecute
    end
    object actSattFakturadatum: TAction
      Caption = 'S'#228'tt fakturadatum'
      Enabled = False
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
      Caption = #196'ndra offerthuvud'
      Visible = False
      OnExecute = actOrderEditExecute
    end
    object actFakturaunderlagPrint: TAction
      Tag = 2
      Caption = 'Skriv ut fakturaunderlag (PDF)'
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
      Caption = #196'ndra orderhuvud / planera'
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
    object actOrderbekräftleseExcelViaEpost: TAction
      Caption = 'Skicka orderbekr'#228'ftlese Excel via epost'
      OnExecute = actOrderbekräftleseExcelViaEpostExecute
    end
    object actOrderbekräftleseViaMail: TAction
      Caption = 'Skicka orderbekr'#228'ftlese (XML,PDF) via epost'
      OnExecute = actOrderbekräftleseViaMailExecute
    end
    object actOrderLäggtillÄndraPositioner: TAction
      Caption = 'L'#228'gg till/'#228'ndra pos. (dubbelklick)'
      OnExecute = actOrderLäggtillÄndraPositionerExecute
    end
    object actFakturarunderlagXML: TAction
      Caption = 'Skapa Fakturaunderlag XML'
      OnExecute = actFakturarunderlagXMLExecute
    end
    object actSkapaOrderfrånOffert: TAction
      Caption = 'Skapa order fr'#229'n offert'
      OnExecute = actSkapaOrderfrånOffertExecute
    end
    object actCopyOffert: TAction
      Caption = 'Skapa kopia av denna offert'
      OnExecute = actCopyOffertExecute
    end
    object actCopyOrder: TAction
      Caption = 'Skapa kopia av denna order'
      OnExecute = actCopyOrderExecute
    end
    object actSattFakturadata: TAction
      Caption = 'S'#228'tt fakturam'#228'rkning'
      OnExecute = actSattFakturadataExecute
    end
    object actSammelfakturaPrint: TAction
      Caption = 'Skapa sammelfaktura (PDF)'
      OnExecute = actSammelfakturaPrintExecute
    end
    object actOrderKalkylAddrows: TAction
      Caption = 'L'#228'gg till offertrader (Offertkalkyl)'
      OnExecute = actOrderKalkylAddrowsExecute
    end
    object actGörOrdertillOffert: TAction
      Caption = 'G'#246'r om order till offert'
      OnExecute = actGörOrdertillOffertExecute
    end
    object actOffertTaBort: TAction
      Caption = 'Ta bort offert'
      OnExecute = actOffertTaBortExecute
    end
    object actArkivera: TAction
      Caption = 'Arkivera fakura'
      OnExecute = actArkiveraExecute
    end
    object actReadExcelRequest: TAction
      Caption = 'L'#228'sa in offertf'#246'rfr'#229'gan (Excel)'
      OnExecute = actReadExcelRequestExecute
    end
    object actExcelImport: TAction
      Caption = 'actExcelImport'
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
    StoredProcName = 'Custom_OrderhuvudFakturadataUpdate'
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
      end
      item
        Position = 5
        Name = '@Forfallodatum'
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
    OnCalcFields = sp_OrderlistCalcFields
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
      end
      item
        Position = 5
        Name = '@FakturadatumVisaBaraSenaste'#197'r'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Soktext'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = '@sortasc'
        DataType = ftBoolean
        ParamType = ptInput
      end>
    object sp_OrderlistOrderID: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'Ordernr'
      DisplayWidth = 6
      FieldName = 'OrderID'
      Origin = 'OrderID'
      ReadOnly = True
    end
    object sp_OrderlistKundnamn: TStringField
      DisplayWidth = 15
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object sp_OrderlistcAntalArtikelNoteringar: TStringField
      DisplayLabel = ' R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cAntalArtikelNoteringar'
      Calculated = True
    end
    object sp_OrderlistLagersaldo: TIntegerField
      DisplayLabel = '    L'
      DisplayWidth = 4
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      ReadOnly = True
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
      DisplayWidth = 25
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
    object sp_OrderlistÄrAvrapporterad: TIntegerField
      DisplayWidth = 13
      FieldName = #196'rAvrapporterad'
      Origin = '['#196'rAvrapporterad]'
      ReadOnly = True
      Required = True
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
    object sp_OrderlistFakturadatum: TDateField
      DisplayLabel = 'Fakt datum'
      DisplayWidth = 10
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
    object sp_OrderlistOrdersumma: TFMTBCDField
      DisplayWidth = 14
      FieldName = 'Ordersumma'
      Origin = 'Ordersumma'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object sp_OrderlistÄrPrissatt: TIntegerField
      DisplayWidth = 10
      FieldName = #196'rPrissatt'
      Origin = '['#196'rPrissatt]'
      ReadOnly = True
      Required = True
    end
    object sp_OrderlistFörfallodatum: TDateField
      DisplayWidth = 11
      FieldName = 'F'#246'rfallodatum'
      Origin = '[F'#246'rfallodatum]'
    end
    object sp_OrderlistFakturanummer: TStringField
      DisplayWidth = 20
      FieldName = 'Fakturanummer'
      Origin = 'Fakturanummer'
    end
    object sp_OrderlistAntalArtikelnoteringar: TIntegerField
      DisplayLabel = 'R'
      DisplayWidth = 2
      FieldName = 'AntalArtikelnoteringar'
      Origin = 'AntalArtikelnoteringar'
      ReadOnly = True
      Visible = False
    end
    object sp_OrderlistOrdertypId: TIntegerField
      DisplayWidth = 9
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
      Visible = False
    end
    object sp_OrderlistKalkArbetstid: TFloatField
      DisplayWidth = 10
      FieldName = 'KalkArbetstid'
      Origin = 'KalkArbetstid'
      ReadOnly = True
      Visible = False
      DisplayFormat = '#########.##'
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
    Left = 792
    Top = 549
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
  object qryFakturaunderlagXML: TFDQuery
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
      'oh.Fakturanummer,'
      'orad.Positionnummer,'
      'y.Beteckning YtbehandlingBeteckning,'
      'a.Beteckning,'
      'a.Artikelnummer,'
      'orad.Antal,'
      'oh.OrdertypId,'
      'orad.Prisperenhet,'
      'oh.fritext,'
      'oh.Fakturadatum,'
      'oh.F'#246'rfallodatum, '
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
      'where oh.fakturanummer = :Fakturanummer'
      'order by oh.id,'
      'orad.RadNr'
      ''
      '')
    Left = 600
    Top = 525
    ParamData = <
      item
        Name = 'FAKTURANUMMER'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object qryFakturaunderlagXMLOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryFakturaunderlagXMLKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryFakturaunderlagXMLReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryFakturaunderlagXMLordernummer: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object qryFakturaunderlagXMLGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryFakturaunderlagXMLorderdatum: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object qryFakturaunderlagXMLLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryFakturaunderlagXMLPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryFakturaunderlagXMLYtbehandlingBeteckning: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryFakturaunderlagXMLBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryFakturaunderlagXMLArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryFakturaunderlagXMLAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryFakturaunderlagXMLOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryFakturaunderlagXMLPrisperenhet: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object qryFakturaunderlagXMLfritext: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object qryFakturaunderlagXMLPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qryFakturaunderlagXMLDagensdatum: TDateField
      FieldName = 'Dagensdatum'
      Origin = 'Dagensdatum'
      ReadOnly = True
    end
    object qryFakturaunderlagXMLFakturanummer: TStringField
      FieldName = 'Fakturanummer'
      Origin = 'Fakturanummer'
    end
    object qryFakturaunderlagXMLFörfallodatum: TDateField
      FieldName = 'F'#246'rfallodatum'
      Origin = '[F'#246'rfallodatum]'
      ReadOnly = True
    end
    object qryFakturaunderlagXMLFakturadatum: TDateField
      FieldName = 'Fakturadatum'
      Origin = 'Fakturadatum'
    end
  end
  object qryOrderSok: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select Id,OrderStatusId from dbo.Orderhuvud where Borttagen is n' +
        'ull and Id = :Orderid')
    Left = 868
    Top = 336
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrderSokId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOrderSokOrderStatusId: TIntegerField
      FieldName = 'OrderStatusId'
      Origin = 'OrderStatusId'
    end
  end
  object sp_OrderKopiera: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.OrderKopiera'
    Left = 872
    Top = 396
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
        Name = '@SkapaOrderFr'#229'nOffert'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OrderIDNew'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object qryOrdersummaGet: TFDQuery
    Connection = dm.FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'Select sum(antal * PrisPerEnhet) Ordersumma from orderrad where ' +
        'OrderID = :orderid'
      '')
    Left = 592
    Top = 444
    ParamData = <
      item
        Name = 'OrderId'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryOrderstatus: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'SELECT [Id]'
      '      ,[Orderstatus]'
      '      ,[Beteckning]'
      '      ,[Sortorder]'
      '      ,[BGColor]'
      '      ,[TabId]'
      '      ,[TabBeteckning]'
      '      ,[Oms'#228'ttningsgrundande]'
      ',Kr'#228'veradmin'
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
    object qryOrderstatusKräveradmin: TBooleanField
      FieldName = 'Kr'#228'veradmin'
      Origin = '[Kr'#228'veradmin]'
    end
  end
  object qryOrdertstatusUpdatePrissatta: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      ''
      '    IF (('
      '            SELECT COUNT(*)'
      '            FROM dbo.Orderrad'
      '            WHERE PrisperEnhet IS NOT NULL'
      '                  AND OrderID = :OrderID'
      '        ) = ('
      
        '                SELECT COUNT(*)FROM dbo.Orderrad WHERE OrderID =' +
        ' :OrderID'
      '            )'
      '       )  and ((SELECT COUNT(*)'
      '            FROM dbo.Orderrad where OrderID = :OrderID) > 0)'
      '       '
      ''
      '        UPDATE dbo.Orderhuvud'
      '        SET OrderstatusId = 2'
      '        WHERE Id = :OrderID;'
      '')
    Left = 352
    Top = 376
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_OrdertstatusUpdate: TFDStoredProc
    Connection = dm.FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'OrdertstatusUpdate'
    Left = 316
    Top = 468
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
        Name = '@OrderstatusIdNew'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryOrdernummerSok: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select Id,OrderStatusId from dbo.Orderhuvud where borttagen is n' +
        'ull and Ordernummer = :Ordernummer')
    Left = 340
    Top = 268
    ParamData = <
      item
        Name = 'ORDERNUMMER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'OrderStatusId'
      Origin = 'OrderStatusId'
    end
  end
  object qryGridColumns: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Fieldname,Displaywidth, Fieldheader '
      'from Gridcolumns where :Status = 1')
    Left = 160
    Top = 285
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryGridColumnsFieldname: TStringField
      FieldName = 'Fieldname'
      Origin = 'Fieldname'
      Required = True
      Size = 50
    end
    object qryGridColumnsDisplaywidth: TSmallintField
      FieldName = 'Displaywidth'
      Origin = 'Displaywidth'
      Required = True
    end
    object qryGridColumnsFieldheader: TStringField
      FieldName = 'Fieldheader'
      Origin = 'Fieldheader'
      Required = True
      Size = 50
    end
  end
  object qryOrdertextSok: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select Id,OrderStatusId from dbo.Orderhuvud where borttagen is n' +
        'ull and Godsm'#228'rke like :soktext or EgenM'#228'rkning like :soktext')
    Left = 468
    Top = 264
    ParamData = <
      item
        Name = 'SOKTEXT'
        ParamType = ptInput
        Value = Null
      end>
    object FDAutoIncField2: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'OrderStatusId'
      Origin = 'OrderStatusId'
    end
  end
  object qryExcelExport: TFDQuery
    Connection = dm.FDConnection1
    Left = 152
    Top = 585
    object qryExcelExportOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryExcelExportKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryExcelExportReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryExcelExportordernummer: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object qryExcelExportGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryExcelExportorderdatum: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object qryExcelExportLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryExcelExportPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryExcelExportYtbehandlingBeteckning: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryExcelExportBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryExcelExportArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryExcelExportAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryExcelExportOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryExcelExportPrisperenhet: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object qryExcelExportfritext: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object qryExcelExportPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qryExcelExportDagensdatum: TDateField
      FieldName = 'Dagensdatum'
      Origin = 'Dagensdatum'
      ReadOnly = True
    end
    object qryExcelExportVårReferens: TStringField
      FieldName = 'V'#229'rReferens'
      Origin = '[V'#229'rReferens]'
      ReadOnly = True
      Size = 101
    end
  end
  object OpenExcelDialog: TOpenDialog
    Filter = 'Excel-fil|*.xlsx'
    Left = 408
    Top = 131
  end
  object spOffertKalkylInsert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OffertKalkylInsert'
    Left = 432
    Top = 595
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Kundid'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@V'#229'rReferensId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@F'#246'rfr'#229'gan'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object spOffertkalkylArtikelInsert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OffertkalkylArtikelInsert'
    Left = 604
    Top = 603
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OffertkalkylId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@artikelnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = '@artikelbeteckning'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 5
        Name = '@Antal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryExcelExport_backup: TFDQuery
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
      'cast(getdate() as date) Dagensdatum,'
      'p2.F'#246'rnamn + '#39' '#39'+ p2.Efternamn V'#229'rReferens'
      ''
      'from OrderRad orad'
      'join Artikel a on orad.artikelID = a.Id'
      'join OrderHuvud oh on oh.ID = orad.OrderID'
      'join kund k on k.Id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'left join akt'#246'r ak on ak.id = kp.Id'
      'left join personal p on orad.avrapporteradPersonID = p.id'
      'left join personal p2 on oh.V'#229'rreferensPersonId = p2.id'
      'left join Ytbehandling y on orad.ytbehandlingID = y.ID'
      'where '
      'ordertypid = 1'
      'and oh.kundid = 1'
      'and'
      'cast(oh.id as varchar(10)) in '
      ''
      '')
    Left = 112
    Top = 517
    object FDAutoIncField3: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object StringField5: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object StringField8: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object DateField1: TDateField
      FieldName = 'Dagensdatum'
      Origin = 'Dagensdatum'
      ReadOnly = True
    end
    object StringField9: TStringField
      FieldName = 'V'#229'rReferens'
      Origin = '[V'#229'rReferens]'
      ReadOnly = True
      Size = 101
    end
  end
  object qryXMLOrder: TFDQuery
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
      'isnull(orad.Positionnummer,orad.Radnr*10) OrderRadnr,'
      'orad.Positionnummer,'
      'y.Beteckning YtbehandlingBeteckning,'
      'a.Beteckning,'
      'a.Artikelnummer,'
      'orad.Antal,'
      'orad.Revision,'
      'oh.OrdertypId,'
      'orad.Prisperenhet,'
      'oh.fritext,'
      'orad.Prisperenhet * orad.Antal as Pris  ,'
      'cast(getdate() as date) Dagensdatum,'
      'p2.F'#246'rnamn + '#39' '#39'+ p2.Efternamn V'#229'rReferens'
      ''
      ''
      'from OrderRad orad'
      'join Artikel a on orad.artikelID = a.Id'
      'join OrderHuvud oh on oh.ID = orad.OrderID'
      'join kund k on k.Id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'left join akt'#246'r ak on ak.id = kp.Id'
      'left join personal p on orad.avrapporteradPersonID = p.id'
      'left join personal p2 on oh.V'#229'rreferensPersonId = p2.id'
      'left join Ytbehandling y on orad.ytbehandlingID = y.ID'
      'where oh.id = :OrderId'
      'ORDER BY a.Artikelnummer'
      '')
    Left = 88
    Top = 209
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryXMLOrderOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryXMLOrderKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryXMLOrderReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryXMLOrderordernummer: TStringField
      FieldName = 'ordernummer'
      Origin = 'ordernummer'
      Required = True
      Size = 30
    end
    object qryXMLOrderorderdatum: TSQLTimeStampField
      FieldName = 'orderdatum'
      Origin = 'orderdatum'
      Required = True
    end
    object qryXMLOrderLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryXMLOrderYtbehandlingBeteckning: TStringField
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryXMLOrderBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryXMLOrderArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryXMLOrderAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryXMLOrderOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryXMLOrderPrisperenhet: TCurrencyField
      FieldName = 'Prisperenhet'
      Origin = 'Prisperenhet'
    end
    object qryXMLOrderfritext: TStringField
      FieldName = 'fritext'
      Origin = 'fritext'
      Size = 2000
    end
    object qryXMLOrderPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qryXMLOrderDagensdatum: TDateField
      FieldName = 'Dagensdatum'
      Origin = 'Dagensdatum'
      ReadOnly = True
    end
    object qryXMLOrderVårReferens: TStringField
      FieldName = 'V'#229'rReferens'
      Origin = '[V'#229'rReferens]'
      ReadOnly = True
      Size = 101
    end
    object qryXMLOrderGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 100
    end
    object qryXMLOrderOrderRadnr: TIntegerField
      FieldName = 'OrderRadnr'
      Origin = 'OrderRadnr'
      ReadOnly = True
    end
    object qryXMLOrderPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryXMLOrderRevision: TStringField
      FieldName = 'Revision'
      Origin = 'Revision'
      Size = 5
    end
  end
end
