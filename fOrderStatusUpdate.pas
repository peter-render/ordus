unit fOrderStatusUpdate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, ExtCtrls, wwdbdatetimepicker, Db, ADODB, ComCtrls,
  Mask, DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmOrderStatusUpdate = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    LU_Orderstatus: TwwDBLookupCombo;
    DBText1: TDBText;
    Label1: TLabel;
    Status: TLabel;
    qryLU_orderstatus: TFDQuery;
    qryLU_orderstatusId: TFDAutoIncField;
    qryLU_orderstatusOrderstatus: TStringField;
    qryLU_orderstatusBeteckning: TStringField;
    qryLU_orderstatusSortorder: TSmallintField;
    qryLU_orderstatusBGColor: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderStatusUpdate: TfrmOrderStatusUpdate;
implementation

uses fMain, fOrderLista, Datamodule;

{$R *.DFM}

procedure TfrmOrderStatusUpdate.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrderStatusUpdate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  release;
end;

procedure TfrmOrderStatusUpdate.FormShow(Sender: TObject);
begin

  qryLU_Orderstatus.open

end;

end.
