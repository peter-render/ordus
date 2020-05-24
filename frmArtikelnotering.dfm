inherited frmStdRV6: TfrmStdRV6
  Caption = 'frmStdRV6'
  ClientHeight = 348
  ClientWidth = 610
  ExplicitWidth = 616
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 491
    Height = 348
    object Label1: TLabel [2]
      Left = 12
      Top = 22
      Width = 68
      Height = 13
      Caption = 'Artikelnummer'
    end
    inherited dbGrid: TwwDBGrid
      Top = 61
      Width = 453
      Height = 124
      ExplicitTop = 61
      ExplicitWidth = 453
      ExplicitHeight = 124
    end
    object Edit1: TEdit
      Left = 88
      Top = 19
      Width = 225
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
  end
  inherited Panel2: TPanel
    Left = 491
    Height = 348
    inherited DBNav: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      
        'Select artikenummer, Beteckning from artikelnummer like :Artikel' +
        'nr')
    ParamData = <
      item
        Name = 'ARTIKELNR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
