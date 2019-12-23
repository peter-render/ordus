unit rAvrapporteradTidrapport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, DB,  ExtCtrls, Data.Win.ADODB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TrptAvrapporteradTidRapport = class(TForm)
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
    spNamn: TStringField;
    spDatum: TStringField;
    spMinuter_avrapporterad: TIntegerField;
    QRDBText3: TQRDBText;
    spTimmar: TFloatField;
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
  rptAvrapporteradTidRapport: TrptAvrapporteradTidRapport;

implementation

uses Datamodule, funclib;

{$R *.dfm}

procedure TrptAvrapporteradTidRapport.QRDBText3Print(sender: TObject;
  var Value: string);
begin
value:= '';
end;

procedure TrptAvrapporteradTidRapport.QRLabel1Print(sender: TObject;
  var Value: string);
begin

value:= format('%f',[spMinuter_avrapporterad.AsFloat/60])
//Format('%m', [amount]));

//        ShowMessage(Format('Fixed            = %f', [12345.678]));

end;

procedure TrptAvrapporteradTidRapport.QRLabel6Print(sender: TObject;
  var Value: string);
begin
value:= copy(cdow(sp.fieldbyname('Datum').asdatetime),1,3);
end;

procedure TrptAvrapporteradTidRapport.spCalcFields(DataSet: TDataSet);
begin
  dataset.FieldByName('Timmar').AsFloat:=
  dataset.FieldByName('Minuter_avrapporterad').AsFloat/60;

end;

end.
