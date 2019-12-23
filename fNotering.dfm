object frmNotering: TfrmNotering
  Left = 0
  Top = 0
  ActiveControl = Memo1
  Caption = 'Materialbest'#228'llning'
  ClientHeight = 420
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 609
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 8
    ExplicitWidth = 599
    DesignSize = (
      609
      41)
    object Label1: TLabel
      Left = 10
      Top = 20
      Width = 185
      Height = 13
      Caption = 'Skriv '#246'nskad text och klicka p'#229' "Spara"'
    end
    object Button1: TButton
      Left = 522
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'S&t'#228'ng'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 512
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 609
    Height = 379
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 599
    ExplicitHeight = 336
    object Panel3: TPanel
      Left = 1
      Top = 234
      Width = 607
      Height = 144
      Align = alBottom
      BorderWidth = 8
      TabOrder = 0
      ExplicitTop = 191
      ExplicitWidth = 597
      object wwDBGrid1: TwwDBGrid
        Left = 9
        Top = 9
        Width = 589
        Height = 126
        Selected.Strings = (
          'Datum'#9'19'#9'Datum'
          'Notering'#9'70'#9'Notering')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsoNotering
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        ExplicitWidth = 579
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 607
      Height = 233
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 597
      ExplicitHeight = 190
      DesignSize = (
        607
        233)
      object Memo1: TMemo
        Left = 9
        Top = 9
        Width = 589
        Height = 168
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
        OnChange = Memo1Change
        ExplicitWidth = 579
        ExplicitHeight = 125
      end
      object btnSpara: TButton
        Left = 436
        Top = 192
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = '&Spara'
        Default = True
        Enabled = False
        TabOrder = 1
        OnClick = btnSparaClick
        ExplicitLeft = 426
        ExplicitTop = 149
      end
      object btnAvbryt: TButton
        Left = 517
        Top = 192
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = '&Avbryt'
        Enabled = False
        TabOrder = 2
        OnClick = btnAvbrytClick
        ExplicitLeft = 507
        ExplicitTop = 149
      end
    end
  end
  object dsoNotering: TDataSource
    DataSet = qryNotering
    Left = 392
    Top = 92
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 276
    object abortraden1: TMenuItem
      Caption = 'Ta bort raden'
      OnClick = abortraden1Click
    end
  end
  object qryNotering: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'Select n.Id,n.Datum'
      '--,n.PersonalId,p.f'#246'rnamn + '#39' '#39'+ left (p.efternamn,1) Namn'
      ',n.Notering'
      'from Notering n'
      'where (n.borttagen is null or :Visaborttagna = 1  )'
      'order by n.datum desc'
      '')
    Left = 285
    Top = 158
    ParamData = <
      item
        Name = 'VISABORTTAGNA'
        DataType = ftBoolean
        ParamType = ptInput
      end>
    object qryNoteringId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryNoteringDatum: TSQLTimeStampField
      FieldName = 'Datum'
      Origin = 'Datum'
      Required = True
    end
    object qryNoteringNotering: TStringField
      FieldName = 'Notering'
      Origin = 'Notering'
      Size = 1000
    end
  end
  object qryNoteringInsert: TFDQuery
    Connection = dm.FDConnection1
    SQL.Strings = (
      'insert into notering (PersonalId,Notering)'
      'values (1,:Notering)')
    Left = 249
    Top = 262
    ParamData = <
      item
        Name = 'NOTERING'
        ParamType = ptInput
      end>
  end
end
