inherited frmArtikelnotering: TfrmArtikelnotering
  ActiveControl = btnStang
  Caption = 'Ritningsnotiser'
  ClientHeight = 348
  ClientWidth = 586
  Position = poMainFormCenter
  ExplicitWidth = 592
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 467
    Height = 348
    ExplicitTop = -8
    ExplicitWidth = 491
    ExplicitHeight = 348
    inherited Bevel1: TBevel
      Left = 20
      Top = 153
      ExplicitLeft = 20
      ExplicitTop = 153
    end
    inherited Bevel2: TBevel
      Top = 315
      ExplicitTop = 315
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
    inherited dbGrid: TwwDBGrid
      Top = 61
      Width = 433
      Height = 86
      Selected.Strings = (
        'artikelnummer'#9'16'#9'artikelnummer'
        'Beteckning'#9'49'#9'Beteckning')
      ExplicitTop = 61
      ExplicitWidth = 433
      ExplicitHeight = 86
    end
    object Edit1: TEdit
      Left = 100
      Top = 19
      Width = 225
      Height = 21
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  inherited Panel2: TPanel
    Left = 467
    Height = 348
    inherited btnNy: TButton
      Top = 300
      Visible = False
      ExplicitTop = 300
    end
    inherited btnAndra: TButton
      Top = 61
      ExplicitTop = 61
    end
    inherited btnAngra: TButton
      Top = 92
      ExplicitTop = 92
    end
    inherited btnSpara: TButton
      Top = 123
      ExplicitTop = 123
    end
    inherited btnBort: TButton
      Visible = False
    end
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBMemo1: TDBMemo [2]
    Left = 20
    Top = 181
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
    Active = True
    SQL.Strings = (
      
        'Select artikelnummer, Beteckning,Notering from artikel where art' +
        'ikelnummer like :Artikelnr +'#39'%'#39)
    ParamData = <
      item
        Name = 'ARTIKELNR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
