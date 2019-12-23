unit fPlaneringsvecka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fStdRV, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, vcl.wwdbigrd,
  vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmPlaneringsvecka = class(TfrmStdRV)
    FDQuery1Id: TIntegerField;
    FDQuery1Beteckning: TStringField;
    FDQuery1Kortbeteckning: TStringField;
    FDQuery1Arbetsstart: TStringField;
    FDQuery1Arbetsslut: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlaneringsvecka: TfrmPlaneringsvecka;

implementation

{$R *.dfm}

end.
