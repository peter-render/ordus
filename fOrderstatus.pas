unit fOrderstatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, StdCtrls, Mask, DBCtrls, Db, ADODB, Menus, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmOrderstatus = class(TfrmStdRV)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    BtnColor: TButton;
    ColorDialog1: TColorDialog;
    FDQuery1Id: TFDAutoIncField;
    FDQuery1Orderstatus: TStringField;
    FDQuery1Beteckning: TStringField;
    FDQuery1Sortorder: TSmallintField;
    FDQuery1BGColor: TStringField;
    FDQuery1TabId: TSmallintField;
    FDQuery1TabBeteckning: TStringField;
    FDQuery1Omsättningsgrundande: TBooleanField;
    FDQuery1ÄrStatus: TBooleanField;
    FDQuery1KräverAdmin: TBooleanField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    procedure BtnColorClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderstatus: TfrmOrderstatus;

implementation

uses Datamodule;

{$R *.DFM}

procedure TfrmOrderstatus.BtnColorClick(Sender: TObject);
begin
  inherited;

  with ColorDialog1 do
  begin
    if fdquery1.FieldByName('BGColor').AsString <> '' then
      color := stringtocolor(trim(fdquery1.FieldByName('BGColor').AsString));
    if execute then
      fdquery1.FieldByName('BGColor').AsString:= colortostring(color);
  end;

end;

procedure TfrmOrderstatus.DataSource1StateChange(Sender: TObject);
begin
  inherited;
    btnCOlor.Enabled := FDQuery1.State in [dsEdit, dsInsert];
end;

procedure TfrmOrderstatus.dbGridCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  inherited;
 if field.FieldName = 'BGColor' then
  if trim(fdquery1.FieldByName('BGColor').AsString) <> '' then
  begin
      ABrush.color := stringtocolor(trim(fdquery1.FieldByName('BGColor').AsString));
      AFont.color := clblack;
  end

end;

end.
