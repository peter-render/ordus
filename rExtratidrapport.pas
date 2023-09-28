unit rExtratidrapport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, DB,  ExtCtrls, Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TrptExtratidRapport = class(TForm)
    Report: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    sp: TFDStoredProc;
    QRDBText3: TQRDBText;
    spNamn: TStringField;
    spOrderId: TIntegerField;
    spMinuter_avrapporterad: TIntegerField;
    QRLabel1: TQRLabel;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRDBText3Print(sender: TObject; var Value: string);
    procedure QRLabel6Print(sender: TObject; var Value: string);
    procedure spCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptExtratidRapport: TrptExtratidRapport;

implementation

uses Datamodule, funclib;

{$R *.dfm}

procedure TrptExtratidRapport.QRDBText3Print(sender: TObject;
  var Value: string);
begin
value:= '';
end;

procedure TrptExtratidRapport.QRLabel1Print(sender: TObject;
  var Value: string);
begin

value:= format('%f',[spMinuter_avrapporterad.AsFloat/60])
//Format('%m', [amount]));

//        ShowMessage(Format('Fixed            = %f', [12345.678]));

end;

procedure TrptExtratidRapport.QRLabel6Print(sender: TObject;
  var Value: string);
begin
value:= copy(cdow(sp.fieldbyname('Datum').asdatetime),1,3);
end;

procedure TrptExtratidRapport.spCalcFields(DataSet: TDataSet);
begin
  dataset.FieldByName('Timmar').AsFloat:=
  dataset.FieldByName('Minuter_avrapporterad').AsFloat/60;

end;

end.
