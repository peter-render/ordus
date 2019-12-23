object frmOrder: TfrmOrder
  Left = 291
  Top = 118
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Beställning'
  ClientHeight = 810
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 179
    Top = 6
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Kund:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 222
    Top = 6
    Width = 65
    Height = 17
    DataField = 'Kundnamn'
    DataSource = dsoOrder
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 810
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 843
      Height = 43
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 158
        Top = 6
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kund:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 372
        Top = 6
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Beställnings-nr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 157
        Top = 23
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Referens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 372
        Top = 23
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Godsmärke:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 222
        Top = 6
        Width = 65
        Height = 17
        DataField = 'Kundnamn'
        DataSource = dsoOrder
      end
      object DBText3: TDBText
        Left = 222
        Top = 23
        Width = 147
        Height = 17
        DataField = 'Namn'
        DataSource = dsoOrder
      end
      object DBText4: TDBText
        Left = 464
        Top = 6
        Width = 65
        Height = 17
        DataField = 'OrderNummer'
        DataSource = dsoOrder
      end
      object DBText5: TDBText
        Left = 464
        Top = 23
        Width = 65
        Height = 17
        DataField = 'Godsmärke'
        DataSource = dsoOrder
      end
      object Label10: TLabel
        Left = 10
        Top = 6
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ordernr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 66
        Top = 6
        Width = 65
        Height = 17
        DataField = 'OrderID'
        DataSource = dsoOrder
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 405
      Width = 843
      Height = 404
      Align = alClient
      BorderWidth = 10
      Caption = 'Panel4'
      TabOrder = 1
      object wwDBGrid1: TwwDBGrid
        Left = 11
        Top = 11
        Width = 578
        Height = 382
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        PictureMasks.Strings = (
          'Artikelnummer'#9'### ###'#9'T'#9'T')
        Selected.Strings = (
          'Positionnummer'#9'2'#9'Pnr'#9'F'
          'Artikelnummer'#9'15'#9'Artikelnummer'#9#9
          'Beteckning'#9'18'#9'Beteckning'#9#9
          'PrisPerEnhet'#9'18'#9'              PrisPerEnhet'#9#9
          'Antal'#9'12'#9'              Antal'#9#9
          'Beteckning_1'#9'50'#9'Ytbehandling'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        DataSource = dsoOrderrad
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = wwDBGrid1DblClick
        PadColumnStyle = pcsPadHeader
      end
      object btnDelete: TButton
        Left = 600
        Top = 43
        Width = 121
        Height = 25
        Caption = 'Ta bort rad'
        TabOrder = 1
        OnClick = btnDeleteClick
      end
      object btnEdit: TButton
        Left = 600
        Top = 12
        Width = 121
        Height = 25
        Caption = 'Ändra rad '
        TabOrder = 2
        OnClick = wwDBGrid1DblClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 44
      Width = 843
      Height = 361
      Align = alTop
      TabOrder = 2
      object Panel1: TPanel
        Left = 524
        Top = 1
        Width = 318
        Height = 359
        Align = alRight
        Caption = 'Panel1'
        TabOrder = 0
        object wwDBGrid2: TwwDBGrid
          Left = 10
          Top = 7
          Width = 361
          Height = 193
          TabStop = False
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'Ordertyp'#9'3'#9'Typ'#9#9
            'Kortdatum'#9'13'#9'Datum'#9#9
            'Antal'#9'6'#9'Antal'#9#9
            'PrisPerEnhet'#9'11'#9'PrisPerEnhet'#9#9
            'Beteckning'#9'10'#9'Beteckning'#9#9
            'OrderInfo'#9'50'#9'Info'#9#9)
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsoOrderHistory
          Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnCalcCellColors = wwDBGrid2CalcCellColors
          OnMouseDown = wwDBGrid2MouseDown
          PadColumnStyle = pcsPadHeader
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 476
        Height = 359
        Caption = 'Panel6'
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 474
          Height = 61
          Align = alTop
          TabOrder = 0
          object Bevel1: TBevel
            Left = 176
            Top = 28
            Width = 221
            Height = 20
          end
          object Label5: TLabel
            Left = 20
            Top = 32
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Artikel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
          object DBText1: TDBText
            Left = 202
            Top = 31
            Width = 163
            Height = 15
            DataField = 'Beteckning'
            DataSource = dsoLU_Artikel
            Enabled = False
          end
          object Label8: TLabel
            Left = 11
            Top = 8
            Width = 67
            Height = 13
            Caption = 'Ny orderrad'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtArtikel: TwwDBLookupCombo
            Left = 56
            Top = 28
            Width = 120
            Height = 21
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Artikelnummer'#9'20'#9'Artikelnummer'#9'F'
              'Beteckning'#9'30'#9'Beteckning'#9'F'
              'cnt'#9'10'#9'Antal    '#9'F')
            LookupTable = qryLU_Artikel
            LookupField = 'ArtikelID'
            DropDownCount = 20
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnCloseUp = edtArtikelCloseUp
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 131
          Width = 474
          Height = 181
          Align = alBottom
          Caption = 'Panel8'
          TabOrder = 1
          object Label7: TLabel
            Left = 20
            Top = 13
            Width = 17
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pris'
          end
          object Label6: TLabel
            Left = 17
            Top = 39
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Antal'
          end
          object edtPris: TEdit
            Left = 64
            Top = 8
            Width = 85
            Height = 21
            TabOrder = 0
            OnChange = edtPrisChange
            OnKeyPress = edtAntalKeyPress
          end
          object edtAntal: TEdit
            Left = 64
            Top = 36
            Width = 85
            Height = 21
            TabOrder = 1
            OnChange = edtPrisChange
            OnKeyPress = edtAntalKeyPress
          end
          object RG: TwwRadioGroup
            Left = 40
            Top = 60
            Width = 185
            Height = 105
            DisableThemes = False
            Caption = 'RG'
            DataField = 'YtbehandlingID'
            DataSource = dsoOrderrad
            TabOrder = 2
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 312
          Width = 474
          Height = 46
          Align = alBottom
          Caption = 'Panel9'
          TabOrder = 2
          object btnAvbryt: TButton
            Left = 301
            Top = 12
            Width = 77
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Avbryt'
            Enabled = False
            TabOrder = 0
            OnClick = btnAvbrytClick
          end
          object btnSpara: TButton
            Left = 385
            Top = 12
            Width = 77
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Spara'
            Enabled = False
            TabOrder = 1
            OnClick = btnSparaClick
          end
        end
      end
    end
  end
  object qryOrderrad: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    DataSource = dsoOrder
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
      'join Artikel a on orad.artikelID = a.artikelid'
      'join orderhuvud oh on oh.orderid = orad.orderid'
      'join Kund k on k.Kundid = oh.kundid'
      'join Ytbehandling yb on orad.YtbehandlingID = yb.YtbehandlingID'
      'where oh.OrderID = :OrderID'
      'order by Radnr desc'
      ' '
      ' ')
    Left = 417
    Top = 53
    object qryOrderradPositionnummer: TIntegerField
      DisplayLabel = 'Pnr'
      DisplayWidth = 2
      FieldName = 'Positionnummer'
    end
    object qryOrderradArtikelnummer: TStringField
      DisplayWidth = 15
      FieldName = 'Artikelnummer'
      FixedChar = True
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
      DisplayFormat = '### ##0.00  '
      Precision = 19
    end
    object qryOrderradAntal: TBCDField
      DisplayLabel = '              Antal'
      DisplayWidth = 12
      FieldName = 'Antal'
      DisplayFormat = '####.##  '
      Precision = 19
      Size = 2
    end
    object qryOrderradBeteckning_1: TStringField
      DisplayLabel = 'Ytbehandling'
      DisplayWidth = 50
      FieldName = 'Beteckning_1'
      Size = 50
    end
    object qryOrderradRadNr: TAutoIncField
      DisplayLabel = 'Rad'
      DisplayWidth = 4
      FieldName = 'RadNr'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradYtbehandlingID: TStringField
      DisplayWidth = 23
      FieldName = 'YtbehandlingID'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object qryOrderradOrderID_1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'OrderID_1'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradKundID_1: TIntegerField
      DisplayWidth = 10
      FieldName = 'KundID_1'
      Visible = False
    end
    object qryOrderradLeveransdatum: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Leveransdatum'
      Visible = False
    end
    object qryOrderradKundID_2: TAutoIncField
      DisplayWidth = 10
      FieldName = 'KundID_2'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradRitning1: TBlobField
      DisplayWidth = 10
      FieldName = 'Ritning1'
      Visible = False
      BlobType = ftBlob
    end
    object qryOrderradDatum: TDateTimeField
      DisplayWidth = 12
      FieldName = 'Datum'
      Visible = False
      DisplayFormat = 'yyyy-mm-dd'
    end
    object qryOrderradArtikelID_1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ArtikelID_1'
      ReadOnly = True
      Visible = False
    end
    object qryOrderradOrderID: TIntegerField
      DisplayWidth = 10
      FieldName = 'OrderID'
      Visible = False
    end
    object qryOrderradArtikelID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ArtikelID'
      Visible = False
    end
    object qryOrderradYtbehandlingIDdefault: TStringField
      FieldName = 'YtbehandlingIDdefault'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object qryOrderradKundID: TIntegerField
      FieldName = 'KundID'
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
      FieldName = 'Godsmärke'
      Visible = False
      Size = 50
    end
    object qryOrderradReferens: TStringField
      FieldName = 'Referens'
      Visible = False
      Size = 50
    end
    object qryOrderradOrdertyp: TStringField
      FieldName = 'Ordertyp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryOrderradKundnamn: TStringField
      FieldName = 'Kundnamn'
      Visible = False
      Size = 50
    end
  end
  object dsoOrderrad: TDataSource
    DataSet = qryOrderrad
    Left = 501
    Top = 37
  end
  object qryLU_Artikel: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select a.*,cnt='
      '(select count(*) from orderrad where Artikelid = a.artikelid)'
      ' from Artikel a'
      'order by a.Artikelnummer')
    Left = 545
    Top = 21
    object qryLU_ArtikelArtikelnummer: TStringField
      DisplayWidth = 20
      FieldName = 'Artikelnummer'
      FixedChar = True
      Size = 30
    end
    object qryLU_ArtikelBeteckning: TStringField
      DisplayWidth = 30
      FieldName = 'Beteckning'
      Size = 200
    end
    object qryLU_Artikelcnt: TIntegerField
      DisplayLabel = 'Antal    '
      DisplayWidth = 10
      FieldName = 'cnt'
      ReadOnly = True
      DisplayFormat = '### ###   '
    end
    object qryLU_ArtikelArtikelID: TAutoIncField
      FieldName = 'ArtikelID'
      ReadOnly = True
      Visible = False
    end
    object qryLU_ArtikelYtbehandlingIDdefault: TStringField
      FieldName = 'YtbehandlingIDdefault'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object qryLU_ArtikelKundID: TIntegerField
      FieldName = 'KundID'
    end
  end
  object dsoLU_Artikel: TDataSource
    DataSet = qryLU_Artikel
    Left = 457
    Top = 17
  end
  object qryOrderHistory: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    DataSource = dsoLU_Artikel
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
      'Select a.artikelnummer,y.Beteckning,orderrad.* ,o.*,'
      '        convert(char(10),datum,120) Kortdatum ,'
      '        a.YtbehandlingIDDefault'
      'from orderrad'
      'join artikel a on a.artikelid = orderrad.artikelID'
      'join orderhuvud o on o.orderID = orderrad.orderID'
      
        'left Join Ytbehandling y on y.YtbehandlingID = orderrad.Ytbehand' +
        'lingID'
      'where orderrad.artikelid = :ArtikelID'
      'and o.Kundid=:KundID'
      
        'order by o.ordertyp desc ,orderrad.sortorder desc,orderrad.Datum' +
        ' desc'
      ''
      ' '
      ' ')
    Left = 624
    Top = 117
    object qryOrderHistoryOrdertyp: TStringField
      DisplayLabel = 'Typ'
      DisplayWidth = 3
      FieldName = 'Ordertyp'
      FixedChar = True
      Size = 1
    end
    object qryOrderHistoryKortdatum: TStringField
      DisplayLabel = 'Datum'
      DisplayWidth = 13
      FieldName = 'Kortdatum'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryOrderHistoryAntal: TFloatField
      DisplayWidth = 6
      FieldName = 'Antal'
      DisplayFormat = '####  '
    end
    object qryOrderHistoryPrisPerEnhet: TBCDField
      DisplayWidth = 11
      FieldName = 'PrisPerEnhet'
      DisplayFormat = '### ##0.00 '
      Precision = 19
    end
    object qryOrderHistoryBeteckning: TStringField
      DisplayWidth = 10
      FieldName = 'Beteckning'
      Size = 50
    end
    object qryOrderHistoryOrderInfo: TStringField
      DisplayLabel = 'Info'
      DisplayWidth = 50
      FieldName = 'OrderInfo'
      Size = 50
    end
    object qryOrderHistoryartikelnummer: TStringField
      DisplayWidth = 30
      FieldName = 'artikelnummer'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object qryOrderHistoryYtbehandlingID: TStringField
      DisplayLabel = 'Yta'
      DisplayWidth = 5
      FieldName = 'YtbehandlingID'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object qryOrderHistoryOrderID_1: TAutoIncField
      DisplayWidth = 10
      FieldName = 'OrderID_1'
      ReadOnly = True
      Visible = False
    end
    object qryOrderHistoryKundID: TIntegerField
      DisplayWidth = 10
      FieldName = 'KundID'
      Visible = False
    end
    object qryOrderHistoryOrderNummer: TStringField
      DisplayWidth = 30
      FieldName = 'OrderNummer'
      Visible = False
      Size = 30
    end
    object qryOrderHistoryOrderdatum: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Orderdatum'
      Visible = False
    end
    object qryOrderHistoryGodsmrke: TStringField
      DisplayWidth = 50
      FieldName = 'Godsmärke'
      Visible = False
      Size = 50
    end
    object qryOrderHistoryReferens: TStringField
      DisplayWidth = 50
      FieldName = 'Referens'
      Visible = False
      Size = 50
    end
    object qryOrderHistoryLeveransdatum: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Leveransdatum'
      Visible = False
    end
    object qryOrderHistoryDatum: TDateTimeField
      DisplayWidth = 14
      FieldName = 'Datum'
      Visible = False
    end
    object qryOrderHistoryOrderID: TIntegerField
      DisplayWidth = 10
      FieldName = 'OrderID'
      Visible = False
    end
    object qryOrderHistoryRadNr: TAutoIncField
      DisplayWidth = 10
      FieldName = 'RadNr'
      ReadOnly = True
      Visible = False
    end
    object qryOrderHistoryPositionnummer: TIntegerField
      DisplayWidth = 10
      FieldName = 'Positionnummer'
      Visible = False
    end
    object qryOrderHistoryArtikelID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ArtikelID'
      Visible = False
    end
    object qryOrderHistoryYtbehandlingIDDefault: TStringField
      DisplayWidth = 5
      FieldName = 'YtbehandlingIDDefault'
      Visible = False
      FixedChar = True
      Size = 5
    end
  end
  object dsoOrderHistory: TDataSource
    DataSet = qryOrderHistory
    Left = 658
    Top = 176
  end
  object sp_OrderRadInsert: TADOStoredProc
    Connection = frmMain.ADOConnection1
    ProcedureName = 'OrderRadInsert;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OrderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ArtikelID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Positionnummer'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Antal'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PrisPerEnhet'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@YtbehandlingID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end>
    Left = 409
    Top = 225
  end
  object PopupMenu1: TPopupMenu
    Left = 453
    Top = 269
    object Tabortorderrad1: TMenuItem
      Caption = 'Ta bort orderrad'
    end
  end
  object sp_OrderradUpdate: TADOStoredProc
    Connection = frmMain.ADOConnection1
    ProcedureName = 'OrderRadUpdate;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OrderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Radnr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ArtikelID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Antal'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PrisPerEnhet'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@YtbehandlingID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end>
    Left = 449
    Top = 229
  end
  object sp_OrderradDelete: TADOStoredProc
    Connection = frmMain.ADOConnection1
    ProcedureName = 'OrderRadDelete;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OrderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@RadNr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 365
    Top = 165
  end
  object qryLU_Ytbehandling: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Ytbehandling order by Sortorder')
    Left = 629
    Top = 456
    object qryLU_YtbehandlingYtbehandlingID: TStringField
      FieldName = 'YtbehandlingID'
      FixedChar = True
      Size = 5
    end
    object qryLU_YtbehandlingBeteckning: TStringField
      FieldName = 'Beteckning'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    Left = 649
    Top = 424
  end
  object qryOrder: TADOQuery
    Connection = frmMain.ADOConnection1
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
      'join Kund k on k.Kundid = oh.kundid'
      'left join KundPerson kp on kp.personID= oh.ReferensID'
      'where oh.OrderID = :OrderID'
      ' '
      ' ')
    Left = 633
    Top = 45
    object qryOrderOrderID: TAutoIncField
      FieldName = 'OrderID'
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
      FieldName = 'Godsmärke'
      Size = 50
    end
    object qryOrderReferens: TStringField
      FieldName = 'Referens'
      Size = 50
    end
    object qryOrderOrdertyp: TStringField
      FieldName = 'Ordertyp'
      FixedChar = True
      Size = 1
    end
    object qryOrderLeveransdatum: TDateTimeField
      FieldName = 'Leveransdatum'
    end
    object qryOrderKundID_1: TAutoIncField
      FieldName = 'KundID_1'
      ReadOnly = True
    end
    object qryOrderKundnamn: TStringField
      FieldName = 'Kundnamn'
      Size = 50
    end
    object qryOrderNamn: TStringField
      FieldName = 'Namn'
      ReadOnly = True
      Size = 101
    end
  end
  object dsoOrder: TDataSource
    DataSet = qryOrder
    Left = 689
    Top = 46
  end
  object PopupMenu2: TPopupMenu
    Left = 501
    Top = 136
    object Markerasomoffert1: TMenuItem
      Caption = 'Markera som offert'
      OnClick = Markerasomoffert1Click
    end
  end
end
