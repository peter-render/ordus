object frmSimpledialog: TfrmSimpledialog
  Left = 507
  Top = 685
  Caption = 'frmSimpledialog'
  ClientHeight = 130
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 323
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 93
    ExplicitWidth = 331
    DesignSize = (
      323
      41)
    object btnOK: TButton
      Left = 164
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 244
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
