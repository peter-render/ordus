unit fMainRapport2;

interface

uses

  system.UITypes, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,
  Db, StdCtrls, wwdblook, ExtCtrls, wwdbdatetimepicker, Mask,
  wwdbedit, Buttons, QuickRpt, QRCtrls, DBCtrls, EditNew, DBCGrids, Grids,
  DBGrids, Wwdbigrd, Wwdbgrid, ComCtrls, Menus, Inifiles, Variants, XPMan,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, vcl.Wwkeycb,
  vcl.ImgList, vcl.Imaging.jpeg, fArtikelnotering,
  system.IOUtils, Winapi.Windows, Winapi.ShellAPI;

type
  TfrmOrdusrapport2 = class(TForm)
    dsoLU_Order: TDataSource;
    dsoOrderrad: TDataSource;
    dsoLagersaldo: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label10: TLabel;
    Panel3: TPanel;
    DBText4: TDBText;
    Label1: TLabel;
    DBText5: TDBText;
    lbl: TLabel;
    edtOrdernr: TEditN;
    Panel4: TPanel;
    Panel5: TPanel;
    dbgrid: TwwDBGrid;
    Panel6: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label24: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label27: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    edtAntal: TDBEditN;
    edtFranlager: TDBEditN;
    edtProducerad: TDBEditN;
    edtTilllager: TDBEditN;
    DBEditN6: TDBEditN;
    edtTillverkningstid: TDBEditN;
    edtPlasmatid: TDBEditN;
    edtAntalStarter: TDBEditN;
    edtVikt: TDBEditN;
    edtSkrotandel: TDBEditN;
    edtYtbehandling: TwwDBLookupCombo;
    edtSignatur: TwwDBLookupCombo;
    btnPost: TButton;
    btnCancel: TButton;
    btnCalc: TBitBtn;
    Panel2: TPanel;
    btnEtikett: TSpeedButton;
    btnClose: TButton;
    btnFS: TButton;
    btnLagersaldo: TButton;
    btnEdit: TButton;
    Bevel3: TBevel;
    PopupMenu1: TPopupMenu;
    Tabortfrnfljesedel1: TMenuItem;
    ndraLagersaldo1: TMenuItem;
    btnPalettEtikett: TButton;
    pm: TPopupMenu;
    btnFSTransport: TButton;
    pmitem: TMenuItem;
    btnLagerplatsetikett: TButton;
    btnVisaKalender: TButton;
    BtnMaterialbestallning: TButton;
    qryOrderrad: TFDQuery;
    qryLU_Order: TFDQuery;
    qryLU_OrderOrderID: TFDAutoIncField;
    qryLU_Orderkundnamn: TStringField;
    qryGetlastOrderId: TFDQuery;
    qryGetlastOrderIdOrderId: TIntegerField;
    qryLU_personal: TFDQuery;
    qryLU_personalPersonID: TFDAutoIncField;
    qryLU_personalNamn: TStringField;
    qryLagersaldo: TFDQuery;
    qryEtikett: TFDQuery;
    qryFoljesedelperKund: TFDQuery;
    qryEtikettPersonId: TFDAutoIncField;
    qryEtikettPersonnamn: TStringField;
    qryEtikettId: TFDAutoIncField;
    qryEtikettArtikelnummer: TStringField;
    qryEtikettBeteckning: TStringField;
    qryEtikettYtbehandlingIdDefault: TIntegerField;
    qryEtikettKundID: TIntegerField;
    qryEtikettPDFFinns: TIntegerField;
    qryEtikettPDFFilnamn: TStringField;
    qryEtikettLagersaldo: TBCDField;
    qryEtikettLagerplats: TStringField;
    qryEtikettOrderID: TIntegerField;
    qryEtikettArtikelID: TIntegerField;
    qryEtikettRadNr: TIntegerField;
    qryEtikettPositionnummer: TIntegerField;
    qryEtikettAntal: TFMTBCDField;
    qryEtikettPrisPerEnhet: TCurrencyField;
    qryEtikettPrisPerEnhetAuto: TCurrencyField;
    qryEtikettDatum: TSQLTimeStampField;
    qryEtikettYtbehandlingId: TIntegerField;
    qryEtikettOrderInfo: TStringField;
    qryEtikettAvrapporteradDatum: TSQLTimeStampField;
    qryEtikettAvrapporterad: TBooleanField;
    qryEtikettTotaltid: TIntegerField;
    qryEtikettVikt: TFloatField;
    qryEtikettAvrapporteradPersonID: TIntegerField;
    qryEtikettSortorder: TIntegerField;
    qryEtikettAvrapporteradPlasmatid: TIntegerField;
    qryEtikettAvrapporteradAntalStarter: TIntegerField;
    qryEtikettAvrapporteradAntalRitningar: TIntegerField;
    qryEtikettFrånLager: TBCDField;
    qryEtikettAttProducera: TBCDField;
    qryEtikettTillLager: TBCDField;
    qryEtikettSkrotandelProcent: TBCDField;
    qryEtikettRitning1: TBlobField;
    qryEtikettFöljesedelId: TIntegerField;
    qryEtikettKalkArbetstid: TFloatField;
    qryEtikettOrderradId: TFDAutoIncField;
    qryEtikettOrdernummer: TStringField;
    qryEtikettGodsmärke: TStringField;
    qryEtikettLeveransdatum: TSQLTimeStampField;
    qryEtikettkundnamn: TStringField;
    qryFoljesedelperKundId: TFDAutoIncField;
    qryFoljesedelperKundDatum: TSQLTimeStampField;
    qryFoljesedelperKundBeteckning: TStringField;
    sp_OrderradTillFoljesedel: TFDStoredProc;
    sp_OrderradGetFoljesedelId: TFDStoredProc;
    spOrderradNyFoljesedel: TFDStoredProc;
    pnlArtikelsok: TPanel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    lblArtnr: TLabel;
    Bockritningok1: TMenuItem;
    N1: TMenuItem;
    ImageList1: TImageList;
    cb: TCheckBox;
    btnTransport: TButton;
    spOrderOrderradInsert: TFDStoredProc;
    spArtikelBockritningSet: TFDStoredProc;
    qryOrderradId: TFDAutoIncField;
    qryOrderradKundid: TIntegerField;
    qryOrderradPersonId: TFDAutoIncField;
    qryOrderradPersonnamn: TStringField;
    qryOrderradArtikelID: TFDAutoIncField;
    qryOrderradArtikelnummer: TStringField;
    f: TStringField;
    qryOrderradYtbehandlingIdDefault: TIntegerField;
    qryOrderradLagersaldo: TBCDField;
    qryOrderradLagerplats: TStringField;
    qryOrderradOrderId: TFDAutoIncField;
    qryOrderradOrdernummer: TStringField;
    qryOrderradGodsmärke: TStringField;
    qryOrderradLeveransdatum: TSQLTimeStampField;
    qryOrderradKundnamn: TStringField;
    qryOrderradBockritningFinns: TBooleanField;
    qryOrderradFöljesedelBeteckning: TStringField;
    qryOrderradRadnr: TIntegerField;
    qryOrderradPositionnummer: TIntegerField;
    qryOrderradAntal: TFMTBCDField;
    qryOrderradPrisPerEnhet: TCurrencyField;
    qryOrderradPrisPerEnhetAuto: TCurrencyField;
    qryOrderradDatum: TSQLTimeStampField;
    qryOrderradYtbehandlingId: TIntegerField;
    qryOrderradOrderinfo: TStringField;
    qryOrderradAvrapporteradDatum: TSQLTimeStampField;
    qryOrderradAvrapporterad: TBooleanField;
    qryOrderradVikt: TFloatField;
    qryOrderradAvrapporteradPersonId: TIntegerField;
    qryOrderradSortorder: TIntegerField;
    qryOrderradAvrapporteradPlasmatid: TIntegerField;
    qryOrderradAvrapporteradAntalStarter: TIntegerField;
    qryOrderradAvrapporteradAntalRitningar: TIntegerField;
    qryOrderradFrånLager: TBCDField;
    qryOrderradAttProducera: TBCDField;
    qryOrderradTillLager: TBCDField;
    qryOrderradLagerplats_1: TStringField;
    qryOrderradRitning1: TBlobField;
    qryOrderradFöljesedelId: TIntegerField;
    qryOrderradTotaltid: TIntegerField;
    qryOrderradAntalAvrapprterade: TIntegerField;
    qryOrderradAvrapporteradPlasmatidSenast: TIntegerField;
    qryOrderradSkrotandelProcentSenast: TBCDField;
    qryOrderradSkrotandelProcent: TBCDField;
    qryOrderradViktSenast: TFloatField;
    qryOrderradVikt_1: TFloatField;
    qryOrderradcBock: TIntegerField;
    qryOrderradFixaturFinns: TBooleanField;
    qryOrderradcFixatur: TIntegerField;
    Fixatur1: TMenuItem;
    spArtikelFixatuFinnsSet: TFDStoredProc;
    btnKontakter: TButton;
    Panel7: TPanel;
    Image1: TImage;
    btnJobblista: TButton;
    qryOrderradAutoPrisFinns: TStringField;
    Label3: TLabel;
    qryOrderradYtbehandlingIdForslag: TIntegerField;
    qryOrderradOrderradInfo: TStringField;
    DBEditN1: TDBEditN;
    Label6: TLabel;
    btnNotiser: TButton;
    qryOrderradcRitningsnoteringFinns: TBooleanField;
    qryOrderradNotering: TMemoField;
    qryOrderradcRitningsnoteringFinns_disp: TStringField;
    DBMemo1: TDBMemo;
    mi_visaritning: TMenuItem;
    qryOrderradUpdate: TFDQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    MemoField1: TMemoField;
    BooleanField1: TBooleanField;
    IntegerField3: TIntegerField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    FDAutoIncField1: TFDAutoIncField;
    IntegerField4: TIntegerField;
    FDAutoIncField2: TFDAutoIncField;
    FDAutoIncField3: TFDAutoIncField;
    IntegerField5: TIntegerField;
    BCDField1: TBCDField;
    StringField8: TStringField;
    BooleanField4: TBooleanField;
    FDAutoIncField4: TFDAutoIncField;
    StringField9: TStringField;
    StringField10: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField11: TStringField;
    IntegerField6: TIntegerField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField7: TIntegerField;
    StringField12: TStringField;
    SQLTimeStampField3: TSQLTimeStampField;
    FloatField1: TFloatField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    StringField13: TStringField;
    BlobField1: TBlobField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField17: TIntegerField;
    Label7: TLabel;
    DBEditN2: TDBEditN;
    qryOrderradExtratid: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure edtOrderNrExit(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edtArtikelnrExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcClick(Sender: TObject);
    procedure btnEtikettClick(Sender: TObject);
    procedure qryOrderradAfterOpen(DataSet: TDataSet);
    procedure btnLagersaldoClick(Sender: TObject);
    procedure qryOrderradAfterScroll(DataSet: TDataSet);
    procedure qryOrderradBeforeScroll(DataSet: TDataSet);
    procedure cbClick(Sender: TObject);
    procedure DisableEdit(blnDisable: boolean);
    procedure dbgridDblClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edtOrdernrEnter(Sender: TObject);
    procedure btnFSTransportClick(Sender: TObject);
    procedure btnFSClick(Sender: TObject);
    procedure qryOrderradCalcFields(DataSet: TDataSet);
    procedure Tabortfrnfljesedel1Click(Sender: TObject);
    procedure btnPalettEtikettClick(Sender: TObject);
    procedure btnFSTransportCklick(Sender: TObject);
    procedure pmitemClick(Sender: TObject);
    procedure btnLagerplatsetikettClick(Sender: TObject);
    procedure BtnMaterialbestallningClick(Sender: TObject);
    procedure btnVisaKalenderClick(Sender: TObject);
    procedure btnKontakterClick(Sender: TObject);
    procedure edtFranlagerExit(Sender: TObject);
    procedure dbgridTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure Image1Click(Sender: TObject);
    procedure cbVisaAvrapporteradeClick(Sender: TObject);
    procedure Bockritningok1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btnTransportClick(Sender: TObject);
    procedure Fixatur1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnJobblistaClick(Sender: TObject);
    procedure btnNotiserClick(Sender: TObject);
    procedure dbgridCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: boolean;
      AFont: TFont; ABrush: TBrush);
    procedure mi_visaritningClick(Sender: TObject);

  private
    function GetRitningFilename(Artikelnummer: string; kundnamn: string; OrderradId: integer): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdusrapport2: TfrmOrdusrapport2;
  strServerName: string;
  strDatabaseName: string;
  DefaultPrinterName: string;

implementation

uses fCalc, rEtikett, funclib, fFoljesedel, Datamodule,
  rPallEtikett, rLagerplatsetikett, fNyFoljesedel, fNotering, fKalender,
  fLagersaldo, fTransport, fKontakter, fjobblista;

{$R *.DFM}

procedure TfrmOrdusrapport2.FormShow(Sender: TObject);
var
  strId: string;
begin

  caption := 'Ordus Återrapportering ' + GetAppVersionBuildStr;

  pnlArtikelsok.Height := 0;

  if strId <> '' then
  begin
    edtOrdernr.Text := strId;
    edtOrderNrExit(Sender);
  end;
  DisableEdit(true);

end;

procedure TfrmOrdusrapport2.Image1Click(Sender: TObject);
begin
  with qryGetlastOrderId do
  begin
    close;
    Open;

    if edtOrdernr.Text = '' then
    begin
      edtOrdernr.Text := fieldbyname('OrderId').asString;
      edtOrdernr.setfocus;

    end;

  end;

end;

procedure TfrmOrdusrapport2.DisableEdit(blnDisable: boolean);
var
  i: integer;
begin

  for i := 0 to pred(componentcount) do
    if (components[i] is TDBEditN) then
    begin
      (components[i] as TDBEditN).color := iif(blnDisable, clBtnface, clWhite);
      (components[i] as TDBEditN).enabled := not blnDisable;
    end;

  for i := 0 to pred(componentcount) do
    if (components[i] is TwwDBLookupCombo) then
    begin
      (components[i] as TwwDBLookupCombo).color := iif(blnDisable, clBtnface, clWhite);
      (components[i] as TwwDBLookupCombo).enabled := not blnDisable;
    end;

  cb.enabled := blnDisable;

  edtSignatur.enabled := not blnDisable;
  btnEdit.enabled := not blnDisable;
  btnPost.enabled := not blnDisable;
  btnCalc.enabled := not blnDisable;
  btnCancel.enabled := not blnDisable;
  btnLagersaldo.enabled := not blnDisable;

  btnEtikett.enabled := blnDisable;
  btnPalettEtikett.enabled := blnDisable;
  btnLagerplatsetikett.enabled := blnDisable;
  btnTransport.enabled := blnDisable;
  BtnMaterialbestallning.enabled := blnDisable;
  btnVisaKalender.enabled := blnDisable;
  btnFS.enabled := blnDisable;
  btnClose.enabled := blnDisable;
  wwIncrementalSearch1.enabled := blnDisable;
  btnFSTransport.enabled := blnDisable;

end;

procedure TfrmOrdusrapport2.edtOrderNrExit(Sender: TObject);
begin

  if not(btnKontakter.Focused) then
  begin
    if not(btnClose.Focused) then
    begin
      if not(btnJobblista.Focused) then
      begin
        if not(btnNotiser.Focused) then
        begin
          if not(btnFS.Focused) then
          begin
            if edtOrdernr.Text <> '' then
            begin
              if edtOrdernr.ValueInteger > 0 then
              begin

                cb.checked := false;

                with qryOrderrad do
                begin
                  close;
                  parambyname('Orderid').value := strtoint(edtOrdernr.Text);
                  parambyname('visaavrapporterade').value := false;
                  Open;

                  if recordcount = 0 then
                  begin
                    close;
                    parambyname('visaavrapporterade').value := true;
                    cb.checked := true;
                    application.ProcessMessages;
                    Open;
                  end;

                  if recordcount > 0 then
                  begin

                    DBText4.Visible := true;
                    dbgrid.Visible := true;
                    cb.enabled := true;
                    dbgrid.setfocus;
                    btnEdit.enabled := true;
                    btnEdit.Default := true;
                    btnFSTransport.enabled := true;
                    lbl.caption := '';
                    btnEtikett.enabled := true;
                    btnLagerplatsetikett.enabled := btnEtikett.enabled;
                    btnTransport.enabled := btnEtikett.enabled;
                    // *edtSignatur.enabled := true;
                    btnPalettEtikett.enabled := true;

                    dm.qryLUYtbehandling.Open;
                    qryLU_personal.Open;
                    // *edtSignatur.Refreshdisplay;
                    pnlArtikelsok.Height := 31;



                    //
                    // Läsa in följesedlar till pm
                    //

                    (*
                      pm.Items.Clear;
                      with qryFoljesedelperKund do
                      begin
                      close;
                      parambyname('KundId').value :=
                      qryOrderrad.fieldbyname('KundiD').asString;

                      open;
                      first;
                      while not eof do
                      begin
                      mi := TMenuItem.Create(Self);
                      mi.caption := qryFoljesedelperKundBeteckning.asString;
                      mi.Tag := qryFoljesedelperKundId.asInteger;
                      mi.OnClick := pmitemClick;
                      pm.Items.add(mi);
                      next;
                      end;
                      close;
                      end;

                      mi := TMenuItem.Create(Self);
                      mi.caption := '-';
                      mi.Tag := 0;
                      mi.OnClick := pmitemClick;
                      pm.Items.add(mi);

                      mi := TMenuItem.Create(Self);
                      mi.caption := 'Ny Fölesedel';
                      mi.Tag := -1;
                      mi.OnClick := pmitemClick;
                      pm.Items.add(mi);
                    *)

                  end
                  else
                  begin
                    DBText4.Visible := false;
                    lbl.caption := 'Order med Ordernr ' + edtOrdernr.Text + ' finns inte i systemet';
                    edtOrdernr.setfocus;
                  end;
                end;

                qryOrderradAfterScroll(qryOrderrad);

              end;
            end;
            wwIncrementalSearch1.enabled := true;
            wwIncrementalSearch1.setfocus;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmOrdusrapport2.btnCloseClick(Sender: TObject);
begin
  application.terminate;
end;

procedure TfrmOrdusrapport2.edtArtikelnrExit(Sender: TObject);
begin
  with qryOrderrad do
  begin
    Open;
    edit;
  end;
end;

procedure TfrmOrdusrapport2.edtFranlagerExit(Sender: TObject);
var
  attproducera: double;
begin

  if qryOrderrad.fieldbyname('AttProducera').asFloat = 0 then
  begin
    attproducera := qryOrderrad.fieldbyname('Antal').asFloat - qryOrderrad.fieldbyname('Frånlager').asFloat;
    qryOrderrad.fieldbyname('AttProducera').asFloat := attproducera;
  end;

end;

procedure TfrmOrdusrapport2.Fixatur1Click(Sender: TObject);
begin
  with spArtikelFixatuFinnsSet do
  begin
    parambyname('@ArtikelId').value := qryOrderrad.fieldbyname('ArtikelId').asInteger;
    parambyname('@FixaturFinns').value := not qryOrderrad.fieldbyname('FixaturFinns').asBoolean;
    execproc;
  end;
  qryOrderrad.Refresh;

end;

procedure TfrmOrdusrapport2.FormCreate(Sender: TObject);
begin
  application.DefaultFont.Name := 'Tahoma';
  application.DefaultFont.Size := 8;
end;

procedure TfrmOrdusrapport2.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then // Ist die gedrückte Taste ASCII-Return?
  begin
    Key := #0; // Gedrückte Taste unwirksam machen
    Perform(WM_NEXTDLGCTL, 0, 0); // Zum nächsten Element wechseln
  end;
  if Key = #27 then // Ist die gedrückte Taste ASCII-Return?
  begin
    Key := #0; // Gedrückte Taste unwirksam machen
    if not(qryOrderrad.State in [dsedit]) then
      edtOrdernr.setfocus;
    // Perform(WM_NEXTDLGCTL, 0, 0); //Zum nächsten Element wechseln
  end;

end;

procedure TfrmOrdusrapport2.Bockritningok1Click(Sender: TObject);
begin
  with spArtikelBockritningSet do
  begin
    parambyname('@ArtikelId').value := qryOrderrad.fieldbyname('ArtikelId').asInteger;
    parambyname('@BockritningFinns').value := not qryOrderrad.fieldbyname('BockritningFinns').asBoolean;
    execproc;
  end;
  qryOrderrad.Refresh;

end;

procedure TfrmOrdusrapport2.btnCalcClick(Sender: TObject);
var
  l: integer;
  t: integer;
begin
  l := Self.left;
  t := Self.top;

  with TfrmCalc.Create(application) do
  begin
    left := l + 270;
    top := t + 130;
    Showmodal;
    if modalresult = mrOK then
      qryOrderrad.fieldbyname('Vikt').asFloat := strtofloat(edtv.Text);

  end;

end;

procedure TfrmOrdusrapport2.btnEtikettClick(Sender: TObject);
var
  EtikettPrintername: string;
begin

  // report.preview;

  // showmessage (extractfilepath(application.ExeName));

  with TIniFile.Create(extractfilepath(application.ExeName) + 'Ordus.ini') do
  begin
    EtikettPrintername := Readstring('Printer', 'EtikettPrinterName', '');
    free;
  end;

  if EtikettPrintername = '' then
    EtikettPrintername := 'DYMO LabelWriter 450 Turbo';

  if not printerexists(EtikettPrintername) then
  begin
    showmessage('Etikettskrivare "' + EtikettPrintername + '" är ej konfiguerad - utskrift avbryts!');
    exit;
  end;

  DefaultPrinterName := SetDefaultPrinter(EtikettPrintername);
  qryEtikett.Open;

  (*
    if DefaultPrinterName = '' then
    with TIniFile.Create('Ordus.ini') do
    begin
    DefaultPrinterName := Readstring('Printer', 'DefaultPrinterName2', '');
    free;
    end;
  *)

  StatusBar1.SimpleText := DefaultPrinterName;

  with TrptEtikett.Create(application) do
  begin

    report.DataSet := qryEtikett;

    QRDBText1.DataSet := qryEtikett;
    QRDBText2.DataSet := qryEtikett;
    QRDBText3.DataSet := qryEtikett;
    QRDBText4.DataSet := qryEtikett;
    QRDBText5.DataSet := qryEtikett;
    QRDBText6.DataSet := qryEtikett;
    QRDBText7.DataSet := qryEtikett;

    report.print;

  end;

  // SetDefaultPrinter('LaserJet 1012');
  SetDefaultPrinter(DefaultPrinterName);
  qryEtikett.close;

  btnEtikett.hint := DefaultPrinterName;
  btnEtikett.ShowHint := true;

end;

procedure TfrmOrdusrapport2.qryOrderradAfterOpen(DataSet: TDataSet);
begin
  btnEtikett.enabled := DataSet.recordcount > 0;
  btnLagerplatsetikett.enabled := btnEtikett.enabled;
  btnTransport.enabled := btnEtikett.enabled;

  btnPalettEtikett.enabled := btnEtikett.enabled;

end;

procedure TfrmOrdusrapport2.btnLagersaldoClick(Sender: TObject);
begin

  qryLagersaldo.Open;
  qryLagersaldo.edit;

  with TfrmLagersaldo.Create(application) do
  begin
    Showmodal;
    if (modalresult = mrOK) and (qryOrderrad.State in [dsedit]) then
    begin
      qryLagersaldo.post;
      qryOrderrad.fieldbyname('Lagersaldo').asFloat := qryLagersaldo.fieldbyname('Lagersaldo').asFloat;
    end
    else
      qryLagersaldo.cancel;
  end;
end;

procedure TfrmOrdusrapport2.qryOrderradAfterScroll(DataSet: TDataSet);
begin
  // qryOrderrad.edit;

  btnFSTransport.enabled := (qryOrderradFöljesedelId.asInteger = 0) and (qryOrderradAvrapporteradPersonId.asInteger > 0)
    and (dsoOrderrad.State in [dsBrowse]);

  btnEdit.hint := qryOrderradId.asString;

end;

procedure TfrmOrdusrapport2.qryOrderradBeforeScroll(DataSet: TDataSet);
begin
  if qryOrderrad.State in [dsedit] then
    qryOrderrad.post;

end;

procedure TfrmOrdusrapport2.cbClick(Sender: TObject);
var
  intflagga: integer;
begin

  if cb.checked then
    intflagga := 1
  else
    intflagga := 0;

  with qryOrderrad do
  begin
    close;
    parambyname('visaavrapporterade').value := intflagga;
    Open;
  end

end;

procedure TfrmOrdusrapport2.cbVisaAvrapporteradeClick(Sender: TObject);
begin
  with qryOrderrad do
  begin
    close;
    parambyname('VISAAVRAPPORTERADE').value := not cb.checked;
    Open;
  end;

end;

procedure TfrmOrdusrapport2.dbgridCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: boolean; AFont: TFont; ABrush: TBrush);
begin
  // Fältet cRitningsnoteringFinns_disp finns enbart för att ha en neutrl bakgrund i gridden
  if (Field.FieldName = 'cRitningsnoteringFinns_disp') and
    (qryOrderrad.fieldbyname('cRitningsnoteringFinns').asBoolean = true) then
    ABrush.color := clGreen;

end;

procedure TfrmOrdusrapport2.dbgridDblClick(Sender: TObject);

begin

  if qryOrderrad.recordcount > 0 then
  begin

    wwIncrementalSearch1.Text := '';

    DisableEdit(false);

    edtAntal.setfocus;
    dbgrid.enabled := false;
    qryOrderrad.edit;


    // edtYtbehandling.Text:=
    // edtYtbehandling.Lookuptable.FieldByName('Beteckning').asString;

    if qryOrderrad.fieldbyname('YtbehandlingId').asString = '' then
    begin
      qryOrderrad.fieldbyname('YtbehandlingId').asInteger := qryOrderrad.fieldbyname('YtbehandlingIdForslag').asInteger;
    end;
    (*
      if qryOrderrad.FieldByName('AttProducera').asFloat = 0 then
      begin
      attproducera := qryOrderrad.FieldByName('Antal').asFloat - qryOrderrad.FieldByName('Frånlager').asFloat;
      qryOrderrad.FieldByName('AttProducera').asFloat := attproducera;
      end;
    *)

    (* -- borttagen 2010-02-02
      if qryOrderrad.FieldByName('Totaltid').asVariant = NULL then
      qryOrderrad.FieldByName('Totaltid').AsFloat :=
      qryOrderrad.FieldByName('TotaltidSenast').AsFloat;
    *)

    if qryOrderrad.fieldbyname('AvrapporteradPlasmatid').AsVariant = NULL then
      qryOrderrad.fieldbyname('AvrapporteradPlasmatid').asFloat :=
        qryOrderrad.fieldbyname('AvrapporteradPlasmatidSenast').asFloat;

    if qryOrderrad.fieldbyname('SkrotandelProcent').AsVariant = NULL then
      qryOrderrad.fieldbyname('SkrotandelProcent').asFloat :=
        qryOrderrad.fieldbyname('SkrotandelProcentSenast').asFloat;

    if qryOrderrad.fieldbyname('Vikt').AsVariant = NULL then
      qryOrderrad.fieldbyname('Vikt').asFloat := qryOrderrad.fieldbyname('ViktSenast').asFloat;

    edtOrdernr.enabled := false;
    btnEdit.enabled := false;
    cb.enabled := false;
    btnClose.enabled := false;
    btnFSTransport.enabled := false;
    btnLagersaldo.enabled := true;

  end;

end;

procedure TfrmOrdusrapport2.dbgridTitleButtonClick(Sender: TObject; AFieldName: string);

begin
  (*
    ordernr = '1';
    if Afieldname = 'Positionsnummer' then ordernr := '1' else
    if Afieldname = 'Artikelnummer' then ordernr := '2' else
    if Afieldname = 'beteckning' then ordernr := '3' else
    if Afieldname = 'Antal' then ordernr := '4' else
    if Afieldname = 'Personnamn' then ordernr := '4' else
    if Afieldname = 'Följesedelbeteckning' then ordernr := '5';
  *)
  with qryOrderrad do
  begin
    close;
    if pos('order by ', sql.Text) > 0 then
      qryOrderrad.sql.Delete(sql.Count - 1);
    sql.add('order by ' + AFieldName);

    Open;
  end;

end;

procedure TfrmOrdusrapport2.btnPostClick(Sender: TObject);
var
  bm: integer;
begin

  if // (edtTillverkningstid.Text <> '') and
    (qryOrderradAvrapporteradPersonId.asString <> '')

  then
  begin
    qryOrderradAvrapporteradDatum.asdatetime := now;

    qryOrderrad.post;

    DisableEdit(true);
    dbgrid.enabled := true;
    edtOrdernr.enabled := true;

    btnEdit.enabled := true;
    btnClose.enabled := true;
    dbgrid.setfocus;
    cb.enabled := true;
    btnFSTransport.enabled := true;

    bm := qryOrderrad.fieldbyname('Id').asInteger;

    with qryOrderrad do
    begin
      close;
      Open;
      locate('Id', bm, []);
    end;
  end
  else
  begin
    MessageDlg('Signatur måste vara ifylld', mtConfirmation, [mbOK], 0);
    edtSignatur.setfocus;
  end;

end;

procedure TfrmOrdusrapport2.btnTransportClick(Sender: TObject);
var
  Orderid, antal, artikelId: integer;
begin
  with TfrmTransport.Create(application) do
  begin
    Showmodal;
    if modalresult = mrOK then
    begin

      Orderid := qryOrderrad.fieldbyname('Orderid').asInteger;
      antal := editn1.ValueInteger;
      artikelId := FDquery1.fieldbyname('Id').asInteger;

      with spOrderOrderradInsert do
      begin
        parambyname('@Orderid').value := Orderid;
        parambyname('@Artikelid').value := artikelId;
        parambyname('@Antal').value := antal;
        execproc;
      end;

      with qryOrderrad do
      begin
        close;
        Open;
        last;
      end;
    end
  end;
end;

procedure TfrmOrdusrapport2.btnVisaKalenderClick(Sender: TObject);
begin
  with TfrmKalender.Create(application) do
  begin
    // windowstate := wsMaximized;
    Show;
  end;

end;

procedure TfrmOrdusrapport2.btnNotiserClick(Sender: TObject);
begin

  with TfrmArtikelnotering.Create(application) do
  begin
    edit1.Text := qryOrderrad.fieldbyname('Artikelnummer').asString;
    FDquery1.close;
    Showmodal;

  end;
end;

procedure TfrmOrdusrapport2.btnJobblistaClick(Sender: TObject);
begin
  with TfrmJobblista.Create(application) do
    Showmodal;

end;

procedure TfrmOrdusrapport2.btnCancelClick(Sender: TObject);
begin

  qryOrderrad.cancel;
  DisableEdit(true);
  dbgrid.enabled := true;
  edtOrdernr.enabled := true;

  btnEdit.enabled := true;
  btnClose.enabled := true;
  btnFSTransport.enabled := true;

end;

procedure TfrmOrdusrapport2.edtOrdernrEnter(Sender: TObject);
begin

  dbgrid.Visible := false;
  btnLagersaldo.enabled := false;
  btnEtikett.enabled := false;
  btnLagerplatsetikett.enabled := btnEtikett.enabled;
  btnTransport.enabled := btnEtikett.enabled;
  btnPalettEtikett.enabled := false;
  btnEdit.enabled := false;
  qryOrderrad.close;
  btnClose.enabled := true;
  btnFSTransport.enabled := false;
  dm.qryLUYtbehandling.close;
  pnlArtikelsok.Height := 0;

  qryLU_personal.close;

end;

procedure TfrmOrdusrapport2.btnFSTransportClick(Sender: TObject);
begin
  with sp_OrderradTillFoljesedel do
  begin
    if qryOrderradAvrapporteradPersonId.asInteger > 0 then
    begin
      with sp_OrderradGetFoljesedelId do
      begin
        parambyname('@OrderradId').value := qryOrderradId.asInteger;
        execproc;

        qryOrderrad.edit;

        qryOrderradFöljesedelId.asInteger := sp_OrderradGetFoljesedelId.parambyname('@FöljesedelId').value;

        qryOrderrad.post;
        // dbgrid.refresh;

      end

      // dbgrid.InvalidateCurrentRow;
    end
    else
      StatusBar1.SimpleText := 'Orderaden måste vara avrapporterad för att kunna läggas på en följesedel!';
  end;

end;

procedure TfrmOrdusrapport2.btnFSClick(Sender: TObject);
begin
  with TfrmFoljesedel.Create(application) do
    Showmodal;
end;

procedure TfrmOrdusrapport2.qryOrderradCalcFields(DataSet: TDataSet);
begin
  if DataSet.fieldbyname('FixaturFinns').asBoolean then
    DataSet.fieldbyname('cFixatur').value := 1 // Imageindex
  else
    DataSet.fieldbyname('cFixatur').value := 0;

  if DataSet.fieldbyname('BockritningFinns').asBoolean then
    DataSet.fieldbyname('cBock').value := 1
  else
    DataSet.fieldbyname('cBock').value := 0;

  if DataSet.fieldbyname('PrisPerEnhetAuto').asFloat <> 0 then
    DataSet.fieldbyname('AutoprisFinns').value := '*'
  else
    DataSet.fieldbyname('AutoprisFinns').value := '';

  DataSet.fieldbyname('cRitningsnoteringFinns').asBoolean := DataSet.fieldbyname('Notering').asString <> '';

  qryOrderradAfterScroll(DataSet);
end;

procedure TfrmOrdusrapport2.mi_visaritningClick(Sender: TObject);
var
  filename, LURL: string;
begin

  filename := GetRitningFilename(qryOrderrad.fieldbyname('artikelnummer').asString, qryOrderrad.fieldbyname('kundnamn')
    .asString, qryOrderrad.fieldbyname('Id').asInteger);

  // stringreplace(qryOrderrad.fieldbyname('artikelnummer').asString, ' ', '', [rfReplaceAll]) + '.pdf';
  if fileexists(filename) then
  begin

    LURL := TPath.GetFullPath(filename).Replace('\', '/', [rfReplaceAll]);
    LURL := 'file://' + LURL;
    ShellExecute(0, 'open', PChar(filename), nil, nil, SW_SHOWNORMAL);
  end;
END;

Function TfrmOrdusrapport2.GetRitningFilename(Artikelnummer: string; kundnamn: string; OrderradId: integer): string;
var
  filename, folder: string;
  c: Char;
  n: integer;
begin
  folder := FoldernameFix(ftgsystemvalue('pdf.folder.ritningar', '')) + kundnamn + '\';
  filename := folder + Artikelnummer + '.pdf';

  if not fileexists(filename) then
    for n := 71 downto 65 do
    begin
      filename := folder + Artikelnummer + '_REV_' + Chr(n) + '.pdf';
      if fileexists(filename) then
        break;
    end;

  if fileexists(filename) then
    with qryOrderradUpdate do
    begin
      parambyname('Id').value := OrderradId;
      parambyname('Ritning').value := filename;
      ExecSQL;
    end;
  result := filename;

end;

procedure TfrmOrdusrapport2.Tabortfrnfljesedel1Click(Sender: TObject);
var
  bm: integer;
begin

  qryOrderrad.edit;
  qryOrderradFöljesedelId.Clear;
  qryOrderrad.post;

  bm := qryOrderrad.fieldbyname('Id').asInteger;

  with qryOrderrad do
  begin
    close;
    Open;
    locate('Id', bm, []);
  end;

end;

procedure TfrmOrdusrapport2.btnPalettEtikettClick(Sender: TObject);
begin

  with TrptPalletikett.Create(application) do
  begin
    qry.close;
    qry.parambyname('OrderID').value := qryOrderrad.fieldbyname('OrderID').asInteger;
    qry.Open;
    report.print;
    // report.preview;
  end;
end;

procedure TfrmOrdusrapport2.btnFSTransportCklick(Sender: TObject);
VAR
  mi: TMenuItem;
begin
  // Ladda popupmenyn med nya följesedlar

  pm.Items.Clear;
  with qryFoljesedelperKund do
  begin
    close;
    parambyname('KundId').value := qryOrderrad.fieldbyname('KundiD').asString;

    Open;
    first;
    while not eof do
    begin
      mi := TMenuItem.Create(Self);
      mi.caption := qryFoljesedelperKundBeteckning.asString;
      mi.Tag := qryFoljesedelperKundId.asInteger;
      mi.OnClick := pmitemClick;
      pm.Items.add(mi);
      next;
    end;
    close;
  end;
  mi := TMenuItem.Create(Self);
  mi.caption := '-';
  mi.Tag := 0;
  mi.OnClick := pmitemClick;
  pm.Items.add(mi);

  mi := TMenuItem.Create(Self);
  mi.caption := 'Ny Följesedel';
  mi.Tag := -1;
  mi.OnClick := pmitemClick;
  pm.Items.add(mi);

  pm.Popup(btnFSTransport.left + Self.left, Self.top + btnFSTransport.top + Panel5.Height + Panel3.Height + 50);
end;

procedure TfrmOrdusrapport2.btnKontakterClick(Sender: TObject);
begin
  with TfrmKontakter.Create(application) do
  begin
    Showmodal;
  end;
end;

procedure TfrmOrdusrapport2.BtnMaterialbestallningClick(Sender: TObject);
begin
  with TfrmNotering.Create(application) do
  begin
    memo1.Text := '';
    Showmodal;
  end;
end;

procedure TfrmOrdusrapport2.pmitemClick(Sender: TObject);
var
  bm: integer;
begin

  if (Sender as TMenuItem).Tag = -1 then
    with TfrmNyfoljesedel.Create(application) do
    begin
      Showmodal;

      if modalresult = mrOK then
        with spOrderradNyFoljesedel do
        begin
          parambyname('@OrderradId').value := qryOrderradId.asInteger;
          parambyname('@Beteckning').value := edit1.Text;
          execproc;

          bm := qryOrderrad.fieldbyname('Id').asInteger;
          with qryOrderrad do
          begin
            close;
            Open;
            locate('Id', bm, []);
          end;

        end;

    end;

  if (Sender as TMenuItem).Tag > 0 then
    with sp_OrderradTillFoljesedel do
    begin
      parambyname('@OrderradId').value := qryOrderradId.asInteger;
      parambyname('@FöljesedelId').value := (Sender as TMenuItem).Tag;
      execproc;

      bm := qryOrderrad.fieldbyname('Id').asInteger;
      with qryOrderrad do
      begin
        close;
        Open;
        locate('Id', bm, []);
      end;
    end;

  with qryFoljesedelperKund do
  begin
    close;
    Open;
  end;
end;

procedure TfrmOrdusrapport2.PopupMenu1Popup(Sender: TObject);
begin
  if qryOrderrad.fieldbyname('BockritningFinns').asBoolean = true then
    Bockritningok1.caption := 'Avmarkera bockritning'
  else
    Bockritningok1.caption := 'Bockritning klar';

  // folder := FoldernameFix(ftgsystemvalue('pdf.folder.ritningar', ''));
  // filename := folder + trim(qryOrderrad.fieldbyname('artikelnummer').asString) + '.pdf';
  // stringreplace(qryOrderrad.fieldbyname('artikelnummer').asString, ' ', '', [rfReplaceAll]) + '.pdf';


  // mi_visaritning.enabled := fileexists(GetRitningFilename(qryOrderrad.fieldbyname('artikelnummer').asString,
  // qryOrderrad.fieldbyname('Kundnamn').asString));

end;

procedure TfrmOrdusrapport2.btnLagerplatsetikettClick(Sender: TObject);
var
  EtikettPrintername: string;
begin

  with TIniFile.Create(extractfilepath(application.ExeName) + 'Ordus.ini') do
  begin
    EtikettPrintername := Readstring('Printer', 'EtikettPrinterName', '');
    free;
  end;
  if EtikettPrintername = '' then
    EtikettPrintername := 'DYMO LabelWriter 450 Turbo';

  if not printerexists(EtikettPrintername) then
  begin
    showmessage('Etikettskrivare "' + EtikettPrintername + '" är ej konfiguerad - utskrift avbryts!');
    exit;
  end;

  DefaultPrinterName := SetDefaultPrinter(EtikettPrintername);
  qryEtikett.Open;
  with TrptLagerplatsEtikett.Create(application) do
  begin
    report.print;
  end;
  SetDefaultPrinter(DefaultPrinterName);
  qryEtikett.close;

end;

end.
