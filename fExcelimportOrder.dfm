object frmExcelImportOrder: TfrmExcelImportOrder
  Left = 0
  Top = 0
  Caption = 'Import Order/Offertkalkyl'
  ClientHeight = 451
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 410
    Width = 513
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      513
      41)
    object btnOK: TButton
      Left = 334
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Forts'#228'tt'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 422
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 410
    Align = alClient
    TabOrder = 1
    object Kund: TLabel
      Left = 127
      Top = 71
      Width = 24
      Height = 13
      Caption = 'Kund'
    end
    object Label1: TLabel
      Left = 127
      Top = 108
      Width = 86
      Height = 13
      Caption = 'Best'#228'llningsdatum'
    end
    object Label2: TLabel
      Left = 127
      Top = 136
      Width = 58
      Height = 13
      Caption = 'Ink'#246'psorder'
    end
    object Label3: TLabel
      Left = 127
      Top = 165
      Width = 53
      Height = 13
      Caption = 'Godsm'#228'rke'
    end
    object Label4: TLabel
      Left = 127
      Top = 222
      Width = 74
      Height = 13
      Caption = 'Leveransdatum'
    end
    object Label5: TLabel
      Left = 127
      Top = 258
      Width = 83
      Height = 13
      Caption = 'Antal artikelrader'
    end
    object lblAntal: TLabel
      Left = 230
      Top = 258
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 127
      Top = 192
      Width = 54
      Height = 13
      Caption = 'Er referens'
    end
    object LUCKund: TwwDBLookupCombo
      Left = 230
      Top = 69
      Width = 168
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Kundnamn'#9'50'#9'Kundnamn'#9'F')
      LookupTable = dm.qryLU_Kund
      LookupField = 'ID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object rgTyp: TRadioGroup
      Left = 169
      Top = 311
      Width = 200
      Height = 61
      Caption = 'Vad ska skapas?'
      Columns = 2
      Items.Strings = (
        'Order'
        'Offertkalkyl')
      TabOrder = 6
      OnClick = rgTypClick
    end
    object edtInkopsorder: TEdit
      Left = 230
      Top = 133
      Width = 168
      Height = 21
      TabOrder = 2
      Text = 'edtBestDatum'
    end
    object edtGodsmärke: TEdit
      Left = 230
      Top = 162
      Width = 168
      Height = 21
      TabOrder = 3
      Text = 'edtBestDatum'
    end
    object edtBestdatum: TwwDBDateTimePicker
      Left = 230
      Top = 105
      Width = 168
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object edtLeveransdatum: TwwDBDateTimePicker
      Left = 230
      Top = 217
      Width = 168
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
    end
    object edtReferens: TEdit
      Left = 230
      Top = 190
      Width = 168
      Height = 21
      TabOrder = 4
      Text = 'Referens'
    end
  end
end
