object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Notering'
  ClientHeight = 377
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 268
    ExplicitWidth = 185
    DesignSize = (
      599
      41)
    object Button1: TButton
      Left = 504
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'St'#228'ng'
      TabOrder = 0
      ExplicitLeft = 540
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 599
    Height = 336
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 216
    ExplicitTop = 60
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel3: TPanel
      Left = 1
      Top = 191
      Width = 597
      Height = 144
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 172
      ExplicitWidth = 662
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 597
      Height = 190
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 662
      ExplicitHeight = 212
      DesignSize = (
        597
        190)
      object Memo1: TMemo
        Left = 16
        Top = 20
        Width = 554
        Height = 116
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
        ExplicitWidth = 627
        ExplicitHeight = 97
      end
      object Button3: TButton
        Left = 426
        Top = 149
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Spara'
        TabOrder = 1
        ExplicitLeft = 491
        ExplicitTop = 171
      end
      object Button4: TButton
        Left = 507
        Top = 149
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Avbryt'
        TabOrder = 2
        ExplicitLeft = 572
        ExplicitTop = 171
      end
    end
  end
end
