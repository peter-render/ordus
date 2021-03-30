unit fRitningsnotering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fStdRV, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.DBCtrls, Vcl.Grids, Vcl.wwdbigrd,
  Vcl.wwdbgrid, Vcl.ExtCtrls, Vcl.Mask, dRitningsnoteringNy, funclib, Datamodule;

type
  TfrmRitningsnotering = class(TfrmStdRV)
    Edit1: TEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    FDQuery1artikelnummer: TStringField;
    FDQuery1Beteckning: TStringField;
    FDQuery1Notering: TMemoField;
    Label4: TLabel;
    FDQuery1cNotering1: TStringField;
    Button1: TButton;
    qryTabort: TFDQuery;
    FDQuery1Id: TFDAutoIncField;
    procedure Edit1Change(Sender: TObject);
    procedure btnAndraClick(Sender: TObject);
    procedure btnNyClick(Sender: TObject);
    procedure btnSparaClick(Sender: TObject);
    procedure FDQuery1CalcFields(DataSet: TDataSet);
    procedure dbGridTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure btnBortClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmArtikelnotering_main: TfrmRitningsnotering;

implementation

{$R *.dfm}

procedure TfrmRitningsnotering.btnAndraClick(Sender: TObject);
begin
  inherited;
  DBMemo1.SetFocus;
end;

procedure TfrmRitningsnotering.btnBortClick(Sender: TObject);
begin
  if messagedlg('Vill du ta bort notisen på artikel: "' + FDQuery1artikelnummer.AsString + '"', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    with qryTabort do
    begin
      ParamByName('ID').Value := FDQuery1.FieldByName('Id').AsInteger;
      execsql;
    end;
    FDQuery1.Refresh;
  end;
end;

procedure TfrmRitningsnotering.btnNyClick(Sender: TObject);
var
  doUpdate: boolean;
begin
  doUpdate := false;
  with TdlgRitningsnoteringNy.create(Application) do
  begin
    qryArtikel.Open;
    showmodal;
    if modalresult = mrOK then
    begin
      with qryUpdate do
      begin
        qryUpdate.ParamByName('Memo').Value := Memo.Lines.Text;
        qryUpdate.ParamByName('Id').Value := qryArtikel.FieldByName('Id').AsString;
        qryUpdate.execsql;
      end;
      doUpdate := true;
    end;
    qryArtikel.close;
  end;

  if doUpdate then

end;

procedure TfrmRitningsnotering.btnSparaClick(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := datasource1.State in [dsInsert];

end;

procedure TfrmRitningsnotering.dbGridTitleButtonClick(Sender: TObject; AFieldName: string);
begin
  inherited;

  // showmessage(afieldname);
  with FDQuery1 do
  begin
    close;
    if AFieldName = 'artikelnummer' then
      sql.Text := 'Select artikelnummer, Beteckning,Notering from artikel where Notering <> '''' order by Artikelnummer'
    else if AFieldName = 'Beteckning' then
      sql.Text := 'Select artikelnummer, Beteckning,Notering from artikel where Notering <> '''' order by Beteckning'
    else if AFieldName = 'cNotering1' then
      sql.Text := 'Select artikelnummer, Beteckning,Notering from artikel where Notering <> '''' order by Notering';
    Open;
  end;

end;

procedure TfrmRitningsnotering.Edit1Change(Sender: TObject);
begin

  FDQuery1.Locate('Artikelnummer', Edit1.Text, [loPartialKey]);

end;

procedure TfrmRitningsnotering.FDQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cNotering1').AsString := DataSet.FieldByName('Notering').AsString;
end;

end.
