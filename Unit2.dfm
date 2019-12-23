object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 858
  ClientWidth = 1387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object qryOrderrad: TADOQuery
    Connection = dm.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'OrderID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 15
      end>
    SQL.Strings = (
      'Select * from OrderRad orad'
      'join Artikel a on orad.artikelID = a.id'
      'join orderhuvud oh on oh.id = orad.orderid'
      'join Kund k on k.id = oh.kundid'
      'join Ytbehandling yb on orad.YtbehandlingID = yb.ID'
      'where oh.ID = :OrderID'
      'order by Radnr desc'
      ' '
      ' ')
    Left = 653
    Top = 521
    object qryOrderradPositionnummer: TIntegerField
      DisplayLabel = 'Pnr'
      DisplayWidth = 2
      FieldName = 'Positionnummer'
    end
    object qryOrderradArtikelnummer: TStringField
      DisplayWidth = 15
      FieldName = 'Artikelnummer'
      Size = 30
    end
    object qryOrderradBeteckning: TStringField
      DisplayWidth = 18
      FieldName = 'Beteckning'
      Size = 200
    end
    object qryOrderradPrisPerEnhet: TBCDField
      DisplayLabel = '              PrisPerEnhet'
      DisplayWidth = 18
      FieldName = 'PrisPerEnhet'
      Precision = 19
    end
    object qryOrderradAntal: TBCDField
      DisplayLabel = '              Antal'
      DisplayWidth = 12
      FieldName = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderradBeteckning_1: TStringField
      DisplayLabel = 'Ytbehandling'
      DisplayWidth = 50
      FieldName = 'Beteckning_1'
      Size = 50
    end
    object qryOrderradId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradOrderID: TIntegerField
      FieldName = 'OrderID'
      Visible = False
    end
    object qryOrderradArtikelID: TIntegerField
      FieldName = 'ArtikelID'
      Visible = False
    end
    object qryOrderradRadNr: TIntegerField
      FieldName = 'RadNr'
      Visible = False
    end
    object qryOrderradPrisPerEnhetAuto: TBCDField
      FieldName = 'PrisPerEnhetAuto'
      Visible = False
      Precision = 19
    end
    object qryOrderradDatum: TDateTimeField
      FieldName = 'Datum'
      Visible = False
    end
    object qryOrderradYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Visible = False
    end
    object qryOrderrad_YtbehandlingID: TStringField
      FieldName = '_YtbehandlingID'
      Visible = False
      Size = 5
    end
    object qryOrderradOrderInfo: TStringField
      FieldName = 'OrderInfo'
      Visible = False
      Size = 50
    end
    object qryOrderradAvrapporteradDatum: TDateTimeField
      FieldName = 'AvrapporteradDatum'
      Visible = False
    end
    object qryOrderradAvrapporterad: TBooleanField
      FieldName = 'Avrapporterad'
      Visible = False
    end
    object qryOrderradTotaltid: TIntegerField
      FieldName = 'Totaltid'
      Visible = False
    end
    object qryOrderradVikt: TFloatField
      FieldName = 'Vikt'
      Visible = False
    end
    object qryOrderradAvrapporteradPersonID: TIntegerField
      FieldName = 'AvrapporteradPersonID'
      Visible = False
    end
    object qryOrderradSortorder: TIntegerField
      FieldName = 'Sortorder'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradAvrapporteradPlasmatid: TIntegerField
      FieldName = 'AvrapporteradPlasmatid'
      Visible = False
    end
    object qryOrderradAvrapporteradAntalStarter: TIntegerField
      FieldName = 'AvrapporteradAntalStarter'
      Visible = False
    end
    object qryOrderradAvrapporteradAntalRitningar: TIntegerField
      FieldName = 'AvrapporteradAntalRitningar'
      Visible = False
    end
    object qryOrderradFrnLager: TBCDField
      FieldName = 'Fr'#229'nLager'
      Visible = False
      Precision = 10
      Size = 0
    end
    object qryOrderradAttProducera: TBCDField
      FieldName = 'AttProducera'
      Visible = False
      Precision = 10
      Size = 0
    end
    object qryOrderradTillLager: TBCDField
      FieldName = 'TillLager'
      Visible = False
      Precision = 10
      Size = 0
    end
    object qryOrderradSkrotandelProcent: TBCDField
      FieldName = 'SkrotandelProcent'
      Visible = False
      Precision = 18
      Size = 0
    end
    object qryOrderradLagerplats: TStringField
      FieldName = 'Lagerplats'
      Visible = False
      Size = 10
    end
    object qryOrderradRitning1: TBlobField
      FieldName = 'Ritning1'
      Visible = False
    end
    object qryOrderradFljesedelId: TIntegerField
      FieldName = 'F'#246'ljesedelId'
      Visible = False
    end
    object qryOrderradId_1: TAutoIncField
      FieldName = 'Id_1'
      ReadOnly = True
      Visible = False
    end
    object qryOrderrad_YtbehandlingIDdefault: TStringField
      FieldName = '_YtbehandlingIDdefault'
      Visible = False
      Size = 5
    end
    object qryOrderradYtbehandlingIdDefault: TIntegerField
      FieldName = 'YtbehandlingIdDefault'
      Visible = False
    end
    object qryOrderradKundID: TIntegerField
      FieldName = 'KundID'
      Visible = False
    end
    object qryOrderradPDFFinns: TIntegerField
      FieldName = 'PDFFinns'
      Visible = False
    end
    object qryOrderradPDFFilnamn: TStringField
      FieldName = 'PDFFilnamn'
      Visible = False
      Size = 100
    end
    object qryOrderradLagersaldo: TBCDField
      FieldName = 'Lagersaldo'
      Visible = False
      Precision = 18
      Size = 0
    end
    object qryOrderradLagerplats_1: TStringField
      FieldName = 'Lagerplats_1'
      Visible = False
    end
    object qryOrderradId_2: TAutoIncField
      FieldName = 'Id_2'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradKundID_1: TIntegerField
      FieldName = 'KundID_1'
      Visible = False
    end
    object qryOrderradOrderNummer: TStringField
      FieldName = 'OrderNummer'
      Visible = False
      Size = 30
    end
    object qryOrderradOrderdatum: TDateTimeField
      FieldName = 'Orderdatum'
      Visible = False
    end
    object qryOrderradGodsmrke: TStringField
      FieldName = 'Godsm'#228'rke'
      Visible = False
      Size = 50
    end
    object qryOrderradReferens: TStringField
      FieldName = 'Referens'
      Visible = False
      Size = 50
    end
    object qryOrderradReferensID: TIntegerField
      FieldName = 'ReferensID'
      Visible = False
    end
    object qryOrderradOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
      Visible = False
    end
    object qryOrderradOrdertyp: TStringField
      FieldName = 'Ordertyp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryOrderradOrderstatus: TStringField
      FieldName = 'Orderstatus'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryOrderradOrderstatusId: TIntegerField
      FieldName = 'OrderstatusId'
      Visible = False
    end
    object qryOrderradLeveransdatum: TDateTimeField
      FieldName = 'Leveransdatum'
      Visible = False
    end
    object qryOrderradFakturaNummer: TStringField
      FieldName = 'FakturaNummer'
      Visible = False
    end
    object qryOrderradFakturadatum: TDateTimeField
      FieldName = 'Fakturadatum'
      Visible = False
    end
    object qryOrderradFritext: TStringField
      FieldName = 'Fritext'
      Visible = False
      Size = 2000
    end
    object qryOrderradID_3: TAutoIncField
      FieldName = 'ID_3'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradKundnamn: TStringField
      FieldName = 'Kundnamn'
      Visible = False
      Size = 50
    end
    object qryOrderradId_4: TAutoIncField
      FieldName = 'Id_4'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradYtbehandlingsID: TStringField
      FieldName = 'YtbehandlingsID'
      Visible = False
      Size = 5
    end
    object qryOrderradSortorder_1: TSmallintField
      FieldName = 'Sortorder_1'
      Visible = False
    end
  end
  object qryOrder: TADOQuery
    Connection = dm.ADOConnection1
    CursorType = ctStatic
    DataSource = frmOrderLista.dsoOrder
    Parameters = <
      item
        Name = 'OrderID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 15
      end>
    SQL.Strings = (
      'Select * '
      'from '
      ' orderhuvud oh '
      'join Kund k on k.id = oh.kundid'
      'left join KundPerson kp on kp.ID= oh.ReferensID'
      'where oh.ID = :OrderID'
      ' '
      ' ')
    Left = 733
    Top = 521
    object qryOrderId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryOrderKundID: TIntegerField
      FieldName = 'KundID'
    end
    object qryOrderOrderNummer: TStringField
      FieldName = 'OrderNummer'
      Size = 30
    end
    object qryOrderOrderdatum: TDateTimeField
      FieldName = 'Orderdatum'
    end
    object qryOrderGodsmrke: TStringField
      FieldName = 'Godsm'#228'rke'
      Size = 50
    end
    object qryOrderReferens: TStringField
      FieldName = 'Referens'
      Size = 50
    end
    object qryOrderReferensID: TIntegerField
      FieldName = 'ReferensID'
    end
    object qryOrderOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
    end
    object qryOrderOrdertyp: TStringField
      FieldName = 'Ordertyp'
      FixedChar = True
      Size = 1
    end
    object qryOrderOrderstatus: TStringField
      FieldName = 'Orderstatus'
      FixedChar = True
      Size = 1
    end
    object qryOrderOrderstatusId: TIntegerField
      FieldName = 'OrderstatusId'
    end
    object qryOrderLeveransdatum: TDateTimeField
      FieldName = 'Leveransdatum'
    end
    object qryOrderFakturaNummer: TStringField
      FieldName = 'FakturaNummer'
    end
    object qryOrderFakturadatum: TDateTimeField
      FieldName = 'Fakturadatum'
    end
    object qryOrderFritext: TStringField
      FieldName = 'Fritext'
      Size = 2000
    end
    object qryOrderKundnamn: TStringField
      FieldName = 'Kundnamn'
      Size = 50
    end
    object qryOrderBorttagen: TDateTimeField
      FieldName = 'Borttagen'
    end
  end
  object qryLU_Artikel: TADOQuery
    Connection = dm.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select a.Id ArtikelId,a.*,cnt='
      '(select count(*) from orderrad where Artikelid = a.id)'
      ' from Artikel a'
      'order by a.Artikelnummer')
    Left = 821
    Top = 529
    object qryLU_ArtikelArtikelId: TAutoIncField
      FieldName = 'ArtikelId'
      ReadOnly = True
    end
    object qryLU_ArtikelId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryLU_ArtikelArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Size = 30
    end
    object qryLU_ArtikelBeteckning: TStringField
      FieldName = 'Beteckning'
      Size = 200
    end
    object qryLU_Artikel_YtbehandlingIDdefault: TStringField
      FieldName = '_YtbehandlingIDdefault'
      Size = 5
    end
    object qryLU_ArtikelYtbehandlingIdDefault: TIntegerField
      FieldName = 'YtbehandlingIdDefault'
    end
    object qryLU_ArtikelKundID: TIntegerField
      FieldName = 'KundID'
    end
    object qryLU_ArtikelPDFFinns: TIntegerField
      FieldName = 'PDFFinns'
    end
    object qryLU_ArtikelPDFFilnamn: TStringField
      FieldName = 'PDFFilnamn'
      Size = 100
    end
    object qryLU_ArtikelLagersaldo: TBCDField
      FieldName = 'Lagersaldo'
      Precision = 18
      Size = 0
    end
    object qryLU_ArtikelLagerplats: TStringField
      FieldName = 'Lagerplats'
    end
    object qryLU_Artikelcnt: TIntegerField
      FieldName = 'cnt'
      ReadOnly = True
    end
  end
  object qryOrderHistory: TADOQuery
    Connection = dm.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ArtikelID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'KundID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ' '
      'Select a.artikelnummer,y.Beteckning,orderrad.* ,o.*,'
      '        convert(char(10),datum,120) Kortdatum ,'
      '        a.YtbehandlingIDDefault'
      'from orderrad'
      'join artikel a on a.id = orderrad.artikelID'
      'join orderhuvud o on o.ID = orderrad.orderID'
      'left Join Ytbehandling y on y.ID = orderrad.YtbehandlingID'
      'where orderrad.artikelid = :artikelId'
      'and o.Kundid=:KundID'
      'and o.Kundid=1'
      
        'order by o.ordertyp desc ,orderrad.sortorder desc,orderrad.Datum' +
        ' desc'
      ''
      ' '
      ' ')
    Left = 900
    Top = 529
    object qryOrderHistoryartikelnummer: TStringField
      FieldName = 'artikelnummer'
      Size = 30
    end
    object qryOrderHistoryBeteckning: TStringField
      FieldName = 'Beteckning'
      Size = 50
    end
    object qryOrderHistoryId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryOrderHistoryOrderID: TIntegerField
      FieldName = 'OrderID'
    end
    object qryOrderHistoryArtikelID: TIntegerField
      FieldName = 'ArtikelID'
    end
    object qryOrderHistoryRadNr: TIntegerField
      FieldName = 'RadNr'
    end
    object qryOrderHistoryPositionnummer: TIntegerField
      FieldName = 'Positionnummer'
    end
    object qryOrderHistoryAntal: TBCDField
      FieldName = 'Antal'
      Precision = 19
      Size = 2
    end
    object qryOrderHistoryPrisPerEnhet: TBCDField
      FieldName = 'PrisPerEnhet'
      Precision = 19
    end
    object qryOrderHistoryPrisPerEnhetAuto: TBCDField
      FieldName = 'PrisPerEnhetAuto'
      Precision = 19
    end
    object qryOrderHistoryDatum: TDateTimeField
      FieldName = 'Datum'
    end
    object qryOrderHistoryYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
    end
    object qryOrderHistory_YtbehandlingID: TStringField
      FieldName = '_YtbehandlingID'
      Size = 5
    end
    object qryOrderHistoryOrderInfo: TStringField
      FieldName = 'OrderInfo'
      Size = 50
    end
    object qryOrderHistoryAvrapporteradDatum: TDateTimeField
      FieldName = 'AvrapporteradDatum'
    end
    object qryOrderHistoryAvrapporterad: TBooleanField
      FieldName = 'Avrapporterad'
    end
    object qryOrderHistoryTotaltid: TIntegerField
      FieldName = 'Totaltid'
    end
    object qryOrderHistoryVikt: TFloatField
      FieldName = 'Vikt'
    end
    object qryOrderHistoryAvrapporteradPersonID: TIntegerField
      FieldName = 'AvrapporteradPersonID'
    end
    object qryOrderHistorySortorder: TIntegerField
      FieldName = 'Sortorder'
      ReadOnly = True
    end
    object qryOrderHistoryAvrapporteradPlasmatid: TIntegerField
      FieldName = 'AvrapporteradPlasmatid'
    end
    object qryOrderHistoryAvrapporteradAntalStarter: TIntegerField
      FieldName = 'AvrapporteradAntalStarter'
    end
    object qryOrderHistoryAvrapporteradAntalRitningar: TIntegerField
      FieldName = 'AvrapporteradAntalRitningar'
    end
    object qryOrderHistoryFrnLager: TBCDField
      FieldName = 'Fr'#229'nLager'
      Precision = 10
      Size = 0
    end
    object qryOrderHistoryAttProducera: TBCDField
      FieldName = 'AttProducera'
      Precision = 10
      Size = 0
    end
    object qryOrderHistoryTillLager: TBCDField
      FieldName = 'TillLager'
      Precision = 10
      Size = 0
    end
    object qryOrderHistorySkrotandelProcent: TBCDField
      FieldName = 'SkrotandelProcent'
      Precision = 18
      Size = 0
    end
    object qryOrderHistoryLagerplats: TStringField
      FieldName = 'Lagerplats'
      Size = 10
    end
    object qryOrderHistoryRitning1: TBlobField
      FieldName = 'Ritning1'
    end
    object qryOrderHistoryFljesedelId: TIntegerField
      FieldName = 'F'#246'ljesedelId'
    end
    object qryOrderHistoryId_1: TAutoIncField
      FieldName = 'Id_1'
      ReadOnly = True
    end
    object qryOrderHistoryKundID: TIntegerField
      FieldName = 'KundID'
    end
    object qryOrderHistoryOrderNummer: TStringField
      FieldName = 'OrderNummer'
      Size = 30
    end
    object qryOrderHistoryOrderdatum: TDateTimeField
      FieldName = 'Orderdatum'
    end
    object qryOrderHistoryGodsmrke: TStringField
      FieldName = 'Godsm'#228'rke'
      Size = 50
    end
    object qryOrderHistoryReferens: TStringField
      FieldName = 'Referens'
      Size = 50
    end
    object qryOrderHistoryReferensID: TIntegerField
      FieldName = 'ReferensID'
    end
    object qryOrderHistoryOrdertypId: TIntegerField
      FieldName = 'OrdertypId'
    end
    object qryOrderHistoryOrdertyp: TStringField
      FieldName = 'Ordertyp'
      FixedChar = True
      Size = 1
    end
    object qryOrderHistoryOrderstatus: TStringField
      FieldName = 'Orderstatus'
      FixedChar = True
      Size = 1
    end
    object qryOrderHistoryOrderstatusId: TIntegerField
      FieldName = 'OrderstatusId'
    end
    object qryOrderHistoryLeveransdatum: TDateTimeField
      FieldName = 'Leveransdatum'
    end
    object qryOrderHistoryFakturaNummer: TStringField
      FieldName = 'FakturaNummer'
    end
    object qryOrderHistoryFakturadatum: TDateTimeField
      FieldName = 'Fakturadatum'
    end
    object qryOrderHistoryFritext: TStringField
      FieldName = 'Fritext'
      Size = 2000
    end
    object qryOrderHistoryKortdatum: TStringField
      FieldName = 'Kortdatum'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryOrderHistoryYtbehandlingIDDefault: TIntegerField
      FieldName = 'YtbehandlingIDDefault'
    end
  end
  object qryLU_Ytbehandling: TADOQuery
    Connection = dm.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Ytbehandling order by Sortorder')
    Left = 997
    Top = 532
    object qryLU_YtbehandlingId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryLU_YtbehandlingYtbehandlingsID: TStringField
      FieldName = 'YtbehandlingsID'
      Size = 5
    end
    object qryLU_YtbehandlingBeteckning: TStringField
      FieldName = 'Beteckning'
      Size = 50
    end
    object qryLU_YtbehandlingSortorder: TSmallintField
      FieldName = 'Sortorder'
    end
  end
end
