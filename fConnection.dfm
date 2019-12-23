inherited frmConnection: TfrmConnection
  Caption = 'Connection parameters'
  ClientHeight = 508
  ClientWidth = 690
  OnShow = FormShow
  ExplicitWidth = 696
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 467
    Width = 690
    OnClick = Panel2Click
    ExplicitTop = 321
    ExplicitWidth = 446
    inherited Button1: TButton
      Left = 523
      OnClick = Button1Click
      ExplicitLeft = 279
    end
    inherited Button2: TButton
      Left = 605
      Caption = 'St'#228'ng'
      ExplicitLeft = 361
    end
    object Button3: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Load...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  inherited Panel3: TPanel
    Width = 690
    Height = 467
    BorderWidth = 5
    ExplicitWidth = 446
    ExplicitHeight = 321
    object memo1: TMemo
      Left = 6
      Top = 6
      Width = 678
      Height = 455
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Myriad Pro SemiExt'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 434
      ExplicitHeight = 309
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    DefaultExtension = 'cnt'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Connectioninfo'
        FileMask = '*.cnt'
      end>
    Options = []
    Left = 328
    Top = 372
  end
end
