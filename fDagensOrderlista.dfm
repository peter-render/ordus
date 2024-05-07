object frmDagensOrderlista: TfrmDagensOrderlista
  Left = 0
  Top = 0
  Caption = 'Orderrader'
  ClientHeight = 390
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 773
    Height = 349
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object dbgrid: TwwDBGrid
      Left = 0
      Top = 0
      Width = 773
      Height = 349
      ControlType.Strings = (
        'F'#246'ljesedelId;CustomEdit;wwDBLookupCombo1;F'
        'Bockritning;ImageIndex;Shrink To Fit'
        'cBock;ImageIndex;Shrink To Fit'
        'BockritningFinns;CheckBox;True;False'
        'cFixatur;ImageIndex;Shrink To Fit')
      Selected.Strings = (
        'AutoPrisFinns'#9'1'#9' '#9#9
        'Positionnummer'#9'4'#9'Pnr'#9#9
        'Artikelnummer'#9'14'#9'Artikelnummer'#9#9
        'beteckning'#9'26'#9'Beteckning'#9#9
        'cRitningsnoteringFinns_disp'#9'2'#9' R'#9#9
        'cFixatur'#9'2'#9' F'#9#9
        'Antal'#9'7'#9'Antal'#9#9
        'Personnamn'#9'19'#9'Avrapporterad av'#9#9
        'F'#246'ljesedelBeteckning'#9'17'#9'F'#246'ljesedel'#9#9
        'OrderradInfo'#9'20'#9'Info'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clActiveCaption
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsoOrderradDagens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Default'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = True
      PadColumnStyle = pcsPadHeader
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      773
      41)
    object DBText1: TDBText
      Left = 55
      Top = 12
      Width = 74
      Height = 17
      DataField = 'OrderId'
      DataSource = dsoOrderradDagens
    end
    object DBText2: TDBText
      Left = 196
      Top = 12
      Width = 81
      Height = 15
      DataField = 'Godsm'#228'rke'
      DataSource = dsoOrderradDagens
    end
    object Label1: TLabel
      Left = 19
      Top = 12
      Width = 32
      Height = 13
      Caption = 'Order:'
    end
    object Label2: TLabel
      Left = 135
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Godsm'#228'rke:'
    end
    object Button1: TButton
      Left = 626
      Top = 4
      Width = 135
      Height = 31
      Anchors = [akTop, akRight, akBottom]
      Caption = 'St'#228'ng'
      ModalResult = 8
      TabOrder = 0
      OnClick = Button1Click
    end
    object rbAlla: TRadioButton
      Left = 356
      Top = 11
      Width = 41
      Height = 17
      Caption = 'Alla'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbClick
    end
    object rbAvrapp: TRadioButton
      Left = 406
      Top = 11
      Width = 98
      Height = 17
      Caption = 'Avrapporterade'
      TabOrder = 2
      OnClick = rbClick
    end
    object rbEjavrapp: TRadioButton
      Left = 512
      Top = 11
      Width = 109
      Height = 17
      Caption = 'Ej avrapporterade'
      TabOrder = 3
      OnClick = rbClick
    end
  end
  object qryOrderradDagens: TFDQuery
    ConstraintsEnabled = True
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      #9'orad.Id,'
      #9'o.Kundid,'
      #9'p.Id PersonId, p.F'#246'rnamn + '#39' '#39'+p.Efternamn Personnamn,'
      
        #9'a.Id ArtikelID,a.Artikelnummer,a.beteckning,a.YtbehandlingIdDef' +
        'ault,a.Lagersaldo,a.Lagerplats,'
      
        #9'o.Id OrderId ,o.Ordernummer,o.Godsm'#228'rke,o.Leveransdatum,k.Kundn' +
        'amn,'
      #9'a.BockritningFinns,'
      #9'a.FixaturFinns,'
      #9'fs.Beteckning F'#246'ljesedelBeteckning,'
      #9'orad.Radnr,'
      #9'orad.Positionnummer,'
      #9'orad.Antal,'
      #9'orad.PrisPerEnhet,'
      #9'orad.PrisPerEnhetAuto,'
      #9'orad.Datum,'
      #9'orad.YtbehandlingId,'
      
        'coalesce(o.YtbehandlingId,a.YtbehandlingIdDefault) YtbehandlingI' +
        'dForslag ,'
      #9#9'orad.Orderinfo,'
      #9'orad.AvrapporteradDatum,'
      #9'orad.Avrapporterad,'
      #9'orad.Vikt,'
      #9'orad.AvrapporteradPersonId,'
      #9'orad.Sortorder,'
      #9'orad.AvrapporteradPlasmatid,'
      #9'orad.AvrapporteradAntalStarter,'
      #9'orad.AvrapporteradAntalRitningar,'
      #9'orad.Fr'#229'nLager,'
      #9'orad.AttProducera,'
      #9'orad.TillLager,'
      #9'orad.Lagerplats,'
      #9'orad.Ritning1,'
      #9'orad.F'#246'ljesedelId,'
      #9'orad.Totaltid,'
      'orad.Revision,'
      'a.Notering,'
      'orad.OrderradInfo,'
      ''
      
        #9'AntalAvrapprterade= (Select count(*) from orderrad where Orderi' +
        'd = o.Id and avrapporteradPersonid is not null)'
      #9',AvrapporteradPlasmatidSenast = ('
      #9#9#9#9'Select AvrapporteradPlasmatid from orderrad or2'
      #9#9#9#9'join Orderhuvud o2 on o2.Id = or2.OrderID'
      
        #9#9#9#9'where o2.Kundid = k.Id and or2.artikelid = a.Id and or2.Avra' +
        'pporteradDatum ='
      #9#9#9#9#9#9'(Select max(avrapporteraddatum) from Orderrad or22'
      #9#9#9#9#9#9'join orderhuvud o22 on o22.id = or22.orderid   '
      
        #9#9#9#9#9#9'where o22.kundId = k.Id and or22.artikelId = a.Id and or22' +
        '.avrapporteraddatum is not null and o2.Id < o.Id and isnull(or22' +
        '.AvrapporteradPlasmatid,0) <> 0)'
      #9#9#9#9'and o2.Id < o.Id'
      #9#9#9'),'
      ''
      #9'orad.AvrapporteradPlasmatid,'
      #9
      ''
      #9'SkrotandelProcentSenast = ('
      #9#9#9#9'Select SkrotandelProcent from orderrad or3'
      #9#9#9#9'join Orderhuvud o3 on o3.Id = or3.OrderID'
      
        #9#9#9#9'where o3.Kundid = k.Id and or3.artikelid = a.Id and or3.Avra' +
        'pporteradDatum ='
      #9#9#9#9#9#9'(Select max(avrapporteraddatum) from Orderrad or33'
      #9#9#9#9#9#9'join orderhuvud o33 on o33.id = or33.orderid   '
      
        #9#9#9#9#9#9'where o33.kundId = k.Id and or33.artikelId = a.Id and or33' +
        '.avrapporteraddatum is not null and o3.Id < o.Id and isnull(or33' +
        '.SkrotandelProcent,0) <> 0)'
      #9#9#9#9'and o3.Id < o.Id'
      #9#9#9'),'
      ''
      ''
      ''
      #9'orad.SkrotandelProcent,'
      ''
      #9'ViktSenast = ('
      #9#9#9#9'Select Vikt from orderrad or4'
      #9#9#9#9'join Orderhuvud o4 on o4.Id = or4.OrderID'
      
        #9#9#9#9'where o4.Kundid = k.Id and or4.artikelid = a.Id and or4.Avra' +
        'pporteradDatum ='
      #9#9#9#9#9#9'(Select max(avrapporteraddatum) from Orderrad or44'
      #9#9#9#9#9#9'join orderhuvud o44 on o44.id = or44.orderid   '
      
        #9#9#9#9#9#9'where o44.kundId = k.Id and or44.artikelId = a.Id and or44' +
        '.avrapporteraddatum is not null and o4.Id < o.Id and isnull(or44' +
        '.Vikt,0) <> 0)'
      #9#9#9#9'and o4.Id < o.Id'
      #9#9#9'),'
      ''
      ''
      ''
      #9'orad.Vikt'
      #9
      'from orderrad orad '
      'join orderhuvud o on o.Id = orad.Orderid'
      'join kund k on k.id = o.Kundid'
      'join Artikel a on a.Id = orad.ArtikelId'
      'left join personal p on p.id = orad.AvrapporteradPersonId'
      'left join F'#246'ljesedel fs on fs.Id = orad.F'#246'ljesedelId'
      ''
      'where orad.orderID= :OrderID'
      'and (F'#246'ljesedelId is null or :visaavrapporterade =1)'
      ''
      'order by Positionnummer')
    Left = 508
    Top = 116
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VISAAVRAPPORTERADE'
        DataType = ftBoolean
        ParamType = ptInput
        Value = False
      end>
    object qryOrderradDagensAutoPrisFinns: TStringField
      DisplayLabel = ' '
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'AutoPrisFinns'
      Size = 1
      Calculated = True
    end
    object qryOrderradDagensPositionnummer: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Pnr'
      DisplayWidth = 4
      FieldName = 'Positionnummer'
      Origin = 'Positionnummer'
    end
    object qryOrderradDagensArtikelnummer: TStringField
      DisplayWidth = 14
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object f: TStringField
      DisplayLabel = 'Beteckning'
      DisplayWidth = 26
      FieldName = 'beteckning'
      Origin = 'beteckning'
      Size = 200
    end
    object qryOrderradDagenscRitningsnoteringFinns_disp: TStringField
      DisplayLabel = ' R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns_disp'
      Calculated = True
    end
    object qryOrderradDagenscFixatur: TIntegerField
      DisplayLabel = ' F'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cFixatur'
      Calculated = True
    end
    object qryOrderradDagensAntal: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'Antal'
      Origin = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderradDagensPersonnamn: TStringField
      DisplayLabel = 'Avrapporterad av'
      DisplayWidth = 19
      FieldName = 'Personnamn'
      Origin = 'Personnamn'
      ReadOnly = True
      Size = 101
    end
    object qryOrderradDagensFöljesedelBeteckning: TStringField
      DisplayLabel = 'F'#246'ljesedel'
      DisplayWidth = 17
      FieldName = 'F'#246'ljesedelBeteckning'
      Origin = '[F'#246'ljesedelBeteckning]'
      Size = 100
    end
    object qryOrderradDagensOrderradInfo: TStringField
      DisplayLabel = 'Info'
      DisplayWidth = 20
      FieldName = 'OrderradInfo'
      Origin = 'OrderradInfo'
      Size = 255
    end
    object qryOrderradDagensRitning1: TBlobField
      DisplayWidth = 10
      FieldName = 'Ritning1'
      Origin = 'Ritning1'
      Visible = False
    end
    object qryOrderradDagensNotering: TMemoField
      DisplayWidth = 10
      FieldName = 'Notering'
      Origin = 'Notering'
      Visible = False
      BlobType = ftMemo
      Size = 2147483647
    end
    object qryOrderradDagenscRitningsnoteringFinns: TBooleanField
      DisplayLabel = ' R'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cRitningsnoteringFinns'
      Visible = False
      Calculated = True
    end
    object qryOrderradDagenscBock: TIntegerField
      DisplayLabel = 'B'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'cBock'
      Visible = False
      Calculated = True
    end
    object qryOrderradDagensFixaturFinns: TBooleanField
      DisplayWidth = 11
      FieldName = 'FixaturFinns'
      Origin = 'FixaturFinns'
      Visible = False
    end
    object qryOrderradDagensBockritningFinns: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'B'
      DisplayWidth = 4
      FieldName = 'BockritningFinns'
      Origin = 'BockritningFinns'
      Visible = False
    end
    object qryOrderradDagensId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensKundid: TIntegerField
      DisplayWidth = 10
      FieldName = 'Kundid'
      Origin = 'Kundid'
      Required = True
      Visible = False
    end
    object qryOrderradDagensPersonId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'PersonId'
      Origin = 'PersonId'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensArtikelID: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'ArtikelID'
      Origin = 'ArtikelID'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensYtbehandlingIdDefault: TIntegerField
      DisplayWidth = 21
      FieldName = 'YtbehandlingIdDefault'
      Origin = 'YtbehandlingIdDefault'
      Visible = False
    end
    object qryOrderradDagensLagersaldo: TBCDField
      DisplayWidth = 19
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Visible = False
      Precision = 18
      Size = 0
    end
    object qryOrderradDagensLagerplats: TStringField
      DisplayWidth = 20
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
      Visible = False
    end
    object qryOrderradDagensAvrapporterad: TBooleanField
      DisplayWidth = 13
      FieldName = 'Avrapporterad'
      Origin = 'Avrapporterad'
      Required = True
      Visible = False
    end
    object qryOrderradDagensOrderId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'OrderId'
      Origin = 'OrderId'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensOrdernummer: TStringField
      DisplayWidth = 30
      FieldName = 'Ordernummer'
      Origin = 'Ordernummer'
      Required = True
      Visible = False
      Size = 30
    end
    object qryOrderradDagensGodsmärke: TStringField
      DisplayWidth = 50
      FieldName = 'Godsm'#228'rke'
      Origin = '[Godsm'#228'rke]'
      Visible = False
      Size = 50
    end
    object qryOrderradDagensLeveransdatum: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Leveransdatum'
      Origin = 'Leveransdatum'
      Visible = False
    end
    object qryOrderradDagensKundnamn: TStringField
      DisplayWidth = 50
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Visible = False
      Size = 50
    end
    object qryOrderradDagensRadnr: TIntegerField
      DisplayWidth = 10
      FieldName = 'Radnr'
      Origin = 'Radnr'
      Required = True
      Visible = False
    end
    object qryOrderradDagensPrisPerEnhet: TCurrencyField
      DisplayWidth = 12
      FieldName = 'PrisPerEnhet'
      Origin = 'PrisPerEnhet'
      Visible = False
    end
    object qryOrderradDagensPrisPerEnhetAuto: TCurrencyField
      DisplayWidth = 16
      FieldName = 'PrisPerEnhetAuto'
      Origin = 'PrisPerEnhetAuto'
      Visible = False
    end
    object qryOrderradDagensDatum: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'Datum'
      Origin = 'Datum'
      Visible = False
    end
    object qryOrderradDagensYtbehandlingId: TIntegerField
      DisplayWidth = 14
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
    object qryOrderradDagensOrderinfo: TStringField
      DisplayWidth = 50
      FieldName = 'Orderinfo'
      Origin = 'Orderinfo'
      Visible = False
      Size = 50
    end
    object qryOrderradDagensAvrapporteradDatum: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'AvrapporteradDatum'
      Origin = 'AvrapporteradDatum'
      Visible = False
    end
    object qryOrderradDagensVikt: TFloatField
      DisplayWidth = 10
      FieldName = 'Vikt'
      Origin = 'Vikt'
      Visible = False
    end
    object qryOrderradDagensAvrapporteradPersonId: TIntegerField
      DisplayWidth = 21
      FieldName = 'AvrapporteradPersonId'
      Origin = 'AvrapporteradPersonId'
      Visible = False
    end
    object qryOrderradDagensSortorder: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object qryOrderradDagensAvrapporteradPlasmatid: TIntegerField
      DisplayWidth = 22
      FieldName = 'AvrapporteradPlasmatid'
      Origin = 'AvrapporteradPlasmatid'
      Visible = False
    end
    object qryOrderradDagensAvrapporteradAntalStarter: TIntegerField
      DisplayWidth = 24
      FieldName = 'AvrapporteradAntalStarter'
      Origin = 'AvrapporteradAntalStarter'
      Visible = False
    end
    object qryOrderradDagensAvrapporteradAntalRitningar: TIntegerField
      DisplayWidth = 26
      FieldName = 'AvrapporteradAntalRitningar'
      Origin = 'AvrapporteradAntalRitningar'
      Visible = False
    end
    object qryOrderradDagensFrånLager: TBCDField
      DisplayWidth = 11
      FieldName = 'Fr'#229'nLager'
      Origin = '[Fr'#229'nLager]'
      Visible = False
      Precision = 10
      Size = 0
    end
    object qryOrderradDagensAttProducera: TBCDField
      DisplayWidth = 12
      FieldName = 'AttProducera'
      Origin = 'AttProducera'
      Visible = False
      Precision = 10
      Size = 0
    end
    object qryOrderradDagensTillLager: TBCDField
      DisplayWidth = 11
      FieldName = 'TillLager'
      Origin = 'TillLager'
      Visible = False
      Precision = 10
      Size = 0
    end
    object qryOrderradDagensLagerplats_1: TStringField
      DisplayWidth = 12
      FieldName = 'Lagerplats_1'
      Origin = 'Lagerplats'
      Visible = False
      Size = 10
    end
    object qryOrderradDagensFöljesedelId: TIntegerField
      DisplayWidth = 11
      FieldName = 'F'#246'ljesedelId'
      Origin = '[F'#246'ljesedelId]'
      Visible = False
    end
    object qryOrderradDagensTotaltid: TIntegerField
      DisplayWidth = 10
      FieldName = 'Totaltid'
      Origin = 'Totaltid'
      Visible = False
    end
    object qryOrderradDagensAntalAvrapprterade: TIntegerField
      DisplayWidth = 18
      FieldName = 'AntalAvrapprterade'
      Origin = 'AntalAvrapprterade'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensAvrapporteradPlasmatidSenast: TIntegerField
      DisplayWidth = 28
      FieldName = 'AvrapporteradPlasmatidSenast'
      Origin = 'AvrapporteradPlasmatidSenast'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensSkrotandelProcentSenast: TBCDField
      DisplayWidth = 24
      FieldName = 'SkrotandelProcentSenast'
      Origin = 'SkrotandelProcentSenast'
      ReadOnly = True
      Visible = False
      Precision = 18
      Size = 0
    end
    object qryOrderradDagensSkrotandelProcent: TBCDField
      DisplayWidth = 19
      FieldName = 'SkrotandelProcent'
      Origin = 'SkrotandelProcent'
      Visible = False
      Precision = 18
      Size = 0
    end
    object qryOrderradDagensViktSenast: TFloatField
      DisplayWidth = 10
      FieldName = 'ViktSenast'
      Origin = 'ViktSenast'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensVikt_1: TFloatField
      DisplayWidth = 10
      FieldName = 'Vikt_1'
      Origin = 'Vikt'
      Visible = False
    end
    object qryOrderradDagensYtbehandlingIdForslag: TIntegerField
      FieldName = 'YtbehandlingIdForslag'
      Origin = 'YtbehandlingIdForslag'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradDagensRevision: TStringField
      FieldName = 'Revision'
      Origin = 'Revision'
      Size = 5
    end
  end
  object dsoOrderradDagens: TDataSource
    AutoEdit = False
    DataSet = qryOrderradDagens
    Left = 511
    Top = 244
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 336
    Top = 225
    object Visaritning1: TMenuItem
      Caption = 'Visa ritning'
      OnClick = Visaritning1Click
    end
  end
end
