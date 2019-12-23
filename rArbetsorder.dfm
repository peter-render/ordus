object rptArbetsorder: TrptArbetsorder
  Left = 267
  Top = 174
  Caption = 'rptArbetsorder'
  ClientHeight = 606
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object report: TQuickRep
    Left = 92
    Top = 32
    Width = 635
    Height = 898
    DataSet = qry
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Order'
    SnapToGrid = True
    Units = MM
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 400
    PreviewHeight = 900
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 38
      Top = 38
      Width = 558
      Height = 336
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        1111.250000000000000000
        1845.468750000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 100
        Top = 171
        Width = 69
        Height = 13
        Size.Values = (
          42.994791666666670000
          330.729166666666700000
          565.546875000000000000
          228.203125000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'Artikelnummer'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 172
        Top = 171
        Width = 54
        Height = 13
        Size.Values = (
          42.994791666666670000
          568.854166666666700000
          565.546875000000000000
          178.593750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'Beteckning'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 4
        Top = 39
        Width = 89
        Height = 20
        Size.Values = (
          66.145833333333330000
          13.229166666666670000
          128.984375000000000000
          294.348958333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Arbetsorder'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 12
        Top = 175
        Width = 39
        Height = 13
        Size.Values = (
          42.994791666666670000
          39.687500000000000000
          578.776041666666700000
          128.984375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Artikel:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 11
        Top = 203
        Width = 32
        Height = 13
        Size.Values = (
          42.994791666666670000
          36.380208333333330000
          671.380208333333300000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Antal:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 103
        Top = 199
        Width = 25
        Height = 13
        Size.Values = (
          42.994791666666670000
          340.651041666666700000
          658.151041666666700000
          82.682291666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataField = 'Antal'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 141
        Top = 42
        Width = 30
        Height = 14
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          138.906250000000000000
          99.218750000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Kund:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 141
        Top = 58
        Width = 40
        Height = 14
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          191.822916666666700000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Best.nr:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 194
        Top = 58
        Width = 126
        Height = 14
        Size.Values = (
          44.979166666666700000
          640.291666666667000000
          193.145833333333000000
          418.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'OrderNummer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 141
        Top = 74
        Width = 46
        Height = 14
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          244.739583333333300000
          152.135416666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Best.dat:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 194
        Top = 74
        Width = 126
        Height = 14
        Size.Values = (
          44.979166666666700000
          640.291666666667000000
          246.062500000000000000
          418.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Orderdatum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 328
        Top = 42
        Width = 50
        Height = 14
        Size.Values = (
          46.302083333333330000
          1084.791666666667000000
          138.906250000000000000
          165.364583333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Referens:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 394
        Top = 42
        Width = 92
        Height = 14
        Size.Values = (
          44.979166666666700000
          1301.750000000000000000
          140.229166666667000000
          304.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Referens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 328
        Top = 58
        Width = 62
        Height = 14
        Size.Values = (
          46.302083333333330000
          1084.791666666667000000
          191.822916666666700000
          205.052083333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Godsm'#228'rke:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 394
        Top = 58
        Width = 93
        Height = 14
        Size.Values = (
          44.979166666666700000
          1301.750000000000000000
          193.145833333333000000
          306.916666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Godsm'#228'rke'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 328
        Top = 74
        Width = 44
        Height = 14
        Size.Values = (
          46.302083333333330000
          1084.791666666667000000
          244.739583333333300000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Lev. dat:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 394
        Top = 74
        Width = 94
        Height = 14
        Size.Values = (
          44.979166666666700000
          1301.750000000000000000
          246.062500000000000000
          309.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Orderdatum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText1: TQRDBText
        Left = 194
        Top = 42
        Width = 126
        Height = 14
        Size.Values = (
          44.979166666666700000
          640.291666666667000000
          140.229166666667000000
          418.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'Kundnamn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 107
        Width = 557
        Height = 29
        Size.Values = (
          95.911458333333300000
          0.000000000000000000
          353.880208333333000000
          1842.161458333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRLabel6: TQRLabel
      Left = 44
      Top = 841
      Width = 166
      Height = 15
      Size.Values = (
        49.609375000000000000
        145.520833333333300000
        2781.432291666667000000
        549.010416666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #196'ngelholms Mek. Verkstad ab'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object QRLabel2: TQRLabel
    Left = 140
    Top = 206
    Width = 77
    Height = 16
    Size.Values = (
      42.333333333333300000
      370.416666666667000000
      545.041666666667000000
      203.729166666667000000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    Caption = 'Ordusnr:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FontSize = 10
  end
  object QRDBText2: TQRDBText
    Left = 230
    Top = 206
    Width = 31
    Height = 16
    Size.Values = (
      42.333333333333300000
      608.541666666667000000
      545.041666666667000000
      82.020833333333300000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    Color = clWhite
    DataField = 'OrderID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 10
  end
  object qry: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select *,Prisperenhet * Antal as Pris  from OrderRad orad'
      'join Artikel a on orad.artikelID = a.artikelid'
      'join OrderHuvud oh on oh.OrderID = orad.OrderID'
      'join kund k on k.Kundid = oh.kundid'
      'where oh.OrderID = :OrderID'
      'order by orad.Radnr'
      ' ')
    Left = 24
    Top = 140
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
