unit rRitningsnotis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, QRCtrls,Inifiles;

type
  TrptRitningsnotis = class(TForm)
    Report: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRitningsnotis: TrptRitningsnotis;

implementation

{$R *.DFM}

uses  fOrder;

procedure TrptRitningsnotis.ReportBeforePrint(Sender: TCustomQuickRep;
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
