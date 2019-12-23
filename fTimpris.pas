unit fTimpris;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, Db, ADODB, Menus, DBCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, wwdbdatetimepicker, Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmTimpris = class(TfrmStdRV)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dbedit1: TwwDBDateTimePicker;
    fdQuery1Id: TFDAutoIncField;
    fdQuery1PersonalId: TIntegerField;
    fdQuery1PersonID: TIntegerField;
    fdQuery1Fom: TSQLTimeStampField;
    fdQuery1Timpris: TCurrencyField;
    procedure btnNyClick(Sender: TObject);
    procedure btnAndraClick(Sender: TObject);
    procedure FDQuery1NewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTimpris: TfrmTimpris;

implementation

uses fPersonal, Datamodule;

{$R *.DFM}

procedure TfrmTimpris.btnNyClick(Sender: TObject);
begin
  inherited;
  dbedit1.setfocus;
end;

procedure TfrmTimpris.FDQuery1NewRecord(DataSet: TDataSet);
begin
  inherited;
dataset.FieldByName('PersonalId').AsInteger:=
//  frmPersonal.DataSource1.DataSet.FieldByName('Id').AsInteger;
  FDquery1.MasterSource.DataSet.FieldByName('Id').AsInteger;


end;

procedure TfrmTimpris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fdquery1.close;

end;

procedure TfrmTimpris.FormShow(Sender: TObject);
begin
  inherited;
  fdquery1.Open;
 caption:= 'Timpris "' + fdquery1.MasterSource.DataSet.fieldbyname('Förnamn').AsString + ' ' + fdquery1.MasterSource.DataSet.fieldbyname('Efternamn').AsString+ '"';
end;

procedure TfrmTimpris.btnAndraClick(Sender: TObject);
begin
  inherited;
  dbedit1.setfocus;
end;

end.
