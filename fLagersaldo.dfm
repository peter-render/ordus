object frmLagersaldo: TfrmLagersaldo
  Left = 435
  Top = 264
  ActiveControl = DBEditN1
  BorderStyle = bsDialog
  Caption = #196'ndra Lagersaldo'
  ClientHeight = 186
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 51
    Top = 21
    Width = 80
    Height = 13
    Caption = 'Artikelnummer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 51
    Top = 52
    Width = 65
    Height = 13
    Caption = 'Beteckning'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 51
    Top = 83
    Width = 63
    Height = 13
    Caption = 'Lagersaldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 142
    Top = 21
    Width = 180
    Height = 17
    DataField = 'Artikelnummer'
    DataSource = frmOrdusrapport2.dsoOrderrad
  end
  object DBText2: TDBText
    Left = 144
    Top = 52
    Width = 178
    Height = 17
    DataField = 'Beteckning'
    DataSource = frmOrdusrapport2.dsoOrderrad
  end
  object Label4: TLabel
    Left = 51
    Top = 114
    Width = 60
    Height = 13
    Caption = 'Lagerplats'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 441
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 339
    DesignSize = (
      441
      41)
    object Button1: TButton
      Left = 271
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Spara'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 169
    end
    object Button2: TButton
      Left = 355
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 253
    end
  end
  object DBEditN1: TDBEditN
    Left = 144
    Top = 84
    Width = 178
    Height = 21
    Color = clWhite
    DataField = 'Lagersaldo'
    DataSource = frmOrdusrapport2.dsoLagersaldo
    TabOrder = 0
    ColorOnFocus = clWhite
    ColorOnNotFocus = clWhite
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditKeyByTab = #9
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
    TextHint = True
  end
  object DBEditN2: TDBEditN
    Left = 144
    Top = 111
    Width = 178
    Height = 21
    Color = clWhite
    DataField = 'Lagerplats'
    DataSource = frmOrdusrapport2.dsoLagersaldo
    TabOrder = 1
    ColorOnFocus = clWhite
    ColorOnNotFocus = clWhite
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditKeyByTab = #9
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
    TextHint = True
  end
end
