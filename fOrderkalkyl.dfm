﻿object frmOrderkalkyl: TfrmOrderkalkyl
  Left = 0
  Top = 0
  Caption = 'Offertkalkyl'
  ClientHeight = 724
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOffertkalkyl: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 109
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 658
      Top = 1
      Width = 141
      Height = 107
      Align = alRight
      TabOrder = 0
      DesignSize = (
        141
        107)
      object Button2: TButton
        Left = 16
        Top = 10
        Width = 117
        Height = 23
        Anchors = [akTop, akRight, akBottom]
        Caption = 'St'#228'ng'
        TabOrder = 0
        OnClick = btnCloseClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 657
      Height = 107
      Align = alClient
      BorderWidth = 5
      TabOrder = 1
      object dgrKalkyl: TwwDBGrid
        Left = 6
        Top = 6
        Width = 510
        Height = 95
        Selected.Strings = (
          'Id'#9'6'#9'Kalkylnr'
          'Kundnamn'#9'15'#9'Kundnamn'
          'Kalkyldatum'#9'11'#9'Kalkyldatum'
          'Leveransdatum'#9'11'#9'Leveransdat.'
          'AntalArtiklar'#9'7'#9'Ant '
          'F'#246'rfr'#229'gan'#9'16'#9'F'#246'rfr'#229'gan'
          'OrdusId'#9'6'#9'OrdusId')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        OnRowChanged = dgrKalkylRowChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        DataSource = dsoOffertkalkyl
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
        PopupMenu = pumOffertkalkyl
        ReadOnly = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object btnNykalkyl: TButton
        Left = 526
        Top = 9
        Width = 120
        Height = 25
        Caption = 'Ny kalkyl'
        TabOrder = 1
        OnClick = btnNykalkylClick
      end
      object btnSkapaOffert: TButton
        Left = 526
        Top = 72
        Width = 120
        Height = 26
        Caption = 'Skapa ny offert '
        TabOrder = 2
        OnClick = btnSkapaOffertClick
        OnEnter = btnSkapaOffertEnter
      end
      object btnSkrivUt: TButton
        Left = 526
        Top = 45
        Width = 120
        Height = 26
        Caption = 'Skriv ut kalkyl'
        TabOrder = 3
        OnClick = btnSkrivUtClick
        OnEnter = btnSkapaOffertEnter
      end
    end
  end
  object PanelLower: TPanel
    Left = 0
    Top = 206
    Width = 800
    Height = 518
    Align = alClient
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 301
      Align = alTop
      TabOrder = 0
      object Label8: TLabel
        Left = 225
        Top = 201
        Width = 29
        Height = 13
        Caption = 'sek/st'
      end
      object Label13: TLabel
        Left = 279
        Top = 201
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Skrotandel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 421
        Top = 201
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vikt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 386
        Top = 201
        Width = 11
        Height = 13
        Caption = '%'
      end
      object Label9: TLabel
        Left = 518
        Top = 201
        Width = 24
        Height = 13
        Caption = 'kg/st'
      end
      object Label14: TLabel
        Left = 622
        Top = 177
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tillv.tid/st'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 56
        Top = 60
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Historik'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 21
        Top = 22
        Width = 68
        Height = 13
        Caption = 'Artikelnummer'
      end
      object Label10: TLabel
        Left = 680
        Top = 201
        Width = 16
        Height = 13
        Caption = 'min'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 40
        Top = 314
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Offertrader'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object lblAntal: TLabel
        Left = 61
        Top = 281
        Width = 35
        Height = 13
        Caption = 'lblAntal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 633
        Top = 310
        Width = 67
        Height = 26
        Caption = 'h'#246'gerklick f'#246'r '#228'ndra/tabort'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label24: TLabel
        Left = 559
        Top = 40
        Width = 200
        Height = 13
        Caption = 'dubbelklick f'#246'r att kopiera till f'#228'lten nedan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label7: TLabel
        Left = 111
        Top = 201
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lasertid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 98
        Top = 174
        Width = 54
        Height = 13
        Caption = 'Materialtyp'
      end
      object edtPFst: TEditN
        Left = 453
        Top = 260
        Width = 94
        Height = 21
        Color = clWhite
        TabOrder = 13
        TextHint = True
        OnChange = edtFieldsChange
        OnExit = edtPFstExit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtPU: TEditN
        Left = 226
        Top = 260
        Width = 97
        Height = 21
        TabStop = False
        Color = cl3DLight
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 0
        TextHint = True
        OnChange = edtFieldsChange
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtTVTU: TEditN
        Left = 115
        Top = 260
        Width = 95
        Height = 21
        Color = clWhite
        NumbersOnly = True
        TabOrder = 12
        TextHint = True
        OnChange = edtFieldsChange
        OnExit = DBEdit2Exit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtAntal: TEditN
        Left = 47
        Top = 260
        Width = 52
        Height = 21
        Color = clWhite
        NumbersOnly = True
        TabOrder = 11
        TextHint = True
        OnChange = edtFieldsChange
        OnExit = DBEdit2Exit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #13
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object btnPost: TButton
        Left = 575
        Top = 258
        Width = 83
        Height = 25
        Caption = 'Spara rad'
        Enabled = False
        TabOrder = 14
        OnClick = btnSaveClick
      end
      object wwDBGrid3: TwwDBGrid
        Left = 100
        Top = 56
        Width = 663
        Height = 101
        Selected.Strings = (
          'Orderdatum'#9'11'#9'Orderdatum'
          'Antal'#9'7'#9'Antal'
          'PrisPerEnhet'#9'13'#9'PrisPerEnhet'
          'Totaltid'#9'10'#9'Totaltid'
          'Vikt'#9'8'#9'Vikt'
          'AvrapporteradPlasmatid'#9'9'#9'Lasertid'
          'SkrotandelProcent'#9'11'#9'Skrotandel %'
          'Ytbehandling'#9'29'#9'Materialtyp')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsoOrderradHistoryArtikel
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ReadOnly = True
        TabOrder = 4
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = wwDBGrid3DblClick
        PadColumnStyle = pcsPadHeader
      end
      object LU_Artikel: TwwDBLookupCombo
        Left = 100
        Top = 19
        Width = 217
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Artikel'#9'231'#9'Artikel'#9'F')
        LookupTable = qryLU_Artikel
        LookupField = 'ArtikelId'
        Color = clWhite
        DropDownCount = 40
        DropDownWidth = 300
        Enabled = False
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnChange = LU_ArtikelChange
        OnCloseUp = LU_ArtikelCloseUp
      end
      object Button1: TButton
        Left = 344
        Top = 17
        Width = 133
        Height = 25
        Caption = 'Artikelregister'
        TabOrder = 2
        TabStop = False
        OnClick = Button1Click
      end
      object Panel5: TPanel
        Left = 47
        Top = 230
        Width = 724
        Height = 19
        Color = clMedGray
        ParentBackground = False
        TabOrder = 3
        object Label18: TLabel
          Left = 18
          Top = 4
          Width = 25
          Height = 13
          Caption = 'Antal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 60
          Top = 4
          Width = 111
          Height = 13
          Caption = 'Tillv.tid uppsk.tot. i min'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 423
          Top = 4
          Width = 75
          Height = 13
          Caption = 'Pris fastst'#228'llt/st'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 209
          Top = 3
          Width = 63
          Height = 13
          Caption = 'Pris ber'#228'knat'
          Color = clMedGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label25: TLabel
          Left = 311
          Top = 3
          Width = 76
          Height = 13
          Caption = 'Pris ber'#228'knat/st'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 683
          Top = 4
          Width = 33
          Height = 13
          Caption = 'Rabatt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object edtYtbehandling: TwwDBLookupCombo
        Left = 156
        Top = 171
        Width = 227
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Default'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Beteckning'#9'50'#9'Beteckning'#9'F')
        LookupTable = dm.qryLUYtbehandling
        LookupField = 'YtbehandlingId'
        Color = clWhite
        Navigator = True
        ParentFont = False
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object edtLasertid: TEditN
        Left = 156
        Top = 198
        Width = 63
        Height = 21
        Color = clWhite
        NumbersOnly = True
        TabOrder = 6
        Text = 'EditN1'
        TextHint = True
        OnExit = edtLasertidExit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtSkrotandel: TEditN
        Left = 336
        Top = 198
        Width = 47
        Height = 21
        Color = clWhite
        NumbersOnly = True
        TabOrder = 7
        Text = 'EditN1'
        TextHint = True
        OnExit = edtSkrotandelExit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtVikt: TEditN
        Left = 444
        Top = 198
        Width = 68
        Height = 21
        Color = clWhite
        TabOrder = 8
        Text = 'EditN1'
        TextHint = True
        OnExit = edtViktExit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtArbetstidStk: TEditN
        Left = 605
        Top = 198
        Width = 69
        Height = 21
        TabStop = False
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clMedGray
        ReadOnly = True
        TabOrder = 9
        Text = 'edtArbetstidStk'
        TextHint = True
        ColorOnFocus = clMedGray
        ColorOnNotFocus = clMedGray
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtPUst: TEditN
        Left = 341
        Top = 260
        Width = 97
        Height = 21
        TabStop = False
        Color = cl3DLight
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 10
        TextHint = True
        OnChange = edtFieldsChange
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clBlack
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlack
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 43471.000000000000000000
        ValueTime = 0.769788067129629700
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object btnCancel: TButton
        Left = 661
        Top = 258
        Width = 50
        Height = 25
        Caption = 'Avbryt'
        Enabled = False
        TabOrder = 15
        OnClick = btnCancelClick
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 302
      Width = 798
      Height = 215
      Align = alClient
      Caption = 'Panel6'
      TabOrder = 1
      DesignSize = (
        798
        215)
      object wwDBGrid2: TwwDBGrid
        Left = 21
        Top = 6
        Width = 750
        Height = 191
        TabStop = False
        Selected.Strings = (
          'Id'#9'5'#9'Id'
          'Artikel'#9'21'#9'Artikel'
          'Ytbehandling'#9'14'#9'Ytbehandling'
          'Antal'#9'6'#9'Antal'
          'TillverkningstidUppskattad'#9'14'#9'Tillv.tid uppsk tot.'
          'PrisUppskattat'#9'11'#9'Pris ber'#228'knat'
          'PrisUppskattatSt'#9'13'#9'Pris ber'#228'knat/st'
          'PrisUppskattatStRabatt'#9'15'#9'Rabatterat pris'
          'PrisFastst'#228'llt'#9'16'#9'Pris fastst'#228'llt/st')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsoQry
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnCalcCellColors = wwDBGrid2CalcCellColors
        OnTitleButtonClick = wwDBGrid2TitleButtonClick
        OnDrawTitleCell = wwDBGrid2DrawTitleCell
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 109
    Width = 800
    Height = 97
    Align = alTop
    TabOrder = 2
    object Label26: TLabel
      Left = 26
      Top = 13
      Width = 24
      Height = 13
      Caption = 'Kund'
    end
    object Label27: TLabel
      Left = 26
      Top = 41
      Width = 48
      Height = 13
      Caption = 'Er referns'
    end
    object Label28: TLabel
      Left = 342
      Top = 41
      Width = 31
      Height = 13
      Caption = 'Datum'
    end
    object Label29: TLabel
      Left = 342
      Top = 68
      Width = 54
      Height = 13
      Caption = 'Lev. datum'
    end
    object Label30: TLabel
      Left = 342
      Top = 16
      Width = 48
      Height = 13
      Caption = 'F'#246'rfr'#229'gan'
    end
    object Label2: TLabel
      Left = 26
      Top = 68
      Width = 60
      Height = 13
      Caption = 'V'#229'r referens'
    end
    object edtKund: TwwDBLookupCombo
      Left = 101
      Top = 11
      Width = 216
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Kundnamn'#9'30'#9'Kundnamn'#9'F')
      DataField = 'Kundid'
      DataSource = dsoOffertkalkyl
      LookupTable = sp_KundLookuplist
      LookupField = 'Kundid'
      Color = clWhite
      DropDownCount = 40
      DropDownWidth = 220
      Enabled = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnBeforeDropDown = edtKundBeforeDropDown
      OnCloseUp = edtKundCloseUp
    end
    object edtKontaktperson: TwwDBLookupCombo
      Left = 101
      Top = 38
      Width = 216
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Namn'#9'101'#9'Namn'#9'F')
      DataField = 'Kundpersonid'
      DataSource = dsoOffertkalkyl
      LookupTable = dm.sp_KundpersonlistforKund
      LookupField = 'KundpersonId'
      Color = clWhite
      DropDownCount = 40
      DropDownWidth = 220
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnCloseUp = edtKontaktpersonCloseUp
    end
    object edtForfragan: TDBEdit
      Left = 402
      Top = 11
      Width = 315
      Height = 21
      DataField = 'F'#246'rfr'#229'gan'
      DataSource = dsoOffertkalkyl
      TabOrder = 3
    end
    object edtKalkyldatum: TwwDBDateTimePicker
      Left = 402
      Top = 38
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      DataField = 'Kalkyldatum'
      DataSource = dsoOffertkalkyl
      Date = 43508.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
    end
    object edtLeveransdatum: TwwDBDateTimePicker
      Left = 402
      Top = 65
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      DataField = 'Leveransdatum'
      DataSource = dsoOffertkalkyl
      Date = 43508.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
      OnExit = edtLeveransdatumExit
    end
    object edtVarReferens: TwwDBLookupCombo
      Left = 101
      Top = 65
      Width = 216
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Namn'#9'101'#9'Namn'#9'F')
      DataField = 'V'#229'rReferensId'
      DataSource = dsoOffertkalkyl
      LookupTable = qryLU_personal
      LookupField = 'Id'
      Color = clWhite
      DropDownCount = 40
      DropDownWidth = 220
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
  end
  object edtRabatt: TEditN
    Left = 720
    Top = 467
    Width = 52
    Height = 21
    TabStop = False
    Color = clWhite
    TabOrder = 3
    Text = '0'
    TextHint = True
    OnChange = edtRabattChange
    ColorOnFocus = clWhite
    ColorOnNotFocus = clWhite
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditType = etInteger
    EditKeyByTab = #9
    EditAlign = etAlignNone
    EditLengthAlign = 0
    EditPrecision = 0
    ValueInteger = 0
    ValueDate = 43521.000000000000000000
    ValueTime = 0.789780046296296300
    TimeSeconds = False
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
  end
  object sp_KundLookuplist: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'KundLookuplist'
    Left = 670
    Top = 56
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object sp_KundLookuplistKundnamn: TStringField
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
  object qryLU_Artikel: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select a.Id ArtikelId,a.Artikelnummer,a.Artikelnummer + '#39' '#39'+ a.B' +
        'eteckning Artikel,'
      'a.Beteckning,'
      'YtbehandlingIdDefault'
      '--,cnt=(select count(*) from orderrad where Artikelid = a.id)'
      ' from Artikel a'
      ' where kundid = :KundID'
      'order by a.Artikelnummer')
    Left = 588
    Top = 160
    ParamData = <
      item
        Name = 'KUNDID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLU_ArtikelArtikelId: TFDAutoIncField
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      ReadOnly = True
    end
    object qryLU_ArtikelArtikel: TStringField
      DisplayWidth = 231
      FieldName = 'Artikel'
      Origin = 'Artikel'
      ReadOnly = True
      Size = 231
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
    object qryLU_ArtikelArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
  end
  object sp_OrderradHistoryArtikel: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.OrderradHistoryArtikel'
    Left = 552
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
        Name = '@ArtikelId'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_OrderradHistoryArtikelOrderdatum: TDateField
      DisplayWidth = 11
      FieldName = 'Orderdatum'
      Origin = 'Orderdatum'
      ReadOnly = True
    end
    object sp_OrderradHistoryArtikelAntal: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object sp_OrderradHistoryArtikelPrisPerEnhet: TCurrencyField
      DisplayWidth = 13
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
    end
    object sp_OrderradHistoryArtikelTotaltid: TIntegerField
      DisplayWidth = 10
      FieldName = 'Totaltid'
      Origin = 'Totaltid'
    end
    object sp_OrderradHistoryArtikelVikt: TFloatField
      DisplayWidth = 8
      FieldName = 'Vikt'
      Origin = 'Vikt'
    end
    object sp_OrderradHistoryArtikelAvrapporteradPlasmatid: TIntegerField
      DisplayLabel = 'Lasertid'
      DisplayWidth = 9
      FieldName = 'AvrapporteradPlasmatid'
      Origin = 'AvrapporteradPlasmatid'
    end
    object sp_OrderradHistoryArtikelSkrotandelProcent: TBCDField
      DisplayLabel = 'Skrotandel %'
      DisplayWidth = 11
      FieldName = 'SkrotandelProcent'
      Origin = 'SkrotandelProcent'
      Precision = 18
      Size = 0
    end
    object sp_OrderradHistoryArtikelYtbehandling: TStringField
      DisplayLabel = 'Materialtyp'
      DisplayWidth = 29
      FieldName = 'Ytbehandling'
      Origin = 'Ytbehandling'
      Size = 50
    end
    object sp_OrderradHistoryArtikelOrderradId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'OrderradId'
      Origin = 'OrderradId'
      ReadOnly = True
      Visible = False
    end
    object sp_OrderradHistoryArtikelYtbehandlingId: TIntegerField
      DisplayWidth = 10
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
    object sp_OrderradHistoryArtikelOrderstatusId: TIntegerField
      DisplayWidth = 10
      FieldName = 'OrderstatusId'
      Origin = 'OrderstatusId'
      Visible = False
    end
    object sp_OrderradHistoryArtikelOrderststatus: TStringField
      DisplayWidth = 50
      FieldName = 'Orderststatus'
      Origin = 'Orderststatus'
      Required = True
      Visible = False
      Size = 50
    end
    object sp_OrderradHistoryArtikelFakturadatum: TDateField
      DisplayWidth = 10
      FieldName = 'Fakturadatum'
      Origin = 'Fakturadatum'
      Visible = False
    end
    object sp_OrderradHistoryArtikelOrderId: TFDAutoIncField
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
      Visible = False
    end
    object sp_OrderradHistoryArtikelAvrapporteradDatum: TSQLTimeStampField
      FieldName = 'AvrapporteradDatum'
      Origin = 'AvrapporteradDatum'
      Visible = False
    end
  end
  object dsoOrderradHistoryArtikel: TDataSource
    AutoEdit = False
    DataSet = sp_OrderradHistoryArtikel
    Left = 370
    Top = 300
  end
  object dsoQry: TDataSource
    DataSet = qry
    Left = 34
    Top = 384
  end
  object sp_OrderRadInsert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OrderRadInsert'
    Left = 288
    Top = 552
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
      end>
  end
  object sp_OrderhuvudInsert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'Ordus.dbo.OrderhuvudInsert'
    Left = 176
    Top = 548
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
      end
      item
        Position = 14
        Name = '@OffertkalkylId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@V'#229'rReferensPersonId'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qry: TFDQuery
    OnCalcFields = qryCalcFields
    OnNewRecord = qryNewRecord
    Connection = dm.FDConnection1
    FetchOptions.AssignedValues = [evItems]
    SQL.Strings = (
      'select ok.*'
      'from dbo.OffertkalkylArtikel ok '
      'where OffertkalkylId = :OffertkalkylId'
      'and ok.Borttagen is null'
      'order by ok.Id desc'
      '')
    Left = 72
    Top = 592
    ParamData = <
      item
        Name = 'OFFERTKALKYLID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryId: TFDAutoIncField
      DisplayWidth = 5
      FieldName = 'Id'
      Origin = 'Id'
      ReadOnly = True
    end
    object qryArtikel: TStringField
      DisplayWidth = 21
      FieldKind = fkLookup
      FieldName = 'Artikel'
      LookupDataSet = qryArtikeluppslag
      LookupKeyFields = 'Id'
      LookupResultField = 'Artikel'
      KeyFields = 'ArtikelId'
      Lookup = True
    end
    object Ytbehandling: TStringField
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'Ytbehandling'
      LookupDataSet = qryYtbehandlingUppslag
      LookupKeyFields = 'Id'
      LookupResultField = 'Beteckning'
      KeyFields = 'YtbehandlingId'
      Lookup = True
    end
    object qryAntal: TIntegerField
      DisplayWidth = 6
      FieldName = 'Antal'
      Origin = 'Antal'
    end
    object qryTillverkningstidUppskattad: TIntegerField
      DisplayLabel = 'Tillv.tid uppsk tot.'
      DisplayWidth = 14
      FieldName = 'TillverkningstidUppskattad'
      Origin = 'TillverkningstidUppskattad'
    end
    object qryPrisUppskattat: TCurrencyField
      DisplayLabel = 'Pris ber'#228'knat'
      DisplayWidth = 11
      FieldName = 'PrisUppskattat'
      Origin = 'PrisUppskattat'
    end
    object PrisUppskattatSt: TCurrencyField
      DisplayLabel = 'Pris ber'#228'knat/st'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'PrisUppskattatSt'
      Calculated = True
    end
    object qryPrisUppskattatStRabatt: TCurrencyField
      DisplayLabel = 'Rabatterat pris'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'PrisUppskattatStRabatt'
      Calculated = True
    end
    object qryPrisFastställt: TCurrencyField
      DisplayLabel = 'Pris fastst'#228'llt/st'
      DisplayWidth = 16
      FieldName = 'PrisFastst'#228'llt'
      Origin = '[PrisFastst'#228'llt]'
    end
    object qryViktStk: TFloatField
      DisplayWidth = 10
      FieldName = 'ViktStk'
      Origin = 'ViktStk'
      Visible = False
    end
    object qryLasertidSelStk: TFloatField
      DisplayWidth = 10
      FieldName = 'LasertidSelStk'
      Origin = 'LasertidSelStk'
      Visible = False
    end
    object qrySkrotandelprocent: TFloatField
      DisplayWidth = 10
      FieldName = 'Skrotandelprocent'
      Origin = 'Skrotandelprocent'
      Visible = False
    end
    object qryPrisPerstk: TFloatField
      DisplayLabel = 'Pris fastst'#228'llt/st'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'PrisPerstk'
      Visible = False
      currency = True
      Calculated = True
    end
    object qryArtikelId: TIntegerField
      DisplayWidth = 10
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      Visible = False
    end
    object qryBorttagen: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Borttagen'
      Origin = 'Borttagen'
      Visible = False
    end
    object qryOffertId: TIntegerField
      DisplayWidth = 10
      FieldName = 'OffertId'
      Origin = 'OffertId'
      Visible = False
    end
    object qryOffertkalkylId: TIntegerField
      FieldName = 'OffertkalkylId'
      Origin = 'OffertkalkylId'
      Visible = False
    end
    object qryYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
  end
  object sp_Offertkalkyl: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'dbo.OffertKalkylGet'
    Left = 412
    Top = 560
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
        Name = '@Antal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@OffertDatum'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@ViktStk'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LasertidSekStk'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Skrotandelprocent'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@YtbehandlingId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@ArbetstidTotaltMinuter'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@PrisperEnhetAuto'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInputOutput
      end>
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 536
    Top = 552
    object mnuEdit: TMenuItem
      Caption = #196'ndra'
      OnClick = mnuEditClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuDelete: TMenuItem
      Caption = 'Ta bort'
      OnClick = mnuDeleteClick
    end
  end
  object qryOffertkalkyl: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'select '
      'ok.Id '
      ',ok.Kundpersonid'
      ',Kundnamn = (select Kundnamn from kund where id = ok.KundId)'
      ',ok.F'#246'rfr'#229'gan'
      
        ',AntalArtiklar = (select count(*) from OffertkalkylArtikel where' +
        ' OffertkalkylId = ok.Id and Borttagen is null)'
      ',ok.Kalkyldatum'
      ',ok.Leveransdatum'
      ',ok.OrdusId'
      ',ok.Kundid'
      ',ok.V'#229'rReferensId'
      'from '
      'Offertkalkyl ok'
      'where ok.borttagen is null'
      'order by ok.id desc'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 225
    Top = 49
    object qryOffertkalkylId2: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Kalkylnr'
      DisplayWidth = 6
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOffertkalkylKundnamn: TStringField
      DisplayWidth = 15
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      ReadOnly = True
      Size = 50
    end
    object qryOffertkalkylKalkyldatum: TDateField
      DisplayWidth = 11
      FieldName = 'Kalkyldatum'
      Origin = 'Kalkyldatum'
    end
    object qryOffertkalkylLeveransdatum: TDateField
      DisplayLabel = 'Leveransdat.'
      DisplayWidth = 11
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
    end
    object qryOffertkalkylAntalArtiklar: TIntegerField
      DisplayLabel = 'Ant '
      DisplayWidth = 7
      FieldName = 'AntalArtiklar'
      Origin = 'AntalArtiklar'
      ReadOnly = True
    end
    object qryOffertkalkylFörfrågan: TStringField
      DisplayWidth = 16
      FieldName = 'F'#246'rfr'#229'gan'
      Origin = '[F'#246'rfr'#229'gan]'
      Size = 50
    end
    object qryOffertkalkylOrdusId: TIntegerField
      DisplayWidth = 6
      FieldName = 'OrdusId'
      Origin = 'OrdusId'
    end
    object qryOffertkalkylKundpersonid: TIntegerField
      FieldName = 'Kundpersonid'
      Origin = 'Kundpersonid'
      Visible = False
    end
    object qryOffertkalkylKundid: TIntegerField
      FieldName = 'Kundid'
      Origin = 'Kundid'
      Visible = False
    end
    object qryOffertkalkylVårReferensId: TIntegerField
      FieldName = 'V'#229'rReferensId'
      Origin = '[V'#229'rReferensId]'
      Visible = False
    end
  end
  object dsoOffertkalkyl: TDataSource
    DataSet = qryOffertkalkyl
    OnStateChange = dsoOffertkalkylStateChange
    Left = 325
    Top = 49
  end
  object qryKund: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id, Kundnamn from Kund')
    Left = 688
    Top = 349
    object qryKundId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryKundKundnamn: TStringField
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
  end
  object pumOffertkalkyl: TPopupMenu
    Left = 432
    Top = 24
    object abortkalkyl1: TMenuItem
      Caption = 'Ta bort kalkyl'
      OnClick = abortkalkyl1Click
    end
  end
  object spOffertkalkylDelete: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'OffertkalkylDelete'
    Left = 116
    Top = 52
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
      end>
  end
  object qryArtikeluppslag: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id, Artikelnummer+ '#39' '#39'+ Beteckning Artikel  from artikel')
    Left = 624
    Top = 569
    object qryArtikeluppslagId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryArtikeluppslagArtikel: TStringField
      FieldName = 'Artikel'
      Origin = 'Artikel'
      ReadOnly = True
      Size = 231
    end
  end
  object qryYtbehandlingUppslag: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id, Beteckning from Ytbehandling')
    Left = 460
    Top = 509
  end
  object qryLU_personal: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select Id, F'#246'rnamn + '#39' '#39' + Efternamn Namn from Personal where ak' +
        'tiv = 1 and '#196'rAdministrat'#246'r = 1'
      'order by f'#246'rnamn')
    Left = 204
    Top = 328
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
