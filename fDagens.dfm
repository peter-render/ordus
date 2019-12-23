object frmDagens: TfrmDagens
  Left = 0
  Top = 0
  Caption = 'Dagens'
  ClientHeight = 403
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
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
    Width = 807
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      807
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
    object Label1: TLabel
      Left = 180
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Filter:'
    end
    object Button1: TButton
      Left = 683
      Top = 9
      Width = 113
      Height = 33
      Anchors = [akTop, akRight, akBottom]
      Caption = 'S&t'#228'ng'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btnYtbehandling: TRadioButton
      Tag = 1
      Left = 216
      Top = 17
      Width = 96
      Height = 17
      Caption = 'till ytbehandling'
      TabOrder = 1
      OnClick = btnYtbehandlingClick
    end
    object btnKund: TRadioButton
      Tag = 2
      Left = 318
      Top = 17
      Width = 55
      Height = 17
      Caption = 'till kund'
      TabOrder = 2
      OnClick = btnKundClick
    end
    object btnAlla: TRadioButton
      Left = 389
      Top = 17
      Width = 65
      Height = 17
      Caption = 'alla'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = btnAllaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 807
    Height = 354
    Align = alClient
    BorderWidth = 3
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 4
      Top = 4
      Width = 799
      Height = 346
      Selected.Strings = (
        'OrderID'#9'9'#9'Order-ID'
        'Kundnamn'#9'26'#9'Kund'#9'F'
        'Ytbehandlingdatum'#9'12'#9'Till ytbehandling'
        'YtbehandlingBeteckning'#9'21'#9'Ytbehandling'
        'leveransdatum'#9'10'#9'Leverans'
        'AntalTotal'#9'8'#9'       Totalt'
        'AntalAvrapporterad'#9'11'#9'         Avrapp.'
        'Antalprissatt'#9'9'#9'     Prissatt'
        'destinationsbeteckning'#9'19'#9'Destination')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsoDagens
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    end
  end
  object dsoDagens: TDataSource
    DataSet = qryDagens
    Left = 348
    Top = 188
  end
  object qryDagens: TFDQuery
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
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryDagensOrderID: TFDAutoIncField
      Alignment = taLeftJustify
      DisplayLabel = 'Order-ID'
      DisplayWidth = 9
      FieldName = 'OrderID'
      Origin = 'OrderID'
      ReadOnly = True
    end
    object qryDagensKundnamn: TStringField
      DisplayLabel = 'Kund'
      DisplayWidth = 26
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
      DisplayWidth = 19
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
end
