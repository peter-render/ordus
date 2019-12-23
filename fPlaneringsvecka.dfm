inherited frmPlaneringsvecka: TfrmPlaneringsvecka
  Caption = 'Planeringsvecka'
  ClientWidth = 609
  ExplicitWidth = 615
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 490
    ExplicitLeft = 6
    inherited Bevel2: TBevel
      Left = 8
      Top = 412
      ExplicitLeft = 8
      ExplicitTop = 412
    end
    object Label1: TLabel [2]
      Left = 91
      Top = 249
      Width = 13
      Height = 13
      Caption = 'Id'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [3]
      Left = 50
      Top = 276
      Width = 54
      Height = 13
      Caption = 'Beteckning'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [4]
      Left = 26
      Top = 303
      Width = 72
      Height = 13
      Caption = 'Kortbeteckning'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [5]
      Left = 48
      Top = 330
      Width = 50
      Height = 13
      Caption = 'Arbetsstart'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [6]
      Left = 52
      Top = 357
      Width = 46
      Height = 13
      Caption = 'Arbetsslut'
      FocusControl = DBEdit5
    end
    inherited dbGrid: TwwDBGrid
      Width = 453
      Selected.Strings = (
        'Id'#9'10'#9'Id'
        'Beteckning'#9'20'#9'Beteckning'
        'Kortbeteckning'#9'12'#9'Kortbeteckning'
        'Arbetsstart'#9'11'#9'Arbetsstart'
        'Arbetsslut'#9'13'#9'Arbetsslut')
      ExplicitWidth = 453
    end
    object DBEdit1: TDBEdit
      Left = 110
      Top = 246
      Width = 264
      Height = 21
      DataField = 'Id'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 110
      Top = 273
      Width = 264
      Height = 21
      DataField = 'Beteckning'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 110
      Top = 300
      Width = 69
      Height = 21
      DataField = 'Kortbeteckning'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 110
      Top = 327
      Width = 69
      Height = 21
      DataField = 'Arbetsstart'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 110
      Top = 354
      Width = 69
      Height = 21
      DataField = 'Arbetsslut'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Left = 490
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 468
    Top = 336
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'Select * from Vecka order by Id ')
    Left = 304
    Top = 124
    object FDQuery1Id: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1Beteckning: TStringField
      DisplayWidth = 20
      FieldName = 'Beteckning'
      Origin = 'Beteckning'
      Required = True
    end
    object FDQuery1Kortbeteckning: TStringField
      DisplayWidth = 12
      FieldName = 'Kortbeteckning'
      Origin = 'Kortbeteckning'
      Required = True
      Size = 5
    end
    object FDQuery1Arbetsstart: TStringField
      DisplayWidth = 11
      FieldName = 'Arbetsstart'
      Origin = 'Arbetsstart'
      Required = True
      Size = 5
    end
    object FDQuery1Arbetsslut: TStringField
      DisplayWidth = 13
      FieldName = 'Arbetsslut'
      Origin = 'Arbetsslut'
      Required = True
      Size = 5
    end
  end
end
