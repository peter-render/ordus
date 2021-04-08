unit rRitningsnotering;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, StdCtrls, Mask, DBCtrls, Db, ADODB, ExtCtrls, QRExport, QRCtrls,
  QRPDFFilt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  gtPDFClasses, gtCstPDFDoc, gtExPDFDoc, gtExProPDFDoc, gtPDFDoc,
//  gtXportIntf, gtQRXportIntf, gtClasses3, gtCstDocEng, gtCstPlnEng,  gtCstPDFEng, gtExPDFEng, gtPDFEng,
  IdBaseComponent, IdMailBox, Vcl.Imaging.jpeg     ;

type
  TrptRitningsnotering = class(TForm)
    Report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    TitleBand1: TQRBand;
    header: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    procedure QRSysData1Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRitningsnotering: TrptRitningsnotering;

implementation



{$R *.DFM}

procedure TrptRitningsnotering.QRSysData1Print(sender: TObject; var Value: string);
begin
  value := 'Sida ' + value;
end;

end.

