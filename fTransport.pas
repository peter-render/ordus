unit fTransport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dSimple, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.StdCtrls, Vcl.ExtCtrls, EditNew,
  Vcl.DBCtrls;

type
  TfrmTransport = class(TdlgSimple)
    Panel1: TPanel;
    Panel4: TPanel;
    wwDBGrid1: TwwDBGrid;
    FDQuery1: TFDQuery;
    FDQuery1Id: TFDAutoIncField;
    FDQuery1Artikelnummer: TStringField;
    FDQuery1Beteckning: TStringField;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    EditN1: TEditN;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransport: TfrmTransport;

implementation

{$R *.dfm}

uses Datamodule;

procedure TfrmTransport.FormShow(Sender: TObject);
begin
  inherited;
fdquery1.Open;

end;

end.
