unit fOrder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  DBCtrls, Menus, ComCtrls, ToolWin, wwclearbuttongroup, wwradiogroup, Mask;

type
  TfrmOrder = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBGrid1: TwwDBGrid;
    qryOrderrad: TADOQuery;
    dsoOrderrad: TDataSource;
    Panel5: TPanel;
    qryLU_Artikel: TADOQuery;
    dsoLU_Artikel: TDataSource;
    qryOrderradOrderID: TIntegerField;
    qryOrderradArtikelID: TIntegerField;
    qryOrderradRadNr: TAutoIncField;
    qryOrderradPositionnummer: TIntegerField;
    qryOrderradPrisPerEnhet: TBCDField;
    qryOrderradDatum: TDateTimeField;
    qryOrderradArtikelID_1: TAutoIncField;
    qryOrderradArtikelnummer: TStringField;
    qryOrderradBeteckning: TStringField;
    qryOrderHistory: TADOQuery;
    qryOrderHistoryDatum: TDateTimeField;
    qryOrderHistoryAntal: TFloatField;
    qryOrderHistoryPrisPerEnhet: TBCDField;
    qryOrderHistoryOrderID: TIntegerField;
    qryOrderHistoryRadNr: TAutoIncField;
    qryOrderHistoryPositionnummer: TIntegerField;
    dsoOrderHistory: TDataSource;
    sp_OrderRadInsert: TADOStoredProc;
    PopupMenu1: TPopupMenu;
    Tabortorderrad1: TMenuItem;
    qryLU_ArtikelArtikelID: TAutoIncField;
    qryLU_ArtikelArtikelnummer: TStringField;
    qryLU_ArtikelBeteckning: TStringField;
    qryOrderHistoryKortdatum: TStringField;
    qryOrderradYtbehandlingIDdefault: TStringField;
    qryLU_ArtikelYtbehandlingIDdefault: TStringField;
    sp_OrderradUpdate: TADOStoredProc;
    sp_OrderradDelete: TADOStoredProc;
    DBText2: TDBText;
    qryOrderradKundID: TIntegerField;
    qryOrderradOrderNummer: TStringField;
    qryOrderradOrderdatum: TDateTimeField;
    qryOrderradGodsmrke: TStringField;
    qryOrderradReferens: TStringField;
    qryOrderradOrdertyp: TStringField;
    qryOrderradKundnamn: TStringField;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    qryOrderradRitning1: TBlobField;
    qryOrderradAntal: TBCDField;
    qryLU_Ytbehandling: TADOQuery;
    qryLU_YtbehandlingYtbehandlingID: TStringField;
    qryLU_YtbehandlingBeteckning: TStringField;
    qryOrderradYtbehandlingID: TStringField;
    qryOrderradOrderID_1: TAutoIncField;
    qryOrderradKundID_1: TIntegerField;
    qryOrderradLeveransdatum: TDateTimeField;
    qryOrderradKundID_2: TAutoIncField;
    qryOrderradBeteckning_1: TStringField;
    qryOrderHistoryArtikelID: TIntegerField;
    qryOrderHistoryYtbehandlingID: TStringField;
    qryOrderHistoryYtbehandlingIDDefault: TStringField;
    qryOrder: TADOQuery;
    qryOrderOrderID: TAutoIncField;
    qryOrderKundID: TIntegerField;
    qryOrderOrderNummer: TStringField;
    qryOrderOrderdatum: TDateTimeField;
    qryOrderGodsmrke: TStringField;
    qryOrderReferens: TStringField;
    qryOrderOrdertyp: TStringField;
    qryOrderLeveransdatum: TDateTimeField;
    qryOrderKundID_1: TAutoIncField;
    qryOrderKundnamn: TStringField;
    dsoOrder: TDataSource;
    qryOrderHistoryOrdertyp: TStringField;
    qryLU_Artikelcnt: TIntegerField;
    qryOrderHistoryOrderInfo: TStringField;
    qryOrderHistoryOrderID_1: TAutoIncField;
    qryOrderHistoryKundID: TIntegerField;
    qryOrderHistoryOrderNummer: TStringField;
    qryOrderHistoryOrderdatum: TDateTimeField;
    qryOrderHistoryGodsmrke: TStringField;
    qryOrderHistoryReferens: TStringField;
    qryOrderHistoryLeveransdatum: TDateTimeField;
    qryOrderHistoryBeteckning: TStringField;
    qryOrderHistoryartikelnummer: TStringField;
    btnDelete: TButton;
    btnEdit: TButton;
    qryLU_ArtikelKundID: TIntegerField;
    PopupMenu2: TPopupMenu;
    Markerasomoffert1: TMenuItem;
    Label9: TLabel;
    DBText6: TDBText;
    Label10: TLabel;
    DBText7: TDBText;
    qryOrderNamn: TStringField;
    Panel1: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Bevel1: TBevel;
    Label5: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    edtArtikel: TwwDBLookupCombo;
    Panel8: TPanel;
    Panel9: TPanel;
    btnAvbryt: TButton;
    btnSpara: TButton;
    edtPris: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    edtAntal: TEdit;
    qryLU_Ytbehandling2: TADOQuery;
    qryLU_Ytbehandling2Beteckning: TStringField;
    qryLU_Ytbehandling2YtbehandlingID: TStringField;
    qryLU_Ytbehandling2Sortorder: TSmallintField;
    qryLU_Kund: TADOQuery;
    qryLU_KundKundnamn: TStringField;
    qryLU_KundKundID: TAutoIncField;
    Label11: TLabel;
    pnlArtikel: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    edtKund: TwwDBLookupCombo;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qryOrderradLagerArtikel: TBooleanField;
    edtFranlager: TEdit;
    Label16: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Edit2: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Edit3: TEdit;
    Label20: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    qryLU_ArtikelLagersaldo: TIntegerField;
    Label21: TLabel;
    lblLagersaldo: TLabel;
    procedure btnDeleteClick(Sender: TObject);
    procedure edtArtikelCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSparaClick(Sender: TObject);
    procedure edtPrisChange(Sender: TObject);
    procedure Skrivutorderclick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure btnAvbrytClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure ArtikelCloseup;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtAntalKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Markerasomoffert1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtArtikelChange(Sender: TObject);
    procedure edtArtikelExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtArtikelNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrder: TfrmOrder;
  IIndex: integer;

implementation

uses fMain, rOrder, fOrderLista, fArbetsorder, rArbetsorder, fArtikel;

{$R *.DFM}

procedure TfrmOrder.btnDeleteClick(Sender: TObject);
begin
  if messagedlg('Vill du ta bort PosNr: '
   +  qryOrderradPositionnummer.asString+ '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with Sp_OrderRadDelete do
    begin
      parameters.ParamByName('@OrderID').value := qryOrderRadOrderID.asInteger;
      parameters.ParamByName('@Radnr').value := qryOrderRadRadnr.asInteger;
      execproc;
      if parameters.ParamByName('@RETURN_VALUE').value = 0 then
        qryOrderRad.Requery;
    end;
  end;

end;

procedure TfrmOrder.edtArtikelCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if edtArtikel.text <> '' then
  if qryLU_artikel.Locate('ArtikelNummer', edtArtikel.text, []) then
  ArtikelCloseup
  else
       if edtArtikel.enabled then
       edtArtikel.setfocus;

//  dbtext1.Visible:= (edtArtikel.Text <>'');

end;

procedure TfrmOrder.artikelCloseup;
begin

  edtArtikel.value := qryLU_artikelArtikelNummer.asString;
  edtArtikel.text := qryLU_artikelArtikelNummer.asstring;
  edtFranlager.text:= qryLU_artikelLagersaldo.asstring;
  lblLagersaldo.caption:= qryLU_artikelLagersaldo.asstring;

  label5.enabled := false;
  panel8.visible := true;
  qryOrderHistory.close;
  qryOrderHistory.Open;
  btnAvbryt.enabled := true;

//  if rg.Values.IndexOf(qryOrderHistoryYtbehandlingIDDefault.asString) > -1 then
//    rg.ItemIndex := rg.Values.IndexOf(qryOrderHistoryYtbehandlingIDDefault.asString);

  dbtext1.enabled := true;
  edtPris.setfocus;
  btnEdit.Enabled:= false;
btnDelete.Enabled:= false;



end;

procedure TfrmOrder.wwDBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtPris.text := wwdbgrid2.DataSource.DataSet.fieldbyname('PrisPerEnhet').asString;
//  rg.ItemIndex := rg.Values.IndexOf(wwdbgrid2.DataSource.DataSet.fieldbyname('YtbehandlingID').asString);
//  edtAntal.setfocus;

end;

procedure TfrmOrder.btnSparaClick(Sender: TObject);
begin
  if btnSpara.tag = 0 then
    with sp_OrderRadInsert do
    begin
      parameters.ParamByName('@OrderID').value := qryOrderOrderID.asInteger;
      parameters.ParamByName('@ArtikelID').value :=
                                                qryLU_ArtikelArtikelID.asInteger;
      parameters.ParamByName('@Antal').value :=
                                                strtofloat(edtAntal.text);
      parameters.ParamByName('@PrisperEnhet').value :=
                                                strtofloat(edtPris.text);
      parameters.ParamByName('@YtbehandlingID').value :=
                        qryOrderradYtbehandlingId.asString;


      label8.Caption := 'Ny rad';
      execproc;
    end

  else
    with sp_OrderRadUpdate do
    begin
      parameters.ParamByName('@OrderID').value := qryOrderOrderID.asInteger;
      parameters.ParamByName('@RadNr').value := qryOrderRadRadnr.asInteger;
      parameters.ParamByName('@ArtikelID').value :=
        qryLU_ArtikelArtikelID.asInteger;
      parameters.ParamByName('@Antal').value :=
        strtofloat(edtAntal.text);
      parameters.ParamByName('@PrisperEnhet').value :=
        strtofloat(edtPris.text);
      parameters.ParamByName('@YtbehandlingID').value :=
                        qryOrderradYtbehandlingId.asString;

//      parameters.ParamByName('@Lagerartikel').value := cbLagerartikel.Checked;

      label8.Caption := 'Ändra rad';
      execproc;

    end;

 // IIndex:= rg.Itemindex;

with  qryOrderrad do
begin
close;
open;
end;

  btnSpara.tag := 0;
  //rg.ItemIndex := -1;
  btnSpara.enabled := false;
  btnAvbryt.enabled := false;

  edtAntal.text := '';
  edtPris.text := '';
  edtArtikel.LookupValue := '';
  label8.Font.Color := clBlack;
  edtArtikel.text := '';
  qryOrderHistory.close;
  btnedit.enabled := true;
  btnDelete.enabled := true;
  edtArtikel.setfocus;
  panel8.visible := false;
  label5.Enabled := true;
    btnEdit.Enabled:= true;
btnDelete.Enabled:= true;

end;

procedure TfrmOrder.edtPrisChange(Sender: TObject);
begin
  btnSpara.enabled := (edtPris.text <> '') and (edtAntal.text <> '') ;
  btnSpara.default := true;

//  btnEdit.enabled := true;
//  btnDelete.enabled := true;
end;

procedure TfrmOrder.Skrivutorderclick(Sender: TObject);
begin
  with TrptOrder.create(Application) do
  begin
    if (sender as TToolbutton).tag = 2 then
      header.caption := 'Fakturaunderlag';

    with qry do
    begin
      close;
      parameters.parambyname('OrderID').value :=
        qryOrderRadOrderid.asInteger;
      open;
    end;

    report.PreviewHeight:= 800;
    report.Previewwidth:= 500;
    report.preview;

  end;

end;

procedure TfrmOrder.FormShow(Sender: TObject);
begin
//  width := 700;
//  height := 565;
  qryOrderHistory.close;

(*
  with qryLU_Ytbehandling do
  begin
   first;
    while not eof do
    begin
      rg.items.Add(fieldbyname('Beteckning').asString);
      rg.values.Add(fieldbyname('YtbehandlingID').asString);
      next;
    end
  end;
*)
  dbtext1.Visible := (edtArtikel.Text <> '');
  pnlArtikel.height := 0;
  pnlArtikel.visible := false;
  edtArtikel.SetFocus;
  panel8.visible := false;

end;

procedure TfrmOrder.wwDBGrid1DblClick(Sender: TObject);
begin

  label8.Caption := 'Ändra orderrad';
  panel8.Visible:= true;
  edtArtikel.text := qryOrderradArtikelnummer.asString;
  qryLU_artikel.Locate('ArtikelID', qryOrderradArtikelID.asInteger, []);
  qryOrderHistory.close;
  qryOrderHistory.Open;
  edtAntal.text := qryOrderradAntal.asString;
  edtPris.text := qryOrderradPrisperEnhet.asString;
//  cbLagerartikel.checked := qryOrderradLagerartikel.asBoolean;

  btnSpara.tag := 1; // ändringsläge
  label8.Font.Color := clRed;
  btnAvbryt.enabled := true;


  btnedit.enabled := false;
  btnDelete.enabled := false;
//  rg.Value := trim(qryOrderradYtbehandlingID.asString);
//  rg.ItemIndex := rg.Values.IndexOf(qryOrderradYtbehandlingID.asString);
 btnSpara.enabled:= false;


end;

procedure TfrmOrder.FormActivate(Sender: TObject);
begin
  with qryOrderRad do
  begin
    close;
    open;
  end;



end;

procedure TfrmOrder.FormCreate(Sender: TObject);
begin

  qryOrder.open;
  qryOrderrad.open;
  qryLU_artikel.open;
  qryOrderHistory.open;
  qryLU_ytbehandling.open;
  qryLU_ytbehandling2.open;
  qryLU_kund.open;

end;

procedure TfrmOrder.ToolButton4Click(Sender: TObject);
begin

  with TrptArbetsOrder.create(Application) do
  begin
    with qry do
    begin
      close;
      parameters.parambyname('OrderID').value :=
        qryOrderRadOrderid.asInteger;
      open;
    end;

    report.preview;
  end;


end;

procedure TfrmOrder.btnAvbrytClick(Sender: TObject);
begin
  btnSpara.tag := 0;
//  rg.ItemIndex := -1;
  btnSpara.enabled := false;
  btnEdit.enabled := true;
  btnDelete.enabled := true;

  edtAntal.text := '';
  edtPris.text := '';
  edtArtikel.LookupValue := '';
  label8.Font.Color := clBlack;
  btnAvbryt.enabled := false;
  dbtext1.enabled := false;
  edtArtikel.text := '';
  qryOrderHistory.close;
  edtArtikel.Setfocus;
  panel8.visible := false;
  label5.Enabled := true;
  btnEdit.Enabled:= true;
btnDelete.Enabled:= true;

end;

procedure TfrmOrder.Label5Click(Sender: TObject);
begin

  btnSpara.Enabled := false;
  btnAvbryt.Enabled := false;
  edtArtikel.Enabled := False;
  label5.Enabled := false;
  panel8.Visible := true;
  pnlArtikel.visible := true;
//  cbLagerartikel.visible:= false;
  pnlArtikel.height := 179;
  frmMain.qryArtikel.append;
  frmMain.qryArtikel.Fieldbyname('KundID').asInteger :=
    qryOrder.fieldbyname('KundID').asInteger;
  dbedit1.Setfocus;

(*
  with TfrmArtikel.create(Application) do
  begin
    frmmain.qryArtikel.Locate('ArtikelID', edtArtikel.LookupTable.fieldbyname('artikelID').asinteger, []);
    showmodal;
  end;

  qryLU_artikel.requery;
  qryLU_artikel.Locate('ArtikelID', frmMain.qryArtikelArtikelID.asInteger, []);
  edtArtikel.value := frmmain.qryArtikelArtikelNummer.asString;
  edtArtikel.text := frmmain.qryArtikelArtikelNummer.asString;
  artikelcloseup;
 *)

end;



procedure TfrmOrder.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then //Ist die gedrückte Taste ASCII-Return?
  begin
    Perform(WM_NEXTDLGCTL, 0, 0); //Zum nächsten Element wechseln
    Key := #0; //Gedrückte Taste unwirksam machen
  end;



end;

procedure TfrmOrder.edtAntalKeyPress(Sender: TObject; var Key: Char);
begin
//caption := key;

 // #8 = Backspace;

  if pos(key, '1234567890,' + #8) = 0 then key := char(0);



end;

procedure TfrmOrder.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (qryOrderHistoryOrdertyp.asString = 'O') or
    (qryOrderHistoryOrderinfo.asString = 'Offertpris') then

  begin
    afont.color := clRed;
        //if highlight then abrush
  end;
end;

procedure TfrmOrder.Markerasomoffert1Click(Sender: TObject);
var
  Nytext: string;

begin
  if qryOrderHistoryOrderInfo.asString = 'Offertpris' then
    nytext := ''
  else
    nytext := 'Offertpris';
  with qryOrderHistory do
  begin
    edit;
    qryOrderHistoryOrderInfo.asString := Nytext;
    post;
  end;

end;

procedure TfrmOrder.Button3Click(Sender: TObject);
begin
button2.default:= false;
  btnSpara.Enabled := true;
  btnAvbryt.Enabled := true;
  frmMain.qryArtikel.cancel;
  pnlArtikel.Height := 0;
  edtArtikel.Enabled := True;
//  cbLagerartikel.visible:= True;
  label5.Enabled := True;
  edtArtikel.setfocus;
  panel8.Visible := false;

end;

procedure TfrmOrder.Button2Click(Sender: TObject);
begin

button2.default:= false;
  btnSpara.Enabled := true;
  btnAvbryt.Enabled := true;
  frmMain.qryArtikel.post;
  edtArtikel.Enabled := True;
  label5.Enabled := True;
  edtArtikel.LookupTable.Locate('ArtikelID', frmMain.qryArtikel.fieldbyname('ArtikelID').asInteger, []);

  qryLU_artikel.requery;
  qryLU_artikel.Locate('ArtikelID', frmMain.qryArtikelArtikelID.asInteger, []);
  edtArtikel.value := frmmain.qryArtikelArtikelNummer.asString;
  edtArtikel.text := frmmain.qryArtikelArtikelNummer.asString;
  artikelcloseup;

  pnlArtikel.height := 0;


end;

procedure TfrmOrder.edtArtikelChange(Sender: TObject);
begin
 dbtext1.Visible := (edtArtikel.Text <> '');
dbtext1.enabled := (edtArtikel.Text <> '');

end;

procedure TfrmOrder.edtArtikelExit(Sender: TObject);
begin


        if edtArtikel.value <> '' then

  if qryLU_artikel.Locate('ArtikelNummer', edtArtikel.text, []) then
    ArtikelCloseup
  else
        Label5Click(Sender);
end;

procedure TfrmOrder.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if ShortCutToText(ShortCut(Key, Shift)) = 'Ctrl+N' then
  begin
    Label5Click(sender);
        key := 0;
  end;

end;

procedure TfrmOrder.edtArtikelNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
        if newvalue <> '' then
        begin

                Label5Click(Sender);
                dbedit1.Text:= Newvalue;
        end;

end;

end.

