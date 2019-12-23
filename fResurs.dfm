inherited frmResurs: TfrmResurs
  Caption = 'frmResurs'
  ClientWidth = 683
  ExplicitWidth = 689
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 564
    ExplicitLeft = -20
    ExplicitWidth = 564
    inherited Bevel2: TBevel
      Left = 0
      Top = 349
      Height = 16
      ExplicitLeft = 0
      ExplicitTop = 349
      ExplicitHeight = 16
    end
    object Label1: TLabel [2]
      Left = 32
      Top = 261
      Width = 28
      Height = 13
      Caption = 'Namn'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [3]
      Left = 32
      Top = 234
      Width = 39
      Height = 13
      Caption = 'Nummer'
      FocusControl = DBEdit2
    end
    inherited dbGrid: TwwDBGrid
      Width = 529
      ControlType.Strings = (
        'Aktiv;CheckBox;True;False')
      Selected.Strings = (
        'Id'#9'10'#9'Id'#9#9
        'Namn'#9'65'#9'Namn'#9#9
        'Aktiv'#9'5'#9'Aktiv'#9#9)
      TabOrder = 3
      ExplicitWidth = 529
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 258
      Width = 181
      Height = 21
      DataField = 'Namn'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 32
      Top = 290
      Width = 65
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Aktiv'
      DataField = 'Aktiv'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 231
      Width = 181
      Height = 21
      DataField = 'Id'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    Left = 564
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'Select * from resurs')
    Left = 308
    Top = 136
    object FDQuery1Id: TSmallintField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1Namn: TStringField
      DisplayWidth = 65
      FieldName = 'Namn'
      Origin = 'Namn'
      Required = True
      Size = 100
    end
    object FDQuery1Aktiv: TBooleanField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'Aktiv'
      Origin = 'Aktiv'
      Required = True
    end
  end
end
