unit rSammelfaktura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, StdCtrls, Mask, DBCtrls, Db, ADODB, ExtCtrls, QRExport, QRCtrls,
  QRPDFFilt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  gtPDFClasses, gtCstPDFDoc, gtExPDFDoc, gtExProPDFDoc, gtPDFDoc,
//  gtXportIntf, gtQRXportIntf, gtClasses3, gtCstDocEng, gtCstPlnEng,  gtCstPDFEng, gtExPDFEng, gtPDFEng,
  IdBaseComponent, IdMailBox, Vcl.Imaging.jpeg
     ;

type
  TrptSammelfaktura = class(TForm)
    Report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel13: TQRLabel;
    header: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    PageFooterBand1: TQRBand;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRDBText9: TQRDBText;
    qry: TFDQuery;
    qryOrderId: TFDAutoIncField;
    qryKundnamn: TStringField;
    qryReferens: TStringField;
    qryordernummer: TStringField;
    qryGodsm�rke: TStringField;
    qryorderdatum: TSQLTimeStampField;
    qryLeveransdatum: TSQLTimeStampField;
    qryPositionnummer: TIntegerField;
    qryYtbehandlingBeteckning: TStringField;
    qryBeteckning: TStringField;
    qryArtikelnummer: TStringField;
    qryAntal: TFMTBCDField;
    qryOrdertypId: TIntegerField;
    qryPrisperenhet: TCurrencyField;
    qryfritext: TStringField;
    qryPris: TFMTBCDField;
    QRMemo3: TQRMemo;
    IdMailBox1: TIdMailBox;
    QRImage1: TQRImage;
    qryDagensdatum: TDateField;
    qryFakturanummer: TStringField;
    qryFakturadatum: TDateField;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRSysData1Print(sender: TObject; var Value: string);
    procedure QRDBText1Print(sender: TObject; var Value: string);
    procedure QRExpr1Print(sender: TObject; var Value: string);
    procedure headerPrint(sender: TObject; var Value: string);
    procedure lblNrPrint(sender: TObject; var Value: string);
    procedure lblDatumPrint(sender: TObject; var Value: string);
    procedure QRLabel6Print(sender: TObject; var Value: string);
    procedure QRChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRLabel5Print(sender: TObject; var Value: string);
    procedure QRLabel4Print(sender: TObject; var Value: string);
    procedure QRDBText6Print(sender: TObject; var Value: string);
    procedure QRLabel9Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptSammelfaktura: TrptSammelfaktura;

implementation

uses fOrder,Datamodule;

{$R *.DFM}

procedure TrptSammelfaktura.QRSysData1Print(sender: TObject; var Value: string);
begin
  value := 'Sida ' + value;
end;

procedure TrptSammelfaktura.QRDBText1Print(sender: TObject; var Value: string);
begin
  value := copy(value, 1, 3) + ' ' + copy(value, 4, 10);
end;

procedure TrptSammelfaktura.QRExpr1Print(sender: TObject; var Value: string);
begin
  if self.tag = 1 then
    value := ''
  else
    value := 'Summa   ' + value + ' kr';
end;


procedure TrptSammelfaktura.headerPrint(sender: TObject; var Value: string);
begin
  if qryOrdertypId.asInteger = 3 then
  begin
    value := 'OFFERT';
  end;

end;


procedure TrptSammelfaktura.lblNrPrint(sender: TObject; var Value: string);
begin
  if qryOrdertypId.asInteger = 3 then
  begin
    value := 'F�rfr�gan:';
  end;

end;

procedure TrptSammelfaktura.lblDatumPrint(sender: TObject; var Value: string);
begin
  if qryOrdertypId.asInteger = 3 then
  begin
    value := 'Off-datum:';
  end;


end;

procedure TrptSammelfaktura.QRLabel6Print(sender: TObject; var Value: string);
begin
  if self.tag = 1 then
    value := '';
(*
if qryOrdertyp.asString <> 'O' then
begin
   value:='';
end;
*)

end;

procedure TrptSammelfaktura.QRLabel9Print(sender: TObject; var Value: string);
begin
  if qryOrdertypId.asInteger = 3 then
  begin
    value := 'Off-nr:';
  end;

end;

procedure TrptSammelfaktura.QRChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  printband := (qryFritext.AsString <> '');
end;

procedure TrptSammelfaktura.QRDBText4Print(sender: TObject; var Value: string);
begin
  if self.tag = 1 then
    value := '';
end;

procedure TrptSammelfaktura.QRLabel5Print(sender: TObject; var Value: string);
begin
  if self.tag = 1 then
    value := '';

end;

procedure TrptSammelfaktura.QRLabel4Print(sender: TObject; var Value: string);
begin
  if self.tag = 1 then
    value := '';

end;

procedure TrptSammelfaktura.QRDBText6Print(sender: TObject; var Value: string);
begin
  if self.tag = 1 then
    value := ''
    else
    value:= value + ' kr';

end;

end.

