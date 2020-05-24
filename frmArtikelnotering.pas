unit frmArtikelnotering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fStdRV, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.DBCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TfrmStdRV6 = class(TfrmStdRV)
    Edit1: TEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStdRV6: TfrmStdRV6;

implementation

{$R *.dfm}

end.
