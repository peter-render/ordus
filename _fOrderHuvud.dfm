object frmOrderHuvud: TfrmOrderHuvud
  Left = 357
  Top = 302
  ActiveControl = wwDBGrid1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmOrderHuvud'
  ClientHeight = 577
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 577
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 772
      Height = 27
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 112
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Orderlista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 113
        Top = 1
        Width = 658
        Height = 25
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel4'
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 658
          Height = 25
          Align = alClient
          ButtonHeight = 21
          ButtonWidth = 114
          Caption = 'ToolBar1'
          Color = clBtnFace
          EdgeInner = esNone
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          ShowCaptions = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = ' Ny beställning / offert '
            ImageIndex = 0
            OnClick = ToolButton1Click
          end
          object ToolButton2: TToolButton
            Left = 114
            Top = 0
            Caption = 'Skriv ut best./ offert'
            ImageIndex = 3
            OnClick = ToolButton2Click
          end
          object ToolButton5: TToolButton
            Left = 228
            Top = 0
            Caption = 'Faktura-datum'
            ImageIndex = 3
            OnClick = ToolButton5Click
          end
          object ToolButton6: TToolButton
            Left = 342
            Top = 0
            Caption = 'Prissättning'
            ImageIndex = 3
            OnClick = ToolButton6Click
          end
          object ToolButton3: TToolButton
            Left = 456
            Top = 0
            Caption = 'Tar bort '
            ImageIndex = 2
            OnClick = ToolButton3Click
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 27
      Width = 772
      Height = 550
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      Caption = 'Panel5'
      Color = 15329769
      TabOrder = 1
      object wwDBGrid1: TwwDBGrid
        Left = 5
        Top = 5
        Width = 762
        Height = 540
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        Selected.Strings = (
          'OrderID'#9'6'#9'OrderNr'#9#9
          'oTyp'#9'11'#9'Typ'#9#9
          'Kundnamn'#9'13'#9'Kundnamn'#9#9
          'OrderNummer'#9'11'#9'Best-nummer'#9#9
          'Godsmärke'#9'17'#9'Godsmärke'#9#9
          'Referens'#9'21'#9'Referens'#9#9
          'Leveransdatum'#9'12'#9'Leveransdatum'#9#9
          'Antalprissatt'#9'10'#9'Prissatt/Totalt'#9'F'#9
          'Fakturadatum'#9'13'#9'Fakturadatum'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = False
        Align = alClient
        Color = clWhite
        DataSource = dsoOrder
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnDblClick = wwDBGrid1DblClick
        PadColumnStyle = pcsPadHeader
      end
    end
  end
  object dsoOrder: TDataSource
    AutoEdit = False
    DataSet = qryOrder
    Left = 380
    Top = 76
  end
  object sp_OrderDelete: TADOStoredProc
    Connection = frmMain.ADOConnection1
    ProcedureName = 'OrderDelete;1'
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
      end>
    Left = 396
    Top = 272
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 163
  end
  object qryOrder: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select *, oTyp= (case Ordertyp when '#39'B'#39' then '#39'Beställning'#39' when ' +
        #39'O'#39' then '#39'Offert'#39' end)'
      
        ',Antalprissatt = cast((Select count(*) from OrderRad where isnul' +
        'l(PrisperEnhet,0) <> 0  and orderid = oh.orderID ) as varchar(4)' +
        ') + '#39'/'#39'+'
      
        'cast((Select count(*) from OrderRad where orderid = oh.orderID) ' +
        'as varchar(4))'
      ''
      'from orderhuvud oh'
      'join kund k on oh.kundid = k.kundid'
      'where ordertyp <> '#39'H'#39'  -- Historik'
      'order by Orderid desc'
      ''
      ''
      ' '
      ' '
      ''
      ' ')
    Left = 232
    Top = 91
    object qryOrderOrderID: TAutoIncField
      DisplayLabel = 'OrderNr'
      DisplayWidth = 6
      FieldName = 'OrderID'
      ReadOnly = True
    end
    object qryOrderoTyp: TStringField
      DisplayLabel = 'Typ'
      DisplayWidth = 11
      FieldName = 'oTyp'
      ReadOnly = True
      Size = 11
    end
    object qryOrderKundnamn: TStringField
      DisplayWidth = 13
      FieldName = 'Kundnamn'
      Size = 50
    end
    object qryOrderOrderNummer: TStringField
      DisplayLabel = 'Best-nummer'
      DisplayWidth = 11
      FieldName = 'OrderNummer'
      Size = 30
    end
    object qryOrderGodsmrke: TStringField
      DisplayWidth = 17
      FieldName = 'Godsmärke'
      Size = 50
    end
    object qryOrderReferens: TStringField
      DisplayWidth = 21
      FieldName = 'Referens'
      Size = 50
    end
    object qryOrderLeveransdatum: TDateTimeField
      DisplayWidth = 12
      FieldName = 'Leveransdatum'
    end
    object qryOrderAntalprissatt: TStringField
      DisplayLabel = 'Prissatt/Totalt'
      DisplayWidth = 10
      FieldName = 'Antalprissatt'
      ReadOnly = True
      Size = 9
    end
    object qryOrderFakturadatum: TDateTimeField
      DisplayWidth = 13
      FieldName = 'Fakturadatum'
    end
    object qryOrderOrderdatum: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Orderdatum'
      Visible = False
    end
    object qryOrderOrdertyp: TStringField
      DisplayWidth = 6
      FieldName = 'Ordertyp'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryOrderFakturaNummer: TStringField
      DisplayWidth = 12
      FieldName = 'FakturaNummer'
      Visible = False
    end
    object qryOrderKundID: TIntegerField
      DisplayWidth = 6
      FieldName = 'KundID'
      Visible = False
    end
  end
end
