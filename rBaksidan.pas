unit rBaksidan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRCtrls, QuickRpt, ExtCtrls, Db, ADODB;

type
  TrptBaksidan = class(TForm)
    Report: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    qry: TADOQuery;
    qryArtikelnummer: TStringField;
    qryBeteckning: TStringField;
    qryAntal: TBCDField;
    qryPDFFinns: TIntegerField;
    qryOrderID: TIntegerField;
    qryOrderNummer: TStringField;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure QRSysData1Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptBaksidan: TrptBaksidan;

implementation

uses fPrintPDF, Datamodule;

{$R *.DFM}

procedure TrptBaksidan.ReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//  printReport:= frmPrintPDF.qryPDFFinns.asboolean;
end;

procedure TrptBaksidan.QRDBText2Print(sender: TObject; var Value: string);
begin
  value := trim(value) + '  ' + qryBeteckning.asString;
end;

procedure TrptBaksidan.QRSysData1Print(sender: TObject; var Value: string);
begin
  value := 'Utskriven: ' + value + '    Ängelholms Mek. Verkstad AB'
end;

end.

