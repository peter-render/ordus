unit dRitningsnoteringNy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dSimple, Vcl.StdCtrls, Vcl.ExtCtrls, Datamodule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, vcl.wwdblook;

type
  TdlgRitningsnoteringNy = class(TdlgSimple)
    luArtikel: TwwDBLookupCombo;
    qryArtikel: TFDQuery;
    Label1: TLabel;
    Notering: TLabel;
    qryArtikelArtikelnummer: TStringField;
    qryArtikelBeteckning: TStringField;
    qryArtikelNotering: TMemoField;
    Memo: TMemo;
    qryArtikelLookup: TStringField;
    qryUpdate: TFDQuery;
    qryArtikelId: TFDAutoIncField;
    procedure luArtikelCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgRitningsnoteringNy: TdlgRitningsnoteringNy;

implementation

{$R *.dfm}

procedure TdlgRitningsnoteringNy.luArtikelCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  inherited;
   memo.Lines.Text := lookuptable.FieldByName('Notering').asstring;

end;

end.
