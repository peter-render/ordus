unit fMaterialpris;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, Db, Menus, DBCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, wwdbdatetimepicker, Mask, EditNew, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmMaterialpris = class(TfrmStdRV)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditN1: TDBEditN;
    DBEditN2: TDBEditN;
    dbedit1: TwwDBDateTimePicker;
    FDQuery1Id: TFDAutoIncField;
    FDQuery1YtbehandlingId: TIntegerField;
    FDQuery1Fom: TSQLTimeStampField;
    FDQuery1Pris: TCurrencyField;
    FDQuery1Laserpris: TCurrencyField;
    FDQuery1Inköpspris: TCurrencyField;
    FDQuery1Skrotpris: TCurrencyField;
    DBEditN3: TDBEditN;
    DBEditN4: TDBEditN;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnNyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaterialpris: TfrmMaterialpris;

implementation

uses fYtbehandling, Datamodule;

{$R *.DFM}

procedure TfrmMaterialpris.btnNyClick(Sender: TObject);
begin
  inherited;
  FDQuery1.fieldbyname('YtbehandlingId').value:= FDQuery1.MasterSource.DataSet.FieldByName('Id').AsInteger;
  dbedit1.SetFocus;
end;

procedure TfrmMaterialpris.FormShow(Sender: TObject);
begin
  inherited;
 caption:= 'Materialpris "' + fdquery1.MasterSource.DataSet.fieldbyname('Beteckning').AsString + '"';

end;

end.
