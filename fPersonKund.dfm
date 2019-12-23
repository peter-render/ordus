inherited frmStdRV1: TfrmStdRV1
  Left = 317
  Top = 295
  Caption = 'frmStdRV1'
  ClientHeight = 414
  ClientWidth = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 452
    Height = 414
    inherited Bevel2: TBevel
      Top = 380
    end
    object Label1: TLabel [2]
      Left = 33
      Top = 224
      Width = 41
      Height = 13
      Caption = 'Förnamn'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [3]
      Left = 33
      Top = 251
      Width = 48
      Height = 13
      Caption = 'Efternamn'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [4]
      Left = 33
      Top = 281
      Width = 56
      Height = 13
      Caption = 'Emailadress'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [5]
      Left = 33
      Top = 311
      Width = 73
      Height = 13
      Caption = 'Telefonnummer'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [6]
      Left = 33
      Top = 341
      Width = 62
      Height = 13
      Caption = 'Mobilnummer'
      FocusControl = DBEdit5
    end
    inherited dbGrid: TwwDBGrid
      Left = 11
      Top = 11
      Width = 430
      Height = 178
      Selected.Strings = (
        'Förnamn'#9'13'#9'Förnamn'
        'Efternamn'#9'17'#9'Efternamn'
        'Emailadress'#9'19'#9'Emailadress'
        'Telefonnummer'#9'14'#9'Telefonnummer'
        'Mobilnummer'#9'50'#9'Mobilnummer')
      Align = alTop
    end
    object DBEdit1: TDBEdit
      Left = 117
      Top = 221
      Width = 219
      Height = 21
      DataField = 'Förnamn'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 117
      Top = 251
      Width = 219
      Height = 21
      DataField = 'Efternamn'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 117
      Top = 281
      Width = 219
      Height = 21
      DataField = 'Emailadress'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 117
      Top = 311
      Width = 219
      Height = 21
      DataField = 'Telefonnummer'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 117
      Top = 341
      Width = 219
      Height = 21
      DataField = 'Mobilnummer'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Left = 452
    Height = 414
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited ADOQuery1: TADOQuery
    Active = True
    CursorType = ctStatic
    DataSource = frmKunder.DataSource1
    Parameters = <
      item
        Name = 'KundID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 5
      end>
    SQL.Strings = (
      'Select * from'
      'Kundperson where KundID = :KundID')
    object ADOQuery1Frnamn: TStringField
      DisplayWidth = 13
      FieldName = 'Förnamn'
      Size = 50
    end
    object ADOQuery1Efternamn: TStringField
      DisplayWidth = 17
      FieldName = 'Efternamn'
      Size = 50
    end
    object ADOQuery1Emailadress: TStringField
      DisplayWidth = 19
      FieldName = 'Emailadress'
      Size = 50
    end
    object ADOQuery1Telefonnummer: TStringField
      DisplayWidth = 14
      FieldName = 'Telefonnummer'
      Size = 50
    end
    object ADOQuery1Mobilnummer: TStringField
      DisplayWidth = 50
      FieldName = 'Mobilnummer'
      Size = 50
    end
    object ADOQuery1KundID: TIntegerField
      DisplayWidth = 10
      FieldName = 'KundID'
      Visible = False
    end
    object ADOQuery1PersonID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'PersonID'
      ReadOnly = True
      Visible = False
    end
  end
end
