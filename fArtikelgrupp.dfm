object frmArtikelgrupp: TfrmArtikelgrupp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmArtikelgrupp'
  ClientHeight = 201
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 142
    Align = alClient
    TabOrder = 0
    object Label4: TLabel
      Left = 32
      Top = 35
      Width = 58
      Height = 13
      Caption = 'Underartikel'
    end
    object Label5: TLabel
      Left = 32
      Top = 64
      Width = 25
      Height = 13
      Caption = 'Antal'
    end
    object Label6: TLabel
      Left = 32
      Top = 93
      Width = 53
      Height = 13
      Caption = 'Leverant'#246'r'
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 96
      Top = 33
      Width = 265
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ArtikelnrBeteckning'#9'79'#9'ArtikelnrBeteckning'#9'F')
      DataField = 'UnderartikelId'
      DataSource = frmArtikel.dsoArtikelgrupp
      LookupTable = qryLU_artikel
      LookupField = 'ArtikelID'
      Style = csDropDownList
      DropDownCount = 20
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = True
      OnCloseUp = wwDBLookupCombo1CloseUp
    end
    object edtAntal: TDBEditN
      Left = 96
      Top = 60
      Width = 89
      Height = 21
      Color = clWhite
      DataField = 'Antal'
      DataSource = frmArtikel.dsoArtikelgrupp
      TabOrder = 1
      ColorOnFocus = clWhite
      ColorOnNotFocus = clHighlightText
      FontColorOnFocus = clBlack
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditKeyByTab = #9
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
      TextHint = True
    end
    object edtLeverantor: TDBEdit
      Left = 96
      Top = 87
      Width = 265
      Height = 21
      DataField = 'Leverant'#246'r'
      DataSource = frmArtikel.dsoArtikelgrupp
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 142
    Width = 506
    Height = 59
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 313
      Top = 16
      Width = 85
      Height = 25
      Caption = 'Spara'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 404
      Top = 16
      Width = 85
      Height = 25
      Caption = 'Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object qryLU_artikel: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select '
      'a.Id ArtikelId,a.Artikelnummer,a.Beteckning'
      
        ',rtrim(a.Artikelnummer) + '#39'  '#39' + a.Beteckning ArtikelnrBetecknin' +
        'g'
      'from Artikel a'
      'where Id <>:Id'
      'order by a.Artikelnummer')
    Left = 72
    Top = 128
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryLU_artikelArtikelnrBeteckning: TStringField
      DisplayWidth = 79
      FieldName = 'ArtikelnrBeteckning'
      Origin = 'ArtikelnrBeteckning'
      ReadOnly = True
      Size = 231
    end
    object qryLU_artikelBeteckning: TStringField
      DisplayWidth = 30
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Visible = False
      Size = 200
    end
    object qryLU_artikelArtikelId: TFDAutoIncField
      FieldName = 'ArtikelId'
      Origin = 'ArtikelId'
      ReadOnly = True
      Visible = False
    end
    object qryLU_artikelArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Visible = False
      Size = 30
    end
  end
end
