unit fOrder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  DBCtrls, Menus, ComCtrls, ToolWin, wwclearbuttongroup, wwradiogroup, Mask,
  EditNew, XPMan, wwcheckbox, wwDataInspector, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Win.ADODB, system.UITypes,
  Vcl.ImgList;

type
  TfrmOrder = class(TForm)
    dsoOrderrad: TDataSource;
    dsoLU_Artikel: TDataSource;
    dsoOrderHistory: TDataSource;
    PopupMenu1: TPopupMenu;
    Tabortorderrad1: TMenuItem;
    dsoOrder: TDataSource;
    PopupMenu2: TPopupMenu;
    Markerasomoffert1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label10: TLabel;
    DBText7: TDBText;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel4: TPanel;
    wwDBGrid1: TwwDBGrid;
    btnDelete: TButton;
    btnEdit: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    pnlOrderrad: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtPris: TEditN;
    edtAntal: TEditN;
    edtFranLager: TEditN;
    edtAttProducera: TEditN;
    edtTillLager: TEditN;
    btnSpara: TButton;
    btnAvbryt: TButton;
    edtLagersaldo: TEditN;
    LU_Ytbehandling: TwwDBLookupCombo;
    Panel7: TPanel;
    Bevel1: TBevel;
    DBText1: TDBText;
    lblNyArtikel: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    edtArtikel: TwwDBLookupCombo;
    Label9: TLabel;
    edtLagerplats: TEdit;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel8: TPanel;
    Splitter2: TSplitter;
    Panel9: TPanel;
    dsoOrderradPrisinfo: TDataSource;
    wwDBGrid6: TwwDBGrid;
    ExpButton: TwwExpandButton;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    dsoArtikelgrupp: TDataSource;
    Panel14: TPanel;
    dbgArtikelgrupp: TwwDBGrid;
    Panel15: TPanel;
    wwDBGrid2: TwwDBGrid;
    PopupMenu3: TPopupMenu;
    mmArtikeltext: TMemo;
    PageControl1: TPageControl;
    tabArtikel: TTabSheet;
    TabOrderrad: TTabSheet;
    pnlArtikel: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    btnNyArtikelSpara: TButton;
    btnNyArtikelAvbryt: TButton;
    luYtbehandlingdefault: TwwDBLookupCombo;
    Panel16: TPanel;
    qry: TFDQuery;
    qryOrderrad: TFDQuery;
    qryLU_Artikel: TFDQuery;
    qryOrderradPrisinfo: TFDQuery;
    qryArtikelText: TFDQuery;
    qryArtikelgrupp: TFDQuery;
    qryArtikelgruppId: TFDAutoIncField;
    qryArtikelgruppArtikelId: TIntegerField;
    qryArtikelgruppUnderartikelId: TIntegerField;
    qryArtikelgruppAntal: TBCDField;
    qryArtikelgruppLeverantör: TStringField;
    qryArtikelgruppArtikelnummer: TStringField;
    qryArtikelgruppBeteckning: TStringField;
    qryArtikelgruppBorttagen: TSQLTimeStampField;
    qryOrderradPositionnummer: TIntegerField;
    qryOrderradPrisperEnhet: TCurrencyField;
    qryOrderradArtikelnummer: TStringField;
    qryOrderradBeteckning: TStringField;
    qryOrderradAntal: TFMTBCDField;
    qryOrderradLagerplats: TStringField;
    qryOrderradAttproducera: TBCDField;
    qryOrderradFrånLager: TBCDField;
    qryOrderradTillLager: TBCDField;
    qryOrderradYtbehandlingId: TIntegerField;
    qryOrderradRadnr: TIntegerField;
    qryOrderradArtikelId: TIntegerField;
    qryOrderradYtbehandlingBeteckning: TStringField;
    qryOrderradKalkarbetstid: TFloatField;
    qryOrder: TFDQuery;
    qryOrderOrderId: TFDAutoIncField;
    qryOrderId: TFDAutoIncField;
    qryOrderKundID: TIntegerField;
    qryOrderOrderNummer: TStringField;
    qryOrderOrderdatum: TSQLTimeStampField;
    qryOrderGodsmärke: TStringField;
    qryOrderReferens: TStringField;
    qryOrderReferensID: TIntegerField;
    qryOrderOrdertypId: TIntegerField;
    qryOrderOrderstatusId: TIntegerField;
    qryOrderLeveransdatum: TSQLTimeStampField;
    qryOrderFakturaNummer: TStringField;
    qryOrderFritext: TStringField;
    qryOrderYtbehandlingDatum: TSQLTimeStampField;
    qryOrderYtbehandlingId: TIntegerField;
    qryOrderKundnamn: TStringField;
    qryOrderKortbeteckning: TStringField;
    qryLU_ArtikelArtikelId: TFDAutoIncField;
    qryLU_ArtikelId: TFDAutoIncField;
    qryLU_ArtikelArtikelnummer: TStringField;
    qryLU_ArtikelBeteckning: TStringField;
    qryLU_ArtikelYtbehandlingIdDefault: TIntegerField;
    qryLU_ArtikelKundID: TIntegerField;
    qryLU_ArtikelPDFFinns: TIntegerField;
    qryLU_ArtikelPDFFilnamn: TStringField;
    qryLU_ArtikelLagersaldo: TBCDField;
    qryLU_ArtikelLagerplats: TStringField;
    qryLU_Artikelcnt: TIntegerField;
    qryOrderHistory: TFDQuery;
    qryOrderradPrisinfoBelopp: TCurrencyField;
    qryOrderradPrisinfoBeteckning: TStringField;
    qryArtikelTextId: TIntegerField;
    qryArtikelTextText: TStringField;
    sp_OrderRadInsert: TFDStoredProc;
    sp_OrderradUpdate: TFDStoredProc;
    sp_OrderradDelete: TFDStoredProc;
    qryOrderHistoryOrderradId: TFDAutoIncField;
    qryOrderHistoryartikelnummer: TStringField;
    qryOrderHistoryBeteckning: TStringField;
    qryOrderHistoryytbehandlingId: TIntegerField;
    qryOrderHistoryOrdertypId: TIntegerField;
    qryOrderHistoryKortdatum: TDateField;
    qryOrderHistoryYtbehandlingIDDefault: TIntegerField;
    qryOrderHistoryOrderInfo: TStringField;
    qryOrderHistoryDatum: TSQLTimeStampField;
    qryOrderHistoryAntal: TFMTBCDField;
    qryOrderHistoryPrisPerEnhet: TCurrencyField;
    qryOrderHistoryAntalInforader: TIntegerField;
    edtArtikelnummer: TEdit;
    edtBeteckning: TEdit;
    sp_Artikel_insert: TFDStoredProc;
    qryOrderradcBock: TIntegerField;
    ImageList1: TImageList;
    qryOrderradBockritning: TBooleanField;
    N1: TMenuItem;
    Bockritningok1: TMenuItem;
    qryOrderradId: TFDAutoIncField;
    qryOrderradKalkarbetstidTotal: TFloatField;
    Label15: TLabel;
    spArtikelBockritningSet: TFDStoredProc;
    qryOrderHistoryFörnamn: TStringField;
    qryOrderHistoryInforaderFinns: TBooleanField;
    qryOrderradcFixatur: TIntegerField;
    qryOrderradFixaturFinns: TBooleanField;
    qryOrderradOrderradInfo: TStringField;
    DBText6: TDBText;
    qryOrderFakturadatum: TDateField;
    qryArtikelgruppFastpris: TCurrencyField;
    qryOrderradcRitningsnoteringFinns: TBooleanField;
    qryOrderradNotering: TMemoField;
    qryOrderradcRitningsnoteringFinns_disp: TStringField;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    qryOrderradLagersaldo: TBCDField;
    qryOrderradVikt: TFloatField;
    qryOrderradAvrapporteradPlasmatid: TIntegerField;
    qryOrderradSkrotandelProcent: TBCDField;
    edtLasertid: TEditN;
    Label22: TLabel;
    edtSkrot: TEditN;
    Label23: TLabel;
    edtVikt: TEditN;
    Label24: TLabel;
    qryOrderradSenasteAvrapporteradDatum: TDateField;
    qryOrderradTotaltid: TIntegerField;
    qryOrderradExtratid: TIntegerField;
    qryOrderradTidTotalt: TIntegerField;
    qryOrderradSum: TFDQuery;
    qryOrderradSumSumTotaltid: TFloatField;
    qryOrderradSumSumExtratid: TFloatField;
    qryOrderradSumSumTotalt: TFloatField;
    procedure btnDeleteClick(Sender: TObject);
    procedure edtArtikelCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnSparaClick(Sender: TObject);
    procedure edtPrisChange(Sender: TObject);
    procedure Skrivutorderclick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure btnAvbrytClick(Sender: TObject);
    procedure LblNyArtikelclick(Sender: TObject);
    procedure ArtikelCloseup;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure Markerasomoffert1Click(Sender: TObject);
    procedure btnNyArtikelAvbrytClick(Sender: TObject);
    procedure btnNyArtikelSparaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtArtikelNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
    procedure edtAntalChange(Sender: TObject);
    procedure edtAntalExit(Sender: TObject);
    procedure edtFranLagerExit(Sender: TObject);
    procedure edtAttProduceraExit(Sender: TObject);
    procedure edtPrisEnter(Sender: TObject);
    procedure edtArtikelEnter(Sender: TObject);
    procedure mmArtikeltextClick(Sender: TObject);
    procedure edtArtikelnummerChange(Sender: TObject);
    procedure ExpButtonCheckVisibleButton(Sender: TwwExpandButton; DataSet: TDataSet; var AShowExpand: Boolean);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure qryOrderradCalcFields(DataSet: TDataSet);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Bockritningok1Click(Sender: TObject);
    procedure qryOrderHistoryCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure ndra1Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure wwDBGrid1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure wwDBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure qryOrderradAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrder: TfrmOrder;
  IIndex: Integer;

implementation

uses fMain, rOrder, fOrderLista, fArbetsorder, rArbetsorder, fArtikel,
  Datamodule, fArtikeltext, funclib;

{$R *.DFM}

procedure TfrmOrder.btnDeleteClick(Sender: TObject);
begin
  if messagedlg('Vill du ta bort PosNr: ' + qryOrderradPositionnummer.asString + '?', mtConfirmation, [mbYes, mbNo], 0)
    = mrYes then

  begin
    with sp_OrderradDelete do
    begin
      ParamByName('@OrderradId').value := qryOrderradId.asInteger;
      execproc;
      if ParamByName('@RETURN_VALUE').value = 0 then
        funclib.requery(qryOrderrad);
    end;
  end;

end;

procedure TfrmOrder.edtArtikelCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin

  PageControl1.ActivePageIndex := 0;
  pnlOrderrad.visible := true;

  if edtArtikel.text <> '' then
    if qryLU_Artikel.Locate('ArtikelNummer', edtArtikel.text, []) then
    begin
      ArtikelCloseup;
      DBText1.visible := true;
    end
    else if edtArtikel.enabled then
      edtArtikel.setfocus;

  // dbtext1.Visible:= (edtArtikel.Text <>'');

  if trim(edtArtikel.text) <> '' then
  begin
    qryArtikelgrupp.open;
    qryArtikelText.open;
    mmArtikeltext.text := qryArtikelText.FieldByName('Text').asString;
  end
  else
    qryArtikelgrupp.close;

  if qryArtikelgrupp.active then
    dbgArtikelgrupp.visible := qryArtikelgrupp.RecordCount > 0;

  if qryOrderHistory.active then
    wwDBGrid2.visible := qryOrderHistory.RecordCount > 0;

end;

procedure TfrmOrder.ArtikelCloseup;
begin

  edtArtikel.value := qryLU_ArtikelArtikelnummer.asString;
  edtArtikel.text := qryLU_ArtikelArtikelnummer.asString;
  edtLagersaldo.setfloat(qryLU_ArtikelLagersaldo.asFloat);
  edtLagerplats.text := qryLU_ArtikelLagerplats.asString;


  // edtFranlager.text := qryLU_artikelLagersaldo.asString;

  lblNyArtikel.enabled := false;

  with qryOrderHistory do
  begin
    close;
    open;
    wwDBGrid2.visible := RecordCount > 0;
  end;

  btnAvbryt.enabled := true;

  if qryOrderHistory.RecordCount > 0 then
  begin
    LU_Ytbehandling.LookupValue := qryOrderHistoryytbehandlingId.asString;

  end
  else

    LU_Ytbehandling.LookupValue := qryLU_ArtikelYtbehandlingIdDefault.asString;

  DBText1.visible := true;
  btnEdit.enabled := false;
  btnDelete.enabled := false;

  application.ProcessMessages;
  pnlOrderrad.visible := true;
  edtPris.setfocus;

end;

procedure TfrmOrder.wwDBGrid2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  edtPris.text := wwDBGrid2.DataSource.DataSet.FieldByName('PrisPerEnhet').asString;


  // rg.ItemIndex := rg.Values.IndexOf(wwdbgrid2.DataSource.DataSet.fieldbyname('YtbehandlingID').asString);
  // edtAntal.setfocus;

end;

procedure TfrmOrder.btnSparaClick(Sender: TObject);
var
  CurrentRecord: Integer;
begin

  if btnSpara.tag = 0 then

    with sp_OrderRadInsert do
    begin

      ParamByName('@OrderID').value := qryOrderId.asInteger;

      ParamByName('@ArtikelID').value := qryLU_ArtikelArtikelId.asInteger;

      ParamByName('@Antal').value := edtAntal.valueFloat;

      ParamByName('@PrisperEnhet').value := edtPris.valueFloat;

      ParamByName('@YtbehandlingID').value := LU_Ytbehandling.LookupTable.FieldByName('YtbehandlingId').asInteger;

      ParamByName('@FrånLager').value := edtFranLager.valueFloat;

      ParamByName('@AttProducera').value := edtAttProducera.valueFloat;

      ParamByName('@TillLager').value := edtTillLager.valueFloat;

      Label8.Caption := 'Ny rad';
      execproc;
      btnSpara.enabled := false;
    end

  else

    with sp_OrderradUpdate do
    begin
      CurrentRecord := qryOrderrad.FieldByName('Id').asInteger;

      ParamByName('@OrderradID').value := qryOrderradId.asInteger;
      ParamByName('@ArtikelID').value := qryLU_ArtikelArtikelId.asInteger;
      ParamByName('@Antal').value := strtofloat(edtAntal.text);
      ParamByName('@PrisperEnhet').value := strtofloat(edtPris.text);
      ParamByName('@YtbehandlingID').value := LU_Ytbehandling.LookupTable.FieldByName('YtbehandlingId').asInteger;
      ParamByName('@FrånLager').value := edtFranLager.valueFloat;
      ParamByName('@AttProducera').value := edtAttProducera.valueFloat;
      ParamByName('@TillLager').value := edtTillLager.valueFloat;
      ParamByName('@AvrapporteradPlasmatid').value := edtLasertid.valueFloat;
      ParamByName('@Skrotandelprocent').value := edtSkrot.valueFloat;
      ParamByName('@Vikt').value := edtVikt.valueFloat;

      Label8.Caption := 'Ändra rad';
      execproc;

    end;

  with qryOrderrad do
  begin
    close;
    open;
    if btnSpara.tag = 1 then // Ändringsläge
    begin
      Locate('Id', CurrentRecord, []);
    end;
  end;

  btnSpara.tag := 0;
  btnSpara.enabled := false;
  btnAvbryt.enabled := false;

  edtAntal.text := '';
  edtFranLager.text := '';
  edtTillLager.text := '';
  edtAttProducera.text := '';

  edtPris.text := '';
  edtArtikel.LookupValue := '';
  Label8.Font.Color := clBlack;
  edtArtikel.text := '';
  qryOrderHistory.close;
  btnEdit.enabled := true;
  btnDelete.enabled := true;

  PageControl1.ActivePageIndex := 0;
  pnlOrderrad.visible := true;

  lblNyArtikel.enabled := true;

  btnEdit.enabled := true;
  btnDelete.enabled := true;
  edtArtikel.enabled := true;
  edtArtikel.setfocus;
  pnlOrderrad.visible := false;

end;

procedure TfrmOrder.edtPrisChange(Sender: TObject);
begin

  btnSpara.enabled := (edtAntal.valueFloat <> 0) or (edtAttProducera.valueFloat <> 0);
  btnSpara.default := btnSpara.enabled;

end;

procedure TfrmOrder.Skrivutorderclick(Sender: TObject);
begin
  with TrptOrder.create(application) do
  begin
    if (Sender as TToolbutton).tag = 2 then
      header.Caption := 'Fakturaunderlag';

    with qry do
    begin
      close;
      ParamByName('OrderID').value := qryOrderOrderId.asInteger;
      open;
    end;

    report.PreviewHeight := 800;
    report.Previewwidth := 500;

    report.preview;

  end;

end;

procedure TfrmOrder.FormShow(Sender: TObject);
var
  page: Integer;
begin
  // width := 700;
  // height := 565;

  // Gömma tabs i Tpagecontrol
  for page := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[page].TabVisible := false;
  end;

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
  DBText1.visible := (edtArtikel.text <> '');
  // pnlArtikel.height := 0;
  // pnlArtikel.visible := false;
  edtArtikel.setfocus;
  // pnlOrderRad.visible := false;
  PageControl1.TabIndex := 1;
  frmmain.tbtnOrderlista.enabled := true;

end;

procedure TfrmOrder.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin
  if (Field.FieldName = 'cRitningsnoteringFinns_disp') and
    (qryOrderrad.FieldByName('cRitningsnoteringFinns').AsBoolean = true) then
    ABrush.Color := clGreen;

  if (Field.FieldName = 'Lagersaldo') then
  begin
    if (qryOrderrad.FieldByName('Lagersaldo').asInteger <> 0) then
    begin
      AFont.Color := clBlack;
      ABrush.Color := $0000CC00;
    end
    else
    begin
      AFont.Color := clWhite;
      ABrush.Color := clWhite;
    end;

  end;

end;

procedure TfrmOrder.wwDBGrid1DblClick(Sender: TObject);
begin

  btnSpara.tag := 1; // ändringsläge
  Label8.Caption := 'Ändra orderrad';

  lblNyArtikel.enabled := false;
  wwDBGrid1.enabled := false;

  PageControl1.ActivePageIndex := 0;
  pnlOrderrad.visible := true;

  edtArtikel.text := qryOrderradArtikelnummer.asString;
  qryLU_Artikel.Locate('ArtikelID', qryOrderradArtikelId.asInteger, []);

  qryOrderHistory.close;
  qryOrderHistory.open;
  qryOrderradPrisinfo.open;

  // edtLagerplats.Text:=qryOrderrad...
  edtAntal.setfloat(qryOrderradAntal.asInteger);
  edtTillLager.setfloat(qryOrderradTillLager.asInteger);
  edtFranLager.setfloat(qryOrderradFrånLager.asInteger);
  edtAttProducera.setfloat(qryOrderradAttproducera.asInteger);
  edtPris.setfloat(qryOrderradPrisperEnhet.asFloat);
  edtLasertid.setfloat(qryOrderradAvrapporteradPlasmatid.asFloat);
  edtSkrot.setfloat(qryOrderradSkrotandelProcent.asFloat);
  edtVikt.setfloat(qryOrderradVikt.asFloat);

  Label8.Font.Color := clRed;
  btnAvbryt.enabled := true;

  btnEdit.enabled := false;
  btnDelete.enabled := false;
  LU_Ytbehandling.LookupValue := qryOrderradYtbehandlingId.asString;

  // rg.Value := trim(qryOrderradYtbehandlingID.asString);
  // rg.ItemIndex := rg.Values.IndexOf(qryOrderradYtbehandlingID.asString);
  btnSpara.enabled := false;
  edtArtikel.enabled := false;
  edtPris.setfocus;

end;

procedure TfrmOrder.wwDBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  i: Integer;
  FileName: string;
begin
  // Retrieve the dropped file(s)
  // for i := 0 to sender.Files.Count - 1 do
  // begin
  // FileName := DragObject.Files[i];
  // showmessage(ExtractFileName(FileName));
  /// /
  /// /    // Add the file to the grid
  /// /    Grid1.RowCount := Grid1.RowCount + 1;
  /// /    Grid1.Cells[0, Grid1.RowCount - 1] := ExtractFileName(FileName);
  /// /    Grid1.Cells[1, Grid1.RowCount - 1] := ExtractFilePath(FileName);
  //
  // end;
end;

procedure TfrmOrder.wwDBGrid1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  (* for S in Data.Files do
    begin
    ext := uppercase(stringreplace(extractfileext(S), '.', '', []));
    if pos(ext, 'JPG PNG JPEG GIF') = 0 then
    Operation := TDragOperation.None
    else
    Operation := TDragOperation.copy;
    end;
  *)
  // Operation := TDragOperation.Copy;
  // Accept:= (sender is Tfile);
  // Accept := Source is TDropFilesTarget;
end;

procedure TfrmOrder.wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
begin
  with qryOrderrad do
  begin
    close;
    sql.Delete(sql.Count - 1);
    // showmessage(sql.Text);
    sql.Add('order by ' + AFieldName);
    // showmessage(sql.Text);
    open;
  end;
end;

procedure TfrmOrder.FormActivate(Sender: TObject);
begin
  with qryOrderrad do
  begin
    close;
    open;
  end;

end;

procedure TfrmOrder.FormCreate(Sender: TObject);
begin

  with qryOrder do
  begin
    ParamByName('OrderID').value := frmOrderlista.dsoOrderlist.DataSet.FieldByName('OrderID').asInteger;
    open;
  end;
  qryOrderrad.open;
  qryLU_Artikel.open;
  // qryOrderHistory.open;
  qryOrderradPrisinfo.open;
  dm.qryLUYtbehandling.open;
  qryArtikelgrupp.close;
  // qryLU_kund.open;

end;

procedure TfrmOrder.ToolButton4Click(Sender: TObject);
begin

  with TrptArbetsOrder.create(application) do
  begin
    with qry do
    begin
      close;
      params.ParamByName('OrderID').value := qryOrderOrderId.asInteger;
      open;
    end;

    report.preview;
  end;

end;

procedure TfrmOrder.Bockritningok1Click(Sender: TObject);
begin

  with spArtikelBockritningSet do
  begin
    ParamByName('@ArtikelId').value := qryOrderrad.FieldByName('ArtikelId').asInteger;
    ParamByName('@BockritningFinns').value := not qryOrderrad.FieldByName('Bockritning').AsBoolean;
    execproc;
  end;
  qryOrderrad.Refresh;

end;

procedure TfrmOrder.btnAvbrytClick(Sender: TObject);
begin

  btnSpara.tag := 0;
  // rg.ItemIndex := -1;
  btnSpara.enabled := false;
  btnEdit.enabled := true;
  btnDelete.enabled := true;

  edtAntal.text := '';
  edtFranLager.text := '';
  edtTillLager.text := '';
  edtAttProducera.text := '';

  edtPris.setfloat(0);
  edtArtikel.LookupValue := '';
  Label8.Font.Color := clBlack;
  btnAvbryt.enabled := false;
  DBText1.enabled := false;
  edtArtikel.text := '';
  qryOrderHistory.close;
  lblNyArtikel.enabled := true;
  btnEdit.enabled := true;
  btnDelete.enabled := true;
  Label8.Caption := 'Ny Orderrad';
  wwDBGrid2.visible := false;

  pnlOrderrad.visible := false;

  edtArtikel.enabled := true;
  edtArtikel.setfocus;

end;

procedure TfrmOrder.LblNyArtikelclick(Sender: TObject);
begin

  PageControl1.ActivePageIndex := 1;
  pnlArtikel.visible := true;

  btnSpara.enabled := false;
  btnAvbryt.enabled := false;
  edtArtikel.enabled := false;
  lblNyArtikel.enabled := false;
  edtAntal.valueFloat := 0;
  edtFranLager.valueFloat := 0;
  edtTillLager.valueFloat := 0;
  edtAttProducera.valueFloat := 0;

  edtPris.valueFloat := 0;

  // dm.qryArtikel.append;
  // dm.qryArtikel.FieldByName('KundID').asInteger :=
  // qryOrder.FieldByName('KundID').asInteger;
  //
  // dm.qryArtikel.FieldByName('Artikelnummer').asString := edtArtikel.value;

  // luYtbehandlingdefault.Selected.Clear;

  if edtArtikel.value <> '' then
    edtBeteckning.setfocus
  else
    edtArtikelnummer.setfocus;

end;

procedure TfrmOrder.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then // Ist die gedrückte Taste ASCII-Return?
  begin
    Perform(WM_NEXTDLGCTL, 0, 0); // Zum nächsten Element wechseln
    Key := #0; // Gedrückte Taste unwirksam machen
  end;

end;

procedure TfrmOrder.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin

  if (qryOrderHistoryOrdertypId.asInteger = 3) or // Offert
    (qryOrderHistoryOrderInfo.asString = 'Offertpris') then

  begin
    AFont.Color := clRed;
    // if highlight then abrush
  end;
end;

procedure TfrmOrder.wwDBGrid2DblClick(Sender: TObject);
begin
  ExpButton.Expanded := true;
end;

procedure TfrmOrder.Markerasomoffert1Click(Sender: TObject);
var
  Nytext: string;

begin
  if qryOrderHistoryOrderInfo.asString = 'Offertpris' then
    Nytext := ''
  else
    Nytext := 'Offertpris';
  with qryOrderHistory do
  begin
    edit;
    qryOrderHistoryOrderInfo.asString := Nytext;
    post;
  end;

end;

procedure TfrmOrder.mmArtikeltextClick(Sender: TObject);
begin

  with TfrmArtikeltext.create(application) do
  begin

    with qryArtikelText do
    begin
      open;
      if RecordCount = 0 then
      begin
        append;
        FieldByName('Id').asInteger := qryLU_Artikel.FieldByName('Id').asInteger;

      end
      else
        edit;

      memo1.text := FieldByName('text').asString;
      show;
      if modalresult = mrOK then
      begin
        qryArtikelText.FieldByName('text').asString := memo1.text;
        post;
        mmArtikeltext.text := memo1.text;
      end
      else
        cancel;
    end;
  end;

end;

procedure TfrmOrder.ndra1Click(Sender: TObject);
begin
  qryOrderrad.edit;
end;

procedure TfrmOrder.PopupMenu1Popup(Sender: TObject);
begin
  if qryOrderrad.FieldByName('Bockritning').AsBoolean = true then
    Bockritningok1.Caption := 'Avmarkera bockritning'
  else
    Bockritningok1.Caption := 'Bockritning klar';

end;

procedure TfrmOrder.qryOrderHistoryCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('InforaderFinns').AsBoolean := (DataSet.FieldByName('Antalinforader').asInteger > 0);

end;

procedure TfrmOrder.qryOrderradAfterOpen(DataSet: TDataSet);
begin
  with qryOrderradSum do
  begin
    close;
    qryOrderradSum.ParamByName('Orderid').value := qryOrder.FieldByName('Id').asInteger;
    open;
  end;

  wwdbgrid1.ColumnByName('Totaltid').FooterValue:= FloatToStrF(qryOrderradSumSumTotaltid.asFloat,ffFixed , 10, 2);
  wwdbgrid1.ColumnByName('Extratid').FooterValue:= FloatToStrF(qryOrderradSumSumExtratid.asFloat,ffFixed , 10, 2);
  wwdbgrid1.ColumnByName('TidTotalt').FooterValue:= FloatToStrF(qryOrderradSumSumTotalt.asFloat,ffFixed , 10,2);


end;

procedure TfrmOrder.qryOrderradCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Bockritning').AsBoolean then
    DataSet.FieldByName('cBock').value := 1
  else
    DataSet.FieldByName('cBock').value := 0;

  if DataSet.FieldByName('FixaturFinns').AsBoolean then
    DataSet.FieldByName('cFixatur').value := 1
  else
    DataSet.FieldByName('cFixatur').value := 0;

  DataSet.FieldByName('cRitningsnoteringFinns').AsBoolean := DataSet.FieldByName('Notering').asString <> '';

end;

procedure TfrmOrder.btnNyArtikelAvbrytClick(Sender: TObject);
begin

  edtArtikelnummer.text := '';
  edtBeteckning.text := '';
  luYtbehandlingdefault.RefreshDisplay;

  btnNyArtikelAvbryt.default := false;

  btnSpara.enabled := true;
  btnAvbryt.enabled := true;
  dm.qryArtikel.cancel;

  pnlArtikel.Height := 0;
  edtArtikel.enabled := true;
  lblNyArtikel.enabled := true;

  PageControl1.ActivePageIndex := 0;

  edtArtikel.setfocus;
  DBText1.visible := false;

end;

procedure TfrmOrder.btnNyArtikelSparaClick(Sender: TObject);
var
  artikelid: Integer;
begin

  btnNyArtikelAvbryt.default := false;
  // btnSpara.Enabled := true;

  with sp_Artikel_insert do
  begin

    ParamByName('@kundid').value := qryOrder.FieldByName('KundId').asInteger;
    ParamByName('@Artikelnummer').value := edtArtikelnummer.text;
    ParamByName('@Beteckning').value := edtBeteckning.text;
    ParamByName('@YtbehandlingIdDefault').value := luYtbehandlingdefault.LookupTable.FieldByName('Id').asString;
    execproc;
    artikelid := ParamByName('@RETURN_VALUE').asInteger;
  end;

  btnAvbryt.enabled := true;
  edtArtikel.enabled := true;
  lblNyArtikel.enabled := true;

  PageControl1.ActivePageIndex := 0;

  requery(qryLU_Artikel);
  qryLU_Artikel.Locate('ArtikelID', artikelid, []);

  edtArtikel.value := qryLU_ArtikelArtikelnummer.asString;
  edtArtikel.text := qryLU_ArtikelBeteckning.asString;

  ArtikelCloseup;

end;

procedure TfrmOrder.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if ShortCutToText(ShortCut(Key, Shift)) = 'Ctrl+N' then
  begin
    LblNyArtikelclick(Sender);
    Key := 0;
  end;

end;

procedure TfrmOrder.edtArtikelNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: string; var Accept: Boolean);
begin

  DBText1.visible := false;
  if NewValue <> '' then
  begin
    Accept := false;
    LblNyArtikelclick(Sender);
    edtArtikelnummer.text := NewValue;
    edtBeteckning.setfocus;

  end;

end;

procedure TfrmOrder.edtArtikelnummerChange(Sender: TObject);
begin
  btnNyArtikelSpara.enabled :=

    (edtArtikelnummer.text <> '') and (edtBeteckning.text <> '');

  // (edtArtikelnummer.text <> '') and
  // (edtBeteckning.text <> '') and
  // (luYtbehandlingdefault.Text <>'');

end;

procedure TfrmOrder.edtAntalChange(Sender: TObject);
begin
  (*
    edtAntal.text
    edtAttProducera.text:=
  *)
end;

procedure TfrmOrder.edtAntalExit(Sender: TObject);
begin

  if (edtAntal.valueFloat >= edtLagersaldo.valueFloat) then
    edtFranLager.setfloat(edtLagersaldo.valueFloat);

end;

procedure TfrmOrder.edtFranLagerExit(Sender: TObject);
begin

  if edtFranLager.valueFloat <> 0 then
    edtAttProducera.setfloat(edtAntal.valueFloat - edtFranLager.valueFloat)
  else
    edtAttProducera.setfloat(edtAntal.valueFloat);

end;

procedure TfrmOrder.edtAttProduceraExit(Sender: TObject);
begin
  edtTillLager.setfloat((edtAntal.valueFloat - edtFranLager.valueFloat - edtAttProducera.valueFloat) * -1);

end;

procedure TfrmOrder.edtPrisEnter(Sender: TObject);
begin
  wwDBGrid1.enabled := false;

end;

procedure TfrmOrder.ExpButtonCheckVisibleButton(Sender: TwwExpandButton; DataSet: TDataSet; var AShowExpand: Boolean);
begin
  AShowExpand := DataSet.FieldByName('AntalInforader').asInteger > 0;

end;

procedure TfrmOrder.edtArtikelEnter(Sender: TObject);
begin

  wwDBGrid1.enabled := true;
  lblNyArtikel.enabled := true;

  if edtArtikel.text = '' then
  begin
    qryArtikelgrupp.close;
    dbgArtikelgrupp.visible := false;
    wwDBGrid2.visible := false;
  end;

end;

end.
