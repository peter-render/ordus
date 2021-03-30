inherited dlgRitningsnoteringNy: TdlgRitningsnoteringNy
  Caption = 'Ny ritningsnotering'
  ClientHeight = 306
  ClientWidth = 489
  ExplicitWidth = 495
  ExplicitHeight = 335
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 265
    Width = 489
    inherited Button1: TButton
      Left = 322
      Default = True
    end
    inherited Button2: TButton
      Left = 404
    end
  end
  inherited Panel3: TPanel
    Width = 489
    Height = 265
    ExplicitTop = 2
    ExplicitWidth = 489
    ExplicitHeight = 297
    object Label1: TLabel
      Left = 28
      Top = 31
      Width = 30
      Height = 13
      Caption = 'Artikel'
    end
    object Notering: TLabel
      Left = 28
      Top = 68
      Width = 41
      Height = 13
      Caption = 'Notering'
    end
    object luArtikel: TwwDBLookupCombo
      Left = 77
      Top = 28
      Width = 360
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Artikelnummer'#9'20'#9'Artikelnummer'#9'F'
        'Beteckning'#9'50'#9'Beteckning'#9'F')
      LookupTable = qryArtikel
      LookupField = 'Lookup'
      DropDownCount = 20
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnCloseUp = luArtikelCloseUp
    end
    object Memo: TMemo
      Left = 75
      Top = 65
      Width = 362
      Height = 168
      TabOrder = 1
    end
  end
  object qryArtikel: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select Id,'
      'Artikelnummer, Beteckning, '
      'Artikelnummer +'#39' '#39'+ Beteckning Lookup,Notering '
      'from artikel order by Artikelnummer')
    Left = 408
    Top = 20
    object qryArtikelArtikelnummer: TStringField
      DisplayWidth = 20
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 30
    end
    object qryArtikelBeteckning: TStringField
      DisplayWidth = 50
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object qryArtikelNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      Visible = False
      BlobType = ftMemo
      Size = 2147483647
    end
    object qryArtikelLookup: TStringField
      FieldName = 'Lookup'
      Origin = 'Lookup'
      ReadOnly = True
      Visible = False
      Size = 231
    end
    object qryArtikelId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
  end
  object qryUpdate: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Update Artikel set Notering = :Memo where id = :Id')
    Left = 212
    Top = 156
    ParamData = <
      item
        Name = 'MEMO'
        DataType = ftMemo
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
