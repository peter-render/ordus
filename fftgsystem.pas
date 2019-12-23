unit fftgsystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, Db,  Menus, DBCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmFtgSystem = class(TfrmStdRV)
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    FDQuery1ID: TFDAutoIncField;
    FDQuery1Systemname: TStringField;
    FDQuery1Beteckning: TStringField;
    FDQuery1Värde: TStringField;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFtgSystem: TfrmFtgSystem;

implementation

uses Datamodule;

{$R *.DFM}

end.
