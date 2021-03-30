inherited frmRitningsnotering: TfrmRitningsnotering
  ActiveControl = Edit1
  Caption = 'Ritningsnotiser'
  ClientHeight = 530
  ClientWidth = 850
  ExplicitWidth = 856
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 731
    Height = 530
    ExplicitWidth = 758
    ExplicitHeight = 530
    inherited Bevel1: TBevel
      Left = 20
      Top = 153
      ExplicitLeft = 20
      ExplicitTop = 153
    end
    inherited Bevel2: TBevel
      Left = 23
      Top = 499
      ExplicitLeft = 23
      ExplicitTop = 499
    end
    object Label1: TLabel [2]
      Left = 23
      Top = 22
      Width = 68
      Height = 13
      Caption = 'Artikelnummer'
    end
    object Label2: TLabel [3]
      Left = 28
      Top = 162
      Width = 24
      Height = 13
      Caption = 'Notis'
    end
    object Label3: TLabel [4]
      Left = 20
      Top = 327
      Width = 68
      Height = 13
      Caption = 'Artikelnummer'
    end
    object Label4: TLabel [5]
      Left = 23
      Top = 365
      Width = 41
      Height = 13
      Caption = 'Notering'
    end
    inherited dbGrid: TwwDBGrid
      Left = 20
      Top = 61
      Width = 685
      Height = 243
      Selected.Strings = (
        'artikelnummer'#9'30'#9'artikelnummer'
        'Beteckning'#9'40'#9'Beteckning'
        'cNotering1'#9'36'#9'Notering rad 1')
      TitleButtons = True
      TitleMenuAttributes.Options = [sfoSortAscending, sfoAutoTitleButtonSort]
      OnTitleButtonClick = dbGridTitleButtonClick
      ExplicitLeft = 20
      ExplicitTop = 61
      ExplicitWidth = 685
      ExplicitHeight = 243
    end
    object Edit1: TEdit
      Left = 100
      Top = 19
      Width = 209
      Height = 21
      TabOrder = 1
      OnChange = Edit1Change
    end
    object DBEdit1: TDBEdit
      Left = 94
      Top = 324
      Width = 177
      Height = 21
      Color = clMenu
      DataField = 'artikelnummer'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Left = 731
    Height = 530
    ExplicitLeft = 758
    ExplicitHeight = 530
    inherited btnNy: TButton
      Top = 61
      ExplicitTop = 61
    end
    inherited btnAndra: TButton
      Top = 108
      ExplicitTop = 108
    end
    inherited btnAngra: TButton
      Top = 139
      ExplicitTop = 139
    end
    inherited btnSpara: TButton
      Top = 170
      ExplicitTop = 170
    end
    inherited btnBort: TButton
      Top = 226
      Caption = 'Ta &bort notis'
      Enabled = False
      ExplicitTop = 226
    end
    inherited DBNav: TDBNavigator
      Left = 31
      Top = 413
      Hints.Strings = ()
      ExplicitLeft = 31
      ExplicitTop = 413
    end
    object Button1: TButton
      Left = 12
      Top = 257
      Width = 95
      Height = 25
      Caption = 'Skriv ut'
      Enabled = False
      TabOrder = 7
      OnClick = btnBortClick
    end
  end
  object DBMemo1: TDBMemo [2]
    Left = 94
    Top = 360
    Width = 429
    Height = 108
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    DataField = 'Notering'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  inherited FDQuery1: TFDQuery
    OnCalcFields = FDQuery1CalcFields
    SQL.Strings = (
      'Select Id,artikelnummer, Beteckning,Notering from artikel where '
      'Notering <> '#39#39
      'order by Artikelnummer')
    object FDQuery1artikelnummer: TStringField
      DisplayWidth = 30
      FieldName = 'artikelnummer'
      Origin = 'artikelnummer'
      Required = True
      Size = 30
    end
    object FDQuery1Beteckning: TStringField
      DisplayWidth = 40
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Size = 200
    end
    object FDQuery1cNotering1: TStringField
      DisplayLabel = 'Notering rad 1'
      DisplayWidth = 36
      FieldKind = fkCalculated
      FieldName = 'cNotering1'
      Calculated = True
    end
    object FDQuery1Notering: TMemoField
      DisplayWidth = 45
      FieldName = 'Notering'
      Origin = 'Notering'
      Visible = False
      BlobType = ftMemo
      Size = 2147483647
    end
    object FDQuery1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object qryTabort: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Update Artikel set Notering = NULL where id = :Id')
    Left = 644
    Top = 340
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
