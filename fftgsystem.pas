unit fftgsystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, Db, Menus, DBCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid,
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
    PopupMenu2: TPopupMenu;
    SttoutputkatalogentillcTemp1: TMenuItem;
    procedure SttoutputkatalogentillcTemp1Click(Sender: TObject);
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

procedure TfrmFtgSystem.SttoutputkatalogentillcTemp1Click(Sender: TObject);
begin
  inherited;
  with dm.FDConnection1 do
  begin
    dm.FDConnection1.ExecSQL('update ftgsystem set Värde = ''''C:\Temp\'''' where left(Värde,5) = ''''\\192.''''")');

  end;
  dbgrid.DataSource.DataSet.Close;
  dbgrid.DataSource.DataSet.open;

end;

end.
