object frmArbetsorder: TfrmArbetsorder
  Left = 310
  Top = 666
  Caption = 'frmArbetsorder'
  ClientHeight = 606
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 92
    Top = 32
    Width = 635
    Height = 898
    DataSet = qry
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
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
    SnapToGrid = True
    Units = Inches
    Zoom = 80
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRDBRichText1: TQRDBRichText
      Left = 42
      Top = 312
      Width = 552
      Height = 536
      Size.Values = (
        1772.708333333330000000
        138.906250000000000000
        1031.875000000000000000
        1825.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AutoStretch = False
      Color = clActiveBorder
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 558
      Height = 239
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        790.442708333333300000
        1845.468750000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRDBText1: TQRDBText
        Left = 40
        Top = 20
        Width = 68
        Height = 13
        Size.Values = (
          42.994791666666670000
          132.291666666666700000
          66.145833333333330000
          224.895833333333300000)
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
      object QRDBText2: TQRDBText
        Left = 120
        Top = 20
        Width = 53
        Height = 13
        Size.Values = (
          42.994791666666670000
          396.875000000000000000
          66.145833333333330000
          175.286458333333300000)
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
    end
  end
  object qry: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select * from Orderrad od'
      'Join Artikel a on a.ID = od.ArtikelID'
      'where Orderid = :OrderID and RadNr = :Radnr'
      ''
      '')
    Left = 40
    Top = 112
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RADNR'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryOrderID: TIntegerField
      FieldName = 'OrderID'
      Origin = 'OrderID'
      Required = True
    end
    object qryArtikelID: TIntegerField
      FieldName = 'ArtikelID'
      Origin = 'ArtikelID'
      Required = True
    end
    object qryRadNr: TIntegerField
      FieldName = 'RadNr'
      Origin = 'RadNr'
      Required = True
    end
    object qryPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryAntal: TFMTBCDField
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryPrisPerEnhet: TCurrencyField
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
    end
    object qryPrisPerEnhetAuto: TCurrencyField
      FieldName = 'PrisPerEnhetAuto'
      Origin = 'PrisPerEnhetAuto'
    end
    object qryDatum: TSQLTimeStampField
      FieldName = 'Datum'
      Origin = 'Datum'
    end
    object qryYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
    end
    object qryOrderInfo: TStringField
      FieldName = 'OrderInfo'
      Origin = 'OrderInfo'
      Size = 50
    end
    object qryAvrapporteradDatum: TSQLTimeStampField
      FieldName = 'AvrapporteradDatum'
      Origin = 'AvrapporteradDatum'
    end
    object qryAvrapporterad: TBooleanField
      FieldName = 'Avrapporterad'
      Origin = 'Avrapporterad'
      Required = True
    end
    object qryTotaltid: TIntegerField
      FieldName = 'Totaltid'
      Origin = 'Totaltid'
    end
    object qryVikt: TFloatField
      FieldName = 'Vikt'
      Origin = 'Vikt'
    end
    object qryAvrapporteradPersonID: TIntegerField
      FieldName = 'AvrapporteradPersonID'
      Origin = 'AvrapporteradPersonID'
    end
    object qrySortorder: TIntegerField
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      ReadOnly = True
      Required = True
    end
    object qryAvrapporteradPlasmatid: TIntegerField
      FieldName = 'AvrapporteradPlasmatid'
      Origin = 'AvrapporteradPlasmatid'
    end
    object qryAvrapporteradAntalStarter: TIntegerField
      FieldName = 'AvrapporteradAntalStarter'
      Origin = 'AvrapporteradAntalStarter'
    end
    object qryAvrapporteradAntalRitningar: TIntegerField
      FieldName = 'AvrapporteradAntalRitningar'
      Origin = 'AvrapporteradAntalRitningar'
    end
    object qryFrånLager: TBCDField
      FieldName = 'Fr'#229'nLager'
      Origin = '[Fr'#229'nLager]'
      Precision = 10
      Size = 0
    end
    object qryAttProducera: TBCDField
      FieldName = 'AttProducera'
      Origin = 'AttProducera'
      Precision = 10
      Size = 0
    end
    object qryTillLager: TBCDField
      FieldName = 'TillLager'
      Origin = 'TillLager'
      Precision = 10
      Size = 0
    end
    object qrySkrotandelProcent: TBCDField
      FieldName = 'SkrotandelProcent'
      Origin = 'SkrotandelProcent'
      Precision = 18
      Size = 0
    end
    object qryLagerplats: TStringField
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
      Size = 10
    end
    object qryFöljesedelId: TIntegerField
      FieldName = 'F'#246'ljesedelId'
      Origin = '[F'#246'ljesedelId]'
    end
    object qry_YtbehandlingID: TStringField
      FieldName = '_YtbehandlingID'
      Origin = '_YtbehandlingID'
      Size = 10
    end
    object qryKalkArbetstid: TFloatField
      FieldName = 'KalkArbetstid'
      Origin = 'KalkArbetstid'
    end
    object qryArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryYtbehandlingIdDefault: TIntegerField
      FieldName = 'YtbehandlingIdDefault'
      Origin = 'YtbehandlingIdDefault'
    end
    object qryKundID: TIntegerField
      FieldName = 'KundID'
      Origin = 'KundID'
    end
    object qryPDFFinns: TIntegerField
      FieldName = 'PDFFinns'
      Origin = 'PDFFinns'
    end
    object qryPDFFilnamn: TStringField
      FieldName = 'PDFFilnamn'
      Origin = 'PDFFilnamn'
      Size = 100
    end
    object qryLagersaldo: TBCDField
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Precision = 18
      Size = 0
    end
    object qry_YtbehandlingIDdefault: TStringField
      FieldName = '_YtbehandlingIDdefault'
      Origin = '_YtbehandlingIDdefault'
      Size = 10
    end
  end
end
