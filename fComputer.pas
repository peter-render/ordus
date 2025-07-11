unit fComputer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fStdRV, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TfrmComputer = class(TfrmStdRV)
    FDQuery1Id: TFDAutoIncField;
    FDQuery1Name: TStringField;
    FDQuery1Beteckning: TStringField;
    FDQuery1�rAdmin: TBooleanField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComputer: TfrmComputer;

implementation

{$R *.dfm}

end.
