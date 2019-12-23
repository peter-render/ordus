inherited frmKundPerson: TfrmKundPerson
  Left = 485
  Top = 400
  Caption = 'Kundens kontaktpersoner'
  ClientHeight = 550
  ClientWidth = 824
  ExplicitWidth = 830
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 705
    Height = 550
    ExplicitWidth = 705
    ExplicitHeight = 550
    inherited Bevel1: TBevel
      Left = 15
      Top = 284
      Width = 445
      ExplicitLeft = 15
      ExplicitTop = 284
      ExplicitWidth = 445
    end
    inherited Bevel2: TBevel
      Left = 15
      Top = 472
      ExplicitLeft = 15
      ExplicitTop = 472
    end
    object Label1: TLabel [2]
      Left = 37
      Top = 308
      Width = 42
      Height = 13
      Caption = 'F'#246'rnamn'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [3]
      Left = 37
      Top = 335
      Width = 50
      Height = 13
      Caption = 'Efternamn'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [4]
      Left = 37
      Top = 368
      Width = 63
      Height = 13
      Caption = 'E-postadress'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [5]
      Left = 37
      Top = 394
      Width = 74
      Height = 13
      Caption = 'Telefonnummer'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [6]
      Left = 37
      Top = 421
      Width = 62
      Height = 13
      Caption = 'Mobilnummer'
      FocusControl = DBEdit5
    end
    inherited dbGrid: TwwDBGrid
      Left = 11
      Top = 11
      Width = 683
      Height = 267
      ControlType.Strings = (
        'Aktiv;CheckBox;True;False')
      Selected.Strings = (
        'F'#246'rnamn'#9'14'#9'F'#246'rnamn'
        'Efternamn'#9'20'#9'Efternamn'
        'Emailadress'#9'27'#9'Emailadress'
        'Telefonnummer'#9'20'#9'Telefonnummer'
        'Mobilnummer'#9'18'#9'Mobilnummer'
        'Aktiv'#9'5'#9'Aktiv')
      Align = alTop
      ExplicitLeft = 11
      ExplicitTop = 11
      ExplicitWidth = 683
      ExplicitHeight = 267
    end
    object DBEdit1: TDBEdit
      Left = 121
      Top = 305
      Width = 316
      Height = 21
      DataField = 'F'#246'rnamn'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 121
      Top = 332
      Width = 316
      Height = 21
      DataField = 'Efternamn'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 121
      Top = 365
      Width = 316
      Height = 21
      DataField = 'Emailadress'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 121
      Top = 391
      Width = 316
      Height = 21
      DataField = 'Telefonnummer'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 121
      Top = 418
      Width = 316
      Height = 21
      DataField = 'Mobilnummer'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBCheckBox1: TDBCheckBox
      Left = 480
      Top = 307
      Width = 97
      Height = 17
      TabStop = False
      Caption = 'Aktiv'
      DataField = 'Aktiv'
      DataSource = DataSource1
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Left = 705
    Height = 550
    ExplicitLeft = 705
    ExplicitHeight = 550
    inherited lblTTT: TLabel
      Top = 210
      ExplicitTop = 210
    end
    inherited btnNy: TButton
      Top = 69
      ExplicitTop = 69
    end
    inherited btnAndra: TButton
      Top = 100
      ExplicitTop = 100
    end
    inherited btnAngra: TButton
      Top = 131
      ExplicitTop = 131
    end
    inherited btnSpara: TButton
      Top = 162
      ExplicitTop = 162
    end
    inherited btnBort: TButton
      Top = 198
      ExplicitTop = 198
    end
    inherited btnStang: TButton
      Top = 11
      ExplicitTop = 11
    end
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 620
    Top = 408
  end
  inherited DataSource1: TDataSource
    Left = 348
    Top = 76
  end
  inherited FDQuery1: TFDQuery
    MasterSource = frmKunder.DataSource1
    MasterFields = 'Id'
    SQL.Strings = (
      'select '
      'kp.KundId,'
      'a.* from Kundperson KP'
      'join akt'#246'r a on a.id = kp.id'
      'where kp.kundid = :Id')
    Left = 280
    Top = 76
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FDQuery1Förnamn: TStringField
      DisplayWidth = 14
      FieldName = 'F'#246'rnamn'
      Origin = '[F'#246'rnamn]'
      Size = 50
    end
    object FDQuery1Efternamn: TStringField
      DisplayWidth = 20
      FieldName = 'Efternamn'
      Origin = 'Efternamn'
      Size = 50
    end
    object FDQuery1Emailadress: TStringField
      DisplayWidth = 27
      FieldName = 'Emailadress'
      Origin = 'Emailadress'
      Size = 50
    end
    object FDQuery1Telefonnummer: TStringField
      DisplayWidth = 20
      FieldName = 'Telefonnummer'
      Origin = 'Telefonnummer'
      Size = 50
    end
    object FDQuery1Mobilnummer: TStringField
      DisplayWidth = 18
      FieldName = 'Mobilnummer'
      Origin = 'Mobilnummer'
      Size = 50
    end
    object FDQuery1Aktiv: TBooleanField
      DisplayWidth = 5
      FieldName = 'Aktiv'
      Origin = 'Aktiv'
    end
    object FDQuery1Namn: TStringField
      DisplayWidth = 101
      FieldName = 'Namn'
      Origin = 'Namn'
      ReadOnly = True
      Visible = False
      Size = 101
    end
    object FDQuery1Företag: TStringField
      DisplayWidth = 50
      FieldName = 'F'#246'retag'
      Origin = '[F'#246'retag]'
      Visible = False
      Size = 50
    end
    object FDQuery1Id: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object FDQuery1KundId: TIntegerField
      DisplayWidth = 10
      FieldName = 'KundId'
      Origin = 'KundId'
      Required = True
      Visible = False
    end
  end
  object spKontaktpersonInsert: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'KontaktpersonInsert'
    Left = 560
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@F'#246'rnamn'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = '@Efternamn'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = '@Emailadress'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = '@Telefonnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@Mobilnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = '@F'#246'retag'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 8
        Name = '@Kundid'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@Aktiv'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object acKundpersonDelete: TFDCommand
    Connection = dm.FDConnection1
    Left = 504
    Top = 432
  end
  object spKontaktpersonUpdate: TFDStoredProc
    Connection = dm.FDConnection1
    StoredProcName = 'KontaktpersonUpdate'
    Left = 564
    Top = 364
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@Akt'#246'rId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@F'#246'rnamn'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = '@Efternamn'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = '@Emailadress'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@Telefonnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = '@Mobilnummer'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 8
        Name = '@F'#246'retag'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 9
        Name = '@Aktiv'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
end
