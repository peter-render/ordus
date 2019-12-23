inherited dlgFakturaNummer: TdlgFakturaNummer
  Left = 652
  Top = 373
  Caption = 'Fakturanummer'
  ClientHeight = 128
  ClientWidth = 335
  OldCreateOrder = True
  ExplicitWidth = 341
  ExplicitHeight = 157
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 87
    Width = 335
    ExplicitTop = 87
    ExplicitWidth = 335
    inherited Button1: TButton
      Left = 168
      ExplicitLeft = 168
    end
    inherited Button2: TButton
      Left = 250
      ExplicitLeft = 250
    end
  end
  inherited Panel3: TPanel
    Width = 335
    Height = 87
    ExplicitWidth = 335
    ExplicitHeight = 87
    object Bevel1: TBevel
      Left = 119
      Top = 17
      Width = 110
      Height = 22
    end
    object DBText1: TDBText
      Left = 121
      Top = 23
      Width = 65
      Height = 15
      DataField = 'OrderID'
      DataSource = frmOrderLista.dsoOrderlist
    end
    object Label1: TLabel
      Left = 23
      Top = 23
      Width = 51
      Height = 13
      Caption = 'Order-nr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 23
      Top = 47
      Width = 82
      Height = 13
      Caption = 'Fakturadatum:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtDatum: TwwDBDateTimePicker
      Left = 118
      Top = 44
      Width = 111
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.Options = [mdoDayState, mdoWeekNumbers, mdoNoTodayCircle]
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
  end
end
