object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
    object Button1: TButton
    Left = 284
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object qry1: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (

        'select a1.Id a1id, a1.Artikelnummer,a1.Beteckning,a2.Id a2id,a2.' +
        'Artikelnummer,a2.Beteckning from Artikel a1'

        'outer apply (select top 1 Id,artikelnummer,Beteckning from artik' +
        'el where Artikelnummer = replace(a1.artikelnummer,'#39' '#39','#39#39')) a2'
      'where '

        'a1.kundid = 1 and substring(a1.artikelnummer,4,1) = '#39' '#39' and DATA' +
        'LENGTH(a1.artikelnummer ) = 7'
      'and a2.id is not null'
      '')
    Left = 140
    Top = 40
    object qry1a1id: TFDAutoIncField
      FieldName = 'a1id'
      Origin = 'a1id'
      ReadOnly = True
    end
    object qry1Artikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qry1Beteckning: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qry1a2id: TFDAutoIncField
      FieldName = 'a2id'
      Origin = 'a2id'
      ReadOnly = True
    end
    object qry1Artikelnummer_1: TStringField
      FieldName = 'Artikelnummer_1'
      Origin = 'Artikelnummer'
      Size = 30
    end
    object qry1Beteckning_1: TStringField
      FieldName = 'Beteckning_1'
      Origin = 'Beteckning'
      Size = 200
    end
  end
  object qry2: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'update artikel set Borttagen = getdate() where Id = :a2Id'
      'Update orderrad set ArtikelID = :a1Id where artikelid = :a2Id'

        'update artikelgrupp set Artikelid = :a1Id where artikelid = :a2i' +
        'd'

        'update artikelgrupp set UnderartikelId = :a1Id where Underartike' +
        'lId = :a2id'
      '')
    Left = 144
    Top = 164
    ParamData = <
      item
        Name = 'A2ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'A1ID'
        ParamType = ptInput
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'a1id'
      Origin = 'a1id'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object FDAutoIncField2: TFDAutoIncField
      FieldName = 'a2id'
      Origin = 'a2id'
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'Artikelnummer_1'
      Origin = 'Artikelnummer'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'Beteckning_1'
      Origin = 'Beteckning'
      Size = 200
    end
  end

end
