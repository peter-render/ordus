object frmDagens: TfrmDagens
  Left = 0
  Top = 0
  Caption = 'Dagens'
  ClientHeight = 476
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 854
    DesignSize = (
      903
      49)
    object DBText1: TDBText
      Left = 12
      Top = 15
      Width = 153
      Height = 17
      DataField = 'Starttid'
      DataSource = dsoDagens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 779
      Top = 9
      Width = 113
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = 'S&t'#228'ng'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 730
    end
    object btnYtbehandling: TRadioButton
      Tag = 1
      Left = 511
      Top = 17
      Width = 96
      Height = 17
      Anchors = [akRight]
      Caption = 'till ytbehandling'
      TabOrder = 1
      OnClick = btnYtbehandlingClick
      ExplicitLeft = 462
    end
    object btnKund: TRadioButton
      Tag = 2
      Left = 613
      Top = 17
      Width = 55
      Height = 17
      Anchors = [akRight]
      Caption = 'till kund'
      TabOrder = 2
      OnClick = btnKundClick
      ExplicitLeft = 564
    end
    object btnAlla: TRadioButton
      Left = 684
      Top = 17
      Width = 65
      Height = 17
      Anchors = [akRight]
      Caption = 'alla'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = btnAllaClick
      ExplicitLeft = 635
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 903
    Height = 427
    Align = alClient
    BorderWidth = 3
    TabOrder = 1
    ExplicitWidth = 854
    ExplicitHeight = 354
    object wwDBGrid1: TwwDBGrid
      Left = 4
      Top = 4
      Width = 895
      Height = 419
      ControlType.Strings = (
        'KlarF'#246'rYtbehandling;CheckBox;True;False')
      Selected.Strings = (
        'OrderID'#9'10'#9'Order-ID'
        'Kundnamn'#9'29'#9'Kund'
        'Ytbehandlingdatum'#9'12'#9'Till ytbehandling'
        'YtbehandlingBeteckning'#9'21'#9'Ytbehandling'
        'KlarF'#246'rYtbehandling'#9'5'#9'  Klar'#9'F'
        'leveransdatum'#9'10'#9'Leverans'
        'AntalTotal'#9'8'#9'       Totalt'
        'AntalAvrapporterad'#9'11'#9'         Avrapp.'
        'Antalprissatt'#9'9'#9'     Prissatt'
        'destinationsbeteckning'#9'22'#9'Destination')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = False
      Align = alClient
      DataSource = dsoDagens
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      OnTitleButtonClick = wwDBGrid1TitleButtonClick
      OnDblClick = wwDBGrid1DblClick
      PadColumnStyle = pcsPadHeader
      ExplicitWidth = 846
      ExplicitHeight = 346
    end
  end
  object dsoDagens: TDataSource
    DataSet = qryDagens
    Left = 348
    Top = 188
  end
  object qryDagens: TFDQuery
    Active = True
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select oh.Id OrderID'
      #9',K.Kundnamn'
      
        #9',Antalprissatt = (Select count(*) from OrderRad where isnull(Pr' +
        'isperEnhet,0) <> 0  and orderid = oh.ID)'
      
        #9',AntalAvrapporterad = (Select count(*) from OrderRad where  avr' +
        'apporteradDatum is not null and orderid = oh.ID ) '
      
        #9',AntalTotal = (Select count(*) from OrderRad where orderid = oh' +
        '.ID)'
      #9',oh.leveransdatum'
      #9',oh.Ytbehandlingdatum'
      #9',yb.BGColor YtbehandlingBGColor'
      '               , Kal.Starttid'
      '                ,Yb.Beteckning YtbehandlingBeteckning'
      ',oh.KlarF'#246'rYtbehandling'
      
        ',destinationsbeteckning = case when kal.destination = 1 then '#39'ti' +
        'll ytbehandling'#39' else '#39'till kund'#39' end'
      ''
      #9'from orderhuvud oh'
      #9'join kalender kal on kal.OrderhuvudId = oh.Id'
      #9'join kund k on oh.kundid = k.id'
      #9'left join Ytbehandling yb on yb.Id = oh.YtbehandlingId'
      #9'where '#9
      #9'kal.Starttid = :Datum')
    Left = 272
    Top = 208
    ParamData = <
      item
        Name = 'DATUM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryDagensOrderID: TFDAutoIncField
      DisplayLabel = 'Order-ID'
      DisplayWidth = 10
      FieldName = 'OrderID'
      Origin = 'OrderID'
      ReadOnly = True
    end
    object qryDagensKundnamn: TStringField
      DisplayLabel = 'Kund'
      DisplayWidth = 29
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryDagensYtbehandlingdatum: TSQLTimeStampField
      DisplayLabel = 'Till ytbehandling'
      DisplayWidth = 12
      FieldName = 'Ytbehandlingdatum'
      Origin = 'Ytbehandlingdatum'
    end
    object qryDagensYtbehandlingBeteckning: TStringField
      DisplayLabel = 'Ytbehandling'
      DisplayWidth = 21
      FieldName = 'YtbehandlingBeteckning'
      Origin = 'YtbehandlingBeteckning'
      Size = 50
    end
    object qryDagensKlarFörYtbehandling: TBooleanField
      DisplayLabel = '  Klar'
      DisplayWidth = 5
      FieldName = 'KlarF'#246'rYtbehandling'
      Origin = '[KlarF'#246'rYtbehandling]'
    end
    object qryDagensleveransdatum: TSQLTimeStampField
      DisplayLabel = 'Leverans'
      DisplayWidth = 10
      FieldName = 'leveransdatum'
      Origin = 'leveransdatum'
    end
    object qryDagensAntalTotal: TIntegerField
      DisplayLabel = '       Totalt'
      DisplayWidth = 8
      FieldName = 'AntalTotal'
      Origin = 'AntalTotal'
      ReadOnly = True
    end
    object qryDagensAntalAvrapporterad: TIntegerField
      DisplayLabel = '         Avrapp.'
      DisplayWidth = 11
      FieldName = 'AntalAvrapporterad'
      Origin = 'AntalAvrapporterad'
      ReadOnly = True
    end
    object qryDagensAntalprissatt: TIntegerField
      DisplayLabel = '     Prissatt'
      DisplayWidth = 9
      FieldName = 'Antalprissatt'
      Origin = 'Antalprissatt'
      ReadOnly = True
    end
    object qryDagensdestinationsbeteckning: TStringField
      DisplayLabel = 'Destination'
      DisplayWidth = 22
      FieldName = 'destinationsbeteckning'
      Origin = 'destinationsbeteckning'
      ReadOnly = True
      Required = True
      Size = 17
    end
    object qryDagensYtbehandlingBGColor: TStringField
      FieldName = 'YtbehandlingBGColor'
      Origin = 'YtbehandlingBGColor'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qryDagensStarttid: TStringField
      FieldName = 'Starttid'
      Origin = 'Starttid'
      Required = True
      Visible = False
      Size = 50
    end
  end
  object MainMenu1: TMainMenu
    Left = 396
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 209
    object Klarfrytbehandling1: TMenuItem
      Caption = 'Klar f'#246'r ytbehandling'
      OnClick = Klarfrytbehandling1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Visaorderrader1: TMenuItem
      Caption = 'Visa orderrader'
      OnClick = wwDBGrid1DblClick
    end
  end
  object qryOrderUpdate: TFDQuery
    ConstraintsEnabled = True
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Update Orderhuvud set KlarF'#246'rYtbehandling = :flagga where Id = :' +
        'OrderId')
    Left = 476
    Top = 316
    ParamData = <
      item
        Name = 'FLAGGA'
        DataType = ftBoolean
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object StringField1: TStringField
      DisplayLabel = ' '
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'AutoPrisFinns'
      Size = 1
      Calculated = True
    end
    object IntegerField1: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pnr'
      DisplayWidth = 4
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object StringField2: TStringField
      DisplayWidth = 14
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object StringField3: TStringField
      DisplayLabel = 'Beteckning'
      DisplayWidth = 26
      FieldName = 'beteckning'
      Origin = 'beteckning'
      Size = 200
    end
    object StringField4: TStringField
      DisplayLabel = ' R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns_disp'
      Calculated = True
    end
    object IntegerField2: TIntegerField
      DisplayLabel = ' F'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cFixatur'
      Calculated = True
    end
    object FMTBCDField1: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object StringField5: TStringField
      DisplayLabel = 'Avrapporterad av'
      DisplayWidth = 19
      FieldName = 'Personnamn'
      Origin = 'Personnamn'
      ReadOnly = True
      Size = 101
    end
    object StringField6: TStringField
      DisplayLabel = 'F'#246'ljesedel'
      DisplayWidth = 17
      FieldName = 'F'#246'ljesedelBeteckning'
      Origin = '[F'#246'ljesedelBeteckning]'
      Size = 100
    end
    object StringField7: TStringField
      DisplayLabel = 'Info'
      DisplayWidth = 20
      FieldName = 'OrderradInfo'
      Origin = 'OrderradInfo'
      Size = 255
    end
    object BlobField1: TBlobField
      DisplayWidth = 10
      FieldName = 'Ritning1'
      Origin = 'Ritning1'
      Visible = False
    end
    object MemoField1: TMemoField
      DisplayWidth = 10
      FieldName = 'Notering'
      Origin = 'Notering'
      Visible = False
      BlobType = ftMemo
      Size = 2147483647
    end
    object BooleanField1: TBooleanField
      DisplayLabel = ' R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns'
      Visible = False
      Calculated = True
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'B'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cBock'
      Visible = False
      Calculated = True
    end
    object BooleanField2: TBooleanField
      DisplayWidth = 11
      FieldName = 'FixaturFinns'
      Origin = 'FixaturFinns'
      Visible = False
    end
    object BooleanField3: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'B'
      DisplayWidth = 4
      FieldName = 'BockritningFinns'
      Origin = 'BockritningFinns'
      Visible = False
    end
    object FDAutoIncField1: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'Kundid'
      Origin = 'Kundid'
      Required = True
      Visible = False
    end
    object FDAutoIncField2: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'PersonId'
      Origin = 'PersonId'
      ReadOnly = True
      Visible = False
    end
    object FDAutoIncField3: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'ArtikelID'
      Origin = 'ArtikelID'
      ReadOnly = True
      Visible = False
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 21
      FieldName = 'YtbehandlingIdDefault'
      Origin = 'YtbehandlingIdDefault'
      Visible = False
    end
    object BCDField1: TBCDField
      DisplayWidth = 19
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Visible = False
      Precision = 18
      Size = 0
    end
    object StringField8: TStringField
      DisplayWidth = 20
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
      Visible = False
    end
    object BooleanField4: TBooleanField
      DisplayWidth = 13
      FieldName = 'Avrapporterad'
      Origin = 'Avrapporterad'
      Required = True
      Visible = False
    end
    object FDAutoIncField4: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
      Visible = False
    end
    object StringField9: TStringField
      DisplayWidth = 30
      FieldName = 'Ordernummer'
      Origin = 'Ordernummer'
      Required = True
      Visible = False
      Size = 30
    end
    object StringField10: TStringField
      DisplayWidth = 50
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Visible = False
      Size = 50
    end
    object SQLTimeStampField1: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
      Visible = False
    end
    object StringField11: TStringField
      DisplayWidth = 50
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Visible = False
      Size = 50
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'Radnr'
      Origin = 'Radnr'
      Required = True
      Visible = False
    end
    object CurrencyField1: TCurrencyField
      DisplayWidth = 12
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
      Visible = False
    end
    object CurrencyField2: TCurrencyField
      DisplayWidth = 16
      FieldName = 'PrisPerEnhetAuto'
      Origin = 'PrisPerEnhetAuto'
      Visible = False
    end
    object SQLTimeStampField2: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Datum'
      Origin = 'Datum'
      Visible = False
    end
    object IntegerField7: TIntegerField
      DisplayWidth = 14
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
    object StringField12: TStringField
      DisplayWidth = 50
      FieldName = 'Orderinfo'
      Origin = 'Orderinfo'
      Visible = False
      Size = 50
    end
    object SQLTimeStampField3: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'AvrapporteradDatum'
      Origin = 'AvrapporteradDatum'
      Visible = False
    end
    object FloatField1: TFloatField
      DisplayWidth = 10
      FieldName = 'Vikt'
      Origin = 'Vikt'
      Visible = False
    end
    object IntegerField8: TIntegerField
      DisplayWidth = 21
      FieldName = 'AvrapporteradPersonId'
      Origin = 'AvrapporteradPersonId'
      Visible = False
    end
    object IntegerField9: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object IntegerField10: TIntegerField
      DisplayWidth = 22
      FieldName = 'AvrapporteradPlasmatid'
      Origin = 'AvrapporteradPlasmatid'
      Visible = False
    end
    object IntegerField11: TIntegerField
      DisplayWidth = 24
      FieldName = 'AvrapporteradAntalStarter'
      Origin = 'AvrapporteradAntalStarter'
      Visible = False
    end
    object IntegerField12: TIntegerField
      DisplayWidth = 26
      FieldName = 'AvrapporteradAntalRitningar'
      Origin = 'AvrapporteradAntalRitningar'
      Visible = False
    end
    object BCDField2: TBCDField
      DisplayWidth = 11
      FieldName = 'Fr'#229'nLager'
      Origin = '[Fr'#229'nLager]'
      Visible = False
      Precision = 10
      Size = 0
    end
    object BCDField3: TBCDField
      DisplayWidth = 12
      FieldName = 'AttProducera'
      Origin = 'AttProducera'
      Visible = False
      Precision = 10
      Size = 0
    end
    object BCDField4: TBCDField
      DisplayWidth = 11
      FieldName = 'TillLager'
      Origin = 'TillLager'
      Visible = False
      Precision = 10
      Size = 0
    end
    object StringField13: TStringField
      DisplayWidth = 12
      FieldName = 'Lagerplats_1'
      Origin = 'Lagerplats'
      Visible = False
      Size = 10
    end
    object IntegerField13: TIntegerField
      DisplayWidth = 11
      FieldName = 'F'#246'ljesedelId'
      Origin = '[F'#246'ljesedelId]'
      Visible = False
    end
    object IntegerField14: TIntegerField
      DisplayWidth = 10
      FieldName = 'Totaltid'
      Origin = 'Totaltid'
      Visible = False
    end
    object IntegerField15: TIntegerField
      DisplayWidth = 18
      FieldName = 'AntalAvrapprterade'
      Origin = 'AntalAvrapprterade'
      ReadOnly = True
      Visible = False
    end
    object IntegerField16: TIntegerField
      DisplayWidth = 28
      FieldName = 'AvrapporteradPlasmatidSenast'
      Origin = 'AvrapporteradPlasmatidSenast'
      ReadOnly = True
      Visible = False
    end
    object BCDField5: TBCDField
      DisplayWidth = 24
      FieldName = 'SkrotandelProcentSenast'
      Origin = 'SkrotandelProcentSenast'
      ReadOnly = True
      Visible = False
      Precision = 18
      Size = 0
    end
    object BCDField6: TBCDField
      DisplayWidth = 19
      FieldName = 'SkrotandelProcent'
      Origin = 'SkrotandelProcent'
      Visible = False
      Precision = 18
      Size = 0
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'ViktSenast'
      Origin = 'ViktSenast'
      ReadOnly = True
      Visible = False
    end
    object FloatField3: TFloatField
      DisplayWidth = 10
      FieldName = 'Vikt_1'
      Origin = 'Vikt'
      Visible = False
    end
    object IntegerField17: TIntegerField
      FieldName = 'YtbehandlingIdForslag'
      Origin = 'YtbehandlingIdForslag'
      ReadOnly = True
      Visible = False
    end
  end
end
