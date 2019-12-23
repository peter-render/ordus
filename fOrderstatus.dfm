inherited frmOrderstatus: TfrmOrderstatus
  Left = 439
  Top = 284
  ActiveControl = dbGrid
  Caption = 'Orderstatus'
  ClientHeight = 538
  ClientWidth = 770
  ExplicitWidth = 776
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 651
    Height = 538
    ExplicitWidth = 651
    ExplicitHeight = 538
    inherited Bevel1: TBevel
      Width = 376
      ExplicitWidth = 376
    end
    inherited Bevel2: TBevel
      Left = 8
      Top = 416
      ExplicitLeft = 8
      ExplicitTop = 416
    end
    object Label1: TLabel [2]
      Left = 20
      Top = 235
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Orderstatus'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [3]
      Left = 26
      Top = 262
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Beteckning'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [4]
      Left = 11
      Top = 344
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tab-sortorder'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [5]
      Left = 40
      Top = 371
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'BGColor'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [6]
      Left = 8
      Top = 288
      Width = 74
      Height = 13
      Caption = 'Tab-beteckning'
      FocusControl = DBEdit5
    end
    inherited dbGrid: TwwDBGrid
      Width = 617
      ControlType.Strings = (
        'Kr'#228'verAdmin;CheckBox;True;False'
        #196'rStatus;CheckBox;True;False'
        'Oms'#228'ttningsgrundande;CheckBox;True;False')
      Selected.Strings = (
        'Id'#9'3'#9'Id'
        'Orderstatus'#9'9'#9'Orderstatus'
        'Beteckning'#9'15'#9'Beteckning'
        'TabBeteckning'#9'17'#9'TabBeteckning'
        'Sortorder'#9'7'#9'Sortorder'
        'BGColor'#9'11'#9'BGColor'
        'Oms'#228'ttningsgrundande'#9'9'#9'Oms.grund.'
        #196'rStatus'#9'7'#9#196'rStatus'
        'Kr'#228'verAdmin'#9'10'#9'Synl f admin')
      TabOrder = 9
      OnCalcCellColors = dbGridCalcCellColors
      ExplicitWidth = 617
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 231
      Width = 41
      Height = 21
      DataField = 'Orderstatus'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 258
      Width = 304
      Height = 21
      DataField = 'Beteckning'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 340
      Width = 64
      Height = 21
      DataField = 'Sortorder'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 367
      Width = 81
      Height = 21
      DataField = 'BGColor'
      DataSource = DataSource1
      TabOrder = 7
    end
    object BtnColor: TButton
      Left = 172
      Top = 365
      Width = 75
      Height = 25
      Caption = #196'ndra f'#228'rg'
      Enabled = False
      TabOrder = 8
      OnClick = BtnColorClick
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 285
      Width = 304
      Height = 21
      DataField = 'TabBeteckning'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 88
      Top = 315
      Width = 133
      Height = 17
      Caption = 'Oms'#228'ttningsgrundande'
      DataField = 'Oms'#228'ttningsgrundande'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBCheckBox2: TDBCheckBox
      Left = 252
      Top = 315
      Width = 97
      Height = 17
      Caption = #196'r en Status'
      DataField = #196'rStatus'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBCheckBox3: TDBCheckBox
      Left = 347
      Top = 315
      Width = 97
      Height = 17
      Caption = 'Synlig f'#246'r Admin'
      DataField = 'Kr'#228'verAdmin'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Left = 651
    Height = 538
    ExplicitLeft = 651
    ExplicitHeight = 538
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited DataSource1: TDataSource
    OnStateChange = DataSource1StateChange
    Left = 492
    Top = 376
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'Select * from OrderStatus order by Sortorder')
    Left = 316
    object FDQuery1Id: TFDAutoIncField
      DisplayWidth = 3
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1Orderstatus: TStringField
      DisplayWidth = 9
      FieldName = 'Orderstatus'
      Origin = 'Orderstatus'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQuery1Beteckning: TStringField
      DisplayWidth = 15
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Required = True
      Size = 50
    end
    object FDQuery1TabBeteckning: TStringField
      DisplayWidth = 17
      FieldName = 'TabBeteckning'
      Origin = 'TabBeteckning'
      Size = 30
    end
    object FDQuery1Sortorder: TSmallintField
      DisplayWidth = 7
      FieldName = 'Sortorder'
      Origin = 'Sortorder'
      Required = True
    end
    object FDQuery1BGColor: TStringField
      DisplayWidth = 11
      FieldName = 'BGColor'
      Origin = 'BGColor'
      FixedChar = True
      Size = 10
    end
    object FDQuery1Omsättningsgrundande: TBooleanField
      DisplayLabel = 'Oms.grund.'
      DisplayWidth = 9
      FieldName = 'Oms'#228'ttningsgrundande'
      Origin = '[Oms'#228'ttningsgrundande]'
    end
    object FDQuery1ÄrStatus: TBooleanField
      DisplayWidth = 7
      FieldName = #196'rStatus'
      Origin = '['#196'rStatus]'
    end
    object FDQuery1KräverAdmin: TBooleanField
      DisplayLabel = 'Synl f admin'
      DisplayWidth = 10
      FieldName = 'Kr'#228'verAdmin'
      Origin = '[Kr'#228'verAdmin]'
    end
    object FDQuery1TabId: TSmallintField
      DisplayWidth = 5
      FieldName = 'TabId'
      Origin = 'TabId'
      Visible = False
    end
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen]
    Left = 427
    Top = 208
  end
end
