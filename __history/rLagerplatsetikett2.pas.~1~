unit rLagerplatsetikett2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TrptLagerplatsEtikett2 = class(TForm)
    Report: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    procedure ReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptLagerplatsEtikett2: TrptLagerplatsEtikett2;

implementation

uses fShoworder;


{$R *.DFM}

procedure TrptLagerplatsEtikett2.ReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  REPORT.page.Width := 41;
  REPORT.page.length := 89;

end;

end.

