unit fOrderLista2;

interface

uses

  variants, messages, system.UITypes, SysUtils, Classes, Graphics, Controls,
  Forms,
  Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, ToolWin, Db, Menus,
  ActnList, Shellapi, StdCtrls, Wwkeycb, wwdblook, wwDataInspector, funclib,
  system.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  inifiles, fDagar, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Buttons, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon,
  Vcl.CategoryButtons, Vcl.wwbutton, Vcl.DBCtrls, Vcl.wwdatsrc, comobj,
  Vcl.wwcheckbox, gtPDFClasses, gtCstPDFDoc,
  gtExPDFDoc, gtExProPDFDoc, gtPDFDoc,
  Vcl.gtxXport,
  Vcl.gtQRXport, gtPDFPrinter, QRPDFFilt, Vcl.gtxClasses, Xml.xmldom,
  Invoic416_V4, Vcl.OleCtrls,
  SHDocVw, fSattFakturadatum;

type
  TfrmOrderLista = class(TForm)
    dsoOrderlist: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    wwDBGrid1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    actNyBestallning: TAction;
    Nybestllningoffert1: TMenuItem;
    actSkrivUt: TAction;
    actSkrivUtBeställning: TMenuItem;
    actSattFakturadatum: TAction;
    Sttfakturadatum1: TMenuItem;
    actPrissattningPositioner: TAction;
    Prissttningpositioner1: TMenuItem;
    actOrderTaBort: TAction;
    Tabort1: TMenuItem;
    N1: TMenuItem;
    actOffertSendViamail: TAction;
    actOrderEdit: TAction;
    ndraorderhuvud1: TMenuItem;
    actFakturaunderlagPrint: TAction;
    Skrivutfakturaunderlag: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actOrderradUpdate: TAction;
    offertsommailtillkund2: TMenuItem;
    N4: TMenuItem;
    Uppdatera1: TMenuItem;
    actOrderVisa: TAction;
    Visautskrift1: TMenuItem;
    Lggtillndrapositioner1: TMenuItem;
    Sttordertstatus1: TMenuItem;
    actOrderStatusUpdate: TAction;
    actPallEtikett: TAction;
    actPallEtikett1: TMenuItem;
    actArbetsorderPrint: TAction;
    actOrderPDFPrint: TAction;
    Skrivutritningar1: TMenuItem;
    N5: TMenuItem;
    Skrivutfljesedel1: TMenuItem;
    Skrivutetiketter1: TMenuItem;
    Skrivutorderbekrftelse1: TMenuItem;
    Skapaplanering1: TMenuItem;
    sp_ftgsystem: TFDStoredProc;
    sp_OrderDelete: TFDStoredProc;
    Custom_OrderhuvudFakturadataUpdate: TFDStoredProc;
    qryKundFilter: TFDQuery;
    qryEtiketter: TFDQuery;
    qryEtiketterOrderId: TFDAutoIncField;
    qryEtiketterKundnamn: TStringField;
    qryEtiketterReferens: TStringField;
    qryEtiketterordernummer: TStringField;
    qryEtiketterGodsmärke: TStringField;
    qryEtiketterorderdatum: TSQLTimeStampField;
    qryEtiketterLeveransdatum: TSQLTimeStampField;
    qryEtiketterPositionnummer: TIntegerField;
    qryEtiketterYtbehandlingBeteckning: TStringField;
    qryEtiketterBeteckning: TStringField;
    qryEtiketterAntal: TFMTBCDField;
    qryEtiketterPrisperenhet: TCurrencyField;
    qryEtiketterfritext: TStringField;
    qryEtiketterPris: TFMTBCDField;
    qryEtiketterOrdertypId: TIntegerField;
    qryKundFilterKundid: TIntegerField;
    qryKundFilterKundnamn: TStringField;
    qryKundFilterUnnamed3: TIntegerField;
    Skrivutorderbekrftelse2: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    abortplaneringfrorder1: TMenuItem;
    spPlaneringDelete: TFDStoredProc;
    actOrderlistaRefresh: TAction;
    actImporteraIntersystem: TAction;
    actPlaneringSkapa: TAction;
    actPlaneringTabort: TAction;
    actOrderSkrivut: TAction;
    actEtiketterSkrivUt: TAction;
    actFöljesdelUtskrift: TAction;
    actOrderbekräftleseViaMail: TAction;
    actOrderLäggtillÄndraPositioner: TAction;
    Label4: TLabel;
    Skrivutfakturaunderlag1: TMenuItem;
    sp_Orderlist: TFDStoredProc;
    sp_OrderlistOrderID: TFDAutoIncField;
    sp_OrderlistKundnamn: TStringField;
    sp_OrderlistOrdernummer: TStringField;
    sp_OrderlistOrdertypId: TIntegerField;
    sp_OrderlistGodsmärke: TStringField;
    sp_OrderlistoTyp: TStringField;
    sp_OrderlistAntalprissatt: TIntegerField;
    sp_OrderlistAntalAvrapporterad: TIntegerField;
    sp_OrderlistAntalTotal: TIntegerField;
    sp_OrderlistKundreferens: TStringField;
    sp_Orderlistemailadress: TStringField;
    sp_Orderlistleveransdatum: TSQLTimeStampField;
    sp_OrderlistKundID: TIntegerField;
    sp_OrderlistOrderDatum: TSQLTimeStampField;
    sp_OrderlistSortorder: TSmallintField;
    sp_OrderlistBGColor: TStringField;
    sp_OrderlistOrderStatusId: TIntegerField;
    sp_OrderlistYtbehandlingdatum: TSQLTimeStampField;
    sp_OrderlistKalkArbetstid: TFloatField;
    sp_OrderlistKalkArbetstidTime: TStringField;
    sp_OrderlistArbetstidPlanerad: TIntegerField;
    sp_OrderlistArbetstidPlaneradTime: TStringField;
    sp_OrderlistArbetstidManuellt: TIntegerField;
    sp_OrderlistArbetstidManuelltTime: TStringField;
    wwDataSource1: TwwDataSource;
    actFakturaunderlagPDF: TAction;
    wwExpandButton1: TwwExpandButton;
    gtPDFDocument1: TgtPDFDocument;
    sp_OrderlistEgenMärkning: TStringField;
    QRPDFFilter1: TQRPDFFilter;
    N6: TMenuItem;
    QRExp: TgtQRExport;
    actFaktutarunderlagXML: TAction;
    actFaktutarunderlagXML1: TMenuItem;
    qryOrder: TFDQuery;
    qryOrderOrderId: TFDAutoIncField;
    qryOrderKundnamn: TStringField;
    qryOrderReferens: TStringField;
    qryOrderordernummer: TStringField;
    qryOrderGodsmärke: TStringField;
    qryOrderorderdatum: TSQLTimeStampField;
    qryOrderLeveransdatum: TSQLTimeStampField;
    qryOrderPositionnummer: TIntegerField;
    qryOrderYtbehandlingBeteckning: TStringField;
    qryOrderBeteckning: TStringField;
    qryOrderArtikelnummer: TStringField;
    qryOrderAntal: TFMTBCDField;
    qryOrderOrdertypId: TIntegerField;
    qryOrderPrisperenhet: TCurrencyField;
    qryOrderfritext: TStringField;
    qryOrderPris: TFMTBCDField;
    qry: TFDQuery;
    qryOrderId: TFDAutoIncField;
    qryKundnamn: TStringField;
    qryReferens: TStringField;
    qryordernummer: TStringField;
    qryGodsmärke: TStringField;
    qryorderdatum: TSQLTimeStampField;
    qryLeveransdatum: TSQLTimeStampField;
    qryPositionnummer: TIntegerField;
    qryYtbehandlingBeteckning: TStringField;
    qryBeteckning: TStringField;
    qryArtikelnummer: TStringField;
    qryAntal: TFMTBCDField;
    qryOrdertypId: TIntegerField;
    qryPrisperenhet: TCurrencyField;
    qryfritext: TStringField;
    qryPris: TFMTBCDField;
    qryDagensdatum: TDateField;
    Panel6: TPanel;
    qryOrderSok: TFDQuery;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Button1: TButton;
    sokOrdernummer: TEdit;
    actCopyOrder: TAction;
    actCopyOrder1: TMenuItem;
    sp_OrderKopiera: TFDStoredProc;
    sp_OrderlistFakturanummer: TStringField;
    sp_OrderlistTabId: TSmallintField;
    actSattFakturadata: TAction;
    Sattfakturadatum2: TMenuItem;
    actTaBortFakturamärkning: TMenuItem;
    sp_OrderlistFakturadatum: TDateField;
    sp_KundLookuplist: TFDStoredProc;
    sp_KundLookuplistKundId: TIntegerField;
    sp_KundLookuplistKundnamn: TStringField;
    PageControl1: TPageControl;
    qryOrderstatus: TFDQuery;
    qryOrderstatusId: TFDAutoIncField;
    qryOrderstatusOrderstatus: TStringField;
    qryOrderstatusBeteckning: TStringField;
    qryOrderstatusSortorder: TSmallintField;
    qryOrderstatusBGColor: TStringField;
    qryOrderstatusTabId: TSmallintField;
    qryOrderstatusTabBeteckning: TStringField;
    qryOrderstatusOmsättningsgrundande: TBooleanField;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    qryOrdersummaGet: TFDQuery;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure actNyBestallningExecute(Sender: TObject);
    procedure actSkrivUtExecute(Sender: TObject);
    procedure actSattFakturadatumExecute(Sender: TObject);
    procedure actPrissattningPositionerExecute(Sender: TObject);
    procedure actOrderTaBortExecute(Sender: TObject);
    procedure actOffert2BestallningExecute(Sender: TObject);
    procedure actOffertSendViamailExecute(Sender: TObject);
    procedure actOrderEditExecute(Sender: TObject);
    procedure actFakturaunderlagPrintExecute(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actOrderradUpdateExecute(Sender: TObject);
    procedure actUpdateOrderlistaExecute(Sender: TObject);
    procedure actOrderVisaExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure actOrderStatusUpdateExecute(Sender: TObject);
    procedure actPallEtikettExecute(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure actArbetsorderPrintExecute(Sender: TObject);
    procedure actOrderPDFPrintExecute(Sender: TObject);
    procedure Importorderfilfrnleverantr1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Skapaplanering1Click(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure actOrderlistaRefreshExecute(Sender: TObject);
    procedure actImporteraIntersystemExecute(Sender: TObject);
    procedure actPlaneringSkapaExecute(Sender: TObject);
    procedure actPlaneringTabortExecute(Sender: TObject);
    procedure actOrderSkrivutExecute(Sender: TObject);
    procedure actEtiketterSkrivUtExecute(Sender: TObject);
    procedure actFöljesdelUtskriftExecute(Sender: TObject);
    procedure actOrderbekräftleseViaMailExecute(Sender: TObject);
    procedure actOrderLäggtillÄndraPositionerExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actFaktutarunderlagXMLExecute(Sender: TObject);
    Procedure Skapa_Fakturaunderlag_XML;
    procedure sokOrdernummerChange(Sender: TObject);
    procedure sokOrdernummerEnter(Sender: TObject);
    procedure actCopyOrderExecute(Sender: TObject);
    procedure actSattFakturadataExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure wwDBGrid1MultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
  private
    xfilename: string;
    qrfilename: string;

    { Private declarations }
    procedure WMDROPFILES(var msg: TWMDropFiles); message WM_DROPFILES;
    procedure RefreshOrderlist;

  public
    { Public declarations }
    FTotalPages: Integer;
  end;

var
  frmOrderLista: TfrmOrderLista;
  ordersumma: double;

implementation

uses fMain, fOrderNew, rOrder, rArbetsorder, dFakturaNummer,
  fOrderadUpdate, fOrderEdit, fOrderStatusUpdate, rPallEtikett, fPrintPDF,
  rEtikett, fOrderImport, Datamodule, fOrder, fOrderImportInterSystem,
  fimpleDialog,
  fOrderPlanering, funclibProj;

{$R *.DFM}

procedure TfrmOrderLista.wwDBGrid1DblClick(Sender: TObject);
var
  fname: string;
  f: TfrmOrder;
  cc, I: Integer;
begin

  fname := 'F' + sp_OrderlistOrderID.asstring;
  cc := application.componentcount;

  for I := 0 to cc - 1 do
    if application.Components[I].name = fname then
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
  frmmain.toolbutton3.imageindex := 5;

end;

procedure TfrmOrderLista.FormCreate(Sender: TObject);
begin
  DragAcceptFiles(Handle, True);
end;

procedure TfrmOrderLista.FormShow(Sender: TObject);
var
  I: Integer;
begin

  for I := 0 to PageControl1.PageCount - 1 do
    PageControl1.Pages[I].Destroy;

  PageControl1.TabHeight := 30;
  PageControl1.tabwidth := 150;
  PageControl1.height := PageControl1.TabHeight;

  with qryOrderstatus do
  begin
    open;

    while not eof do
    begin
      with TTabSheet.create(PageControl1) do
      begin

        PageControl := PageControl1;
        Name := 'ts' + fieldbyname('Orderstatus').asstring;
        Caption := fieldbyname('TabBeteckning').asstring;
        tag := fieldbyname('Id').asInteger;
      end;
      next;
    end;

  end;

  with sp_Orderlist do
  begin
    close;
    ParamByName('@OrderstatusId').Value := 4; // Underarbete
    open;
  end;

  PageControl1.TabIndex := 0;
  // TabControl1.Font.Style := [fsBold];

  wwDBGrid1.setfocus;
  wwDBLookupCombo1.LookupTable.open;
  frmmain.toolbutton3.Enabled := false;
  sp_KundLookuplist.open;
  ordersumma := 0;

end;

procedure TfrmOrderLista.ToolButton3Click(Sender: TObject);
begin
  if messagedlg('Vill du verkligen tar bort hela beställningen/offert?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with sp_OrderDelete do
    begin
      ParamByName('@OrderID').Value := sp_OrderlistOrderID.asInteger;

      execproc;
      if ParamByName('@RETURN_VALUE').Value = 0 then
        sp_Orderlist.close;
      sp_Orderlist.open;

    end;
  end;
end;

procedure TfrmOrderLista.ToolButton2Click(Sender: TObject);
begin

  with TrptOrder.create(application) do
  begin
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderLista.ToolButton4Click(Sender: TObject);
begin
  with TrptArbetsOrder.create(application) do
  begin
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderLista.ToolButton5Click(Sender: TObject);
begin

  with sp_Orderlist do
  begin
    edit;

    with TdlgFakturaNummer.create(application) do
    begin
      if showmodal = mrOK then
        post
      else
        cancel;
    end;
  end;

end;

procedure TfrmOrderLista.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);

begin
  // showmessage(field.fieldname);
  // if field.fieldname = 'OrderID' then
  // begin

  // Ordertyp : Offert

  if (Field.fieldname = 'Leveransdatum') and (sp_Orderlist.fieldbyname('Leveransdatum').asdatetime <= date) and
    (sp_Orderlist.fieldbyname('Fakturadatum').asstring = '') then
  begin
    AFont.color := clMaroon;
    AFont.Style := [fsBold]
  end;
  (*
    //  Ordertp 3 = Ofgfert görs om till Orderstatus 5


    if sp_Orderlist.fieldbyname('OrdertypId').asInteger = 3 then // =Offert
    begin
    if (not Highlight) then
    ABrush.color := $00F9DCB9 // blå
    else
    AFont.color := $00F9DCB9;
    end
    else

    begin
    // OrderStatus :
    if trim(sp_Orderlist.fieldbyname('BGColor').asstring) <> '' then
    if (not Highlight) then
    ABrush.color := stringtocolor
    (trim(sp_Orderlist.fieldbyname('BGColor').asstring))
    else
    AFont.color := stringtocolor
    (trim(sp_Orderlist.fieldbyname('BGColor').asstring));
    end;
  *)
end;

procedure TfrmOrderLista.actNyBestallningExecute(Sender: TObject);
begin
  with TfrmOrderNew.create(application) do
  begin
    showmodal;
    if modalresult = mrOK then
      with sp_Orderlist do
      begin
        close;
        open;
      end;
  end;
end;

procedure TfrmOrderLista.actPlaneringSkapaExecute(Sender: TObject);
begin

  // if sp_orderlist.fieldbyname('Arbetstidplanerad').asInteger > 0 then
  // begin
  // MessageBox(0,
  // 'Order är redan planerad - du måste först ta bort planeringen innan du kan göra en ny.',
  // '', MB_ICONINFORMATION or MB_OK);
  // exit;
  // end;
  //

  with TfrmOrderPlanering.create(application) do
  begin

    qryOrderEdit.open;
    qryOrderEdit.edit;
    label13.Caption := sp_OrderlistKalkArbetstidTime.asstring;
    application.ProcessMessages;
    showmodal;
  end;

  sp_Orderlist.refresh; // RefreshOrderlist fungera inte här !!!!!!!!!!!!!!

end;

procedure TfrmOrderLista.actSkrivUtExecute(Sender: TObject);
begin

  with TrptOrder.create(application) do
  begin
    header.Caption := 'BESTÄLLNING';
    with sp_ftgsystem do
    begin
      ParamByName('@ID').Value := 6;
      execproc;
      report.PrinterSettings.Copies := strtoint(ParamByName('@Värde').Value);
    end;

    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.bestallning', '')) + 'Beställning_' +
      sp_OrderlistOrderID.asstring;

    qrfilename := GetQrfilename(xfilename);

    report.Prepare;
    report.QRPrinter.Compression := True;
    report.QRPrinter.Save(qrfilename);
    report.QRPrinter.Free;
    report.QRPrinter := nil;
    // up to here, it seems to want to be set back to nil before you preview

    QRExp.OpenAfterExport := True;
    // report.PreviewModal;
    QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);

  end;

end;

procedure TfrmOrderLista.actOrderSkrivutExecute(Sender: TObject);

begin
  with TrptOrder.create(application) do
  begin
    header.Caption := 'Orderbekräftelse';
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
      sp_OrderlistOrderID.asstring;

    qrfilename := GetQrfilename(xfilename);
    // report.print;

    report.Prepare;
    report.QRPrinter.Compression := True;
    report.QRPrinter.Save(qrfilename);
    report.QRPrinter.Free;
    report.QRPrinter := nil;
    // up to here, it seems to want to be set back to nil before you preview
    QRExp.OpenAfterExport := false;
    // report.PreviewModal;
    QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);

  end;

end;

procedure TfrmOrderLista.actSattFakturadataExecute(Sender: TObject);
var
  I, OrderId: Integer;
  Fakturadatum: Tdate;
  Fakturanummer: string;

begin

  with TfrmSattfakturadatum.create(application) do
  begin
    showmodal;
    if modalresult = mrOK then

    begin

      Fakturanummer := edtFakturanummer.Text;
      Fakturadatum := edtFakturadatum.date;

      if Fakturanummer <> '' then
      begin

        with wwDBGrid1 do
        begin
          if SelectedList.Count > 0 then
            for I := 0 to SelectedList.Count - 1 do
            begin
              sp_Orderlist.GotoBookmark(SelectedList.Items[I]);
              OrderId := sp_OrderlistOrderID.asInteger;

              with Custom_OrderhuvudFakturadataUpdate do
              begin
                ParamByName('@Orderhuvudid').Value := OrderId;
                ParamByName('@Fakturanummer').Value := Fakturanummer;
                ParamByName('@Fakturadatum').Value := Fakturadatum;
                execproc;
              end;

            end;
        end;
      end;

    end;
  end;
end;

procedure TfrmOrderLista.actSattFakturadatumExecute(Sender: TObject);
var
  I, OrderId: Integer;
begin
  (*
    with TfrmSattfakturadatum.create(application) do
    begin
    showmodal;
    if modalresult = mrOK then

    begin

    if edtFakturanummer.Text <> '' then
    begin

    with wwDBGrid1 do
    begin
    if SelectedList.Count > 0 then
    for I := 0 to SelectedList.Count - 1 do
    begin
    sp_Orderlist.GotoBookmark(SelectedList.Items[I]);
    OrderId := sp_OrderlistOrderID.asInteger;

    end;
    end;
    end;

    end;
  *)
  (*
    with TdlgFakturaNummer.create(application) do
    begin
    edtdatum.date := sp_Orderlistfakturadatum.asdatetime;
    if showmodal = mrOK then
    with Custom_OrderhuvudFakturadatumUpdate do
    begin
    ParamByName('@OrderhuvudId').Value := sp_OrderlistOrderID.asInteger;
    ParamByName('@Fakturadatum').Value := edtdatum.date;
    execproc;
    end;
    RefreshOrderlist;
    end;

  *)

end;

procedure TfrmOrderLista.actPrissattningPositionerExecute(Sender: TObject);
begin
  frmmain.toolbutton3.imageindex := 5;
  with TfrmOrderradUpdate.create(application) do
    show;

  RefreshOrderlist;

end;

procedure TfrmOrderLista.actOrderTaBortExecute(Sender: TObject);
begin
  if messagedlg('Vill du verkligen tar bort hela beställningen/offerten?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    with sp_OrderDelete do
    begin
      ParamByName('@OrderID').Value := sp_OrderlistOrderID.asInteger;
      execproc;
      if ParamByName('@RETURN_VALUE').Value = 0 then
        RefreshOrderlist;

    end;
  end;
end;

procedure TfrmOrderLista.actOffert2BestallningExecute(Sender: TObject);

begin
  with sp_Orderlist do
  begin
    if fieldbyname('OrdertypId').asInteger = 3 then // Offert
    begin
      if messagedlg('Vill du ändra status från "Offert" till "Beställning"', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then
      begin
        edit;
        fieldbyname('OrdertypId').asInteger := 1;
        post;
      end
    end
    else
    begin
      if messagedlg('Vill du ändra status från "Beställning" till "Offert"', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then
      begin
        edit;
        fieldbyname('OrdertypId').asInteger := 3;
        post;
      end;
    end;
  end;

end;

procedure TfrmOrderLista.actOffertSendViamailExecute(Sender: TObject);
const
  olMailItem = $00000000;
begin

  with TrptOrder.create(application) do
  begin
    header.Caption := 'Offert';
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.offert.epost', '')) + 'Offert_ ' +
      sp_OrderlistOrderID.asstring;

    with TrptOrder.create(application) do
    begin
      header.Caption := 'Offert';
      with qry do
      begin
        close;
        params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
        open;
      end;
      qrfilename := GetQrfilename(xfilename);

      report.Prepare;
      report.QRPrinter.Compression := True;
      report.QRPrinter.Save(qrfilename);
      report.QRPrinter.Free;
      report.QRPrinter := nil;
      // up to here, it seems to want to be set back to nil before you preview
      QRExp.OpenAfterExport := false;
      // report.PreviewModal;
      QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);
    end;
    (*
      begin
      try
      Outlook := GetActiveOleObject('Outlook.Application');
      except
      Outlook := CreateOleObject('Outlook.Application');
      end;

      Mail := Outlook.CreateItem(olMailItem);

      if pos('snpeho', sp_Orderlist.Connection.ConnectionString) > 0 then
      Mail.To := 'peter@holzer.nu'
      else
      Mail.To := sp_Orderlist.fieldbyname('Emailadress').asstring;

      Mail.Subject := 'Offert (' + sp_OrderlistOrderID.asstring + ')';
      Mail.Body := 'Tack för din förfrågan';
      Mail.Attachments.Add(xfilename + '.pdf');
      Mail.Display;

      end;
    *)

  end;

end;

procedure TfrmOrderLista.actOrderbekräftleseViaMailExecute(Sender: TObject);
var
  Outlook: OleVariant;
  Mail: Variant;
const
  olMailItem = $00000000;
begin

  xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
    sp_OrderlistOrderID.asstring;

  with TrptOrder.create(application) do
  begin
    header.Caption := 'Orderbekräftelse';
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    qrfilename := GetQrfilename(xfilename);

    report.Prepare;
    report.QRPrinter.Compression := True;
    report.QRPrinter.Save(qrfilename);
    report.QRPrinter.Free;
    report.QRPrinter := nil;
    // up to here, it seems to want to be set back to nil before you preview
    QRExp.OpenAfterExport := false;
    // report.PreviewModal;
    QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);

  end;

  begin
    try
      Outlook := GetActiveOleObject('Outlook.Application');
    except
      Outlook := CreateOleObject('Outlook.Application');
    end;

    Mail := Outlook.CreateItem(olMailItem);

    if pos('LENOPEHO', sp_Orderlist.Connection.ConnectionString) > 0 then
      Mail.To := 'peter@holzer.se'
    else
      Mail.To := sp_Orderlist.fieldbyname('Emailadress').asstring;

    Mail.Subject := 'Orderbekräftelse (' + sp_OrderlistOrderID.asstring + ')';
    Mail.Body := 'Hej!' + chr(13) + chr(10) + 'Här kommer vårt orderbekräftelse som PDF-bilaga' + chr(13) + chr(10) +
      'Vi tackar för uppdraget.';
    Mail.Attachments.Add(xfilename + '.pdf');
    Mail.Display;

  end;

end;

procedure TfrmOrderLista.actOrderEditExecute(Sender: TObject);
begin

  with TfrmOrderEdit.create(application) do
  begin

    with qryOrderEdit do
    begin
      ParamByName('OrderID').Value := sp_Orderlist.fieldbyname('OrderId').asInteger;
      open;
      edit;
    end;

    showmodal;

    if modalresult = mrOK then
    begin
      qryOrderEdit.post;
      RefreshOrderlist;

    end
    else
      qryOrderEdit.cancel;
  end;

end;

Procedure TfrmOrderLista.Skapa_Fakturaunderlag_XML;

var
  xml_filename: string;

  Nettosumma: double;
  Bruttosumma: double;
  MomsTotal: double;
  newInvoice: IXMLINVOIC416;
  Head: IXMLHead;
  Buyer: IXMLBuyer;
  InvoiceAddress: IXMLInvoiceAddress;
  DeliveryAddress: IXMLDeliveryAddress;
  Seller: IXMLSeller;
  Postaladdress: IXMLPostalAddress;
  Visitingaddress: IXMLVisitingAddress;
  Factoring: IXMLFactoring;
  rows: IXMLRows;
  row: IXMLRow;

  function FixcommaString(cvalue: double): string;
  BEGIN
    RESULT := stringreplace(floattostr(cvalue), ',', '.', [])
  END;

begin

  xml_filename := FoldernameFix(ftgsystemvalue('pdf.folder.fakturaunderlag', '')) + 'Fakturaunderlag_' +
    sp_OrderlistOrderID.asstring + '.xml';

  with qry do
  begin

    close;
    qry.params.ParamByName('OrderId').Value := sp_Orderlist.fieldbyname('OrderId').asInteger;
    open;

    Nettosumma := 0;
    while not eof do
    begin
      Nettosumma := Nettosumma + fieldbyname('Prisperenhet').AsCurrency * fieldbyname('Antal').AsFloat;
      next;
    end;

    qry.First;

    Bruttosumma := Nettosumma * 1.25;
    MomsTotal := Bruttosumma - Nettosumma;

    // Faktura

    newInvoice := NewINVOIC416;
    /// <summary>
    ///
    /// </summary>

    newInvoice.SoftwareVersion := '9.0.6p106';
    newInvoice.SoftwareManufacturer := 'Monitor ERP System AB';
    newInvoice.SoftwareName := 'Monitor';
    newInvoice.Invoice.InvoiceNumber := fieldbyname('OrderId').asstring;
    newInvoice.Invoice.InvoiceType := 1;

    // Head
    Head := newInvoice.Head;

    Head.SellersOrderNumber := fieldbyname('OrderId').asstring;
    Head.OrderDate := fieldbyname('Orderdatum').asstring;

    // Head.BuyersOrderNumber := fieldbyname('Ordernummer').asstring;
    Head.BuyersOrderNumber := '12345';
    Head.DebitInvoiceNumber := '0';

    Head.InvoiceDate := fieldbyname('Dagensdatum').asstring;
    Head.LanguageNameCode := 'SV';
    // Buyer
    Buyer := Head.Buyer;

    Buyer.BuyerCode := '1001'; // ? Kundnummmer
    Buyer.BuyerName := 'INTERSYSTEM AB'; // string
    Buyer.BuyerVATRegistrationNumber := 'SE556594166201';
    Buyer.BuyerReference := fieldbyname('Referens').asstring;
    Buyer.BuyerReferencePhone := '';
    Buyer.BuyerReferenceFax := '';
    Buyer.BuyerReferenceEmail := ''; // ? Referensemail, finns det?

    InvoiceAddress := Buyer.InvoiceAddress;

    InvoiceAddress.InvoiceAddressName := 'INTERSYSTEM AB';
    InvoiceAddress.InvoiceAddressStreetBox1 := 'Brandsvigsgatan 3';
    InvoiceAddress.InvoiceAddressStreetBox2 := '';
    InvoiceAddress.InvoiceAddressZipCity1 := '262 73 Ängelholm';
    InvoiceAddress.InvoiceAddressZipCity2 := '';
    InvoiceAddress.InvoiceAddressCountry := 'Sverige';

    DeliveryAddress := Buyer.DeliveryAddress;
    DeliveryAddress.DeliveryAddressName := 'INTERSYSTEM AB';
    DeliveryAddress.DeliveryAddressStreetBox1 := 'Brandsvigsgatan 3';
    DeliveryAddress.DeliveryAddressStreetBox2 := '';
    DeliveryAddress.DeliveryAddressZipCity1 := '262 73 Ängelholm';
    DeliveryAddress.DeliveryAddressZipCity2 := '';
    DeliveryAddress.DeliveryAddressCountry := 'Sverige';

    Seller := Head.Seller;
    Seller.SellerSuplierCode := ''; // ?
    Seller.SellerName := 'Ängelholms Mekaniska Verkstad AB';
    Seller.SellerReference := ''; // ?
    Seller.SellerReferencePhone := '0431-15459'; // ?
    Seller.SellerReferenceFax := ''; // ?
    Seller.SellerReferenceEmail := 'info@angelholms-mekaniska.se';
    Seller.SellerOrigin := 'Ängelholm'; // ?
    Seller.SellerWeb := 'www.angelholms-mekaniska.se'; // ?
    Seller.SellerPhone := '0431-15459'; // 2018-11-14
    Seller.SellerFax := ''; // ?
    Seller.SellerRegistrationnumber := '556336-6490'; // ?
    Seller.SellerVatRegistrationNumber := 'SE556336649001'; // ?
    // Seller.SellerCountrycode := 'SE';

    Postaladdress := Seller.Postaladdress;

    Postaladdress.PostalAddressStreetBox1 := 'Verkstadsgatan 7'; // ?
    Postaladdress.PostalAddressStreetBox2 := ''; // ?
    Postaladdress.PostalAddressZipCity1 := '26271 Ängelholm'; // ?
    Postaladdress.PostalAddressZipCity2 := ''; // ?
    Postaladdress.PostalAddressCountry := 'Sverige'; // ?

    Visitingaddress := Seller.Visitingaddress;

    Visitingaddress.VisitingaddressStreetBox1 := 'Verkstadsgatan 7'; // ?
    Visitingaddress.VisitingaddressStreetBox2 := ''; // ?
    Visitingaddress.VisitingaddressZipCity1 := '26271 Ängelholm'; // ?
    Visitingaddress.VisitingaddressZipCity2 := ''; // ?
    Visitingaddress.VisitingaddressCountry := 'Sverige'; // ?

    Head.InvoiceCurrency := 'SEK';
    Head.PaymentDueDate := ''; // ?
    Head.CurrencyExchangeRate := '0'; // skall vara double
    Head.RateOfExchangeDate := ''; // ?
    Head.EuVatText := ''; // ?
    Head.GodsLabelLine1 := fieldbyname('Godsmärke').asstring;
    Head.GodsLabelLine2 := '';
    Head.HomeCurrency := 'SEK';
    Head.TermsOfPayment := ''; // ?
    Head.TermsOfPaymentNoOfDays := 30; // ?
    Head.BankName := ''; // ?
    Head.AccountNumber := ''; // ?
    Head.SwiftAddress := ''; // ?
    Head.BankGiroNumber := '';
    Head.PlusGiroNumber := '';

    Factoring := Head.Factoring;
    Factoring.FactoringSetting := 0;
    Factoring.FactoringBankname := '';
    Factoring.FactoringAccountnumber := '';
    Factoring.FactoringSwiftaddress := '';
    Factoring.FactoringBankgironumber := '';
    Factoring.FactoringPlusGiroNumber := '';

    Head.AlloyCost := '0';
    Head.FreightCost := '0';
    Head.PackingCost := '0';
    Head.InsuranceCost := '0';
    Head.NetAmountInInvoiceCurrency := stringreplace(floattostr(Nettosumma), ',', '.', []);
    // Summa av alla rader    ska vara currency
    Head.InvoicingCharge := '0';
    // Head.VatAmountInInvoiceCurrency := stringreplace(floattostr(MomsTotal),',','.',[]); // Summa Moms?
    Head.VatAmountInInvoiceCurrency := FixcommaString(MomsTotal); // Summa Moms?
    Head.Equalization := '';
    Head.PayableAmountInInvoiceCurrency := FixcommaString(Bruttosumma);
    // Summa ink moms;

    // Head.TermsOfPaymentCashDiscount := 0;
    // Head.TermsOfPaymentCashDiscountDate := '';
    // Head.AgreementNumber := '';

    // 'SE888888'     string

    rows := newInvoice.rows;
    while not eof do
    begin
      row := rows.Add;

      row.RowNumber := fieldbyname('PositionNummer').asInteger;
      row.RowType := 1; // Artikelnummer, måste finnas
      row.RowPosition := 0;
      row.CostType := 0; // Normal

      row.BuyersPartNumber := fieldbyname('Artikelnummer').asstring;
      row.SellersPartNumber := fieldbyname('Artikelnummer').asstring;
      row.PartDescription := fieldbyname('Beteckning').asstring;
      row.deliverydate := fieldbyname('Leveransdatum').asstring;
      row.Quantity := FixcommaString(fieldbyname('Antal').AsFloat);
      row.Unit_ := 'st'; // 2018-11-14
      row.Each := 1;
      row.Discount := '';
      row.Price := FixcommaString(fieldbyname('PrisperEnhet').AsFloat);

      row.RowSum := FixcommaString(fieldbyname('PrisperEnhet').AsCurrency * fieldbyname('Antal').AsFloat);
      row.BuyersOrderNumber := fieldbyname('Ordernummer').asstring;
      row.SellersOrderNumber := fieldbyname('OrderId').asstring;
      row.CountryOfOriginCode := 'SE';
      next;
    end;

    // Memo1.Text := newfaktura.Xml;

    newInvoice.OwnerDocument.Encoding := 'UTF-8';
    newInvoice.OwnerDocument.SaveToFile(xml_filename);

  end;
end;

procedure TfrmOrderLista.sokOrdernummerChange(Sender: TObject);
var
  soktext: string;
  OrderId, tabind, OrderstatusId: Integer;
begin

  soktext := (Sender as TEdit).Text;
  if (length(soktext) > 4) and trystrtoint(soktext, OrderId) then
  begin

    with qryOrderSok do
    begin
      ParamByName('Orderid').Value := OrderId;
      open;
      if RecordCount = 1 then
      begin

        OrderstatusId := fieldbyname('OrderstatusId').asInteger;

        if OrderstatusId = 4 then
          tabind := 0
        else if OrderstatusId = 3 then
          tabind := 1
        else if OrderstatusId = 2 then
          tabind := 2
        else if OrderstatusId = 1 then
          tabind := 3
        else if OrderstatusId = 5 then
          tabind := 4;

        // TabControl1.TabIndex := tabind;
        // TabControl1.Update;

        with sp_Orderlist do
        begin
          close;
          ParamByName('@OrderstatusId').Value := OrderstatusId;
          open;
        end;

        sp_Orderlist.Locate('OrderId', soktext, []);

      end;

    end;
  end;

end;

procedure TfrmOrderLista.sokOrdernummerEnter(Sender: TObject);
begin
  sokOrdernummer.setfocus;
end;

procedure TfrmOrderLista.actFakturaunderlagPrintExecute(Sender: TObject);

begin
  with TrptOrder.create(application) do
  begin
    with sp_ftgsystem do
    begin
      ParamByName('@ID').Value := 8;
      execproc;
      report.PrinterSettings.Copies := strtoint(ParamByName('@Värde').Value);
    end;

    header.Caption := 'FAKTURAUNDERLAG';
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    if (Sender as TAction).Owner.tag = 2 then // MenuItems tag
      report.preview
    else
    begin

      if pos('LENOPEHO', dm.FDConnection1.ConnectionString) = 0 then

        report.Print;

      xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.fakturaunderlag', '')) + 'Fakturaunderlag_' +
        sp_OrderlistOrderID.asstring;

      qrfilename := GetQrfilename(xfilename);

      report.Prepare;
      report.QRPrinter.Compression := True;
      report.QRPrinter.Save(qrfilename);

      report.QRPrinter.Free;
      report.QRPrinter := nil;
      // up to here, it seems to want to be set back to nil before you preview

      QRExp.OpenAfterExport := false;
      // report.PreviewModal;

      QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);

      deletefile(qrfilename);

      if sp_OrderlistKundID.asInteger = 1 then
        Skapa_Fakturaunderlag_XML; // Skspa xml-fil

      // up to here, it seems to want to be set back to nil before you preview

    end;

  end;
end;

procedure TfrmOrderLista.actFaktutarunderlagXMLExecute(Sender: TObject);
begin
  Skapa_Fakturaunderlag_XML;
end;

procedure TfrmOrderLista.actFöljesdelUtskriftExecute(Sender: TObject);
begin
  with TrptOrder.create(application) do
  begin
    with sp_ftgsystem do
    begin
      ParamByName('@ID').Value := 7;
      execproc;
      report.PrinterSettings.Copies := strtoint(ParamByName('@Värde').Value);
    end;
    header.Caption := 'FÖLJESEDEL';
    tag := 1;
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.Print;
    // PDF

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.foljesedel', '')) + 'Följesedel_' +
      sp_OrderlistOrderID.asstring;

    qrfilename := GetQrfilename(xfilename);

    report.Prepare;
    report.QRPrinter.Compression := True;
    report.QRPrinter.Save(qrfilename);
    report.QRPrinter.Free;
    report.QRPrinter := nil;
    // up to here, it seems to want to be set back to nil before you preview
    QRExp.OpenAfterExport := false;
    // report.PreviewModal;
    QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);
    deletefile(qrfilename);
  end;

end;

procedure TfrmOrderLista.actImporteraIntersystemExecute(Sender: TObject);
begin
  with TfrmOrderimportIntersystem.create(application) do
  begin
    showmodal;
    if opendialog1.FileName <> '' then
    begin
      ReadOrderfileIntersystem(opendialog1.FileName);
      with sp_Orderlist do
      begin
        close;
        open;
      end;
    end;
  end;

end;

procedure TfrmOrderLista.actOrderLäggtillÄndraPositionerExecute(Sender: TObject);
var
  fname: string;
  f: TfrmOrder;
  cc, I: Integer;
begin

  fname := 'F' + sp_OrderlistOrderID.asstring;

  cc := application.componentcount;

  for I := 0 to cc - 1 do
    if application.Components[I].name = fname then
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
  frmmain.toolbutton3.imageindex := 5;

end;

procedure TfrmOrderLista.actOrderlistaRefreshExecute(Sender: TObject);
begin
  RefreshOrderlist;
end;

procedure TfrmOrderLista.wwDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    wwDBGrid1DblClick(Sender);
end;

procedure TfrmOrderLista.wwDBGrid1MultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
var
  osumma: double;
begin

  osumma := 0;
  with qryOrdersummaGet do
  begin
    close;
    ParamByName('Orderid').Value := sp_Orderlist.fieldbyname('Orderid').Value;
    open;
    osumma := fieldbyname('Ordersumma').AsFloat;
  end;

  if Selecting then
    ordersumma := ordersumma + osumma
  else
    ordersumma := ordersumma - osumma;

  label5.Caption := floattostr(ordersumma);

end;

procedure TfrmOrderLista.wwDBGrid1RowChanged(Sender: TObject);
begin
  // btnPlanera.caption := 'Planera ' + sp_orderlistOrderID.asstring;
end;

procedure TfrmOrderLista.actOrderradUpdateExecute(Sender: TObject);
begin
  with TfrmOrderradUpdate.create(application) do
    show;

end;

procedure TfrmOrderLista.actUpdateOrderlistaExecute(Sender: TObject);
begin
  RefreshOrderlist;
end;

procedure TfrmOrderLista.actOrderVisaExecute(Sender: TObject);
begin
  with TrptOrder.create(application) do
  begin
    header.Caption := 'Beställning';
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderLista.Button1Click(Sender: TObject);
begin
  with sp_Orderlist do
  begin
    close;
    with sp_Orderlist.ParamByName('@Kundid') do
    begin
      DataType := ftInteger;
      Clear;
    end;
    open;
    wwDBLookupCombo1.Text := '';
  end;
end;

procedure TfrmOrderLista.PageControl1Change(Sender: TObject);
var

  StatusId: Integer;
  cnt: Integer;
begin

  StatusId := PageControl1.ActivePage.tag;

  if StatusId = 2 then // Prissatta
    wwDBGrid1.Options := wwDBGrid1.Options + [dgMultiselect]
  else
    wwDBGrid1.Options := wwDBGrid1.Options - [dgMultiselect];

  with sp_Orderlist do
  begin
    close;
    ParamByName('@OrderstatusId').Value := StatusId;
    open;
    cnt := sp_Orderlist.RecordCount;
  end;
end;

procedure TfrmOrderLista.PopupMenu1Popup(Sender: TObject);
var
  raderFinns: Boolean;

begin

  if wwDBGrid1.Selected.Count = 1 then
  begin

    raderFinns := (sp_OrderlistAntalTotal.asInteger > 0);
    offertsommailtillkund2.Enabled := (sp_OrderlistOrderStatusId.asInteger = 5);
    Prissttningpositioner1.Enabled := raderFinns;
    Visautskrift1.Enabled := raderFinns;
    actOrderSkrivut.Enabled := raderFinns;
    actFakturaunderlagPrint.Enabled := raderFinns;
    // offertsommailtillkund2.enabled := (sp_orderlistOrdertyp.asstring = 'O');
    actPrissattningPositioner.Enabled := raderFinns;
    actSattFakturadatum.Enabled := raderFinns;
    actFaktutarunderlagXML.Enabled := sp_OrderlistKundID.asInteger = 1;

  end
  else
  begin

  end;

end;

procedure TfrmOrderLista.actOrderStatusUpdateExecute(Sender: TObject);
var
  OrderId: Integer;
begin

  OrderId := sp_Orderlist.fieldbyname('Orderid').asInteger;

  with TfrmOrderStatusUpdate.create(application) do
  begin

    qryLU_orderstatus.open;
    qryLU_orderstatus.Locate('Id', sp_Orderlist.fieldbyname('OrderstatusId').asInteger, []);
    LU_orderstatus.LookupValue := sp_Orderlist.fieldbyname('OrderstatusId').asstring;

    showmodal;

    if modalresult = mrOK then
    begin
      dm.FDConnection1.ExecSQL('Update  Orderhuvud set OrderstatusId = ' + qryLU_orderstatus.fieldbyname('Id').asstring
        + ' where Id = ' + OrderId.ToString);
      RefreshOrderlist;
    end;
  end;
end;

procedure TfrmOrderLista.actPallEtikettExecute(Sender: TObject);
begin
  with TrptPalletikett.create(application) do
  begin
    with qry do
    begin

      close;
      ParamByName('Orderid').Value := sp_Orderlist.fieldbyname('Orderid').asInteger;
      open;
    end;
    report.Print;
    // report.preview;

  end;
end;

procedure TfrmOrderLista.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);

begin
  with sp_Orderlist do
  begin
    close;
    ParamByName('@Kundid').Value := LookupTable.fieldbyname('Kundid').asstring;
    open;
  end;

end;

procedure TfrmOrderLista.wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
begin
  Caption := AFieldName;
  with sp_Orderlist do
  begin
    close;
    ParamByName('@Orderby').Value := AFieldName;
    open;
  end;

end;

procedure TfrmOrderLista.actArbetsorderPrintExecute(Sender: TObject);
begin
  with TrptArbetsOrder.create(application) do
  begin
    with qry do
    begin
      close;
      params.ParamByName('OrderID').Value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderLista.actCopyOrderExecute(Sender: TObject);
var
  OrderIdNy: Integer;
begin
  // Kopiera en hel order

  with sp_OrderKopiera do
  begin
    ParamByName('@OrderId').Value := sp_Orderlist.fieldbyname('OrderId').asInteger;
    execproc;
    OrderIdNy := ParamByName('@OrderIdNew').asInteger;

    RefreshOrderlist;

    // wwdbgrid1.Refresh;
    sp_Orderlist.Locate('OrderId', OrderIdNy, [])

    // actOrderEditExecute(Sender);

  end;

end;

procedure TfrmOrderLista.actEtiketterSkrivUtExecute(Sender: TObject);
var
  EtikettPrintername: string;
begin

  qryEtiketter.close;
  qryEtiketter.open;

  if qryEtiketter.RecordCount > 0 then
  begin

    with TIniFile.create(extractfilepath(application.ExeName) + 'Ordus.ini') do
    begin
      EtikettPrintername := Readstring('Printer', 'EtikettPrinterName', '');
      Free;
    end;
    if EtikettPrintername = '' then
      EtikettPrintername := 'DYMO LabelWriter 450 Turbo';

    if not printerexists(EtikettPrintername) then
    begin
      showmessage('Etikettskrivare "' + EtikettPrintername + '" är ej konfiguerad - utskrift avbryts!');
      exit;
    end;

    DefaultPrinterName := SetDefaultPrinter(EtikettPrintername);

    with TrptEtikett.create(application) do
    begin

      report.DataSet := qryEtiketter;

      QRDBText1.DataSet := qryEtiketter;
      QRDBText2.DataSet := qryEtiketter;
      QRDBText3.DataSet := qryEtiketter;
      QRDBText4.DataSet := qryEtiketter;
      QRDBText5.DataSet := qryEtiketter;
      QRDBText6.DataSet := qryEtiketter;
      QRDBText7.DataSet := qryEtiketter;
      report.Print;
    end;

    SetDefaultPrinter(DefaultPrinterName);
  end;

end;

procedure TfrmOrderLista.actOrderPDFPrintExecute(Sender: TObject);
begin
  with TfrmPrintPDF.create(application) do
    showmodal;
end;

procedure TfrmOrderLista.actPlaneringTabortExecute(Sender: TObject);
begin
  if messagedlg('Vill du verkligen ta bort planeringen för denna order?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with spPlaneringDelete do
    begin
      params.ParamByName('@OrderId').Value := sp_OrderlistOrderID.asInteger;
      execproc;
      RefreshOrderlist;
    end;
  end;

end;

procedure TfrmOrderLista.Skapaplanering1Click(Sender: TObject);

begin

  with TfrmOrderPlanering.create(application) do
  begin

    qryOrderEdit.open;
    qryOrderEdit.edit;

    // if qryOrderEditArbetstidPlanerad.asstring = '' then
    // qryOrderEdit.fieldbyname('ArbetstidPlanerad').asInteger :=
    // sp_orderlist.fieldbyname('Kalkarbetstid').asInteger;
    //
    // label11.caption := MinutesToDaysHoursMinutes
    // (qryOrderEdit.fieldbyname('ArbetstidPlanerad').asInteger);
    // application.ProcessMessages;

    showmodal;

    if modalresult = mrOK then
    begin
      if qryOrderEdit.State in [dsEdit] then

        qryOrderEdit.post;

      RefreshOrderlist;
    end
    else if qryOrderEdit.State in [dsEdit] then
      qryOrderEdit.cancel;
  end;
  RefreshOrderlist;
end;

procedure TfrmOrderLista.Importorderfilfrnleverantr1Click(Sender: TObject);
begin
  with TfrmOrderimport.create(application) do
    showmodal;

  with sp_Orderlist do
  begin
    close;
    open;
  end;

end;

procedure TfrmOrderLista.WMDROPFILES(var msg: TWMDropFiles);
const
  MAXFILENAME = 255;
var

  cnt, fileCount: Integer;
  FileName: array [0 .. MAXFILENAME] of char;
  strFilename: string;
begin
  // how many files dropped?
  fileCount := DragQueryFile(msg.Drop, $FFFFFFFF, FileName, MAXFILENAME);

  if fileCount > 0 then
  begin
    // query for file names
    for cnt := 0 to -1 + fileCount do
    begin
      DragQueryFile(msg.Drop, cnt, FileName, MAXFILENAME);

      // do something with the file(s)
      // memo1.Lines.Insert(0, fileName);

      strFilename := FileName;

      if lowercase(extractfileext(extractfilename(strFilename))) = '.xml' then
        ReadOrderfileIntersystemXML(strFilename)
      else
        ReadOrderfileIntersystem(strFilename);

    end;

    // release memory
    DragFinish(msg.Drop);

    RefreshOrderlist;

  end;
end;

procedure TfrmOrderLista.RefreshOrderlist;
var
  CurrentRecord: Integer;
begin
  // Refresh orderlist
  with sp_Orderlist do
  begin
    CurrentRecord := fieldbyname('OrderId').asInteger;
    Active := false;
    Active := True;
    Locate('OrderId', CurrentRecord, []);
  end;
end;

end.
