unit fOrderkalkyl;

interface

uses
  system.uitypes, Winapi.Windows, Winapi.Messages, system.SysUtils, system.Variants, system.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.wwdblook, Datamodule,
  Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, EditNew, fArtikel, Vcl.DBCGrids, Vcl.Menus,
  Vcl.Wwdbdatetimepicker, rOffertKalkyl;

type
  TfrmOrderkalkyl = class(TForm)
    sp_KundLookuplist: TFDStoredProc;
    sp_KundLookuplistKundnamn: TStringField;
    sp_KundLookuplistKundId: TIntegerField;
    pnlOffertkalkyl: TPanel;
    qryLU_Artikel: TFDQuery;
    qryLU_ArtikelArtikelId: TFDAutoIncField;
    qryLU_ArtikelArtikel: TStringField;
    qryLU_ArtikelBeteckning: TStringField;
    qryLU_ArtikelYtbehandlingIdDefault: TIntegerField;
    qryLU_ArtikelArtikelnummer: TStringField;
    sp_OrderradHistoryArtikel: TFDStoredProc;
    sp_OrderradHistoryArtikelOrderdatum: TDateField;
    sp_OrderradHistoryArtikelAntal: TFMTBCDField;
    sp_OrderradHistoryArtikelPrisPerEnhet: TCurrencyField;
    sp_OrderradHistoryArtikelTotaltid: TIntegerField;
    sp_OrderradHistoryArtikelVikt: TFloatField;
    sp_OrderradHistoryArtikelAvrapporteradPlasmatid: TIntegerField;
    sp_OrderradHistoryArtikelSkrotandelProcent: TBCDField;
    sp_OrderradHistoryArtikelYtbehandling: TStringField;
    sp_OrderradHistoryArtikelOrderradId: TFDAutoIncField;
    sp_OrderradHistoryArtikelYtbehandlingId: TIntegerField;
    sp_OrderradHistoryArtikelOrderstatusId: TIntegerField;
    sp_OrderradHistoryArtikelOrderststatus: TStringField;
    sp_OrderradHistoryArtikelFakturadatum: TDateField;
    sp_OrderradHistoryArtikelOrderId: TFDAutoIncField;
    sp_OrderradHistoryArtikelAvrapporteradDatum: TSQLTimeStampField;
    dsoOrderradHistoryArtikel: TDataSource;
    dsoQry: TDataSource;
    sp_OrderRadInsert: TFDStoredProc;
    sp_OrderhuvudInsert: TFDStoredProc;
    qry: TFDQuery;
    qryId: TFDAutoIncField;
    qryArtikelId: TIntegerField;
    qryAntal: TIntegerField;
    qryTillverkningstidUppskattad: TIntegerField;
    qryPrisUppskattat: TCurrencyField;
    qryPrisFastställt: TCurrencyField;
    qryBorttagen: TSQLTimeStampField;
    qryOffertId: TIntegerField;
    sp_Offertkalkyl: TFDStoredProc;
    PopupMenu2: TPopupMenu;
    mnuEdit: TMenuItem;
    mnuDelete: TMenuItem;
    qryPrisPerstk: TFloatField;
    PanelLower: TPanel;
    PrisUppskattatSt: TCurrencyField;
    N1: TMenuItem;
    Panel3: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edtKund: TwwDBLookupCombo;
    edtKontaktperson: TwwDBLookupCombo;
    Panel1: TPanel;
    Panel4: TPanel;
    Button2: TButton;
    qryOffertkalkyl: TFDQuery;
    dsoOffertkalkyl: TDataSource;
    dgrKalkyl: TwwDBGrid;
    btnNykalkyl: TButton;
    btnSkapaOffert: TButton;
    edtForfragan: TDBEdit;
    edtKalkyldatum: TwwDBDateTimePicker;
    edtLeveransdatum: TwwDBDateTimePicker;
    qryOffertkalkylId: TIntegerField;
    qryKund: TFDQuery;
    qryKundId: TFDAutoIncField;
    qryKundKundnamn: TStringField;
    pumOffertkalkyl: TPopupMenu;
    abortkalkyl1: TMenuItem;
    spOffertkalkylDelete: TFDStoredProc;
    qryYtbehandlingId: TIntegerField;
    qryViktStk: TFloatField;
    qryLasertidSelStk: TFloatField;
    qrySkrotandelprocent: TFloatField;
    qryArtikeluppslag: TFDQuery;
    qryArtikeluppslagId: TFDAutoIncField;
    qryArtikeluppslagArtikel: TStringField;
    qryArtikel: TStringField;
    qryYtbehandlingUppslag: TFDQuery;
    Ytbehandling: TStringField;
    edtVarReferens: TwwDBLookupCombo;
    Label2: TLabel;
    qryLU_personal: TFDQuery;
    qryLU_personalNamn: TStringField;
    qryLU_personalId: TFDAutoIncField;
    qryOffertkalkylId2: TFDAutoIncField;
    qryOffertkalkylKundpersonid: TIntegerField;
    qryOffertkalkylKundnamn: TStringField;
    qryOffertkalkylFörfrågan: TStringField;
    qryOffertkalkylAntalArtiklar: TIntegerField;
    qryOffertkalkylKalkyldatum: TDateField;
    qryOffertkalkylLeveransdatum: TDateField;
    qryOffertkalkylOrdusId: TIntegerField;
    qryOffertkalkylKundid: TIntegerField;
    qryOffertkalkylVårReferensId: TIntegerField;
    Panel2: TPanel;
    Label8: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    lblAntal: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label7: TLabel;
    edtPFst: TEditN;
    edtPU: TEditN;
    edtTVTU: TEditN;
    edtAntal: TEditN;
    btnPost: TButton;
    wwDBGrid3: TwwDBGrid;
    LU_Artikel: TwwDBLookupCombo;
    Button1: TButton;
    Panel5: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    edtYtbehandling: TwwDBLookupCombo;
    edtLasertid: TEditN;
    edtSkrotandel: TEditN;
    edtVikt: TEditN;
    edtArbetstidStk: TEditN;
    edtPUst: TEditN;
    Panel6: TPanel;
    wwDBGrid2: TwwDBGrid;
    edtRabatt: TEditN;
    Label3: TLabel;
    qryPrisUppskattatStRabatt: TCurrencyField;
    btnSkrivUt: TButton;
    procedure FormShow(Sender: TObject);
    procedure edtKundCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure edtKundBeforeDropDown(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure LU_ArtikelCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure edtKontaktpersonCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure btnSkapaOffertClick(Sender: TObject);
    procedure wwDBGrid3DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure LU_ArtikelChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPostMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnPostMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnDeleteClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure mnuEditClick(Sender: TObject);
    procedure mnuDeleteClick(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure edtFieldsChange(Sender: TObject);
    procedure btnSkapaOffertEnter(Sender: TObject);
    procedure edtLasertidExit(Sender: TObject);
    procedure edtSkrotandelExit(Sender: TObject);
    procedure edtViktExit(Sender: TObject);
    procedure btnNykalkylClick(Sender: TObject);
    procedure dgrKalkylRowChanged(Sender: TObject);
    procedure edtLeveransdatumExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsoOffertkalkylStateChange(Sender: TObject);
    procedure abortkalkyl1Click(Sender: TObject);
    procedure edtPFstExit(Sender: TObject);
    procedure qryOffertkalkylAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure edtRabattChange(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure wwDBGrid2DrawTitleCell(Sender: TObject; Canvas: TCanvas; Field: TField; Rect: TRect;
      var DefaultDrawing: Boolean);
    procedure btnSkrivUtClick(Sender: TObject);
  private
    i: Integer;
    procedure EnableLowerpanel(isEnabled: Boolean);
    procedure resetbasefields;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderkalkyl: TfrmOrderkalkyl;
  OrderHuvudId: Integer;
  huvudSkapat: Boolean;
  doEdit: Boolean;
  fwidth: Integer;

implementation

var
  ArtikelId: Integer;

{$R *.dfm}

procedure TfrmOrderkalkyl.abortkalkyl1Click(Sender: TObject);
begin
  if MessageDlg('Vill du ta bort hela kalkylen nr: ' + qryOffertkalkyl.FieldByName('Id').AsString + '?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin

    with spOffertkalkylDelete do
    begin
      ParamByName('@OffertkalkylId').value := qryOffertkalkyl.FieldByName('Id').asInteger;
      execproc;
    end;

    qryOffertkalkyl.Refresh
  end;
end;

procedure TfrmOrderkalkyl.btnCloseClick(Sender: TObject);
begin
  close;

end;

procedure TfrmOrderkalkyl.btnSkapaOffertClick(Sender: TObject);
begin

  with sp_OrderhuvudInsert do
  begin
    ParamByName('@KundId').value := qryOffertkalkyl.FieldByName('Kundid').asInteger;
    ParamByName('@Ordernummer').value := edtForfragan.Text;
    ParamByName('@ReferensId').value := dm.sp_KundpersonlistforKund.FieldByName('KundpersonId').asInteger;
    ParamByName('@OrdertypId').value := 3; // Offert
    ParamByName('@OrderstatusId').value := 5; // Offert
    ParamByName('@Orderdatum').value := edtKalkyldatum.Date; // Offert
    ParamByName('@Leveransdatum').value := edtLeveransdatum.Date; // Offert
    ParamByName('@OffertkalkylId').value := qryOffertkalkyl.FieldByName('Id').asInteger;
    ParamByName('@VårReferensPersonId').value := qryLU_personal.FieldByName('Id').asInteger;

    execproc;
    OrderHuvudId := params[0].asInteger;
    huvudSkapat := true;
  end;

  with qry do
  begin
    first;
    while (not eof) do
    begin
      with sp_OrderRadInsert do
      begin
        ParamByName('@Orderid').value := OrderHuvudId;
        ParamByName('@ArtikelId').value := qry.FieldByName('ArtikelId').asInteger;
        ParamByName('@PrisperEnhet').value := qry.FieldByName('Prisfastställt').asInteger;
        ParamByName('@Antal').value := qry.FieldByName('Antal').asInteger;
        ParamByName('@YtbehandlingId').value := qry.FieldByName('YtbehandlingId').asInteger;
        ParamByName('@Offertdatum').value :=   edtKalkyldatum.Date;

        execproc;
      end;
      next;
    end;
  end;

  sp_OrderradHistoryArtikel.close;

  edtYtbehandling.Text := '';

  resetbasefields;

  huvudSkapat := false;

  EnableLowerpanel(false);

  LU_Artikel.Text := '';

  // btnSkapaOffert.Enabled := false;

  showmessage('Offert med Orderid: ' + inttostr(OrderHuvudId) + ' är skapad - kolla under fliken Offerter');

  LU_Artikel.Enabled := true;
  LU_Artikel.SetFocus;

end;

procedure TfrmOrderkalkyl.btnSkapaOffertEnter(Sender: TObject);
begin
  btnSkapaOffert.Enabled := qry.RecordCount > 0;
end;

procedure TfrmOrderkalkyl.btnSkrivUtClick(Sender: TObject);
begin
  with TrptOffertkalkyl.Create(application) do
  begin
    qry.Close;
    qry.ParamByName('Offertkalkylid').Value:= qryOffertkalkyl.FieldByName('Id').AsInteger;
    qry.Open;
    report.Preview;
  end;
end;

procedure TfrmOrderkalkyl.Button1Click(Sender: TObject);
begin
  with TfrmArtikel.Create(application) do
    Showmodal;
end;

procedure TfrmOrderkalkyl.Button2Click(Sender: TObject);
begin
  self.close;
end;

procedure TfrmOrderkalkyl.Button3Click(Sender: TObject);
var
  i: Integer;
begin

  with qry do
  begin
    if not doEdit then
      append
    else
      edit;

    FieldByName('Antal').asInteger := edtAntal.ValueInteger;
    FieldByName('ArtikelId').asInteger := ArtikelId;
    FieldByName('LasertidSelStk').Asfloat := edtLasertid.ValueFloat;
    FieldByName('Skrotandelprocent').Asfloat := edtSkrotandel.ValueFloat;
    FieldByName('Viktstk').Asfloat := edtVikt.ValueFloat;
    FieldByName('YtbehandlingId').asInteger := dm.qryLUYtbehandling.FieldByName('YtbehandlingId').asInteger;

    FieldByName('TillverkningstidUppskattad').AsCurrency := edtTVTU.ValueFloat;
    FieldByName('PrisUppskattat').AsCurrency := edtPU.ValueFloat;
    FieldByName('PrisFastställt').AsCurrency := edtPFst.ValueFloat;

    post;

    edtAntal.setInteger(0);
    edtAntal.Text := '';

    edtTVTU.setfloat(0);
    edtTVTU.Text := '';

    edtPU.setfloat(0);
    edtPU.Text := '';

    edtPUst.setfloat(0);
    edtPUst.Text := '';

    edtPFst.setfloat(0);
    edtPFst.Text := '';

    edtAntal.SetFocus;
  end;
  btnSkapaOffert.Enabled := qry.RecordCount > 0;

  for i := 0 to pred(self.ComponentCount) do
  begin
    if (self.Components[i] is TEditN) then
    begin
      TEditN(self.Components[i]).FontColorOnFocus := clBlack;
      TEditN(self.Components[i]).FontColorOnNotFocus := clBlack;
    end;

  end;
  doEdit := false;
  qryOffertkalkyl.Refresh;
  qry.Refresh;
  btnPost.Enabled := false;
end;

procedure TfrmOrderkalkyl.DBEdit1Exit(Sender: TObject);
begin

  // if (dsoQry.state in [dsEdit, dsInsert]) and (qry.FieldByName('Antal').AsInteger <> 0) then
  // qry.FieldByName('Prisuppskattat').Value := qry.FieldByName('Antal').AsInteger * 5;

end;

procedure TfrmOrderkalkyl.DBEdit2Exit(Sender: TObject);
var
  pe: double;
begin
  (*
    if ((Sender as TEditN).Name = 'edtAntal') and (trim(edtAntal.Text) = '') then
    lblAntal.caption := 'Antal får inte vara 0!'
    else if ((Sender as TEditN).Name = 'edtTVTU') and (trim(edtTVTU.Text) = '') then
    lblAntal.caption := 'Uppskattat arbetstid får inte vara 0!'
    else
    lblAntal.caption := '';
  *)

  if (edtAntal.ValueFloat <> 0) and (edtTVTU.ValueFloat <> 0) then
  begin
    lblAntal.caption := '';

    with sp_Offertkalkyl do
    begin

      ParamByName('@ArtikelId').value := qryLU_Artikel.FieldByName('ArtikelId').asInteger;

      ParamByName('@Antal').value := edtAntal.ValueInteger;

      ParamByName('@Offertdatum').value := edtLeveransdatum.Date;

      if edtVikt.Text <> '' then
        ParamByName('@ViktStk').value := edtVikt.ValueFloat
      else
        ParamByName('@ViktStk').value := 0;

      if edtLasertid.Text <> '' then
        ParamByName('@LasertidsekStk').value := edtLasertid.ValueFloat
      else
        ParamByName('@LasertidsekStk').value := edtLasertid.ValueFloat;

      if edtSkrotandel.Text <> '' then
        ParamByName('@SkrotandelProcent').value := edtSkrotandel.ValueFloat
      else
        ParamByName('@SkrotandelProcent').value := edtSkrotandel.ValueFloat;

      ParamByName('@YtbehandlingId').value := dm.qryLUYtbehandling.FieldByName('YtbehandlingId').asInteger;

      if edtTVTU.Text <> '' then
        ParamByName('@ArbetstidtotaltMinuter').value := edtTVTU.ValueFloat
      else
        ParamByName('@ArbetstidtotaltMinuter').value := 0;

      execproc;

      pe := ParamByName('@PrisperenhetAuto').Asfloat;

      // dbedit3.DataSource.DataSet.FieldByName('PrisUppskattat').AsCurrency := pe * qry.FieldByName('Antal').AsFloat;
      // dbedit3.DataSource.DataSet.FieldByName('PrisFastställt').AsCurrency := pe * qry.FieldByName('Antal').AsFloat;

      edtPU.Text := floattostr(pe * edtAntal.ValueFloat);
      edtPUst.Text := floattostr(pe);
      edtPFst.Text := floattostr(pe);

    end;

  end;
  if (Sender as TEditN).name = 'edtTVTU' then
    edtPFst.SetFocus;

end;

procedure TfrmOrderkalkyl.FormCreate(Sender: TObject);
begin
  lblAntal.caption := '';
  fwidth := self.Width;
  OrderHuvudId := -1;
  huvudSkapat := false;
  doEdit := false;
end;

procedure TfrmOrderkalkyl.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // Ist die gedrückte Taste ASCII-Return?
  begin
    Key := #0; // Gedrückte Taste unwirksam machen
    Perform(WM_NEXTDLGCTL, 0, 0); // Zum nächsten Element wechseln
  end;
  if Key = #27 then // Ist die gedrückte Taste ASCII-Return?
  begin
    Key := #0; // Gedrückte Taste unwirksam machen
    // if not(qryOrderrad.State in [dsedit]) then
    // edtOrdernr.setfocus;
    // Perform(WM_NEXTDLGCTL, 0, 0); //Zum nächsten Element wechseln
  end;

end;

procedure TfrmOrderkalkyl.FormResize(Sender: TObject);
begin
  self.Width := fwidth;
end;

procedure TfrmOrderkalkyl.FormShow(Sender: TObject);
begin

  qryOffertkalkyl.Open;

  dgrKalkylRowChanged(Sender);
  sp_KundLookuplist.Open;
  qryLU_personal.Open;
  edtKalkyldatum.Date := now;
  edtLeveransdatum.Date := now;

  edtAntal.setInteger(0);
  edtAntal.Text := '';

  edtTVTU.setfloat(0);
  edtTVTU.Text := '';

  edtPU.setfloat(0);
  edtPU.Text := '';

  edtPFst.setfloat(0);
  edtPFst.Text := '';

  edtYtbehandling.Text := '';

  EnableLowerpanel(true);
  btnPost.Enabled := false;

  resetbasefields;

end;

procedure TfrmOrderkalkyl.resetbasefields;
begin

  edtLasertid.setfloat(0);
  edtLasertid.Text := '';

  edtSkrotandel.setfloat(0);
  edtSkrotandel.Text := '';

  edtVikt.setfloat(0);
  edtVikt.Text := '';

  edtArbetstidStk.setfloat(0);
  edtArbetstidStk.Text := '';
end;

procedure TfrmOrderkalkyl.dgrKalkylRowChanged(Sender: TObject);
var
  Kundid: Integer;

begin

  Kundid := qryOffertkalkyl.FieldByName('Kundid').asInteger;

  with qry do
  begin
    close;
    ParamByName('OffertkalkylId').value := qryOffertkalkyl.FieldByName('Id').asInteger;
    Open;
  end;

  with dm.sp_KundpersonlistforKund do
  begin
    close;
    ParamByName('@Kundid').value := Kundid;
    Open;
  end;

  with qryLU_Artikel do
  begin
    close;
    ParamByName('KundID').value := Kundid;
    Open;
  end;
end;

procedure TfrmOrderkalkyl.dsoOffertkalkylStateChange(Sender: TObject);
begin

  // btnNykalkyl.Enabled:= (qryOffertkalkyl.State = dsBrowse)
  (*
    if qryOffertkalkyl.State = dsEdit then
    Label3.caption := 'Edit'
    else if qryOffertkalkyl.State = dsInsert then
    Label3.caption := 'Insert'
    else
    Label3.caption := 'Browse';
  *)
end;

procedure TfrmOrderkalkyl.wwDBGrid2CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if Field.FieldName = 'PrisPerstk' then
    ABrush.Color := clMedGray;

  if (Field.FieldName = 'PrisFastställt') and (qry.State in [dsEdit]) then
    AFont.Color := clBlue;

end;

procedure TfrmOrderkalkyl.wwDBGrid2DblClick(Sender: TObject);
begin
  qry.edit;
end;

procedure TfrmOrderkalkyl.wwDBGrid2DrawTitleCell(Sender: TObject; Canvas: TCanvas; Field: TField; Rect: TRect;
  var DefaultDrawing: Boolean);
begin

  if Field.FieldName = 'PrisFastställt' then
    Canvas.Font.Style := [fsBold];

end;

procedure TfrmOrderkalkyl.wwDBGrid2TitleButtonClick(Sender: TObject; AFieldName: string);
begin
  //
  if AFieldName = 'PrisFastställt' then
  begin

    if dgediting in wwDBGrid2.Options then
    begin

      qryArtikel.readonly := false;
      Ytbehandling.readonly := false;
      qryAntal.readonly := false;
      qryTillverkningstidUppskattad.readonly := false;
      qryPrisUppskattat.readonly := false;
      qryPrisUppskattatStRabatt.readonly := false;
      wwDBGrid2.Options := wwDBGrid2.Options - [dgediting] + [dgRowselect];

      wwDBGrid2.PopupMenu := PopupMenu2;
    end
    else
    begin

      wwDBGrid2.Options := wwDBGrid2.Options + [dgediting] - [dgRowselect];
      qryArtikel.readonly := true;
      Ytbehandling.readonly := true;
      qryAntal.readonly := true;
      qryTillverkningstidUppskattad.readonly := true;
      qryPrisUppskattat.readonly := true;
      qryPrisUppskattatStRabatt.readonly := true;

      wwDBGrid2.SetActiveField('PrisFastställt');

      wwDBGrid2.PopupMenu := nil;

    end;
  end;

end;

procedure TfrmOrderkalkyl.wwDBGrid3DblClick(Sender: TObject);
var
  tidperstk: currency;
begin

  with sp_OrderradHistoryArtikel do
  begin

    tidperstk := FieldByName('Totaltid').AsCurrency / FieldByName('Antal').asInteger;
    edtLasertid.setfloat(FieldByName('AvrapporteradPlasmatid').AsCurrency);
    edtVikt.setfloat(FieldByName('Vikt').AsCurrency);
    edtSkrotandel.setfloat(FieldByName('Skrotandelprocent').AsCurrency);
    edtYtbehandling.LookupTable.Locate('Id', FieldByName('YtbehandlingId').asInteger, []);
    edtYtbehandling.Text := edtYtbehandling.LookupTable.FieldByName('Beteckning').AsString;

    edtArbetstidStk.Text := Format('%.2f', [tidperstk]);

  end;
  edtYtbehandling.SetFocus;
end;

procedure TfrmOrderkalkyl.edtFieldsChange(Sender: TObject);
begin
  btnPost.Enabled := (edtAntal.Text <> '') and (edtTVTU.Text <> '') and (edtPU.Text <> '') and (edtPFst.Text <> '');

  // btnPost.Default := btnPost.Enabled;

  // if ((Sender as TEditN).Text = '') and ((Sender as TEditN).EditType = etFloat) then
  // (Sender as TEditN).setfloat(0);

end;

procedure TfrmOrderkalkyl.EnableLowerpanel(isEnabled: Boolean);

begin

  edtPU.Text := '';
  edtPFst.Text := '';

  edtLasertid.Enabled := isEnabled;
  edtSkrotandel.Enabled := isEnabled;
  edtVikt.Enabled := isEnabled;
  edtYtbehandling.Enabled := isEnabled;
  edtAntal.Enabled := isEnabled;
  edtTVTU.Enabled := isEnabled;
  edtPU.Enabled := isEnabled;
  edtPUst.Enabled := isEnabled;
  edtPFst.Enabled := isEnabled;
  // btnSkapaOffert.enabled := isEnabled;
  wwDBGrid2.Enabled := isEnabled;
  wwDBGrid3.Enabled := isEnabled;

  LU_Artikel.Enabled := isEnabled;

end;

procedure TfrmOrderkalkyl.edtKundBeforeDropDown(Sender: TObject);
begin
  edtKontaktperson.Clear;

end;

procedure TfrmOrderkalkyl.edtKundCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin

  with dm.sp_KundpersonlistforKund do
  begin
    close;
    ParamByName('@Kundid').value := LookupTable.FieldByName('KundId').asInteger;
    Open;
  end;

  edtKontaktperson.Enabled := true;
  edtVarReferens.Enabled := true;
  edtKontaktperson.DropDown;

end;

procedure TfrmOrderkalkyl.edtLasertidExit(Sender: TObject);
begin
  if doEdit then
    DBEdit2Exit(Sender);
end;

procedure TfrmOrderkalkyl.edtLeveransdatumExit(Sender: TObject);
begin
  LU_Artikel.SetFocus;
end;

procedure TfrmOrderkalkyl.edtPFstExit(Sender: TObject);
begin

  btnPost.Enabled := (edtPFst.ValueFloat <> 0) and (edtAntal.ValueFloat <> 0);
  if not btnPost.Enabled then
    edtAntal.SetFocus;

end;

procedure TfrmOrderkalkyl.edtRabattChange(Sender: TObject);
begin
  qry.Refresh;
end;

procedure TfrmOrderkalkyl.edtSkrotandelExit(Sender: TObject);
begin
  if doEdit then
    DBEdit2Exit(Sender);

end;

procedure TfrmOrderkalkyl.edtViktExit(Sender: TObject);
begin
  if doEdit then
    DBEdit2Exit(Sender);

end;

procedure TfrmOrderkalkyl.edtKontaktpersonCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin

  edtForfragan.Enabled := true;

  edtKalkyldatum.Enabled := true;
  edtVarReferens.Enabled := true;
  edtLeveransdatum.Enabled := true;
  LU_Artikel.Enabled := true;

  with qryLU_Artikel do
  begin
    close;
    ParamByName('KundID').value := sp_KundLookuplist.FieldByName('KundId').asInteger;
    Open;
  end;

  edtVarReferens.SetFocus;
  edtVarReferens.DropDown;

end;

procedure TfrmOrderkalkyl.LU_ArtikelChange(Sender: TObject);
begin

  if LU_Artikel.value = '' then
  begin
    sp_OrderradHistoryArtikel.close;
  end;

end;

procedure TfrmOrderkalkyl.LU_ArtikelCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
var
  OffertkalkyId: Integer;
begin

  ArtikelId := LookupTable.FieldByName('ArtikelId').asInteger;

  if qryOffertkalkyl.State = dsInsert then
  begin

    qryOffertkalkylKundid.asInteger := edtKund.LookupTable.FieldByName('Kundid').asInteger;
    qryOffertkalkyl.post;
    OffertkalkyId := qryOffertkalkyl.FieldByName('Id').asInteger;

    qryOffertkalkyl.close;
    qryOffertkalkyl.Open;
    qryOffertkalkyl.Locate('Id', OffertkalkyId, []);

    btnNykalkyl.caption := 'Ny kalkyl';
    btnNykalkyl.Enabled := true;
    edtKund.Enabled := false;

  end;

  if LU_Artikel.value <> '' then
  begin

    with sp_OrderradHistoryArtikel do
    begin
      close;
      ParamByName('@ArtikelId').value := ArtikelId;
      Open;
    end;

    edtYtbehandling.LookupTable.Locate('Id', LookupTable.FieldByName('YtbehandlingIdDefault').asInteger, []);
    edtYtbehandling.Text := edtYtbehandling.LookupTable.FieldByName('Beteckning').AsString;

    EnableLowerpanel(true);
    edtFieldsChange(Sender);

  end;
  EnableLowerpanel(true);
  resetbasefields;
end;

procedure TfrmOrderkalkyl.mnuDeleteClick(Sender: TObject);
begin
  qry.Delete;
  qry.close;
  qry.Open;

  btnSkapaOffert.Enabled := qry.RecordCount > 0;
end;

procedure TfrmOrderkalkyl.mnuEditClick(Sender: TObject);
var
  i: Integer;
begin

  for i := 0 to pred(self.ComponentCount) do
  begin
    if (self.Components[i] is TEditN) then
    begin
      TEditN(self.Components[i]).FontColorOnFocus := clBlue;
      TEditN(self.Components[i]).FontColorOnNotFocus := clBlue;
    end;

  end;

  ArtikelId := qry.FieldByName('ArtikelId').asInteger;
  edtAntal.Text := qry.FieldByName('Antal').AsString;
  edtPU.Text := qry.FieldByName('PrisUppskattat').AsString;
  edtPUst.Text := floattostr(qry.FieldByName('PrisUppskattat').Asfloat / qry.FieldByName('Antal').Asfloat);
  edtPFst.Text := qry.FieldByName('PrisFastställt').AsString;
  edtTVTU.Text := qry.FieldByName('TillverkningstidUppskattad').AsString;
  edtYtbehandling.value := qry.FieldByName('YtbehandlingId').AsString;
  edtLasertid.setfloat(qry.FieldByName('LasertidSelStk').Asfloat);
  edtSkrotandel.setfloat(qry.FieldByName('Skrotandelprocent').Asfloat);
  edtVikt.setfloat(qry.FieldByName('Viktstk').Asfloat);

  doEdit := true;
  edtLasertid.SetFocus;

end;

procedure TfrmOrderkalkyl.PopupMenu2Popup(Sender: TObject);
begin
  mnuEdit.Enabled := qry.RecordCount > 0;
  mnuDelete.Enabled := qry.RecordCount > 0;
end;

procedure TfrmOrderkalkyl.btnPostClick(Sender: TObject);
begin

  if (dsoQry.State in [dsEdit, dsInsert]) then
    qry.post;

end;

procedure TfrmOrderkalkyl.btnPostMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // This simulates a button
  (Sender as TPanel).BevelOuter := bvLowered;

end;

procedure TfrmOrderkalkyl.btnPostMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // This simulates a button
  (Sender as TPanel).BevelOuter := bvRaised;

end;

procedure TfrmOrderkalkyl.btnDeleteClick(Sender: TObject);
begin
  if (dsoQry.State in [dsBrowse]) and (qry.RecordCount > 0) then

    if MessageDlg('Vill du ta bort raden?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      qry.Delete;

end;

procedure TfrmOrderkalkyl.btnNykalkylClick(Sender: TObject);
begin

  if btnNykalkyl.caption = 'Avbryt' then
  begin
    qryOffertkalkyl.Cancel;
    btnNykalkyl.caption := 'Ny kalkyl';
    qryOffertkalkyl.close;
    qryOffertkalkyl.Open;
  end

  else
  begin
    with qryOffertkalkyl do
    begin
      append;
      FieldByName('Kalkyldatum').AsDateTime := now;
      FieldByName('Leveransdatum').AsDateTime := now;
    end;

    sp_OrderradHistoryArtikel.close;
    edtKund.Enabled := true;
    edtKund.SetFocus;
    btnNykalkyl.caption := 'Avbryt';
  end;
end;

procedure TfrmOrderkalkyl.qryCalcFields(DataSet: TDataSet);
begin

  if DataSet.FieldByName('Antal').Asfloat <> 0 then

    DataSet.FieldByName('prisperstk').Asfloat := DataSet.FieldByName('Prisfastställt').Asfloat /
      DataSet.FieldByName('Antal').Asfloat;

  DataSet.FieldByName('PrisUppskattatSt').Asfloat := DataSet.FieldByName('PrisUppskattat').Asfloat /
    DataSet.FieldByName('Antal').Asfloat;

  DataSet.FieldByName('prisperstk').Asfloat := DataSet.FieldByName('Prisfastställt').Asfloat /
    DataSet.FieldByName('Antal').Asfloat;

  DataSet.FieldByName('PrisUppskattatStRabatt').Asfloat := DataSet.FieldByName('PrisUppskattatSt').Asfloat -
    (DataSet.FieldByName('PrisUppskattatSt').Asfloat * edtRabatt.ValueInteger / 100);

end;

Procedure TfrmOrderkalkyl.qryNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ArtikelId').asInteger := ArtikelId;
  DataSet.FieldByName('OffertkalkylId').asInteger := qryOffertkalkyl.FieldByName('Id').asInteger;

end;

procedure TfrmOrderkalkyl.qryOffertkalkylAfterScroll(DataSet: TDataSet);
begin
  if DataSet.State in [dsEdit, dsInsert] then
    DataSet.post;

end;

end.
