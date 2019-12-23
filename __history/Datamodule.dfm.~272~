object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 658
  Width = 891
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Ordus'
      'SERVER=LENOPEHO'
      'OSAuthent=Yes'
      'ApplicationName=Client/Server'
      'Workstation=LENOPEHO'
      'MARS=yes'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    LoginDialog = FDGUIxLoginDialog1
    LoginPrompt = False
    OnError = FDConnection1Error
    Left = 516
    Top = 24
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    DriverID = '1'
    ODBCDriver = 'ODBC Driver 11 for SQL Server'
    Left = 516
    Top = 84
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 524
    Top = 160
  end
  object qryLUYtbehandling: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select y.Id, y.Id YtbehandlingId,y.Beteckning,yt.antal,BGColor f' +
        'rom ytbehandling y'
      'join (select  YtbehandlingId,COUNT(*) antal from Orderrad'
      #9#9'group by ytbehandlingId) as yt  on yt.YtbehandlingId = y.Id'
      'where isnull(beteckning,'#39#39') <> '#39#39
      'order by yt.antal desc, y.Beteckning')
    Left = 700
    Top = 360
    object qryLUYtbehandlingBeteckning: TStringField
      DisplayWidth = 50
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 50
    end
    object qryLUYtbehandlingid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryLUYtbehandlingYtbehandlingId: TIntegerField
      FieldName = 'YtbehandlingId'
      Origin = 'YtbehandlingId'
      Visible = False
    end
    object qryLUYtbehandlingantal: TIntegerField
      FieldName = 'antal'
      Origin = 'antal'
      ReadOnly = True
      Visible = False
    end
    object qryLUYtbehandlingBGColor: TStringField
      FieldName = 'BGColor'
      Origin = 'BGColor'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object dsoArtikel: TDataSource
    AutoEdit = False
    DataSet = qryArtikel
    Left = 320
    Top = 196
  end
  object qryArtikel: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select a.Id ArtikelId,a.Artikelnummer,a.Beteckning Artikelbeteck' +
        'ning, a.YtbehandlingIdDefault,a.KundID,a.PDFFilnamn,'
      'a.Lagersaldo,'
      'a.PDFFinns,a.Lagerplats'
      ',k.Kundnamn,y.beteckning from Artikel a'
      'join Kund k on k.id = a.Kundid'
      'left join Ytbehandling y on y.ID = a.YtbehandlingIDDefault'
      'order by a.ArtikelNummer')
    Left = 312
    Top = 136
    object qryArtikelArtikelnummer: TStringField
      DisplayWidth = 30
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryArtikelArtikelbeteckning: TStringField
      DisplayWidth = 200
      FieldName = 'Artikelbeteckning'
      Origin = 'Artikelbeteckning'
      Size = 200
    end
    object qryArtikelYtbehandlingIdDefault: TIntegerField
      DisplayWidth = 10
      FieldName = 'YtbehandlingIdDefault'
      Origin = 'YtbehandlingIdDefault'
    end
    object qryArtikelPDFFilnamn: TStringField
      DisplayWidth = 100
      FieldName = 'PDFFilnamn'
      Origin = 'PDFFilnamn'
      Size = 100
    end
    object qryArtikelLagersaldo: TBCDField
      DisplayWidth = 19
      FieldName = 'Lagersaldo'
      Origin = 'Lagersaldo'
      Precision = 18
      Size = 0
    end
    object qryArtikelPDFFinns: TIntegerField
      DisplayWidth = 10
      FieldName = 'PDFFinns'
      Origin = 'PDFFinns'
    end
    object qryArtikelLagerplats: TStringField
      DisplayWidth = 20
      FieldName = 'Lagerplats'
      Origin = 'Lagerplats'
    end
    object qryArtikelKundnamn: TStringField
      DisplayWidth = 50
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryArtikelbeteckning: TStringField
      DisplayWidth = 50
      FieldName = 'beteckning'
      Origin = 'beteckning'
      Size = 50
    end
    object qryArtikelArtikelId: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      ReadOnly = True
      Visible = False
    end
    object qryArtikelKundID: TIntegerField
      DisplayWidth = 10
      FieldName = 'KundID'
      Origin = 'KundID'
      Visible = False
    end
  end
  object qryLU_Kund: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Id KundId, * from kund order by Kundnamn')
    Left = 48
    Top = 328
    object qryLU_KundKundnamn: TStringField
      DisplayWidth = 50
      FieldName = 'Kundnamn'
      Origin = 'Kundnamn'
      Required = True
      Size = 50
    end
    object qryLU_KundKundId: TFDAutoIncField
      FieldName = 'KundId'
      Origin = 'KundId'
      ReadOnly = True
      Visible = False
    end
    object qryLU_KundID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryLU_KundKortbeteckning: TStringField
      FieldName = 'Kortbeteckning'
      Origin = 'Kortbeteckning'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object sp: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'OrderImport'
    Left = 524
    Top = 412
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
        Name = '@Ordernummer'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = '@OrderDatum'
        DataType = ftString
        ParamType = ptInput
        Size = 16
      end
      item
        Position = 5
        Name = '@Godsm'#228'rke'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 6
        Name = '@Referens'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = '@Leveransdatum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OrderId'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_OrderRadImport: TFDStoredProc
    IndexesActive = False
    Connection = FDConnection1
    StoredProcName = 'dbo.OrderradImport'
    Left = 708
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@KundId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OrderId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Artikelnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 5
        Name = '@Artikelbeteckning'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = '@Antal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@PrisperEnhet'
        DataType = ftCurrency
        Precision = 19
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Positionnummer'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@OrderradInfo'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end>
  end
  object sp_KundpersonlistforKund: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'KundPersonListForKund'
    Left = 368
    Top = 332
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
        Value = '63'
      end>
    object sp_KundpersonlistforKundNamn: TStringField
      DisplayWidth = 101
      FieldName = 'Namn'
      Origin = 'Namn'
      ReadOnly = True
      Size = 101
    end
    object sp_KundpersonlistforKundKundpersonId: TFDAutoIncField
      FieldName = 'KundpersonId'
      Origin = 'KundpersonId'
      ReadOnly = True
      Visible = False
    end
  end
  object dsoKundPersonlistforKund: TDataSource
    AutoEdit = False
    DataSet = sp_KundpersonlistforKund
    Left = 504
    Top = 328
  end
  object FDCommand1: TFDCommand
    Connection = FDConnection1
    CommandKind = skInsert
    Left = 296
    Top = 32
  end
  object dsoPlanering: TDataSource
    AutoEdit = False
    DataSet = qryPlanering
    Left = 128
    Top = 88
  end
  object qryVecka: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT ID,[Beteckning]'
      '      ,[Kortbeteckning]'
      '      ,[Arbetsstart]'
      '      ,[Arbetsslut]'
      ''
      ',datediff(hh,Arbetsstart,Arbetsslut) AntalArbetstimmar'
      ' '
      'FROM [Ordus].[dbo].[Veckodagar]'
      'order by Id'
      '')
    Left = 52
    Top = 28
    object qryVeckaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVeckaBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Required = True
    end
    object qryVeckaKortbeteckning: TStringField
      FieldName = 'Kortbeteckning'
      Origin = 'Kortbeteckning'
      Required = True
      Size = 5
    end
    object qryVeckaArbetsstart: TStringField
      FieldName = 'Arbetsstart'
      Origin = 'Arbetsstart'
      Required = True
      Size = 5
    end
    object qryVeckaArbetsslut: TStringField
      FieldName = 'Arbetsslut'
      Origin = 'Arbetsslut'
      Required = True
      Size = 5
    end
    object qryVeckaAntalArbetstimmar: TIntegerField
      FieldName = 'AntalArbetstimmar'
      Origin = 'AntalArbetstimmar'
      ReadOnly = True
    end
  end
  object dsoVecka: TDataSource
    DataSet = qryVecka
    Left = 56
    Top = 84
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Caption = 'Ordus Login'
    HistoryWithPassword = False
    VisibleItems.Strings = (
      'Anv'#228'ndarenamn'
      'L'#246'senord')
    ChangeExpiredPassword = False
    Left = 516
    Top = 252
  end
  object spResourceDatasource: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'ResourceDatasource'
    Left = 56
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 3
      end
      item
        Position = 2
        Name = '@datum'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object spResourceDatasourceId: TIntegerField
      FieldName = 'Id'
      Origin = 'Id'
    end
    object spResourceDatasourceNamn: TStringField
      FieldName = 'Namn'
      Origin = 'Namn'
      Size = 10
    end
  end
  object dsoResourceDatasource: TDataSource
    AutoEdit = False
    DataSet = spResourceDatasource
    Left = 132
    Top = 148
  end
  object qryPlanering: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select '
      '  p.Starttid,'
      '  p.Sluttid,'
      '  p.Beteckning,'
      '  p.Color,'
      '  p.Destination,'
      '  p.Hint,'
      '  p.Avrapporterad,'
      '  p.Id,'
      '  p.OrderhuvudId,'
      '  p.ResursId,'
      
        'OrderradAvrapporteradAntal = (Select count(*) from OrderRad wher' +
        'e  avrapporteradDatum is not null and orderid = p.OrderhuvudId )'
      
        ',OrderradAntal = (Select count(*) from OrderRad where  orderid =' +
        ' p.OrderhuvudId )'
      ''
      
        '--,Fritext = NULL -- (select fritext from orderhuvud where id = ' +
        'p.OrderHuvudId)'
      'from'
      ''
      'Planering p'
      ''
      'where '
      ':VisaAlla = 1'
      ''
      'or'
      ''
      
        '(Select count(*) from OrderRad where  avrapporteradDatum is not ' +
        'null and orderid = p.OrderhuvudId) < '
      
        #9#9'(Select count(*) from OrderRad where  orderid = p.OrderhuvudId' +
        ') '
      ''
      ''
      '')
    Left = 128
    Top = 28
    ParamData = <
      item
        Name = 'VISAALLA'
        DataType = ftBoolean
        ParamType = ptInput
        Value = False
      end>
    object qryPlaneringStarttid: TStringField
      FieldName = 'Starttid'
      Origin = 'Starttid'
      Required = True
      Size = 50
    end
    object qryPlaneringSluttid: TStringField
      FieldName = 'Sluttid'
      Origin = 'Sluttid'
      Required = True
      Size = 50
    end
    object qryPlaneringBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 100
    end
    object qryPlaneringColor: TStringField
      FieldName = 'Color'
      Origin = 'Color'
      Size = 10
    end
    object qryPlaneringDestination: TIntegerField
      FieldName = 'Destination'
      Origin = 'Destination'
    end
    object qryPlaneringHint: TStringField
      FieldName = 'Hint'
      Origin = 'Hint'
      Size = 100
    end
    object qryPlaneringAvrapporterad: TSQLTimeStampField
      FieldName = 'Avrapporterad'
      Origin = 'Avrapporterad'
    end
    object qryPlaneringId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPlaneringOrderhuvudId: TIntegerField
      FieldName = 'OrderhuvudId'
      Origin = 'OrderhuvudId'
    end
    object qryPlaneringResursId: TSmallintField
      FieldName = 'ResursId'
      Origin = 'ResursId'
      Required = True
    end
    object qryPlaneringOrderradAvrapporteradAntal: TIntegerField
      FieldName = 'OrderradAvrapporteradAntal'
      Origin = 'OrderradAvrapporteradAntal'
      ReadOnly = True
    end
    object qryPlaneringOrderradAntal: TIntegerField
      FieldName = 'OrderradAntal'
      Origin = 'OrderradAntal'
      ReadOnly = True
    end
  end
  object qryLU_personal: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select Id, F'#246'rnamn + '#39' '#39' + Efternamn Namn from Personal where ak' +
        'tiv = 1'
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
  object sp_KundLookuplist: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'KundLookuplist'
    Left = 45
    Top = 260
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
  object qryGetStatusData: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Id'
      '      ,Orderstatus'
      '      ,Beteckning'
      '      ,Sortorder'
      '      ,BGColor'
      '      ,TabId'
      '      ,TabBeteckning'
      '      ,Oms'#228'ttningsgrundande'
      '      ,'#196'rStatus'
      '      ,Kr'#228'verAdmin'
      #9'  '
      'from OrderStatus '
      'where Id = :StatusId')
    Left = 716
    Top = 428
    ParamData = <
      item
        Name = 'STATUSID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryGetStatusDataId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryGetStatusDataOrderstatus: TStringField
      FieldName = 'Orderstatus'
      Origin = 'Orderstatus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryGetStatusDataBeteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Required = True
      Size = 50
    end
    object qryGetStatusDataSortorder: TSmallintField
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      Required = True
    end
    object qryGetStatusDataBGColor: TStringField
      FieldName = 'BGColor'
      Origin = 'BGColor'
      FixedChar = True
      Size = 10
    end
    object qryGetStatusDataTabId: TSmallintField
      FieldName = 'TabId'
      Origin = 'TabId'
    end
    object qryGetStatusDataTabBeteckning: TStringField
      FieldName = 'TabBeteckning'
      Origin = 'TabBeteckning'
      Size = 30
    end
    object qryGetStatusDataOmsättningsgrundande: TBooleanField
      FieldName = 'Oms'#228'ttningsgrundande'
      Origin = '[Oms'#228'ttningsgrundande]'
    end
    object qryGetStatusDataÄrStatus: TBooleanField
      FieldName = #196'rStatus'
      Origin = '['#196'rStatus]'
    end
    object qryGetStatusDataKräverAdmin: TBooleanField
      FieldName = 'Kr'#228'verAdmin'
      Origin = '[Kr'#228'verAdmin]'
    end
  end
  object DBHalfDayPeriodSource1: TDBHalfDayPeriodSource
    AutoIncKey = False
    ResourceMap = <>
    ReadOnly = False
    UpdateByQuery = False
    StartDate = 43475.000000000000000000
    EndDate = 43489.000000000000000000
    Left = 656
    Top = 168
  end
end
