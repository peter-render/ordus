unit fOrderHuvud;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, ToolWin, Db, ADODB, Menus;

type
  TfrmOrderHuvud = class(TForm)
    dsoOrder: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    sp_OrderDelete: TADOStoredProc;
    ToolButton2: TToolButton;
    Panel5: TPanel;
    wwDBGrid1: TwwDBGrid;
    ToolButton5: TToolButton;
    PopupMenu1: TPopupMenu;
    ToolButton6: TToolButton;
    qryOrder: TADOQuery;
    qryOrderOrderID: TAutoIncField;
    qryOrderKundID: TIntegerField;
    qryOrderOrderNummer: TStringField;
    qryOrderOrderdatum: TDateTimeField;
    qryOrderGodsmrke: TStringField;
    qryOrderReferens: TStringField;
    qryOrderOrdertyp: TStringField;
    qryOrderLeveransdatum: TDateTimeField;
    qryOrderFakturaNummer: TStringField;
    qryOrderFakturadatum: TDateTimeField;
    qryOrderKundnamn: TStringField;
    qryOrderoTyp: TStringField;
    qryOrderAntalprissatt: TStringField;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ToolButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderHuvud: TfrmOrderHuvud;

implementation

uses fMain, fOrder, fOrderNew, rOrder, rArbetsorder, dFakturaNummer,
  fOrderadUpdate;

{$R *.DFM}

procedure TfrmOrderHuvud.wwDBGrid1DblClick(Sender: TObject);
var
  fname: string;
  f: TfrmOrder;
  t: Tcomponent;
  cc, i: integer;
begin

  fname := 'F' + qryOrderOrderID.asstring;
  cc := application.componentcount;
  for i := 0 to cc - 1 do
    if application.Components[i].name = fname then
    begin

      with (application.FindComponent(fname) as TfrmOrder) do
      begin
        windowstate := wsmaximized;
        show;
      end;

      exit;
    end;

  f := TfrmOrder.create(application);
  f.name := fname;
  f.windowstate := wsmaximized;
  f.show;


end;

procedure TfrmOrderHuvud.FormShow(Sender: TObject);
begin
  qryOrder.open;
  qryOrder.requery;

end;

procedure TfrmOrderHuvud.ToolButton1Click(Sender: TObject);
begin
  with TfrmOrderNew.create(Application)
    do showmodal;
  qryOrder.Requery;

end;

procedure TfrmOrderHuvud.ToolButton3Click(Sender: TObject);
begin
  if messagedlg('Vill du verkligen tar bort hela beställlningen/ offert?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with Sp_orderDelete do
    begin
      parameters.ParamByName('@OrderID').value := qryOrderOrderID.asInteger;
      execproc;
      if parameters.ParamByName('@RETURN_VALUE').value = 0 then
        qryOrder.Requery;
    end;
  end;
end;

procedure TfrmOrderHuvud.ToolButton2Click(Sender: TObject);
begin

  with TrptOrder.create(Application) do
  begin
    with qry do
    begin
      close;
      parameters.parambyname('OrderID').value :=
        qryOrderOrderid.asInteger;
      open;
    end;
    report.preview;
  end;


end;

procedure TfrmOrderHuvud.ToolButton4Click(Sender: TObject);
begin
  with TrptArbetsOrder.create(Application) do
  begin
    with qry do
    begin
      close;
      parameters.parambyname('OrderID').value :=
        qryOrderOrderid.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderHuvud.ToolButton5Click(Sender: TObject);
begin

  with qryOrder do
  begin
    edit;
    with TdlgFakturaNummer.create(Application) do
    begin
      if showmodal = mrOK then
        post else
        cancel;
    end;

  end;

end;

procedure TfrmOrderHuvud.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

if qryOrder.fieldbyname('Fakturadatum').asString <> '' then

			if (not Highlight) then ABrush.Color := $00DCFECB
                       else
                              AFont.color:= clGray;

		end;


procedure TfrmOrderHuvud.ToolButton6Click(Sender: TObject);
begin
    with TfrmOrderradUpdate.create(Application) do
        show;
end;

end.

