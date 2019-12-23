object frmOrderStatusUpdate: TfrmOrderStatusUpdate
  Left = 544
  Top = 365
  BorderStyle = bsDialog
  Caption = #196'ndra orderstatus'
  ClientHeight = 155
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBText1: TDBText
    Left = 109
    Top = 17
    Width = 71
    Height = 19
    DataField = 'OrderID'
    DataSource = frmOrderLista.dsoOrderlist
  end
  object Label1: TLabel
    Left = 43
    Top = 17
    Width = 48
    Height = 15
    Caption = 'Ordernr:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Status: TLabel
    Left = 47
    Top = 56
    Width = 40
    Height = 15
    Caption = 'Status:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 111
    Width = 416
    Height = 44
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      416
      44)
    object Button1: TButton
      Left = 233
      Top = 9
      Width = 80
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = 'Spara'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 323
      Top = 9
      Width = 81
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = 'Avbryt'
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object LU_Orderstatus: TwwDBLookupCombo
    Left = 109
    Top = 53
    Width = 245
    Height = 22
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Beteckning'#9'50'#9'Beteckning'#9'F')
    LookupTable = qryLU_orderstatus
    LookupField = 'Id'
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
  end
  object qryLU_orderstatus: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      
        'Select * from dbo.OrderStatus where '#196'rStatus = 1 order by Sortor' +
        'der')
    Left = 232
    Top = 12
    object qryLU_orderstatusBeteckning: TStringField
      DisplayWidth = 50
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Required = True
      Size = 50
    end
    object qryLU_orderstatusId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object qryLU_orderstatusOrderstatus: TStringField
      FieldName = 'Orderstatus'
      Origin = 'Orderstatus'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qryLU_orderstatusSortorder: TSmallintField
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      Required = True
      Visible = False
    end
    object qryLU_orderstatusBGColor: TStringField
      FieldName = 'BGColor'
      Origin = 'BGColor'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
end
