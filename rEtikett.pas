unit rEtikett;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, QRCtrls;

type
  TrptEtikett = class(TForm)
    Report: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    DetailBand1: TQRBand;
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEtikett: TrptEtikett;

implementation

{$R *.DFM}

uses inifiles;

procedure TrptEtikett.ReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  with TIniFile.Create('Ordus.ini') do
  begin
    Report.page.Width := readinteger('Dymo', 'Width', 89);
    Report.page.Length := readinteger('Dymo', 'Length', 41);
    free;
  end;

end;

end.
