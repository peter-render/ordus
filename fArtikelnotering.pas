unit fArtikelnotering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fStdRV, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.DBCtrls, Vcl.Grids, Vcl.wwdbigrd,
  Vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TfrmArtikelnotering = class(TfrmStdRV)
    Edit1: TEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btnAndraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArtikelnotering: TfrmArtikelnotering;

implementation

{$R *.dfm}

procedure TfrmArtikelnotering.btnAndraClick(Sender: TObject);
begin
  inherited;
  DBMemo1.SetFocus;
end;

procedure TfrmArtikelnotering.Edit1Change(Sender: TObject);
begin
  inherited;
  with fdquery1 do
  begin
    close;
    params.parambyname('ARTIKELNR').Value := Edit1.Text;
    open;
  end;
end;

procedure TfrmArtikelnotering.FormShow(Sender: TObject);
begin
  inherited;
  Edit1.SetFocus;
  if edit1.Text <> '' then
  
  with fdquery1 do
  begin
    close;
    params.parambyname('ARTIKELNR').Value := Edit1.Text;
    open;
  end;

end;

end.
