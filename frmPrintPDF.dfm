object Form1: TForm1
  Left = 429
  Top = 228
  Width = 456
  Height = 389
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 448
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 268
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Skriv ut'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 356
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Avbryt'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 448
    Height = 280
    Align = alClient
    BorderWidth = 10
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 11
      Top = 11
      Width = 426
      Height = 258
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      ControlType.Strings = (
        'C_PDFFinns;CheckBox;True;False')
      Selected.Strings = (
        'Artikelnummer'#9'12'#9'Artikelnummer'
        'Beteckning'#9'22'#9'Beteckning'
        'Antal'#9'8'#9'Antal'
        'C_PDFFinns'#9'19'#9'             Ritning'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 41
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 2
  end
  object ADOQuery1: TADOQuery
    Connection = frmMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'OrderID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from orderrad orad'
      'join Artikel a on a.artikelid = orad.ArtikelID'
      'where OrderID = :OrderID')
    Left = 224
    Top = 105
    object ADOQuery1Artikelnummer: TStringField
      DisplayWidth = 12
      FieldName = 'Artikelnummer'
      FixedChar = True
      Size = 30
    end
    object ADOQuery1Beteckning: TStringField
      DisplayWidth = 22
      FieldName = 'Beteckning'
      Size = 200
    end
    object ADOQuery1Antal: TBCDField
      DisplayWidth = 8
      FieldName = 'Antal'
      Precision = 19
      Size = 2
    end
    object ADOQuery1C_PDFFinns: TBooleanField
      DisplayLabel = '             Ritning'
      DisplayWidth = 19
      FieldKind = fkCalculated
      FieldName = 'C_PDFFinns'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 148
    Top = 177
  end
end
