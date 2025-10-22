unit rFoljesedel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, StdCtrls, Mask, DBCtrls, Db, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, vcl.gtxXport,
  vcl.gtQRXport, Vcl.Imaging.jpeg, vcl.gtxClasses, QRCtrls;

type
  TrptFoljesedel = class(TForm)
    Report: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel13: TQRLabel;
    header: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    ChildBand1: TQRChildBand;
    PageFooterBand1: TQRBand;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRImage1: TQRImage;
    QRChildBand1: TQRChildBand;
    QRDBText9: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape4: TQRShape;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRMemo3: TQRMemo;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    qry: TFDQuery;
    qryFöljesedelnummer: TFDAutoIncField;
    qryKundnamn: TStringField;
    qryartikelnummer: TStringField;
    qryBeteckning: TStringField;
    qryAntal: TFMTBCDField;
    qryvikt: TFloatField;
    qryTotalkvikt: TFloatField;
    qryLevereradDatum: TSQLTimeStampField;
    qryGodsmärke: TStringField;
    qryOrderdatum: TSQLTimeStampField;
    qryOrdernummer: TStringField;
    qryFöljesedelbeteckning: TStringField;
    qryReferens: TStringField;
    qryOrderId: TFDAutoIncField;
    qryOrdusnrlista: TStringField;
    qrExp: TgtQRExport;
    qryemailadress: TStringField;
    procedure QRSysData1Print(sender: TObject; var Value: string);
    procedure QRChildBand1BeforePrint(sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptFoljesedel: TrptFoljesedel;

implementation

uses fMainRapport2, Datamodule;

{$R *.DFM}

procedure TrptFoljesedel.QRSysData1Print(sender: TObject; var Value: string);
begin
  Value := 'Sida ' + Value;
end;

procedure TrptFoljesedel.QRChildBand1BeforePrint(sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // printband := (qryFritext.AsString <> '');
end;

procedure TrptFoljesedel.QRLabel6Print(sender: TObject; var Value: String);
begin
  Value := 'Ordernr: ' + qryOrdernummer.asString + '   Referens: ' +
    qryReferens.asString + '   Godsmärke: ' + qryGodsmärke.asString;

end;

procedure TrptFoljesedel.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := 'Totalvikt      ' + Value;
end;

end.
