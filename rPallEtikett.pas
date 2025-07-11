unit rPallEtikett;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.jpeg, dateutils;

type
  TrptPallEtikett = class(TForm)
    Report: TQuickRep;
    qry: TFDQuery;
    qryKundnamn: TStringField;
    qryGodsm�rke: TStringField;
    qryOrdusNummer: TFDAutoIncField;
    qryKundOrdernummer: TStringField;
    qryAntalRader: TIntegerField;
    qryLeveransdatum: TSQLTimeStampField;
    TitleBand1: TQRBand;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape5: TQRShape;
    QRImage1: TQRImage;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    qryLeveransvecka: TStringField;
    qryEgenm�rkning: TStringField;
    QRDBText4: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure QRDBText6Print(Sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptPallEtikett: TrptPallEtikett;

implementation

uses fOrderLista, Datamodule;

{$R *.DFM}

procedure TrptPallEtikett.FormShow(Sender: TObject);
begin
  qry.Open;
end;

procedure TrptPallEtikett.QRDBText6Print(Sender: TObject; var Value: string);
begin
  Value := 'Antal detaljer: ' + trim(Value);
end;

procedure TrptPallEtikett.qryCalcFields(DataSet: TDataSet);
begin

  DataSet.fieldbyname('Leveransvecka').AsString :=
    'V-' + Format('%.2d', [WeekOfTheYear(qry.fieldbyname('Leveransdatum').AsDateTime)]) +
    inttostr(dateutils.DayOfTheWeek(qry.fieldbyname('Leveransdatum').AsDateTime));

end;

end.
