﻿object frmOrder: TfrmOrder
  Left = 274
  Top = 225
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Best'#228'llning'
  ClientHeight = 742
  ClientWidth = 1342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1342
    Height = 742
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1340
      Height = 54
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 159
        Top = 11
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kund:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 396
        Top = 11
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Best'#228'llnings-nr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 157
        Top = 31
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Referens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 397
        Top = 31
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Godsm'#228'rke:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 215
        Top = 11
        Width = 153
        Height = 17
        DataField = 'Kundnamn'
        DataSource = dsoOrder
      end
      object DBText3: TDBText
        Left = 215
        Top = 31
        Width = 155
        Height = 17
        DataField = 'Kundnamn'
        DataSource = dsoOrder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 489
        Top = 11
        Width = 295
        Height = 17
        DataField = 'OrderNummer'
        DataSource = dsoOrder
      end
      object DBText5: TDBText
        Left = 489
        Top = 32
        Width = 329
        Height = 17
        DataField = 'Godsm'#228'rke'
        DataSource = dsoOrder
      end
      object Label10: TLabel
        Left = 10
        Top = 11
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ordernr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 61
        Top = 11
        Width = 85
        Height = 17
        DataField = 'Id'
        DataSource = dsoOrder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 149
        Top = 7
        Width = 2
        Height = 54
        Shape = bsLeftLine
      end
      object Bevel3: TBevel
        Left = 377
        Top = 7
        Width = 2
        Height = 56
        Shape = bsLeftLine
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 397
      Width = 1340
      Height = 344
      Align = alClient
      BorderWidth = 10
      Caption = 'Panel4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default '
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel17: TPanel
        Left = 11
        Top = 11
        Width = 1133
        Height = 322
        Align = alClient
        Caption = 'Panel17'
        TabOrder = 0
        object wwDBGrid1: TwwDBGrid
          Left = 1
          Top = 1
          Width = 1131
          Height = 320
          ControlType.Strings = (
            'LagerArtikel;CheckBox;True;False'
            'cBock;ImageIndex;Original Size'
            'cFixatur;ImageIndex;Original Size')
          PictureMasks.Strings = (
            'Artikelnummer'#9'### ###'#9'T'#9'T')
          Selected.Strings = (
            'Radnr'#9'4'#9'R-nr'#9#9
            'Positionnummer'#9'4'#9'P-Nr'#9#9
            'Artikelnummer'#9'11'#9'Artikelnummer'#9#9
            'Revision'#9'3'#9'Rev'#9#9
            'Beteckning'#9'24'#9'Beteckning'#9#9
            'cRitningsnoteringFinns_disp'#9'2'#9'R'#9#9
            'Lagersaldo'#9'2'#9'  L'#9#9
            'cFixatur'#9'2'#9' F'#9#9
            'PrisperEnhet'#9'9'#9'  Pris/enhet'#9#9
            'Fr'#229'nLager'#9'6'#9'Fr. lager'#9#9
            'Attproducera'#9'7'#9'Att prod'#9#9
            'Antal'#9'6'#9'  Antal'#9#9
            'TillLager'#9'7'#9' Till lager'#9#9
            'YtbehandlingBeteckning'#9'15'#9'Ytbehandling'#9#9
            'AvrapporteradPlasmatid'#9'6'#9'Lasertid'#9#9
            'Totaltid'#9'9'#9'Tv-Tid'#9#9
            'Extratid'#9'6'#9'X-tid'#9#9
            'TidTotalt'#9'10'#9'Tv tid tot.'#9#9
            'SkrotandelProcent'#9'6'#9'Skrot %'#9#9
            'Vikt'#9'6'#9'Vikt/st'#9#9
            'SenasteAvrapporteradDatum'#9'10'#9'Senast tv.'#9#9
            'OrderradInfo'#9'25'#9'Info'#9#9)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsoOrderrad
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgRowResize]
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
          ImageList = ImageList1
          PadColumnStyle = pcsPadHeader
        end
      end
      object Panel18: TPanel
        Left = 1144
        Top = 11
        Width = 185
        Height = 322
        Align = alRight
        Caption = 'Panel18'
        TabOrder = 1
        DesignSize = (
          185
          322)
        object Label17: TLabel
          Left = 16
          Top = 71
          Width = 61
          Height = 14
          Anchors = [akRight, akBottom]
          Caption = 'Ritningsnotis'
        end
        object DBMemo1: TDBMemo
          Left = 12
          Top = 91
          Width = 163
          Height = 223
          Anchors = [akLeft, akRight, akBottom]
          DataField = 'Notering'
          DataSource = dsoOrderrad
          ReadOnly = True
          TabOrder = 0
        end
        object btnEdit: TButton
          Left = 12
          Top = 5
          Width = 113
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #196'ndra rad '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = wwDBGrid1DblClick
        end
        object btnDelete: TButton
          Left = 12
          Top = 36
          Width = 113
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Ta bort rad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default '
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnDeleteClick
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 55
      Width = 1340
      Height = 342
      Align = alTop
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 377
        Top = 1
        Height = 340
        ExplicitLeft = 612
        ExplicitTop = 184
        ExplicitHeight = 100
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 376
        Height = 340
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 376
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Bevel1: TBevel
            Left = 184
            Top = 28
            Width = 186
            Height = 20
          end
          object DBText1: TDBText
            Left = 192
            Top = 31
            Width = 169
            Height = 15
            DataField = 'Beteckning'
            DataSource = dsoLU_Artikel
          end
          object lblNyArtikel: TLabel
            Left = 102
            Top = 8
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Hint = 'Ctrl+N'
            Alignment = taRightJustify
            Caption = 'Skapa ny artikel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsUnderline]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = lblNyArtikelClick
          end
          object Label8: TLabel
            Left = 8
            Top = 8
            Width = 67
            Height = 13
            Caption = 'Ny orderrad'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 12
            Top = 32
            Width = 40
            Height = 13
            Caption = 'Artikelnr'
          end
          object DBText6: TDBText
            Left = 192
            Top = 8
            Width = 169
            Height = 15
            DataField = 'Id'
            DataSource = dsoLU_Artikel
          end
          object edtArtikel: TwwDBLookupCombo
            Left = 58
            Top = 27
            Width = 120
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Artikelnummer'#9'20'#9'Artikelnummer'#9'F'
              'Beteckning'#9'30'#9'Beteckning'#9'F'
              'cnt'#9'10'#9'Antal    '#9'F')
            LookupTable = qryLU_Artikel
            LookupField = 'ArtikelID'
            Style = csDropDownList
            DropDownCount = 20
            TabOrder = 0
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            OnCloseUp = edtArtikelCloseUp
            OnEnter = edtArtikelEnter
            OnNotInList = edtArtikelNotInList
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 61
          Width = 376
          Height = 279
          ActivePage = TabOrderrad
          Align = alClient
          TabHeight = 2
          TabOrder = 1
          object TabOrderrad: TTabSheet
            Caption = 'TabOrderrad'
            ImageIndex = 1
            object Panel16: TPanel
              Left = 0
              Top = 0
              Width = 368
              Height = 267
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pnlOrderrad: TPanel
                Left = 0
                Top = 0
                Width = 368
                Height = 267
                Align = alClient
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Visible = False
                DesignSize = (
                  368
                  267)
                object Label7: TLabel
                  Left = 21
                  Top = 22
                  Width = 17
                  Height = 13
                  Caption = 'Pris'
                end
                object Label6: TLabel
                  Left = 21
                  Top = 95
                  Width = 94
                  Height = 13
                  Caption = 'Antal att producera'
                end
                object Label16: TLabel
                  Left = 21
                  Top = 71
                  Width = 52
                  Height = 13
                  Caption = 'Fr'#229'n Lager'
                end
                object Label18: TLabel
                  Left = 21
                  Top = 119
                  Width = 42
                  Height = 13
                  Caption = 'Till Lager'
                end
                object Label19: TLabel
                  Left = 21
                  Top = 144
                  Width = 62
                  Height = 13
                  Caption = 'Ytbehandling'
                end
                object Label20: TLabel
                  Left = 21
                  Top = 46
                  Width = 52
                  Height = 13
                  Caption = 'Orderantal'
                end
                object Label21: TLabel
                  Left = 216
                  Top = 71
                  Width = 56
                  Height = 13
                  Caption = 'Lagersaldo:'
                end
                object Label9: TLabel
                  Left = 216
                  Top = 95
                  Width = 54
                  Height = 13
                  Caption = 'Lagerplats:'
                end
                object Label22: TLabel
                  Left = 21
                  Top = 174
                  Width = 38
                  Height = 13
                  Caption = 'Lasertid'
                end
                object Label23: TLabel
                  Left = 224
                  Top = 174
                  Width = 39
                  Height = 13
                  Caption = 'Skrot %'
                end
                object Label24: TLabel
                  Left = 21
                  Top = 198
                  Width = 17
                  Height = 13
                  Caption = 'Vikt'
                end
                object edtPris: TEditN
                  Left = 119
                  Top = 15
                  Width = 84
                  Height = 21
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  TextHint = True
                  OnChange = edtPrisChange
                  OnEnter = edtPrisEnter
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object edtAntal: TEditN
                  Left = 119
                  Top = 42
                  Width = 84
                  Height = 21
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtAntalExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object edtFranLager: TEditN
                  Left = 119
                  Top = 67
                  Width = 84
                  Height = 21
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtFranLagerExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object edtAttProducera: TEditN
                  Left = 119
                  Top = 91
                  Width = 84
                  Height = 21
                  Color = clWhite
                  TabOrder = 3
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtAttProduceraExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object edtTillLager: TEditN
                  Left = 119
                  Top = 116
                  Width = 84
                  Height = 21
                  Color = clWhite
                  TabOrder = 4
                  TextHint = True
                  OnChange = edtPrisChange
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object btnSpara: TButton
                  Left = 196
                  Top = 232
                  Width = 77
                  Height = 25
                  Anchors = [akRight, akBottom]
                  Caption = '&Spara'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Default'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  OnClick = btnSparaClick
                end
                object btnAvbryt: TButton
                  Left = 279
                  Top = 232
                  Width = 77
                  Height = 25
                  Anchors = [akRight, akBottom]
                  Caption = '&Avbryt'
                  Enabled = False
                  TabOrder = 10
                  OnClick = btnAvbrytClick
                end
                object edtLagersaldo: TEditN
                  Left = 274
                  Top = 68
                  Width = 79
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  ReadOnly = True
                  TabOrder = 11
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtFranLagerExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueFloat = 12.000000000000000000
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object LU_Ytbehandling: TwwDBLookupCombo
                  Left = 119
                  Top = 141
                  Width = 232
                  Height = 21
                  DropDownAlignment = taLeftJustify
                  Selected.Strings = (
                    'Beteckning'#9'39'#9'Beteckning'#9'F'
                    'antal'#9'10'#9'antal'#9'F')
                  LookupTable = dm.qryLUYtbehandling
                  LookupField = 'YtbehandlingID'
                  DropDownCount = 20
                  TabOrder = 5
                  AutoDropDown = False
                  ShowButton = True
                  PreciseEditRegion = False
                  AllowClearKey = False
                  OnChange = edtPrisChange
                end
                object edtLagerplats: TEdit
                  Left = 274
                  Top = 92
                  Width = 79
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  ReadOnly = True
                  TabOrder = 12
                end
                object mmArtikeltext: TMemo
                  Left = 217
                  Top = 15
                  Width = 136
                  Height = 49
                  TabStop = False
                  Color = clMenu
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -8
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                  OnChange = edtPrisChange
                  OnClick = mmArtikeltextClick
                end
                object edtLasertid: TEditN
                  Left = 119
                  Top = 170
                  Width = 84
                  Height = 21
                  Color = clWhite
                  TabOrder = 6
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtAttProduceraExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object edtSkrot: TEditN
                  Left = 268
                  Top = 170
                  Width = 84
                  Height = 21
                  Color = clWhite
                  TabOrder = 7
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtAttProduceraExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
                object edtVikt: TEditN
                  Left = 119
                  Top = 197
                  Width = 84
                  Height = 21
                  Color = clWhite
                  TabOrder = 8
                  TextHint = True
                  OnChange = edtPrisChange
                  OnExit = edtAttProduceraExit
                  ColorOnFocus = clWhite
                  ColorOnNotFocus = clWhite
                  FontColorOnFocus = clBlack
                  FontColorOnNotFocus = clBlack
                  FontColorOnOverWrite = clBlue
                  EditType = etFloat
                  EditKeyByTab = #9
                  EditAlign = etAlignNone
                  EditLengthAlign = 0
                  EditPrecision = 0
                  ValueInteger = 0
                  ValueDate = 39107.000000000000000000
                  ValueTime = 0.922235416666667000
                  TimeSeconds = False
                  FirstCharUpper = False
                  FirstCharUpList = ' ('
                  WidthOnFocus = 0
                end
              end
            end
          end
          object tabArtikel: TTabSheet
            Caption = 'tabArtikel'
            object pnlArtikel: TPanel
              Left = 0
              Top = 0
              Width = 368
              Height = 267
              Align = alClient
              Color = 15330541
              TabOrder = 0
              Visible = False
              object Label12: TLabel
                Left = 35
                Top = 55
                Width = 68
                Height = 13
                Alignment = taRightJustify
                Caption = 'Artikelnummer'
              end
              object Label13: TLabel
                Left = 51
                Top = 79
                Width = 52
                Height = 13
                Alignment = taRightJustify
                Caption = 'Beteckning'
              end
              object Label14: TLabel
                Left = 6
                Top = 106
                Width = 99
                Height = 13
                Alignment = taRightJustify
                Caption = 'Ytbehandling default'
              end
              object Label5: TLabel
                Left = 20
                Top = 22
                Width = 55
                Height = 13
                Caption = 'Ny Artikel'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object btnNyArtikelSpara: TButton
                Left = 198
                Top = 154
                Width = 77
                Height = 25
                Caption = 'Spara'
                Default = True
                Enabled = False
                TabOrder = 3
                OnClick = btnNyArtikelSparaClick
              end
              object btnNyArtikelAvbryt: TButton
                Left = 281
                Top = 154
                Width = 77
                Height = 25
                Caption = 'Avbryt'
                TabOrder = 4
                OnClick = btnNyArtikelAvbrytClick
              end
              object luYtbehandlingdefault: TwwDBLookupCombo
                Left = 111
                Top = 104
                Width = 236
                Height = 21
                DropDownAlignment = taLeftJustify
                Selected.Strings = (
                  'Beteckning'#9'39'#9'Beteckning'#9'F')
                LookupTable = dm.qryLUYtbehandling
                LookupField = 'YtbehandlingID'
                DropDownCount = 20
                Navigator = True
                TabOrder = 2
                AutoDropDown = True
                ShowButton = True
                OrderByDisplay = False
                PreciseEditRegion = False
                AllowClearKey = False
                OnChange = edtArtikelnummerChange
              end
              object edtArtikelnummer: TEdit
                Left = 111
                Top = 52
                Width = 236
                Height = 21
                TabOrder = 0
                OnChange = edtArtikelnummerChange
              end
              object edtBeteckning: TEdit
                Left = 111
                Top = 78
                Width = 236
                Height = 21
                TabOrder = 1
                OnChange = edtArtikelnummerChange
              end
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 380
        Top = 1
        Width = 959
        Height = 340
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 441
          Top = 0
          Height = 340
          ExplicitLeft = 356
          ExplicitTop = 196
          ExplicitHeight = 100
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 441
          Height = 340
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object ExpButton: TwwExpandButton
            Left = 124
            Top = 120
            Width = 97
            Height = 17
            Margins.Left = 5
            DisableThemes = False
            Grid = wwDBGrid6
            AutoHideExpand = True
            ShowFocusRect = False
            OnCheckVisibleButton = ExpButtonCheckVisibleButton
            GridIndents.X = 17
            Caption = 'ExpButton'
            DataField = 'InforaderFinns'
            DataSource = dsoOrderHistory
            ShowText = True
            TabOrder = 0
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 441
            Height = 24
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = '   Artikelhistorik'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Default'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label15: TLabel
              Left = 348
              Top = 5
              Width = 57
              Height = 13
              Caption = 'R'#246'd=Offert'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              ParentFont = False
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 24
            Width = 441
            Height = 316
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 3
            TabOrder = 2
            object Panel15: TPanel
              Left = 3
              Top = 3
              Width = 435
              Height = 310
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              object wwDBGrid2: TwwDBGrid
                Left = 1
                Top = 1
                Width = 433
                Height = 308
                TabStop = False
                ControlType.Strings = (
                  'Kortdatum;CustomEdit;ExpButton;F'
                  'Datum;CustomEdit;wwExpandButton1;F')
                Selected.Strings = (
                  'Kortdatum'#9'12'#9'Datum'
                  'Antal'#9'4'#9'Antal'
                  'PrisPerEnhet'#9'10'#9'Pris/Enhet'
                  'Beteckning'#9'16'#9'Beteckning'
                  'OrderInfo'#9'13'#9'Info'
                  'F'#246'rnamn'#9'50'#9'Avrapp'#9'F'
                  'AntalInforader'#9'11'#9'AntalInforader')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = False
                Align = alClient
                DataSource = dsoOrderHistory
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = []
                KeyOptions = []
                Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                ParentFont = False
                PopupMenu = PopupMenu2
                TabOrder = 0
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Default'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                OnCalcCellColors = wwDBGrid2CalcCellColors
                OnDblClick = wwDBGrid2DblClick
                OnMouseDown = wwDBGrid2MouseDown
                PadColumnStyle = pcsPadHeader
              end
            end
            object wwDBGrid6: TwwDBGrid
              Left = 257
              Top = 105
              Width = 185
              Height = 149
              Selected.Strings = (
                'Beteckning'#9'16'#9'Beteckning'#9#9
                'Belopp'#9'10'#9'Belopp'#9#9)
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              ShowVertScrollBar = False
              Ctl3D = False
              DataSource = dsoOrderradPrisinfo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = []
              Options = [dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Default'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              Visible = False
              PadColumnStyle = pcsPadHeader
              PaintOptions.BackgroundOptions = [coBlendActiveRecord]
            end
          end
        end
        object Panel9: TPanel
          Left = 444
          Top = 0
          Width = 515
          Height = 340
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 515
            Height = 340
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 3
            TabOrder = 0
            object Panel14: TPanel
              Left = 3
              Top = 27
              Width = 509
              Height = 310
              Align = alClient
              BevelOuter = bvLowered
              TabOrder = 0
              object dbgArtikelgrupp: TwwDBGrid
                Left = 1
                Top = 1
                Width = 507
                Height = 308
                Selected.Strings = (
                  'Artikelnummer'#9'30'#9'Artikelnummer'
                  'Antal'#9'9'#9'Antal'
                  'Fastpris'#9'13'#9'Fastpris')
                IniAttributes.Delimiter = ';;'
                IniAttributes.UnicodeIniFile = False
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = False
                Align = alClient
                BorderStyle = bsNone
                DataSource = dsoArtikelgrupp
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Default'
                Font.Style = []
                KeyOptions = []
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                ParentFont = False
                TabOrder = 0
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Default'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                PadColumnStyle = pcsPadHeader
              end
            end
            object Panel10: TPanel
              Left = 3
              Top = 3
              Width = 509
              Height = 24
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '   Artiklar som ing'#229'r'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Default'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  object dsoOrderrad: TDataSource
    DataSet = qryOrderrad
    Left = 161
    Top = 525
  end
  object dsoLU_Artikel: TDataSource
    AutoEdit = False
    DataSet = qryLU_Artikel
    Left = 329
    Top = 517
  end
  object dsoOrderHistory: TDataSource
    DataSet = qryOrderHistory
    Left = 454
    Top = 528
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 605
    Top = 461
    object Bockritningok1: TMenuItem
      Caption = 'Bockritning ok'
      OnClick = Bockritningok1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Tabortorderrad1: TMenuItem
      Caption = 'Ta bort orderrad'
      OnClick = btnDeleteClick
    end
  end
  object dsoOrder: TDataSource
    DataSet = qryOrder
    Left = 245
    Top = 518
  end
  object PopupMenu2: TPopupMenu
    Left = 801
    Top = 512
    object Markerasomoffert1: TMenuItem
      Caption = 'Markera som offert'
      OnClick = Markerasomoffert1Click
    end
  end
  object dsoOrderradPrisinfo: TDataSource
    AutoEdit = False
    DataSet = qryOrderradPrisinfo
    Left = 548
    Top = 564
  end
  object dsoArtikelgrupp: TDataSource
    AutoEdit = False
    DataSet = qryArtikelgrupp
    Left = 60
    Top = 524
  end
  object PopupMenu3: TPopupMenu
    Left = 900
    Top = 448
  end
  object qry: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'ag.Id,'
      'ag.ArtikelId,'
      'ag.UnderartikelId, '
      'ag.Antal,'
      'ag.Leverant'#246'r,'
      'a2.Artikelnummer,'
      'a2.Beteckning,'
      'ag.Borttagen'
      'from Artikelgrupp ag'
      'join artikel a1 on a1.Id = Ag.ArtikelId'
      'join artikel a2 on a2.Id = Ag.UnderArtikelId'
      'where ag.Artikelid =:ArtikelId'
      'and ag.Borttagen is null')
    Left = 884
    Top = 548
    ParamData = <
      item
        Name = 'ARTIKELID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryOrderrad: TFDQuery
    AfterOpen = qryOrderradAfterOpen
    OnCalcFields = qryOrderradCalcFields
    MasterSource = dsoOrder
    MasterFields = 'OrderId'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'orad.Id,'
      'orad.Radnr,'
      'orad.Positionnummer,'
      'orad.PrisperEnhet,'
      'a.Artikelnummer,'
      'a.Beteckning,'
      'orad.Antal,'
      'orad.Lagerplats,'
      'orad.Attproducera,'
      'orad.Fr'#229'nLager,'
      'orad.TillLager,'
      'orad.YtbehandlingId,'
      'orad.ArtikelId,'
      'orad.OrderradInfo,'
      'yb.Beteckning YtbehandlingBeteckning,'
      'orad.Kalkarbetstid,'
      'orad.Kalkarbetstid KalkarbetstidTotal,'
      'orad.Totaltid,'
      'orad.Extratid,'
      'orad.Totaltid + orad.Extratid TidTotalt,'
      'orad.Vikt,'
      'orad.Revision,'
      'orad.AvrapporteradPlasmatid,'
      'orad.SkrotandelProcent,'
      'a.BockritningFinns Bockritning,'
      'a.FixaturFinns FixaturFinns,'
      'a.Notering,'
      'a.Lagersaldo,'
      
        'SenasteAvrapporteradDatum = (select top 1  cast(AvrapporteradDat' +
        'um as date) from Orderrad '
      #9#9#9#9#9'where ArtikelID = a.Id and '
      
        #9#9#9#9#9'OrderID < orad.OrderId and AvrapporteradDatum is not null o' +
        'rder by orderid desc)'
      ''
      ''
      'from OrderRad orad'
      'join Artikel a on orad.artikelID = a.id'
      'join orderhuvud oh on oh.id = orad.orderid'
      'join Kund k on k.id = oh.kundid'
      'left join Ytbehandling yb on orad.YtbehandlingID = yb.ID'
      'where oh.ID = :OrderId'
      'order by Radnr desc')
    Left = 160
    Top = 456
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrderradRadnr: TIntegerField
      DisplayLabel = 'R-nr'
      DisplayWidth = 4
      FieldName = 'Radnr'
      Origin = 'Radnr'
      Required = True
    end
    object qryOrderradPositionnummer: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'P-Nr'
      DisplayWidth = 4
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryOrderradArtikelnummer: TStringField
      DisplayWidth = 11
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryOrderradRevision: TStringField
      Alignment = taCenter
      DisplayLabel = 'Rev'
      DisplayWidth = 3
      FieldName = 'Revision'
      Origin = 'Revision'
      Size = 5
    end
    object qryOrderradBeteckning: TStringField
      DisplayWidth = 24
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryOrderradcRitningsnoteringFinns_disp: TStringField
      DisplayLabel = 'R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns_disp'
      Calculated = True
    end
    object qryOrderradLagersaldo: TBCDField
      DisplayLabel = '  L'
      DisplayWidth = 2
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Precision = 18
      Size = 0
    end
    object qryOrderradcFixatur: TIntegerField
      DisplayLabel = ' F'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cFixatur'
      Calculated = True
    end
    object qryOrderradPrisperEnhet: TCurrencyField
      DisplayLabel = '  Pris/enhet'
      DisplayWidth = 9
      FieldName = 'PrisperEnhet'
      Origin = 'PrisperEnhet'
    end
    object qryOrderradFrånLager: TBCDField
      DisplayLabel = 'Fr. lager'
      DisplayWidth = 6
      FieldName = 'Fr'#229'nLager'
      Origin = '[Fr'#229'nLager]'
      Precision = 10
      Size = 0
    end
    object qryOrderradAttproducera: TBCDField
      DisplayLabel = 'Att prod'
      DisplayWidth = 7
      FieldName = 'Attproducera'
      Origin = 'Attproducera'
      Precision = 10
      Size = 0
    end
    object qryOrderradAntal: TFMTBCDField
      DisplayLabel = '  Antal'
      DisplayWidth = 6
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderradTillLager: TBCDField
      DisplayLabel = ' Till lager'
      DisplayWidth = 7
      FieldName = 'TillLager'
      Origin = 'TillLager'
      Precision = 10
      Size = 0
    end
    object qryOrderradYtbehandlingBeteckning: TStringField
      DisplayLabel = 'Ytbehandling'
      DisplayWidth = 15
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryOrderradAvrapporteradPlasmatid: TIntegerField
      DisplayLabel = 'Lasertid'
      DisplayWidth = 6
      FieldName = 'AvrapporteradPlasmatid'
      Origin = 'AvrapporteradPlasmatid'
    end
    object qryOrderradTotaltid: TIntegerField
      DisplayLabel = 'Tv-Tid'
      DisplayWidth = 9
      FieldName = 'Totaltid'
      Origin = 'Totaltid'
    end
    object qryOrderradExtratid: TIntegerField
      DisplayLabel = 'X-tid'
      DisplayWidth = 6
      FieldName = 'Extratid'
      Origin = 'Extratid'
    end
    object qryOrderradTidTotalt: TIntegerField
      DisplayLabel = 'Tv tid tot.'
      DisplayWidth = 10
      FieldName = 'TidTotalt'
      Origin = 'TidTotalt'
      ReadOnly = True
    end
    object qryOrderradSkrotandelProcent: TBCDField
      DisplayLabel = 'Skrot %'
      DisplayWidth = 6
      FieldName = 'SkrotandelProcent'
      Origin = 'SkrotandelProcent'
      Precision = 18
      Size = 0
    end
    object qryOrderradVikt: TFloatField
      DisplayLabel = 'Vikt/st'
      DisplayWidth = 6
      FieldName = 'Vikt'
      Origin = 'Vikt'
    end
    object qryOrderradSenasteAvrapporteradDatum: TDateField
      DisplayLabel = 'Senast tv.'
      DisplayWidth = 10
      FieldName = 'SenasteAvrapporteradDatum'
      Origin = 'SenasteAvrapporteradDatum'
      ReadOnly = True
    end
    object qryOrderradOrderradInfo: TStringField
      DisplayLabel = 'Info'
      DisplayWidth = 25
      FieldName = 'OrderradInfo'
      Origin = 'OrderradInfo'
      Size = 255
    end
    object qryOrderradKalkarbetstidTotal: TFloatField
      DisplayLabel = 'Arbetstid'
      DisplayWidth = 8
      FieldName = 'KalkarbetstidTotal'
      Origin = 'KalkarbetstidTotal'
      ReadOnly = True
      Visible = False
      DisplayFormat = '### ##0.00'
    end
    object qryOrderradNotering: TMemoField
      DisplayWidth = 10
      FieldName = 'Notering'
      Origin = 'Notering'
      Visible = False
      BlobType = ftMemo
      Size = 2147483647
    end
    object qryOrderradcRitningsnoteringFinns: TBooleanField
      DisplayLabel = 'R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns'
      Visible = False
      Calculated = True
    end
    object qryOrderradcBock: TIntegerField
      DisplayLabel = ' B'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cBock'
      Visible = False
      Calculated = True
    end
    object qryOrderradKalkarbetstid: TFloatField
      DisplayLabel = 'Kalk arbetstid min'
      DisplayWidth = 13
      FieldName = 'Kalkarbetstid'
      Origin = 'Kalkarbetstid'
      Visible = False
      DisplayFormat = '#####0.00'
    end
    object qryOrderradId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryOrderradLagerplats: TStringField
      DisplayWidth = 10
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
      Visible = False
      Size = 10
    end
    object qryOrderradYtbehandlingId: TIntegerField
      DisplayWidth = 10
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
    object qryOrderradArtikelId: TIntegerField
      DisplayWidth = 10
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      Required = True
      Visible = False
    end
    object qryOrderradBockritning: TBooleanField
      FieldName = 'Bockritning'
      Origin = 'Bockritning'
      Visible = False
    end
    object qryOrderradFixaturFinns: TBooleanField
      FieldName = 'FixaturFinns'
      Origin = 'FixaturFinns'
      Visible = False
    end
  end
  object qryLU_Artikel: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select a.Id ArtikelId,a.*,cnt='
      '(select count(*) from orderrad where Artikelid = a.id)'
      ' from Artikel a'
      'order by a.Artikelnummer')
    Left = 340
    Top = 476
    object qryLU_ArtikelArtikelId: TFDAutoIncField
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      ReadOnly = True
    end
    object qryLU_ArtikelId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryLU_ArtikelArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryLU_ArtikelBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryLU_ArtikelYtbehandlingIdDefault: TIntegerField
      FieldName = 'YtbehandlingIdDefault'
      Origin = 'YtbehandlingIdDefault'
    end
    object qryLU_ArtikelKundID: TIntegerField
      FieldName = 'KundID'
      Origin = 'KundID'
    end
    object qryLU_ArtikelPDFFinns: TIntegerField
      FieldName = 'PDFFinns'
      Origin = 'PDFFinns'
    end
    object qryLU_ArtikelPDFFilnamn: TStringField
      FieldName = 'PDFFilnamn'
      Origin = 'PDFFilnamn'
      Size = 100
    end
    object qryLU_ArtikelLagersaldo: TBCDField
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Precision = 18
      Size = 0
    end
    object qryLU_ArtikelLagerplats: TStringField
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
    end
    object qryLU_Artikelcnt: TIntegerField
      FieldName = 'cnt'
      Origin = 'cnt'
      ReadOnly = True
    end
  end
  object qryOrderradPrisinfo: TFDQuery
    MasterSource = dsoOrderHistory
    MasterFields = 'OrderradId'
    Connection = dm.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT orpi.Belopp,pit.Beteckning'
      '  FROM [Orderradprisinfo] orpi'
      '  join Prisinfotyp pit on pit.id = orpi.PrisinfotypId'
      '  where orpi.OrderradID =:OrderradID'
      'order by pit.Sortorder'
      '  ')
    Left = 516
    Top = 456
    ParamData = <
      item
        Name = 'ORDERRADID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object qryOrderradPrisinfoBeteckning: TStringField
      DisplayWidth = 16
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 50
    end
    object qryOrderradPrisinfoBelopp: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Belopp'
      Origin = 'Belopp'
    end
  end
  object qryArtikelText: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id,Text from Artikeltext where Id = :Id')
    Left = 644
    Top = 480
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryArtikelTextId: TIntegerField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryArtikelTextText: TStringField
      FieldName = 'Text'
      Origin = 'Text'
      Required = True
      Size = 4000
    end
  end
  object qryArtikelgrupp: TFDQuery
    MasterSource = dsoLU_Artikel
    MasterFields = 'ArtikelId'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'ag.Id,'
      'ag.ArtikelId,'
      'ag.UnderartikelId, '
      'ag.Antal,'
      'ag.Leverant'#246'r,'
      'a2.Artikelnummer,'
      'a2.Beteckning,'
      'a2.Fastpris,'
      'ag.Borttagen'
      'from Artikelgrupp ag'
      'join artikel a1 on a1.Id = Ag.ArtikelId'
      'join artikel a2 on a2.Id = Ag.UnderArtikelId'
      'where ag.Artikelid =:ArtikelId'
      'and ag.Borttagen is null')
    Left = 60
    Top = 464
    ParamData = <
      item
        Name = 'ARTIKELID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryArtikelgruppArtikelnummer: TStringField
      DisplayWidth = 30
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryArtikelgruppAntal: TBCDField
      DisplayWidth = 9
      FieldName = 'Antal'
      Origin = 'Antal'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryArtikelgruppFastpris: TCurrencyField
      DisplayWidth = 13
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
    object qryArtikelgruppBeteckning: TStringField
      DisplayWidth = 200
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Visible = False
      Size = 200
    end
    object qryArtikelgruppBorttagen: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Borttagen'
      Origin = 'Borttagen'
      Visible = False
    end
  end
  object qryOrder: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select oh.Id OrderId,* '
      'from '
      ' orderhuvud oh '
      'join Kund k on k.id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'where oh.ID = :OrderID'
      ' '
      ' ')
    Left = 244
    Top = 456
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryOrderOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
    end
    object qryOrderId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOrderKundID: TIntegerField
      FieldName = 'KundID'
      Origin = 'KundID'
      Required = True
    end
    object qryOrderOrderNummer: TStringField
      FieldName = 'OrderNummer'
      Origin = 'OrderNummer'
      Required = True
      Size = 30
    end
    object qryOrderOrderdatum: TSQLTimeStampField
      FieldName = 'Orderdatum'
      Origin = 'Orderdatum'
      Required = True
    end
    object qryOrderGodsmärke: TStringField
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Size = 50
    end
    object qryOrderReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      Size = 50
    end
    object qryOrderReferensID: TIntegerField
      FieldName = 'ReferensID'
      Origin = 'ReferensID'
    end
    object qryOrderOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
    end
    object qryOrderOrderstatusId: TIntegerField
      FieldName = 'OrderstatusId'
      Origin = 'OrderstatusId'
    end
    object qryOrderLeveransdatum: TSQLTimeStampField
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryOrderFakturaNummer: TStringField
      FieldName = 'FakturaNummer'
      Origin = 'FakturaNummer'
    end
    object qryOrderFritext: TStringField
      FieldName = 'Fritext'
      Origin = 'Fritext'
      Size = 2000
    end
    object qryOrderYtbehandlingDatum: TSQLTimeStampField
      FieldName = 'YtbehandlingDatum'
      Origin = 'YtbehandlingDatum'
    end
    object qryOrderYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
    end
    object qryOrderKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryOrderKortbeteckning: TStringField
      FieldName = 'Kortbeteckning'
      Origin = 'Kortbeteckning'
      FixedChar = True
      Size = 5
    end
    object qryOrderFakturadatum: TDateField
      FieldName = 'Fakturadatum'
      Origin = 'Fakturadatum'
    end
  end
  object qryOrderHistory: TFDQuery
    OnCalcFields = qryOrderHistoryCalcFields
    MasterSource = dsoLU_Artikel
    MasterFields = 'ArtikelId;KundID'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'orderrad.Id OrderradId,'
      'a.artikelnummer,'
      'y.Beteckning,'
      'orderrad.ytbehandlingId,'
      'o.OrdertypId,'
      'o.Id OrderId,'
      'orderrad.OrderInfo,'
      'orderrad.Antal,'
      'orderrad.Datum,'
      'orderrad.PrisPerEnhet,'
      'cast(orderrad.Datum as date) Kortdatum ,'
      'a.YtbehandlingIDDefault,'
      
        'AntalInforader = (Select Count(*) from orderradPrisinfo where Or' +
        'derradId = orderrad.Id),'
      'p.F'#246'rnamn'
      'from orderrad'
      'join artikel a on a.id = orderrad.artikelID'
      'join orderhuvud o on o.ID = orderrad.orderID'
      'left Join Ytbehandling y on y.ID = orderrad.YtbehandlingID'
      'left join Personal p on p.Id = orderrad.AvrapporteradPersonID'
      'where orderrad.artikelid = :artikelId'
      'and o.Kundid=:KundID'
      'order by '
      
        'orderrad.Datum desc,o.ordertypId desc ,orderrad.Id,orderrad.sort' +
        'order '
      ''
      ' '
      ' ')
    Left = 436
    Top = 476
    ParamData = <
      item
        Name = 'ARTIKELID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KUNDID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryOrderHistoryKortdatum: TDateField
      DisplayLabel = 'Datum'
      DisplayWidth = 12
      FieldName = 'Kortdatum'
      Origin = 'Kortdatum'
      ReadOnly = True
    end
    object qryOrderHistoryAntal: TFMTBCDField
      DisplayWidth = 4
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderHistoryPrisPerEnhet: TCurrencyField
      DisplayLabel = 'Pris/Enhet'
      DisplayWidth = 10
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
    end
    object qryOrderHistoryBeteckning: TStringField
      DisplayWidth = 16
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 50
    end
    object qryOrderHistoryOrderInfo: TStringField
      DisplayLabel = 'Info'
      DisplayWidth = 13
      FieldName = 'OrderInfo'
      Origin = 'OrderInfo'
      Size = 50
    end
    object qryOrderHistoryFörnamn: TStringField
      DisplayLabel = 'Avrapp'
      DisplayWidth = 50
      FieldName = 'F'#246'rnamn'
      Origin = '[F'#246'rnamn]'
      Size = 50
    end
    object qryOrderHistoryAntalInforader: TIntegerField
      DisplayWidth = 11
      FieldName = 'AntalInforader'
      Origin = 'AntalInforader'
      ReadOnly = True
    end
    object qryOrderHistoryartikelnummer: TStringField
      DisplayLabel = 'Artikelnummer'
      DisplayWidth = 19
      FieldName = 'artikelnummer'
      Origin = 'artikelnummer'
      Required = True
      Visible = False
      Size = 30
    end
    object qryOrderHistoryDatum: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Datum'
      Origin = 'Datum'
      Visible = False
    end
    object qryOrderHistoryOrderradId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'OrderradId'
      Origin = 'OrderradId'
      ReadOnly = True
      Visible = False
    end
    object qryOrderHistoryytbehandlingId: TIntegerField
      DisplayWidth = 10
      FieldName = 'ytbehandlingId'
      Origin = 'ytbehandlingId'
      Visible = False
    end
    object qryOrderHistoryOrdertypId: TIntegerField
      DisplayWidth = 10
      FieldName = 'OrdertypId'
      Origin = 'OrdertypId'
      Visible = False
    end
    object qryOrderHistoryYtbehandlingIDDefault: TIntegerField
      DisplayWidth = 10
      FieldName = 'YtbehandlingIDDefault'
      Origin = 'YtbehandlingIDDefault'
      Visible = False
    end
    object qryOrderHistoryInforaderFinns: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'InforaderFinns'
      Visible = False
      Calculated = True
    end
  end
  object sp_OrderRadInsert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderRadInsert'
    Left = 432
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
        Name = '@OrderID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ArtikelID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Positionnummer'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PrisPerEnhet'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@YtbehandlingID'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 7
        Name = '@Antal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Fr'#229'nLager'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@Attproducera'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@TillLager'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Vikt'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@Tid'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@Procent'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@OrderRadInfo'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end
      item
        Position = 15
        Name = '@Offertdatum'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@Revision'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
  end
  object sp_OrderradUpdate: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderRadUpdate'
    Left = 536
    Top = 160
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
        Name = '@OrderradId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ArtikelID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Antal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PrisPerEnhet'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@YtbehandlingId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Fr'#229'nLager'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Attproducera'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@TillLager'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@AvrapporteradPlasmatid'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@SkrotandelProcent'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@Vikt'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@Revision'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
  end
  object sp_OrderradDelete: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderRadDelete'
    Left = 640
    Top = 164
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
  object sp_Artikel_insert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'Artikel_insert'
    Left = 720
    Top = 140
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Artikelnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 3
        Name = '@Beteckning'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 4
        Name = '@kundid'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@YtbehandlingIdDefault'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ImageList1: TImageList
    Left = 376
    Top = 576
    Bitmap = {
      494C010102000500740010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object spArtikelBockritningSet: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'ArtikelBockritningSet'
    Left = 464
    Top = 256
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
        Name = '@BockritningFinns'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object qryOrderradSum: TFDQuery
    OnCalcFields = qryOrderradCalcFields
    MasterSource = dsoOrder
    MasterFields = 'OrderId'
    Connection = dm.FDConnection1
    SQL.Strings = (
      'select '
      'cast(sum(isnull(orad.Totaltid,0)) as float) SumTotaltid, '
      'cast(Sum(isnull(orad.Extratid,0)) as float) SumExtratid,'
      
        'cast(Sum(orad.Totaltid + isnull(orad.Extratid,0)) as Float) SumT' +
        'otalt'
      ''
      ''
      'from OrderRad orad'
      'where orad.OrderId = :OrderId')
    Left = 164
    Top = 608
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrderradSumSumTotaltid: TFloatField
      FieldName = 'SumTotaltid'
      Origin = 'SumTotaltid'
      ReadOnly = True
    end
    object qryOrderradSumSumExtratid: TFloatField
      FieldName = 'SumExtratid'
      Origin = 'SumExtratid'
      ReadOnly = True
    end
    object qryOrderradSumSumTotalt: TFloatField
      FieldName = 'SumTotalt'
      Origin = 'SumTotalt'
      ReadOnly = True
    end
  end
end
