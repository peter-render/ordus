unit fOrderLista;

interface

uses

  variants, messages, system.UITypes, SysUtils, Classes, Graphics, Controls,
  Forms, system.Types, dateUtils,
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
  prefaktura4, Vcl.OleCtrls,
  SHDocVw, fSattFakturadatum, rSammelfaktura, fOrderkalkyl, fFlikkolumner, fExcelimportOrder, XMLIntf, XmlDoc;

type
  TfrmOrderLista = class(TForm)
    dsoOrderlist: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    wwDBGrid1: TwwDBGrid;
    PopupMenuOrderlista: TPopupMenu;
    ActionList1: TActionList;
    actOrderNew: TAction;
    mnuNyOrder: TMenuItem;
    actSkrivUt: TAction;
    mnuSkapaPDFOrder: TMenuItem;
    actSattFakturadatum: TAction;
    actPrissattningPositioner: TAction;
    mnuPrissättaPositioner: TMenuItem;
    actOrderTaBort: TAction;
    mnuTabortOrder: TMenuItem;
    N1: TMenuItem;
    actOffertSendViamail: TAction;
    actOrderEdit: TAction;
    actFakturaunderlagPrint: TAction;
    mnuSkapaSamlingsfaktura: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actOrderradUpdate: TAction;
    mnuSkapaPDFOffert: TMenuItem;
    N4: TMenuItem;
    mnuResfreshOrderlista: TMenuItem;
    actOrderVisa: TAction;
    mnuVisaOrder: TMenuItem;
    mnuLäggtillÄndrapositioner: TMenuItem;
    mnuÄndraOrderstatusManuellt: TMenuItem;
    actOrderStatusUpdate: TAction;
    actPallEtikett: TAction;
    mnuUtsktriftPalletikett: TMenuItem;
    actArbetsorderPrint: TAction;
    actOrderPDFPrint: TAction;
    mnuSkrivutritningar: TMenuItem;
    mnuSkrivutfljesedel: TMenuItem;
    mnuSkrivutetiketter: TMenuItem;
    mnuSkspaPDFOrderbekräftlese: TMenuItem;
    mnuSkapaPlanering: TMenuItem;
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
    mnuSkickaOrderbekräftelseViaEpost: TMenuItem;
    N7: TMenuItem;
    mnuTaBortPlanering: TMenuItem;
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
    wwDataSource1: TwwDataSource;
    wwExpandButton1: TwwExpandButton;
    gtPDFDocument1: TgtPDFDocument;
    sp_OrderlistEgenMärkning: TStringField;
    QRPDFFilter1: TQRPDFFilter;
    N6: TMenuItem;
    QRExp: TgtQRExport;
    actFakturarunderlagXML: TAction;
    mnuSkapaXMLFakturaunderlag: TMenuItem;
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
    qryFakturaunderlagXML: TFDQuery;
    qryFakturaunderlagXMLOrderId: TFDAutoIncField;
    qryFakturaunderlagXMLKundnamn: TStringField;
    qryFakturaunderlagXMLReferens: TStringField;
    qryFakturaunderlagXMLGodsmärke: TStringField;
    qryFakturaunderlagXMLorderdatum: TSQLTimeStampField;
    qryFakturaunderlagXMLLeveransdatum: TSQLTimeStampField;
    qryFakturaunderlagXMLPositionnummer: TIntegerField;
    qryFakturaunderlagXMLYtbehandlingBeteckning: TStringField;
    qryFakturaunderlagXMLBeteckning: TStringField;
    qryFakturaunderlagXMLArtikelnummer: TStringField;
    qryFakturaunderlagXMLAntal: TFMTBCDField;
    qryFakturaunderlagXMLOrdertypId: TIntegerField;
    qryFakturaunderlagXMLPrisperenhet: TCurrencyField;
    qryFakturaunderlagXMLfritext: TStringField;
    qryFakturaunderlagXMLPris: TFMTBCDField;
    qryFakturaunderlagXMLDagensdatum: TDateField;
    Panel6: TPanel;
    qryOrderSok: TFDQuery;
    Panel4: TPanel;
    lblsokbeställningsnummer: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Button1: TButton;
    sokOrdernummer: TEdit;
    actCopyOrder: TAction;
    mnuKopieraOffert: TMenuItem;
    sp_OrderKopiera: TFDStoredProc;
    sp_OrderlistTabId: TSmallintField;
    actSattFakturadata: TAction;
    sp_OrderlistFakturadatum: TDateField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    qryOrdersummaGet: TFDQuery;
    qryOrderstatus: TFDQuery;
    sp_OrderlistOrdersumma: TFMTBCDField;
    qryFakturaunderlagXMLFakturanummer: TStringField;
    cbVisaAllaFakturor: TCheckBox;
    qryOrdertstatusUpdatePrissatta: TFDQuery;
    actOffertNew: TAction;
    mnuNyOffert: TMenuItem;
    btnStatusByteNext: TButton;
    sp_OrdertstatusUpdate: TFDStoredProc;
    mnuSättfakturamärkning: TMenuItem;
    actSkapaOrderfrånOffert: TAction;
    mnuSkapaorderfrånOffert: TMenuItem;
    qryOrderstatusId: TFDAutoIncField;
    qryOrderstatusOrderstatus: TStringField;
    qryOrderstatusBeteckning: TStringField;
    qryOrderstatusSortorder: TSmallintField;
    qryOrderstatusBGColor: TStringField;
    qryOrderstatusTabId: TSmallintField;
    qryOrderstatusTabBeteckning: TStringField;
    qryOrderstatusOmsättningsgrundande: TBooleanField;
    qryOrderstatusKräveradmin: TBooleanField;
    qryOrderSokId: TFDAutoIncField;
    qryOrderSokOrderStatusId: TIntegerField;
    qryOrdernummerSok: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    IntegerField1: TIntegerField;
    sokBeställningsnummer: TEdit;
    btnStatusBytePrev: TButton;
    mnuSkrivutfakturaunderlag: TMenuItem;
    actSammelfakturaPrint: TAction;
    qryGridColumns: TFDQuery;
    qryGridColumnsFieldname: TStringField;
    qryGridColumnsDisplaywidth: TSmallintField;
    qryGridColumnsFieldheader: TStringField;
    mnuLaggtilloffertrader: TMenuItem;
    actOrderKalkylAddrows: TAction;
    sp_OrderlistÄrPrissatt: TIntegerField;
    sp_OrderlistÄrAvrapporterad: TIntegerField;
    actGörOrdertillOffert: TAction;
    qryFakturaunderlagXMLFörfallodatum: TDateField;
    qryFakturaunderlagXMLFakturadatum: TDateField;
    sp_OrderlistFörfallodatum: TDateField;
    sp_OrderlistFakturanummer: TStringField;
    mnuOffertEdit: TMenuItem;
    Label1: TLabel;
    edtTextsok: TEdit;
    btnSok: TButton;
    qryOrdertextSok: TFDQuery;
    FDAutoIncField2: TFDAutoIncField;
    IntegerField2: TIntegerField;
    actOffertTaBort: TAction;
    mnuTaBortOffert: TMenuItem;
    N5: TMenuItem;
    actCopyOffert: TAction;
    mnuKopieraOrder: TMenuItem;
    actArkivera: TAction;
    A1: TMenuItem;
    sp_OrderlistAntalArtikelnoteringar: TIntegerField;
    sp_OrderlistcAntalArtikelNoteringar: TStringField;
    sp_OrderlistLagersaldo: TIntegerField;
    Label6: TLabel;
    actOrderbekräftleseExcelViaEpost: TAction;
    Skickaorderbekrftleseviaepost1: TMenuItem;
    qryExcelExport: TFDQuery;
    qryExcelExportOrderId: TFDAutoIncField;
    qryExcelExportKundnamn: TStringField;
    qryExcelExportReferens: TStringField;
    qryExcelExportordernummer: TStringField;
    qryExcelExportGodsmärke: TStringField;
    qryExcelExportorderdatum: TSQLTimeStampField;
    qryExcelExportLeveransdatum: TSQLTimeStampField;
    qryExcelExportPositionnummer: TIntegerField;
    qryExcelExportYtbehandlingBeteckning: TStringField;
    qryExcelExportBeteckning: TStringField;
    qryExcelExportArtikelnummer: TStringField;
    qryExcelExportAntal: TFMTBCDField;
    qryExcelExportOrdertypId: TIntegerField;
    qryExcelExportPrisperenhet: TCurrencyField;
    qryExcelExportfritext: TStringField;
    qryExcelExportPris: TFMTBCDField;
    qryExcelExportDagensdatum: TDateField;
    qryExcelExportVårReferens: TStringField;
    actReadExcelRequest: TAction;
    OpenExcelDialog: TOpenDialog;
    spOffertKalkylInsert: TFDStoredProc;
    spOffertkalkylArtikelInsert: TFDStoredProc;
    actExcelImport: TAction;
    qryExcelExport_backup: TFDQuery;
    FDAutoIncField3: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FMTBCDField1: TFMTBCDField;
    IntegerField4: TIntegerField;
    CurrencyField1: TCurrencyField;
    StringField8: TStringField;
    FMTBCDField2: TFMTBCDField;
    DateField1: TDateField;
    StringField9: TStringField;
    qryXMLOrder: TFDQuery;
    qryXMLOrderOrderId: TFDAutoIncField;
    qryXMLOrderKundnamn: TStringField;
    qryXMLOrderReferens: TStringField;
    qryXMLOrderordernummer: TStringField;
    qryXMLOrderorderdatum: TSQLTimeStampField;
    qryXMLOrderLeveransdatum: TSQLTimeStampField;
    qryXMLOrderYtbehandlingBeteckning: TStringField;
    qryXMLOrderBeteckning: TStringField;
    qryXMLOrderArtikelnummer: TStringField;
    qryXMLOrderAntal: TFMTBCDField;
    qryXMLOrderOrdertypId: TIntegerField;
    qryXMLOrderPrisperenhet: TCurrencyField;
    qryXMLOrderfritext: TStringField;
    qryXMLOrderPris: TFMTBCDField;
    qryXMLOrderDagensdatum: TDateField;
    qryXMLOrderVårReferens: TStringField;
    qryXMLOrderGodsmärke: TStringField;
    qryXMLOrderOrderRadnr: TIntegerField;
    qryXMLOrderPositionnummer: TIntegerField;
    qryXMLOrderRevision: TStringField;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure actOrderNewExecute(Sender: TObject);
    procedure actSkrivUtExecute(Sender: TObject);
    procedure actPrissattningPositionerExecute(Sender: TObject);
    procedure actOrderTaBortExecute(Sender: TObject);
    procedure actOffertSendViamailExecute(Sender: TObject);
    procedure actOrderEditExecute(Sender: TObject);
    procedure actFakturaunderlagPrintExecute(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actOrderradUpdateExecute(Sender: TObject);
    procedure actUpdateOrderlistaExecute(Sender: TObject);
    procedure actOrderVisaExecute(Sender: TObject);
    procedure PopupMenuOrderlistaPopup(Sender: TObject);
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
    procedure actFakturarunderlagXMLExecute(Sender: TObject);
    Procedure Skapa_Fakturaunderlag_XML;
    procedure sokOrdernummerChange(Sender: TObject);
    procedure sokOrdernummerEnter(Sender: TObject);
    procedure actCopyOrderExecute(Sender: TObject);
    procedure actSattFakturadataExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure wwDBGrid1MultiSelectRecord(Grid: TwwDBGrid; Selecting: Boolean; var Accept: Boolean);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure cbVisaAllaFakturorClick(Sender: TObject);
    procedure actOffertNewExecute(Sender: TObject);
    procedure btnStatusByteNextClick(Sender: TObject);
    procedure actSkapaOrderfrånOffertExecute(Sender: TObject);
    procedure sokBeställningsnummerChange(Sender: TObject);
    procedure sokBeställningsnummerEnter(Sender: TObject);
    procedure btnStatusBytePrevClick(Sender: TObject);
    procedure actSammelfakturaPrintExecute(Sender: TObject);
    procedure actOrderKalkylAddrowsExecute(Sender: TObject);
    procedure actGörOrdertillOffertExecute(Sender: TObject);
    // procedure edtTextsokChange(Sender: TObject);
    procedure btnSokClick(Sender: TObject);
    procedure edtTextsokChange(Sender: TObject);
    procedure actOffertTaBortExecute(Sender: TObject);
    procedure actCopyOffertExecute(Sender: TObject);
    procedure actArkiveraExecute(Sender: TObject);
    procedure sp_OrderlistCalcFields(DataSet: TDataSet);
    procedure actOrderbekräftleseExcelViaEpostExecute(Sender: TObject);
    procedure actReadExcelRequestExecute(Sender: TObject);
    procedure ReadOrderfileExcelGenerell(filename: string);
  private
    xfilename: string;
    qrfilename: string;

    { Private declarations }
    procedure WMDROPFILES(var msg: TWMDropFiles); message WM_DROPFILES;
    procedure RefreshOrderlist;
    function FU_FolderGet(Kundid: Integer): string;
    procedure Soktext;
    function CreateXMLFile(OrderId: Integer): string;

  public
    { Public declarations }
    FTotalPages: Integer;
  end;

var
  frmOrderLista: TfrmOrderLista;
  ordersumma: double;
  cLeveransdatum: Boolean;
  cYTBEHANDLINGDATUM: Boolean;
  cOrderdatum, cOrderid, cKundreferens, cGodsmarke, cordernummer, cFakturanummer, cKundnamn, cEgenmarkning: Boolean;

Const
  stUA: Integer = 4; // Under arbete
  stAR: Integer = 3; // Återrapporterad
  stPS: Integer = 2; // Prissatt
  stFA: Integer = 1; // Fakturerat
  stOF: Integer = 5; // Offert
  stAK: Integer = 6; // Arkiv

implementation

uses fMain, fOrderNew, rOrder, rArbetsorder, dFakturaNummer,
  fOrderadUpdate, fOrderEdit, fOrderStatusUpdate, rPallEtikett, fPrintPDF,
  rEtikett, fOrderImport, Datamodule, fOrder, fOrderImportInterSystem,
  fimpleDialog,
  fOrderPlanering, funclibProj;

{$R *.DFM}

function TfrmOrderLista.CreateXMLFile(OrderId: Integer): string;
var
  strprice, xmlFilename: string;
  Xml: IXMLDOCUMENT;
  RootNode, CurNode, Node, HeadNode, RefNode, rn, rNode, expNode: IXMLNODE;
  nRow: Integer;

begin

  try

    Xml := NewXMLDocument;
    Xml.Encoding := 'UTF-8';
    Xml.Options := [];
    Xml.Options := [doNodeAutoIndent];

    with qryXMLOrder do
    begin
      close;
      params.parambyname('OrderID').value := OrderId;
      open;

      RootNode := Xml.AddChild('ORDRSP419');
      RootNode.attributes['SoftwareManufacturer'] := 'Monitor ERP System AB';
      RootNode.attributes['SoftwareName'] := 'MONITOR';
      RootNode.attributes['SoftwareVersion'] := '23.2.12.20599';

      // Orderresponse
      CurNode := RootNode.AddChild('OrderResponse');
      CurNode.attributes['OrderNumber'] := sp_OrderlistOrdernummer.AsString;
      // Name
      Node := CurNode.AddChild('Name');
      Node.Text := 'Ängelholms Mekaniska Verkstad AB';
      // Supplierordernumber
      Node := CurNode.AddChild('SupplierOrderNumber');
      Node.Text := sp_OrderlistOrderID.AsString;
      // OrderResponseStatus
      Node := CurNode.AddChild('OrderResponseStatus');
      Node.Text := '4';
      // Head
      HeadNode := CurNode.AddChild('Head');
      // Supplier
      Node := HeadNode.AddChild('Supplier');
      Node.attributes['SupplierCodeEdi'] := '970087';

      // PhoneNumber
      Node := HeadNode.AddChild('PhoneNumber');

      // Node.Text := '0431 111111';

      Node := HeadNode.AddChild('Buyer');

      // Node.attributes['BuyerOrderConfirmationCodeEdi'] := '';
      // References -----------------------------------------------------------
      RefNode := HeadNode.AddChild('References');
      Node := RefNode.AddChild('BuyerReference');
      // Node.Text := 'Jimmy Gudmundsson';
      Node.Text := sp_OrderlistKundreferens.AsString;

      Node := RefNode.AddChild('SupplierReference');
      Node.Text := 'Stefan Andersson';
      Node := RefNode.AddChild('SupplierPhoneNumber');
      Node := RefNode.AddChild('SupplierEmail');
      Node.Text := 'info@angelholms-mekaniska.se';

      expNode := HeadNode.AddChild('Export');
      Node := expNode.AddChild('Currency');
      Node.Text := 'SEK';
      Node := expNode.AddChild('IncoTermCombiTerm');
      Node.Text := 'DAP';
      Node := expNode.AddChild('TransportPayer');
      Node.Text := '1';
      Node := expNode.AddChild('CustomerTransportTimeDays');
      Node.Text := '0';
      Node := expNode.AddChild('TermsOfPaymentDays');
      Node.Text := '30';
      Node := expNode.AddChild('CompanyAdressFlag');
      Node.Text := '1';

      // Rows
      rNode := CurNode.AddChild('Rows');

      // ======================================================================
      // för varje artikel
      // ======================================================================

      nRow := 1;
      while not eof do
      begin
        nRow := nRow + 1;
        rn := rNode.AddChild('Row');
        // rn.attributes['RowNumber'] := inttostr(nRow*10);

        rn.attributes['RowNumber'] := FieldByName('OrderRadnr').AsString; // det som kommer från kunden

        rn.attributes['RowType'] := '1';
        rn.attributes['OrderResponseRowStatus'] := '5';
        // 2 betyder att artikelraden på ordern är Utskriven, vilket den ska vara när vi får OE.

        Node := rn.AddChild('Part');
        Node.attributes['PartNumber'] := FieldByName('Artikelnummer').AsString;
        Node.attributes['Revision'] := FieldByName('Revision').AsString;

        Node := rn.AddChild('SupplierPartNumber');
        Node.Text := FieldByName('Artikelnummer').AsString;

        Node := rn.AddChild('Text');
        Node.Text := FieldByName('Beteckning').AsString;

        Node := rn.AddChild('ReferensNumber');

        Node := rn.AddChild('Deliveryperiod');
        Node.Text := FieldByName('Leveransdatum').AsString;

        Node := rn.AddChild('Quantity');
        Node.Text := StringReplace(FieldByName('Antal').AsString, ',', '.', []);

        Node := rn.AddChild('Unit');
        Node.Text := 'ST';

        Node := rn.AddChild('ConfirmedPrice');
        if FieldByName('PrisPerEnhet').AsString = '' then
          strprice := '0'
        else
          strprice := FieldByName('PrisPerEnhet').AsString;
        Node.Text := StringReplace(strprice, ',', '.', []);

        Node := rn.AddChild('Discount');
        Node.Text := '0';

        Node := rn.AddChild('RequestedDeliveryperiod');
        Node.Text := FieldByName('Leveransdatum').AsString;

        Node := rn.AddChild('RequestedQuantity');
        Node.Text := '0.00';

        Node := rn.AddChild('PartType');
        Node.Text := '1'; // 2 betyder att artikelraden på ordern är Utskriven, vilket den ska vara när vi får OE.

        Node := rn.AddChild('Setup');

        Node := rn.AddChild('Alloy');
        Node.Text := '0.00';
        next;
      end;
    end;
  finally
    xmlFilename := FoldernameFix(ftgsystemvalue('xml.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
      sp_OrderlistOrderID.AsString + '.xml';
    Xml.SaveToFile(xmlFilename);
    Xml := nil;
  end;
  result := xmlFilename;
end;

procedure TfrmOrderLista.ReadOrderfileExcelGenerell(filename: string);
var
  strKund, ExcelFileName: String;
  ExcelApplication, ExcelWorkbook, EWS: Variant;
  radnr: Integer;
  strFirstcell, strBestDatum: string;
  strInköpsorder: string;
  strReferens, strGodsMärke: string;
  strText, strLevDatum: string;
  artikelnr, artikelbeteckning: string;
  antalArtiklar, start, i, intOrderid, antal, antal_1, antal_2, antal_3, intKundId, intOffertKalkylId: Integer;
  mydat, levDatum: Tdatetime;
  blnCont: Boolean;

begin

  ExcelFileName := filename;

  // be sure ComObj and Variants units are included in the "uses" clause
  ExcelApplication := Null;
  ExcelWorkbook := Null;
  EWS := Null;

  try
    // create Excel OLE
    ExcelApplication := CreateOleObject('Excel.Application');
  except
    ExcelApplication := Null;
    // add error/exception handling code as desired
  end;

  If VarIsNull(ExcelApplication) = false then
  begin
    try
      ExcelApplication.Visible := false; // set to False if you do not want to see the activity in the background
      ExcelApplication.DisplayAlerts := false;
      // ensures message dialogs do not interrupt the flow of your automation process. May be helpful to set to True during testing and debugging.
      // Open Excel Workbook
      try
        ExcelWorkbook := ExcelApplication.Workbooks.open(ExcelFileName);
        // reference
        // https://docs.microsoft.com/en-us/office/vba/api/excel.workbooks.open
      except
        ExcelWorkbook := Null;
        // add error/exception handling code as desired
      end;

      If VarIsNull(ExcelWorkbook) = false then
      begin
        // connect to Excel Worksheet using either the ExcelApplication or ExcelWorkbook handle
        try
          EWS := ExcelWorkbook.WorkSheets[1]; // [1] specifies the first worksheet

          strFirstcell := copy(EWS.cells[1, 1], 1, 21);

          if strFirstcell = 'I003_Inkop_LEVERANTOR' then
          begin


            // Hur många rader finns

            radnr := 1;
            while true do
            begin
              radnr := radnr + 1;
              strText := EWS.cells[radnr, 1];
              if trim(strText) = '' then
                break;
            end;

            antalArtiklar := radnr - 2;

            // ----------------------------------------------L.Rönning beställningsformat

            strKund := 'L Rönning Ab';
            strBestDatum := EWS.cells[2, 2];
            strInköpsorder := EWS.cells[2, 3];
            // strGodsMärke := EWS.cells[1, 2];
            strReferens := EWS.cells[2, 4];
            strLevDatum := EWS.cells[2, 5];

            blnCont := true;

            // kolla Best datum
            try
              mydat := strtodate(strBestDatum);
            except
              begin
                messagedlg('Ogiltig beställningsdatum (format=YYYY-MM-DD), importen avbryts!', mtError, [mbOK], 0);
                blnCont := false;
              end;
            end;

            // Kolla Levdatum
            // --------------------
            try
              mydat := strtodate(strLevDatum);
            except
              begin
                messagedlg('Ogiltig leveransdatum (format=YYYY-MM-DD), importen avbryts!', mtError, [mbOK], 0);
                blnCont := false;
              end;
            end;
            // Kunden
            // -----------
            with dm.qryLU_kund do
            begin
              open;
              if Locate('Kundnamn', strKund, [LoCaseInsensitive, LoPartialKey]) then

                intKundId := dm.qryLU_kund.FieldByName('Id').asInteger
              else
              begin
                messagedlg('Kundnamnet kunde inte hittas, importen avbryts!', mtError, [mbOK], 0);
                blnCont := false;
              end
            end;

            if blnCont then
            begin
              with TfrmExcelImportOrder.create(Application) do
              begin

                LUCKund.Text := dm.qryLU_KundKundnamn.AsString;
                edtBestDatum.Date := strtodate(strBestDatum);
                edtInkopsorder.Text := strInköpsorder;
                edtGodsmärke.Text := '';
                edtReferens.Text := strReferens;
                edtLeveransdatum.Date := strtodate(strLevDatum);

                lblAntal.caption := inttostr(antalArtiklar);

                rgtyp.ItemIndex := 0;
                rgtyp.Visible := false;

                showmodal;

                if modalResult = mrOK then
                begin
                  with dm.sp do
                  begin

                    parambyname('@Kundid').value := intKundId;
                    parambyname('@ordernummer').value := edtInkopsorder.Text;
                    parambyname('@orderdatum').value := edtBestDatum.Date;
                    parambyname('@Godsmärke').value := edtGodsmärke.Text;
                    parambyname('@Referens').value := strReferens;
                    parambyname('@Leveransdatum').value := edtLeveransdatum.Date;

                    execproc;
                    intOrderid := parambyname('@OrderID').value;
                  end;

                  i := 0;
                  radnr := 1;

                  while true do
                  begin
                    radnr := radnr + 1;

                    artikelnr := EWS.cells[radnr, 8];
                    artikelbeteckning := EWS.cells[radnr, 7];

                    if artikelnr <> '' then
                    begin
                      antal := EWS.cells[radnr, 9];
                      if antal > 0 then
                      begin
                        i := i + 1;
                        with dm.sp_OrderRadImport do
                        begin
                          parambyname('@KundId').value := intKundId;
                          parambyname('@OrderId').value := intOrderid;
                          parambyname('@Artikelnummer').value := artikelnr;
                          parambyname('@Artikelbeteckning').value := artikelbeteckning;
                          parambyname('@Antal').value := antal;
                          parambyname('@Positionnummer').value := i;
                          execproc;
                        end;
                      end;
                    end
                    else
                      break;
                  end;
                  showmessage('Order med Id ' + inttostr(intOrderid) + ' skapat.');
                  // end;
                end;
              end;
            end;
          end
          // ------------------------------------------ Slut L.Rönning
          else
          // -----------------------------------------------  Offertförfrågan till AMek
          begin

            radnr := 0;

            while true do
            begin
              radnr := radnr + 1;
              strText := EWS.cells[radnr, 1];
              if trim(strText) = 'Artikelnummer' then
                break;
            end;

            start := radnr + 2;
            radnr := radnr + 1;

            while true do
            begin
              radnr := radnr + 1;
              strText := EWS.cells[radnr, 1];
              if strText = '' then
                break;
            end;

            antalArtiklar := radnr - start;

            strKund := EWS.cells[3, 2];
            strBestDatum := EWS.cells[4, 2];
            strInköpsorder := EWS.cells[5, 2];
            strGodsMärke := EWS.cells[6, 2];
            strReferens := EWS.cells[7, 2];
            strLevDatum := EWS.cells[8, 2];

            blnCont := true;

            try
              mydat := strtodate(strBestDatum);
            except
              begin
                messagedlg('Ogiltig beställningsdatum (format=YYYY-MM-DD), importen avbryts!', mtError, [mbOK], 0);
                blnCont := false;
              end;
            end;

            try
              mydat := strtodate(strLevDatum);
            except
              begin
                messagedlg('Ogiltig leveransdatum (format=YYYY-MM-DD), importen avbryts!', mtError, [mbOK], 0);
                blnCont := false;
              end;
            end;

            with dm.qryLU_kund do
            begin
              open;
              if Locate('Kundnamn', strKund, [LoCaseInsensitive, LoPartialKey]) then

                intKundId := dm.qryLU_kund.FieldByName('Id').asInteger
              else
              begin
                messagedlg('Kundnamnet kunde inte hittas, importen avbryts!', mtError, [mbOK], 0);
                blnCont := false;
              end
            end;

            if blnCont then
            begin
              with TfrmExcelImportOrder.create(Application) do
              begin

                LUCKund.Text := dm.qryLU_KundKundnamn.AsString;
                edtBestDatum.Date := strtodate(strBestDatum);
                edtInkopsorder.Text := strInköpsorder;
                edtGodsmärke.Text := strGodsMärke;
                edtReferens.Text := strReferens;
                edtLeveransdatum.Date := strtodate(strLevDatum);

                lblAntal.caption := inttostr(antalArtiklar);

                showmodal;

                if modalResult = mrOK then
                begin
                  if rgtyp.ItemIndex = 0 then
                  begin
                    // Skapa Ordderhuvud
                    // #################################################################################

                    with dm.sp do
                    begin

                      parambyname('@Kundid').value := intKundId;
                      parambyname('@ordernummer').value := edtInkopsorder.Text;
                      parambyname('@orderdatum').value := edtBestDatum.Date;
                      parambyname('@Godsmärke').value := edtGodsmärke.Text;
                      parambyname('@Referens').value := strReferens;
                      parambyname('@Leveransdatum').value := edtLeveransdatum.Date;

                      execproc;
                      intOrderid := parambyname('@OrderID').value;
                    end;

                    radnr := start - 1;
                    i := 0;

                    while true do
                    begin
                      radnr := radnr + 1;

                      artikelnr := EWS.cells[radnr, 1];
                      artikelbeteckning := EWS.cells[radnr, 2];

                      if artikelnr <> '' then
                      begin

                        antal := EWS.cells[radnr, 3];
                        if antal > 0 then
                        begin
                          i := i + 1;
                          with dm.sp_OrderRadImport do
                          begin
                            parambyname('@KundId').value := intKundId;
                            parambyname('@OrderId').value := intOrderid;
                            parambyname('@Artikelnummer').value := artikelnr;
                            parambyname('@Artikelbeteckning').value := artikelbeteckning;
                            parambyname('@Antal').value := antal;
                            parambyname('@Positionnummer').value := i;
                            execproc;
                          end;
                        end;
                      end
                      else
                        break;
                    end;

                    showmessage('Order med Id ' + inttostr(intOrderid) + ' skapat.');
                  end;

                  if rgtyp.ItemIndex = 1 then
                  begin
                    //
                    // Skapa OffertKalkyl
                    //
                    with spOffertKalkylInsert do
                    begin
                      parambyname('@Kundid').value := intKundId;
                      parambyname('@VårReferensId').value := 5;
                      parambyname('@Förfrågan').value := ChangeFileExt(extractfilename(ExcelFileName), '');
                      execproc;
                      intOffertKalkylId := parambyname('@NewId').asInteger;
                    end;

                    //
                    radnr := 11; // Första artikelrad

                    while true do
                    begin
                      radnr := radnr + 1;

                      artikelnr := EWS.cells[radnr, 1];
                      artikelbeteckning := EWS.cells[radnr, 2];

                      if artikelnr <> '' then
                      begin

                        try
                          antal_1 := EWS.cells[radnr, 3];
                        Except
                          antal_1 := 0
                        end;

                        try
                          antal_2 := EWS.cells[radnr, 4];
                        Except
                          antal_2 := 0
                        end;

                        try
                          antal_3 := EWS.cells[radnr, 5];
                        Except
                          antal_3 := 0
                        end;

                        if antal_1 > 0 then
                          with spOffertkalkylArtikelInsert do
                          begin
                            // parambyname('@Kundid').value := intKundId;
                            parambyname('@OffertKalkylid').value := intOffertKalkylId;
                            parambyname('@Artikelnummer').value := artikelnr;
                            parambyname('@Artikelbeteckning').value := artikelbeteckning;
                            parambyname('@Antal').value := antal_1;
                            execproc;
                          end;

                        if antal_2 > 0 then
                          with spOffertkalkylArtikelInsert do
                          begin
                            // parambyname('@Kundid').value := intKundId;
                            parambyname('@OffertKalkylid').value := intOffertKalkylId;
                            parambyname('@Artikelnummer').value := artikelnr;
                            parambyname('@Artikelbeteckning').value := artikelbeteckning;
                            parambyname('@Antal').value := antal_2;
                            execproc;
                          end;

                        if antal_3 > 0 then
                          with spOffertkalkylArtikelInsert do
                          begin
                            // parambyname('@Kundid').value := intKundId;
                            parambyname('@OffertKalkylid').value := intOffertKalkylId;
                            parambyname('@Artikelnummer').value := artikelnr;
                            parambyname('@Artikelbeteckning').value := artikelbeteckning;
                            parambyname('@Antal').value := antal_3;
                            execproc;
                          end;
                      end
                      else
                      begin
                        showmessage('Offertkalkyl med Id ' + inttostr(intOffertKalkylId) + ' skapat.');
                        exit;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;

        except
          EWS := Null;
          // add error/exception handling code as desired
        end;

        If VarIsNull(EWS) = false then
        begin
          EWS.Select;
          // work on the Excel worksheet as needed
        end;
      end;

    finally
      ExcelApplication.Workbooks.close;
      ExcelApplication.DisplayAlerts := true;
      ExcelApplication.Quit;

      EWS := Unassigned;
      ExcelWorkbook := Unassigned;
      ExcelApplication := Unassigned;
    end;
  end;
end;

procedure TfrmOrderLista.wwDBGrid1DblClick(Sender: TObject);
var
  fname: string;
  f: TfrmOrder;
  cc, i: Integer;
begin

  fname := 'F' + sp_OrderlistOrderID.AsString;
  cc := Application.componentcount;
  for i := 0 to cc - 1 do
    if Application.Components[i].name = fname then
    begin

      with (Application.FindComponent(fname) as TfrmOrder) do
      begin
        windowstate := wsmaximized;
        show;

      end;

      exit;
    end;

  f := TfrmOrder.create(Application);
  f.name := fname;
  f.windowstate := wsmaximized;
  f.show;
  frmmain.tbtnOrderlista.ImageIndex := 4;
  frmmain.tbtnArtikel.ImageIndex := 1;

end;

procedure TfrmOrderLista.FormCreate(Sender: TObject);
begin
  DragAcceptFiles(Handle, true);
  PageControl1.OwnerDraw := true;

end;

procedure TfrmOrderLista.FormShow(Sender: TObject);
var
  i: Integer;
begin

  cLeveransdatum := false;
  cYTBEHANDLINGDATUM := false;
  cOrderdatum := false;
  cOrderid := false;
  cKundreferens := false;
  cGodsmarke := false;
  cordernummer := false;
  cFakturanummer := false;
  cKundnamn := false;
  cEgenmarkning := false;

  for i := 0 to PageControl1.PageCount - 1 do
    PageControl1.Pages[i].Destroy;

  PageControl1.TabHeight := 30;
  PageControl1.tabwidth := 160;
  PageControl1.height := PageControl1.TabHeight;

  /// Skapa tabs

  ///

  with qryOrderstatus do
  begin
    open;
    while not eof do
    begin
      if (AdminComputer or (not FieldByName('Kräveradmin').asBoolean)) then
      begin
        with TTabSheet.create(PageControl1) do
        begin

          PageControl := PageControl1;
          Name := 'ts' + FieldByName('Orderstatus').AsString;
          caption := FieldByName('TabBeteckning').AsString; // + ' - ' + fieldbyname('iD').asstring;
          Tag := FieldByName('Id').asInteger;
          if FieldByName('BGCOlor').AsString <> '' then
            Brush.Color := stringtocolor(FieldByName('BGColor').AsString)
          else
            Brush.Color := clWhite;
        end;
      end;
      next;
    end;

  end;

  with sp_Orderlist do
  begin
    close;
    parambyname('@OrderstatusId').value := 4; // Underarbete
    parambyname('@Orderby').value := 'OrderId';
    parambyname('@sortasc').value := 0; // -- 0 = asc, 1 = desc

    open;
  end;

  PageControl1.TabIndex := 0;

  // TabControl1.Font.Style := [fsBold];

  wwDBGrid1.setfocus;
  wwDBLookupCombo1.LookupTable.open;

  dm.sp_KundLookuplist.open;
  ordersumma := 0;

  Label5.caption := '';

//  wwDBGrid1.ColumnByName('Ordersumma').Visible := false;

  cbVisaAllaFakturor.Visible := false;

  frmmain.tbtnOrderlista.Enabled := false;

  frmmain.tbtnOrderlista.ImageIndex := 0;
  frmmain.tbtnArtikel.ImageIndex := 1;
  frmmain.tbtnKunder.ImageIndex := 2;

  PageControl1Change(Sender);

end;

procedure TfrmOrderLista.ToolButton3Click(Sender: TObject);
begin
  if messagedlg('Vill du verkligen tar bort hela beställningen/offert?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with sp_OrderDelete do
    begin
      parambyname('@OrderID').value := sp_OrderlistOrderID.asInteger;

      execproc;
      if parambyname('@RETURN_VALUE').value = 0 then
        sp_Orderlist.close;
      sp_Orderlist.open;

    end;
  end;
end;

procedure TfrmOrderLista.ToolButton2Click(Sender: TObject);
begin

  with TrptOrder.create(Application) do
  begin
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderLista.ToolButton4Click(Sender: TObject);
begin
  with TrptArbetsOrder.create(Application) do
  begin
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
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

    with TdlgFakturaNummer.create(Application) do
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

  if (Field.fieldname = 'cAntalArtikelNoteringar') then
  begin
    if (sp_Orderlist.FieldByName('cAntalArtikelNoteringar').AsString <> '') then
    begin
      AFont.Color := clWhite;
      ABrush.Color := clGreen;
    end;
  end;
  //
  if (Field.fieldname = 'Lagersaldo') then
  begin
    if (sp_Orderlist.FieldByName('Lagersaldo').asInteger <> 0) then
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

  if (Field.fieldname = 'Leveransdatum') and (sp_Orderlist.FieldByName('Leveransdatum').asDateTime <= Date) and
    (sp_Orderlist.FieldByName('Fakturadatum').AsString = '') then
  begin
    AFont.Color := clMaroon;
    AFont.Style := [fsBold]
  end;

  if (sp_Orderlist.FieldByName('ÄrPrissatt').asInteger = 1) AND (sp_Orderlist.FieldByName('Antaltotal').asInteger > 0)
    and (sp_Orderlist.FieldByName('OrderStatusId').asInteger in [stAR, stUA]) AND
    ((Field.fieldname = 'AntalTotal') or (Field.fieldname = 'AntalAvrapporterad') or
    (Field.fieldname = 'Antalprissatt'))

  then
  begin
    AFont.Color := clWhite;
    ABrush.Color := clTeal;
    if Highlight then
    begin
      AFont.Color := clWhite;
      ABrush.Color := clTeal;
    end;

  end;

  (*
    if sp_OrderlistOrderstatusId.asInteger = stFA then
    begin
    AFont.Color := clblack;
    ABrush.Color := $00F2FFF2;
    if Highlight then
    begin
    AFont.Color := clWhite;
    ABrush.Color := clTeal;
    end;

    end
  *)
end;

procedure TfrmOrderLista.actOrderNewExecute(Sender: TObject);
begin
  with TfrmOrderNew.create(Application) do
  begin
    lblTyp.caption := 'Ny order';
    caption := 'Ny order';

    lblTyp.Tag := 1; // Order
    showmodal;

    if modalResult = mrOK then
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

  with TfrmOrderPlanering.create(Application) do
  begin

    qryOrderEdit.open;
    qryOrderEdit.edit;
    label13.caption := sp_OrderlistKalkArbetstidTime.AsString;
    Application.ProcessMessages;
    showmodal;
  end;

  sp_Orderlist.refresh; // RefreshOrderlist fungera inte här !!!!!!!!!!!!!!

end;

procedure TfrmOrderLista.actSkapaOrderfrånOffertExecute(Sender: TObject);
var
  OrderIdNy: Integer;
begin
  // Kopiera en hel order

  if messagedlg('Vill du skapa en order från denna offert?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

    with sp_OrderKopiera do
    begin
      parambyname('@OrderId').value := sp_Orderlist.FieldByName('OrderId').asInteger;
      parambyname('@SkapaOrderFrånOffert').value := true;

      execproc;

      OrderIdNy := parambyname('@OrderIdNew').asInteger;

      RefreshOrderlist;

      // wwdbgrid1.Refresh;
      sp_Orderlist.Locate('OrderId', OrderIdNy, []);

      // actOrderEditExecute(Sender);

      showmessage('Order ' + inttostr(OrderIdNy) + ' skapat!');
    end;

end;

procedure TfrmOrderLista.actSkrivUtExecute(Sender: TObject);
begin

  with TrptOrder.create(Application) do
  begin
    header.caption := 'BESTÄLLNING';

    with sp_ftgsystem do
    begin
      parambyname('@ID').value := 6; // >Kopior beställning
      execproc;
      report.PrinterSettings.Copies := strtoint(parambyname('@Värde').value);
    end;

    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.bestallning', 'c:\temp')) + 'Beställning_' +
      sp_OrderlistOrderID.AsString;

    qrfilename := GetQrfilename(xfilename);

    report.Prepare;
    report.QRPrinter.Compression := true;
    report.QRPrinter.Save(qrfilename);
    report.QRPrinter.Free;
    report.QRPrinter := nil;
    // up to here, it seems to want to be set back to nil before you preview

    QRExp.OpenAfterExport := true;
    // report.PreviewModal;
    QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);

  end;

end;

procedure TfrmOrderLista.actOrderSkrivutExecute(Sender: TObject);

begin
  with TrptOrder.create(Application) do
  begin
    header.caption := 'Orderbekräftelse';
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
      sp_OrderlistOrderID.AsString;

    qrfilename := GetQrfilename(xfilename);
    // report.print;

    report.Prepare;
    report.QRPrinter.Compression := true;
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
  i, OrderId: Integer;
  Fakturadatum, Forfallodatum: Tdate;
  Fakturanummer: string;

begin

  if wwDBGrid1.selectedlist.count < 1 then
    showmessage('OBS!' + chr(13) + chr(13) + 'Du behöver markera minst en order för att kunna sätta fakturanummer osv. '
      + chr(13) + chr(13) + 'Du markerar genom Ctrl-musknapp')
  else
  begin

    with TfrmSattfakturadatum.create(Application) do
    begin

      edtFakturanummer.Text := sp_Orderlist.FieldByName('Fakturanummer').AsString;

      if sp_Orderlist.FieldByName('Fakturadatum').AsString <> '' then
        edtFakturadatum.Date := sp_Orderlist.FieldByName('Fakturadatum').asDateTime
      else
        edtFakturadatum.Date := now();

      if sp_Orderlist.FieldByName('Förfallodatum').AsString <> '' then
        edtForfallodatum.Date := sp_Orderlist.FieldByName('Förfallodatum').asDateTime
      else
        edtForfallodatum.Date := incday(edtFakturadatum.Date, 30);

      showmodal;

      if modalResult = mrOK then

      begin

        Fakturanummer := edtFakturanummer.Text;
        Fakturadatum := edtFakturadatum.Date;
        Forfallodatum := edtForfallodatum.Date;

        if Fakturanummer <> '' then
        begin

          with wwDBGrid1 do
          begin
            if selectedlist.count > 0 then
              for i := 0 to selectedlist.count - 1 do
              begin
                sp_Orderlist.GotoBookmark(selectedlist.Items[i]);
                OrderId := sp_OrderlistOrderID.asInteger;

                with Custom_OrderhuvudFakturadataUpdate do
                begin
                  parambyname('@Orderhuvudid').value := OrderId;
                  parambyname('@Fakturanummer').value := Fakturanummer;
                  parambyname('@Fakturadatum').value := Fakturadatum;
                  parambyname('@Forfallodatum').value := Forfallodatum;

                  execproc;
                end;

              end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmOrderLista.actPrissattningPositionerExecute(Sender: TObject);
begin

  frmmain.tbtnOrderlista.Enabled := true;
  frmmain.tbtnOrderlista.ImageIndex := 4;

  with TfrmOrderradUpdate.create(Application) do
    show;



  // Skall inte ändra status föran orderbekräftelsen är utskriven

  // with qryOrdertstatusUpdatePrissatta do
  // begin
  // ParamByName('OrderID').Value := sp_Orderlist.fieldbyname('Orderid').asInteger;
  // ExecSQL;
  // end;

  // frmmain.tbtnOrderlista.enabled:= false;
  RefreshOrderlist;

end;

procedure TfrmOrderLista.actReadExcelRequestExecute(Sender: TObject);
var
  ExcelFileName: String;
  ExcelApplication, ExcelWorkbook, EWS: Variant;
  artikelnr, artikelbeteckning: string;
  intOffertKalkylId, antal, radnr: Integer;
begin

  // Kommentar:
  // Import av Offertförfrågan från Intersystem från en excelfil;

  if OpenExcelDialog.Execute then
  begin

    ExcelFileName := OpenExcelDialog.filename;

    // be sure ComObj and Variants units are included in the "uses" clause
    ExcelApplication := Null;
    ExcelWorkbook := Null;
    EWS := Null;

    try
      // create Excel OLE
      ExcelApplication := CreateOleObject('Excel.Application');
    except
      ExcelApplication := Null;
      // add error/exception handling code as desired
    end;

    If VarIsNull(ExcelApplication) = false then
    begin
      try
        ExcelApplication.Visible := false; // set to False if you do not want to see the activity in the background
        ExcelApplication.DisplayAlerts := false;
        // ensures message dialogs do not interrupt the flow of your automation process. May be helpful to set to True during testing and debugging.

        // Open Excel Workbook
        try
          ExcelWorkbook := ExcelApplication.Workbooks.open(ExcelFileName);
          // reference
          // https://docs.microsoft.com/en-us/office/vba/api/excel.workbooks.open
        except
          ExcelWorkbook := Null;
          // add error/exception handling code as desired
        end;

        If VarIsNull(ExcelWorkbook) = false then
        begin
          // connect to Excel Worksheet using either the ExcelApplication or ExcelWorkbook handle
          try
            EWS := ExcelWorkbook.WorkSheets[1]; // [1] specifies the first worksheet
            radnr := 4;
            // Skapa OffertKalkyl

            with spOffertKalkylInsert do
            begin
              parambyname('@Kundid').value := 1;
              parambyname('@VårReferensId').value := 5;
              parambyname('@Förfrågan').value := ChangeFileExt(extractfilename(ExcelFileName), '');
              execproc;
              intOffertKalkylId := parambyname('@NewId').asInteger;
            end;

            while true do
            begin
              radnr := radnr + 1;

              artikelnr := EWS.cells[radnr, 1];
              artikelbeteckning := EWS.cells[radnr, 2];

              if artikelnr <> '' then
              begin

                antal := EWS.cells[radnr, 4];
                if antal > 0 then
                  with spOffertkalkylArtikelInsert do
                  begin
                    parambyname('@Kundid').value := 1;
                    parambyname('@OffertKalkylid').value := intOffertKalkylId;
                    parambyname('@Artikelnummer').value := artikelnr;
                    parambyname('@Artikelbeteckning').value := artikelbeteckning;
                    parambyname('@Antal').value := antal;
                    execproc;
                  end;

                antal := EWS.cells[radnr, 6];
                if antal > 0 then
                  with spOffertkalkylArtikelInsert do
                  begin
                    parambyname('@Kundid').value := 1;
                    parambyname('@OffertKalkylid').value := intOffertKalkylId;
                    parambyname('@Artikelnummer').value := artikelnr;
                    parambyname('@Artikelbeteckning').value := artikelbeteckning;
                    parambyname('@Antal').value := antal;
                    execproc;
                  end;

                antal := EWS.cells[radnr, 8];
                if antal > 0 then
                  with spOffertkalkylArtikelInsert do
                  begin
                    parambyname('@Kundid').value := 1;
                    parambyname('@OffertKalkylid').value := intOffertKalkylId;
                    parambyname('@Artikelnummer').value := artikelnr;
                    parambyname('@Artikelbeteckning').value := artikelbeteckning;
                    parambyname('@Antal').value := antal;
                    execproc;
                  end;
              end
              else
                exit;
            end;
          except
            EWS := Null;
            // add error/exception handling code as desired
          end;

          If VarIsNull(EWS) = false then
          begin
            EWS.Select;
            // work on the Excel worksheet as needed
          end;
        end;
      finally
        showmessage('Offertkalkyl med ID ' + inttostr(intOffertKalkylId) + ' skapat.');
        ExcelApplication.Workbooks.close;
        ExcelApplication.DisplayAlerts := true;
        ExcelApplication.Quit;

        EWS := Unassigned;
        ExcelWorkbook := Unassigned;
        ExcelApplication := Unassigned;
      end;
    end;
  end;
end;

procedure TfrmOrderLista.actOrderTaBortExecute(Sender: TObject);
begin
  if messagedlg('Vill du verkligen tar bort hela beställningen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with sp_OrderDelete do
    begin
      parambyname('@OrderID').value := sp_OrderlistOrderID.asInteger;
      execproc;
      if parambyname('@RETURN_VALUE').value = 0 then
        RefreshOrderlist;
    end;
  end;
end;

procedure TfrmOrderLista.actOffertNewExecute(Sender: TObject);
begin
  with TfrmOrderNew.create(Application) do
  begin
    lblTyp.caption := 'Ny offert';
    caption := 'Ny offert';
    lblTyp.Tag := 2;

    showmodal;

    if modalResult = mrOK then
      with sp_Orderlist do
      begin
        close;
        open;
      end;
  end;

end;

procedure TfrmOrderLista.actOffertSendViamailExecute(Sender: TObject);
const
  olMailItem = $00000000;
begin

  with TrptOrder.create(Application) do
  begin
    header.caption := 'Offert';
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.offert.epost', '')) + 'Offert_ ' +
      sp_OrderlistOrderID.AsString;

    with TrptOrder.create(Application) do
    begin
      header.caption := 'Offert';
      with qry do
      begin
        close;
        params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
        open;
      end;
      qrfilename := GetQrfilename(xfilename);

      report.Prepare;
      report.QRPrinter.Compression := true;
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

procedure TfrmOrderLista.actOffertTaBortExecute(Sender: TObject);
begin
  if messagedlg('Vill du verkligen tar bort hela offerten?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with sp_OrderDelete do
    begin
      parambyname('@OrderID').value := sp_OrderlistOrderID.asInteger;
      execproc;
      if parambyname('@RETURN_VALUE').value = 0 then
        RefreshOrderlist;
    end;
  end;
end;

// multixml ===========================================================================================

procedure TfrmOrderLista.actOrderbekräftleseExcelViaEpostExecute(Sender: TObject);

  function AppendDuplicationNumber(const AStr: string): string;
  // Used to make strings unique
  // This examines the string AStr for trailing '(n)' where
  // 'n' is an integer.
  // If the (n) part is found, n is incremented, otherwise '(2)' is
  // appended to the string.
  var
    iLH, iRH, p1, p2, i: Integer;
    s: string;
  begin
    p1 := ansipos('(', AStr);
    if p1 > 0 then
    begin
      p2 := LastDelimiter(')', AStr);
      i := strtoint(copy(AStr, p1 + 1, p2 - p1 - 1));
      i := i + 1;
      result := copy(AStr, 1, p1) + inttostr(i) + copy(AStr, p2, 100);
    end
    else
      result := copy(AStr, 1, ansipos('.', AStr) - 1) + ' (2)' + extractfileext(AStr);
  end;

var
  x, ci, row, i, W, NumberOfWorksheetsNeeded: Integer;
  Param, orderstring, fstring, ExcelFileName: String;
  oRng, ExcelApplication, ExcelWorkbook, ExcelWorksheet: Variant;
  bm: Tbookmark;
  n, rTyp: Integer;
  xmlfilelist: TStringlist;

  Outlook: OleVariant;
  Mail: Variant;
  rowsfound: Boolean;
const
  olMailItem = $00000000;
begin

  orderstring := '';
  xmlfilelist := TStringlist.create;

  if wwDBGrid1.selectedlist.count > 0 then
  Begin
    wwDBGrid1.datasource.DataSet.Disablecontrols;
    for i := 0 to wwDBGrid1.selectedlist.count - 1 do
    Begin
      wwDBGrid1.datasource.DataSet.GotoBookmark(wwDBGrid1.selectedlist[i]);
      orderstring := orderstring + QuotedStr(wwDBGrid1.datasource.DataSet.FieldByName('Orderid').AsString) + ',';
      xmlfilelist.Add(CreateXMLFile(wwDBGrid1.datasource.DataSet.FieldByName('Orderid').asInteger));
    End;
    wwDBGrid1.datasource.DataSet.EnableControls;
    orderstring := StringReplace(orderstring, char(34), char(39), [rfReplaceAll]);
  End
  else
  begin
    showmessage('Inga rader är selekterade');
    exit;
  end;

  with qryExcelExport do
  begin
    close;
    sql.Clear;

    sql := qryExcelExport_backup.sql;
    Param := '(' + copy(orderstring, 1, length(orderstring) - 1) + ')';
//    showmessage(sql.Text);
//    showmessage(Param);
//    memo1.Text:=    qryExcelExport.sql.text;
 //   memo1.CopyToClipboard();

    qryExcelExport.sql.Add(Param);

    open;
    if recordcount = 0 then
      exit;
  end;

  rowsfound := false;
  xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
    StringReplace(DateToStr(Date), '-', '', [rfReplaceAll, rfIgnoreCase]) + '.xlsx';

  while FileExists(xfilename) do
    xfilename := AppendDuplicationNumber(xfilename);

  NumberOfWorksheetsNeeded := 1;

  try
    // create Excel OLE
    ExcelApplication := CreateOleObject('Excel.Application');
  except
    ExcelApplication := Null;
    showmessage('Kan inte hitta Excel på denna datorn!');
    exit;
  end;

  If VarIsNull(ExcelApplication) = false then
  begin

    ExcelApplication.Visible := false;
    // set to False if you do not want to see the activity in the background
    ExcelApplication.DisplayAlerts := false;
    // ensures message dialogs do not interrupt the flow of your automation process. May be helpful to set to True during testing and debugging.

    // Open Excel Workbook
    try
      ExcelWorkbook := ExcelApplication.Workbooks.Add(-4167);
      // or
      // ExcelWorkbook := ExcelApplication.WorkBooks.Add;
      // reference
      // https://docs.microsoft.com/en-us/office/vba/api/excel.workbooks.add
    except
      ExcelWorkbook := Null;
      // add error/exception handling code as desired
    end;

    If VarIsNull(ExcelWorkbook) = false then
    begin
      try
        // create the desired number of worksheets in this workbook
        // if the default number of worksheets created is less than the desired number

        If NumberOfWorksheetsNeeded > ExcelWorkbook.WorkSheets.count then
        begin
          While ExcelWorkbook.WorkSheets.count < NumberOfWorksheetsNeeded do
            ExcelWorkbook.WorkSheets.Add(Null, ExcelWorkbook.WorkSheets[ExcelWorkbook.WorkSheets.count], 1, -4167);
          // or use the code below if you do not care about the order in which the sheets are named
          // ExcelWorkbook.WorkSheets.Add(Null,Null,(NumberOfWorksheets-ExcelWorkbook.Worksheets.Count),-4167);
        end;

        // if the default number of worksheets created is more than the desired number
        If NumberOfWorksheetsNeeded < ExcelWorkbook.WorkSheets.count then
        begin
          While ExcelWorkbook.WorkSheets.count > NumberOfWorksheetsNeeded do
            ExcelWorkbook.WorkSheets[ExcelWorkbook.WorkSheets.count].delete;

          For W := 1 to ExcelWorkbook.WorkSheets.count do
            ExcelWorkbook.WorkSheets[W].name := 'Blad' + inttostr(W);
          // renames the sheets
        end;

        // connect to Excel Worksheet using either the ExcelApplication or ExcelWorkbook handle
        ExcelWorksheet := ExcelWorkbook.WorkSheets[1]; // [1] specifies the first worksheet

      except
        ExcelWorksheet := Null;
        // add error/exception handling code as desired
      end;

      If VarIsNull(ExcelWorksheet) = false then
      begin

        ExcelWorksheet.Select;

        row := 1;
        ExcelWorksheet.cells[row, 1] := 'Ordernummer';
        ExcelWorksheet.cells[row, 2] := 'Pos';
        ExcelWorksheet.cells[row, 3] := 'Artikelnr';
        ExcelWorksheet.cells[row, 4] := 'Ytbehandling';
        ExcelWorksheet.cells[row, 5] := 'Beteckning';
        ExcelWorksheet.cells[row, 6] := 'Antal';
        ExcelWorksheet.cells[row, 7] := 'Pris/Enhet';
        ExcelWorksheet.cells[row, 8] := 'Pris totalt';

        for x := 1 to 8 do
          ExcelWorksheet.cells[row, x].Interior.ColorIndex := 24;

        // ExcelWorksheet.Columns['A' + inttostr(row), 'G' + inttostr(row)].Interior.ColorIndex := 24;

        row := row + 1;

        with qryExcelExport do
        begin
          // close;
          // ParamByName('ORDERID').Value := sp_OrderlistOrderID.asInteger;
          open;
          if recordcount > 0 then
          begin
            rowsfound := true;
            Disablecontrols;
            first;
            while not eof do
            begin
              ExcelWorksheet.cells[row, 1] := FieldByName('ordernummer').AsString;
              ExcelWorksheet.cells[row, 2] := FieldByName('Positionnummer').AsString;
              ExcelWorksheet.cells[row, 3] := FieldByName('Artikelnummer').AsString;
              ExcelWorksheet.cells[row, 4] := FieldByName('YtbehandlingBeteckning').AsString;
              ExcelWorksheet.cells[row, 5] := FieldByName('Beteckning').AsString;
              ExcelWorksheet.cells[row, 6] := FieldByName('Antal').AsString;
              ExcelWorksheet.cells[row, 7] := FieldByName('Prisperenhet').AsFloat;
              ExcelWorksheet.cells[row, 8] := FieldByName('Pris').AsFloat;

              row := row + 1;
              next;
            end;
            ExcelWorksheet.Range['A1', 'I1'].EntireColumn.AutoFit;
            EnableControls;
          end;
        end;
      end;

      ExcelWorkbook.SaveAs(xfilename);
      // or
      // ExcelApplication.WorkBooks[1].SaveAs(NewExcelFileName);

      // Note: If a file with the new name already exists, it overwrites it. Write additional code to address as desired.
      // reference
      // https://docs.microsoft.com/en-us/office/vba/api/excel.workbook.saveas

    end;

  end;
  try
    ExcelWorksheet := Unassigned;
    ExcelWorkbook := Unassigned;
    ExcelApplication := Unassigned;

  finally
    Application.ProcessMessages;
    Screen.cursor := crDefault;
  end;
  if rowsfound then
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
      Mail.To := sp_Orderlist.FieldByName('Emailadress').AsString;

    Mail.Subject := 'Orderbekräftelse [Order response]';
    Mail.Body := 'Hej!' + chr(13) + chr(10) + 'Här kommer vår orderbekräftelse i Excel format.' + chr(13) + chr(10) +
      chr(13) + chr(10) + 'Mvh' + chr(13) + chr(10) + 'Ängelholms Mekaniska Verkstad';
    Mail.Attachments.Add(xfilename);

    for n := 0 to xmlfilelist.count - 1 do
      Mail.Attachments.Add(xmlfilelist[n]);

    FreeAndNil(xmlfilelist);
    Mail.Display;
  end;

end;

// XMLXML =======================================================================================================

procedure TfrmOrderLista.actOrderbekräftleseViaMailExecute(Sender: TObject);
var
  Outlook: OleVariant;
  strprice, xmlFilename: string;
  Mail: Variant;
  Xml: IXMLDOCUMENT;
  RootNode, CurNode, Node, HeadNode, RefNode, rn, rNode, expNode: IXMLNODE;
  nRow: Integer;
const
  olMailItem = $00000000;
begin

  if wwDBGrid1.selectedlist.count > 0 then
  begin
    showmessage('Du kan inte skicka flera poster samtidigt');
    exit;
  end;

  xmlFilename := CreateXMLFile(sp_OrderlistOrderID.asInteger);

  xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
    sp_OrderlistOrderID.AsString;

  with TrptOrder.create(Application) do
  begin
    header.caption := 'Orderbekräftelse';
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;

      open;
    end;

    qrfilename := GetQrfilename(xfilename);

    report.Prepare;
    report.QRPrinter.Compression := true;
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
      Mail.To := sp_Orderlist.FieldByName('Emailadress').AsString;

    Mail.Subject := 'Orderbekräftelse (' + sp_OrderlistOrderID.AsString + ') [Order response]';
    Mail.Body := 'Hej!' + chr(13) + chr(10) + 'Här kommer vår orderbekräftelse som PDF- och XML bilaga.' + chr(13) +
      chr(10) + 'Vi tackar för uppdraget.';

    Mail.Attachments.Add(xfilename + '.pdf');
    Mail.Attachments.Add(xmlFilename);

    Mail.Display;

  end;
end;

procedure TfrmOrderLista.actOrderEditExecute(Sender: TObject);
begin

  with TfrmOrderEdit.create(Application) do
  begin

    with qryOrderEdit do
    begin
      parambyname('OrderID').value := sp_Orderlist.FieldByName('OrderId').asInteger;
      open;
      edit;
    end;

    showmodal;

    if modalResult = mrOK then
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
  newInvoice: IXMLINVOIC416Type;
  Head: IXMLHeadType;
  Buyer: IXMLBuyerType;
  InvoiceAddress: IXMLInvoiceAddressType;
  DeliveryAddress: IXMLDeliveryAddresstype;
  Seller: IXMLSellertype;
  Postaladdress: IXMLPostalAddresstype;
  Visitingaddress: IXMLVisitingAddresstype;
  Factoring: IXMLFactoringtype;
  rows: IXMLRowstype;
  row: IXMLRowtype;

  function FixcommaString(cvalue: double): string;
  BEGIN
    result := StringReplace(floattostr(cvalue), ',', '.', [])
  END;

begin

  xml_filename := FoldernameFix(ftgsystemvalue('pdf.folder.fakturaunderlag', '')) +
    FU_FolderGet(sp_OrderlistKundID.asInteger) + sp_OrderlistFakturanummer.AsString + '.xml';

  with qryFakturaunderlagXML do
  begin

    close;
    qryFakturaunderlagXML.params.parambyname('Fakturanummer').value :=
      sp_Orderlist.FieldByName('Fakturanummer').AsString;
    open;

    Nettosumma := 0;

    while not eof do
    begin
      Nettosumma := Nettosumma + FieldByName('Prisperenhet').AsCurrency * FieldByName('Antal').AsFloat;
      next;
    end;

    qryFakturaunderlagXML.first;

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
    newInvoice.Invoice.InvoiceNumber := FieldByName('Fakturanummer').AsString;
    newInvoice.Invoice.InvoiceType := '1';

    // Head
    Head := newInvoice.Head;

    Head.SellersOrderNumber := FieldByName('OrderId').AsString;
    Head.OrderDate := FieldByName('Orderdatum').AsString;

    Head.BuyersOrderNumber := FieldByName('Ordernummer').AsString;
    // Head.BuyersOrderNumber := '12345';

    Head.DebitInvoiceNumber := '0';

    Head.InvoiceDate := FieldByName('Fakturadatum').AsString;
    Head.LanguageNameCode := 'SV';
    // Buyer
    Buyer := Head.Buyer;
    Buyer.BuyerCode := '1001'; // ? Kundnummmer
    Buyer.BuyerName := 'INTERSYSTEM AB'; // string
    Buyer.BuyerVATRegistrationNumber := 'SE556594166201';
    Buyer.BuyerRegistrationNumber := '';
    Buyer.BuyerCountryCode := 'SE';
    Buyer.BuyerReference := FieldByName('Referens').AsString;
    Buyer.BuyerReferencePhone := '';
    Buyer.BuyerReferenceFax := '';
    Buyer.BuyerReferenceEmail := '';
    // ? Referensemail, finns det?

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

    Buyer.GlobalLocationNumber := '';

    Seller := Head.Seller;
    Seller.SellerSuplierCode := '970087'; // ?
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
    Seller.SellerCountrycode := 'SE';

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
    Head.PaymentDueDate := FieldByName('Förfallodatum').AsString;
    Head.CurrencyExchangeRate := 0; // skall vara double
    Head.RateOfExchangeDate := ''; // ?
    Head.EuVatText := ''; // ?
    Head.GodsLabelLine1 := FieldByName('Godsmärke').AsString;
    Head.GodsLabelLine2 := '';
    Head.HomeCurrency := 'SEK';
    Head.TermsOfPayment := ''; // ?
    Head.TermsOfPaymentNoOfDays := '30'; // ?
    Head.BankName := ''; // ?
    Head.AccountNumber := ''; // ?
    Head.SwiftAddress := ''; // ?
    Head.BankGiroNumber := '';
    Head.PlusGiroNumber := '';

    Factoring := Head.Factoring;
    Factoring.FactoringSetting := '';
    Factoring.FactoringBankname := '';
    Factoring.FactoringAccountnumber := '';
    Factoring.FactoringSwiftaddress := '';
    Factoring.FactoringBankgironumber := '';
    Factoring.FactoringPlusGiroNumber := '';

    Head.AlloyCost := '0';
    Head.FreightCost := '0';
    Head.PackingCost := '0';
    Head.InsuranceCost := '0';
    Head.NetAmountInInvoiceCurrency := StringReplace(floattostr(Nettosumma), ',', '.', []);
    // Summa av alla rader    ska vara currency
    Head.InvoicingCharge := '0';
    // Head.VatAmountInInvoiceCurrency := stringreplace(floattostr(MomsTotal),',','.',[]); // Summa Moms?
    Head.VatAmountInInvoiceCurrency := FixcommaString(MomsTotal); // Summa Moms?
    Head.Equalization := 0;
    Head.PayableAmountInInvoiceCurrency := FixcommaString(Bruttosumma);
    // Summa ink moms;

    Head.TermsOfPaymentCashDiscount := 0;
    Head.TermsOfPaymentCashDiscountDate := '';
    Head.AgreementNumber := '';

    // 'SE888888'     string
    //
    //
    // RowType:
    // 1 (Part row) - The part must be registered in the Update Part procedure.
    // 2 (Additional order row) - This row type allows you to register orders for parts that do not exist in the part register.
    // 3 (Service row) - This row type is used when you sell services such as traveling expenses etc.
    // 4 (Text row) - This row type is used to add your own text on a row.
    // 5 (Serial number) - This is used to trace a part via the product register, by linking it to the serial number of the previous order row.
    // 6 (Underlying fictitious part) -  Row type 6 is used for fictitious part sales, if the price must be entered on the fictitious part instead of on the incorporated parts
    // 9 (Tool row) - If you use the supplement Tool Management you can register tools as customer order rows. </xsd:documentation>
    //
    //
    // Row position:
    // This should refer to the buyer's row number from the original order (ORDERS420/RowNumber)'
    //
    // CostType:
    // 0 = Normal item line or miscellaneous cost.
    // 1 = Freight cost.
    // 2 = Package cost.
    // 3 = Setup cost.
    // 4 = Alloy cost.
    //
    //

    rows := newInvoice.rows;
    while not eof do
    begin
      row := rows.Add;

      row.RowNumber := FieldByName('PositionNummer').asInteger;
      row.RowType := '1'; // Artikelnummer, måste finnas
      row.RowPosition := FieldByName('PositionNummer').AsString;
      row.CostType := '0'; // Normal

      row.BuyersPartNumber := FieldByName('Artikelnummer').AsString;
      row.SellersPartNumber := FieldByName('Artikelnummer').AsString;
      row.PartDescription := FieldByName('Beteckning').AsString;
      row.deliverydate := FieldByName('Leveransdatum').AsString;
      row.Quantity := FixcommaString(FieldByName('Antal').AsFloat);
      row.Unit_ := 'st'; // 2018-11-14
      row.Each := 1;
      row.Discount := 0;
      row.Price := FixcommaString(FieldByName('PrisperEnhet').AsFloat);
      row.VatRate := 25;

      row.RowSum := FixcommaString(FieldByName('PrisperEnhet').AsCurrency * FieldByName('Antal').AsFloat);
      row.BuyersOrderNumber := FieldByName('Ordernummer').AsString;
      row.SellersOrderNumber := FieldByName('OrderId').AsString;
      row.CountryOfOriginCode := 'SE';
      next;
    end;

    // Memo1.Text := newfaktura.Xml;

    newInvoice.OwnerDocument.Encoding := 'UTF-8';

    newInvoice.OwnerDocument.SaveToFile(xml_filename);

  end;
end;

procedure TfrmOrderLista.sokBeställningsnummerChange(Sender: TObject);
var
  Soktext: string;
  SokOrderId, tabind, OrderstatusId: Integer;
begin

  Soktext := (Sender as TEdit).Text;
  if (length(Soktext) > 4) then
  begin

    with qryOrdernummerSok do
    begin
      close;
      parambyname('Ordernummer').value := Soktext;
      open;

      if (recordcount = 1) then
      begin

        (Sender as TEdit).SelectAll;

        OrderstatusId := FieldByName('OrderstatusId').asInteger;

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

        PageControl1.ActivePageIndex := tabind;
        PageControl1Change(Sender);
        (*
          with sp_Orderlist do
          begin
          close;
          ParamByName('@OrderstatusId').Value := OrderstatusId;
          open;
          end;
        *)
        sp_Orderlist.Locate('Ordernummer', Soktext, [LoCaseInsensitive]);
      end;

    end;
  end;

end;

procedure TfrmOrderLista.sokBeställningsnummerEnter(Sender: TObject);
begin
  sokOrdernummer.Text := '';
  sokBeställningsnummer.setfocus;
end;

procedure TfrmOrderLista.sokOrdernummerChange(Sender: TObject);
var
  Soktext: string;
  SokOrderId, tabind, OrderstatusId: Integer;
begin

  Soktext := (Sender as TEdit).Text;

  if (length(Soktext) > 4) and trystrtoint(Soktext, SokOrderId) then
  begin

    with qryOrderSok do
    begin
      close;
      parambyname('Orderid').value := SokOrderId;
      open;

      if (recordcount = 1) and (FieldByName('Id').asInteger = SokOrderId) then
      begin

        (Sender as TEdit).SelectAll;
        OrderstatusId := FieldByName('OrderstatusId').asInteger;

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

        PageControl1.ActivePageIndex := tabind;
        PageControl1Change(Sender);
        (*
          with sp_Orderlist do
          begin
          close;
          ParamByName('@OrderstatusId').Value := OrderstatusId;
          open;
          end;
        *)
        sp_Orderlist.Locate('OrderId', Soktext, []);

      end;

    end;
  end;

end;

procedure TfrmOrderLista.sokOrdernummerEnter(Sender: TObject);
begin
  sokBeställningsnummer.Text := '';
  sokOrdernummer.setfocus;
end;

function TfrmOrderLista.FU_FolderGet(Kundid: Integer): string;

begin
  result := esql('Select isnull(MappFakturaunderlag,'''') from Kund where Id=' + Kundid.ToString);
  if result <> '' then
    result := result + '\';

end;

procedure TfrmOrderLista.actFakturaunderlagPrintExecute(Sender: TObject);

begin
  with TrptOrder.create(Application) do
  begin

    with sp_ftgsystem do
    begin
      parambyname('@ID').value := 8;
      execproc;
      report.PrinterSettings.Copies := strtoint(parambyname('@Värde').value);
    end;

    header.caption := 'FAKTURAUNDERLAG';
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;

    if (Sender as TAction).Owner.Tag = 2 then // MenuItems tag
      report.preview
    else
    begin

      if pos('LENOPEHO', dm.FDConnection1.ConnectionString) = 0 then // om det inte utvecklingsdatorn
        report.Print;

      xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.fakturaunderlag', '')) +
        FU_FolderGet(sp_OrderlistKundID.asInteger) + sp_OrderlistOrderID.AsString;

      qrfilename := GetQrfilename(xfilename);

      report.Prepare;
      report.QRPrinter.Compression := true;
      report.QRPrinter.Save(qrfilename);

      report.QRPrinter.Free;
      report.QRPrinter := nil;
      // up to here, it seems to want to be set back to nil before you preview

      QRExp.OpenAfterExport := false;
      // report.PreviewModal;

      QRExp.ExportToFile(qrfilename, xfilename, TgtxOutputFormat.PDF);

      deletefile(qrfilename);

      if (sp_OrderlistKundID.asInteger = 1) and (sp_OrderlistFakturanummer.AsString <> '') then
        Skapa_Fakturaunderlag_XML;
      // Skspa xml-fil

      // up to here, it seems to want to be set back to nil before you preview

    end;

    // Update status att order kommer under Prissatta
    with qryOrdertstatusUpdatePrissatta do
    begin
      parambyname('OrderID').value := sp_Orderlist.FieldByName('Orderid').asInteger;
      ExecSQL;
    end;

  end;

end;

procedure TfrmOrderLista.actFakturarunderlagXMLExecute(Sender: TObject);
begin
  Skapa_Fakturaunderlag_XML;
end;

procedure TfrmOrderLista.actFöljesdelUtskriftExecute(Sender: TObject);
begin
  with TrptOrder.create(Application) do
  begin
    with sp_ftgsystem do
    begin
      parambyname('@ID').value := 7;
      execproc;
      report.PrinterSettings.Copies := strtoint(parambyname('@Värde').value);
    end;
    header.caption := 'FÖLJESEDEL';
    Tag := 1;
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.Print;
    // PDF

    xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.foljesedel', '')) + 'Följesedel_' +
      sp_OrderlistOrderID.AsString;

    qrfilename := GetQrfilename(xfilename);

    report.Prepare;
    report.QRPrinter.Compression := true;
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

procedure TfrmOrderLista.actGörOrdertillOffertExecute(Sender: TObject);
begin
  if messagedlg('Vill du verkligen göra en order till offert?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.FDConnection1.ExecSQL('Update  Orderhuvud set OrderstatusId = ' + inttostr(stOF) + ' where Id = ' +
      inttostr(sp_OrderlistOrderID.asInteger));
    RefreshOrderlist;
  end;
end;

procedure TfrmOrderLista.actImporteraIntersystemExecute(Sender: TObject);
begin
  with TfrmOrderimportIntersystem.create(Application) do
  begin
    showmodal;
    if opendialog1.filename <> '' then
    begin
      ReadOrderfileIntersystem(opendialog1.filename);
      with sp_Orderlist do
      begin
        close;
        open;
      end;
    end;
  end;

end;

procedure TfrmOrderLista.actOrderKalkylAddrowsExecute(Sender: TObject);
begin
  with TfrmOrderkalkyl.create(Application) do
  begin
    sp_KundLookuplist.Active := true;
    sp_KundLookuplist.Locate('Kundid', sp_Orderlist.FieldByName('KundID').asInteger, []);
    edtKund.Text := sp_KundLookuplist.FieldByName('Kundnamn').AsString;
    edtkalkylDatum.Date := sp_Orderlist.FieldByName('Orderdatum').asDateTime;
    edtLeveransdatum.Date := sp_Orderlist.FieldByName('Leveransdatum').asDateTime;
    edtKontaktperson.Enabled := true;
    edtKontaktperson.Text := sp_Orderlist.FieldByName('Kundreferens').AsString;
    edtForfragan.Text := sp_Orderlist.FieldByName('Ordernummer').AsString;

    edtKund.Enabled := false;
    edtkalkylDatum.Enabled := false;
    edtForfragan.Enabled := false;
    edtKontaktperson.Enabled := false;
    with qryLU_artikel do
    begin
      close;
      parambyname('kundid').value := sp_Orderlist.FieldByName('KundID').asInteger;
      open;
    end;

    OrderHuvudId := sp_Orderlist.FieldByName('OrderId').asInteger;

    LU_artikel.Enabled := true;

    showmodal;

  end;

end;

procedure TfrmOrderLista.actSammelfakturaPrintExecute(Sender: TObject);
begin
  with TrptSammelfaktura.create(Application) do
  begin

    report.PrinterSettings.Copies := strtoint(ftgsystemvalue('samlingsfaktura.kopior', '1'));

    header.caption := 'SAMLINGSFAKTURA';
    with qry do
    begin
      close;
      params.parambyname('Fakturanummer').value := sp_OrderlistFakturanummer.AsString;
      open;
    end;

    if (Sender as TAction).Owner.Tag = 2 then // MenuItems tag
      report.preview
    else
    begin

      if pos('LENOPEHO', dm.FDConnection1.ConnectionString) = 0 then
        report.Print;

      // xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.samlingsfakturaunderlag', '')) + 'Samlingsfakturaunderlag_'
      // + sp_OrderlistFakturanummer.AsString;

      xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.samlingsfakturaunderlag', '')) +
        sp_OrderlistFakturanummer.AsString;

      qrfilename := GetQrfilename(xfilename);

      report.Prepare;
      report.QRPrinter.Compression := true;
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
    end;

  end;
end;

procedure TfrmOrderLista.actOrderLäggtillÄndraPositionerExecute(Sender: TObject);
var
  fname: string;
  f: TfrmOrder;
  cc, i: Integer;
begin

  fname := 'F' + sp_OrderlistOrderID.AsString;

  cc := Application.componentcount;

  for i := 0 to cc - 1 do
    if Application.Components[i].name = fname then
    begin

      with (Application.FindComponent(fname) as TfrmOrder) do
      begin
        windowstate := wsmaximized;
        show;

      end;

      exit;
    end;

  f := TfrmOrder.create(Application);
  f.name := fname;
  f.windowstate := wsmaximized;
  f.show;
  frmmain.tbtnOrderlista.ImageIndex := 4;

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

  osumma := sp_Orderlist.FieldByName('Ordersumma').value;

  if Selecting then
    ordersumma := ordersumma + osumma
  else
    ordersumma := ordersumma - osumma;
  Label5.caption := format('%m', [ordersumma]);

end;

procedure TfrmOrderLista.wwDBGrid1RowChanged(Sender: TObject);
begin
  // btnPlanera.caption := 'Planera ' + sp_orderlistOrderID.asstring;
end;

procedure TfrmOrderLista.actOrderradUpdateExecute(Sender: TObject);
begin
  with TfrmOrderradUpdate.create(Application) do
    show;

end;

procedure TfrmOrderLista.actUpdateOrderlistaExecute(Sender: TObject);
begin
  RefreshOrderlist;
end;

procedure TfrmOrderLista.btnStatusByteNextClick(Sender: TObject);
var
  NuvarandeStatus: Integer;
  NyStatus: Integer;

begin

  NyStatus := -1;
  NuvarandeStatus := sp_Orderlist.FieldByName('OrderstatusId').asInteger;

  if NuvarandeStatus = stUA then
    NyStatus := stAR
  else if NuvarandeStatus = stAR then
    NyStatus := stPS
  else if NuvarandeStatus = stPS then
    NyStatus := stFA
  else if NuvarandeStatus = stFA then
    NyStatus := stAK;

  if messagedlg('Vill du byta status för order ' + sp_OrderlistOrderID.AsString + ' till "' +
    Orderstatusbeteckning(NyStatus) + '"?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
  begin

    with sp_OrdertstatusUpdate do
    begin
      parambyname('@Orderid').value := sp_Orderlist.FieldByName('OrderId').asInteger;
      parambyname('@OrderstatusIdNew').value := NyStatus;
      execproc;
    end;

    RefreshOrderlist;
  end;

end;

procedure TfrmOrderLista.btnStatusBytePrevClick(Sender: TObject);
var
  NuvarandeStatus: Integer;
  NyStatus: Integer;

begin

  NyStatus := -1;
  NuvarandeStatus := sp_Orderlist.FieldByName('OrderstatusId').asInteger;

  if NuvarandeStatus = stAK then
    NyStatus := stFA
  else if NuvarandeStatus = stFA then
    NyStatus := stPS
  else if NuvarandeStatus = stPS then
    NyStatus := stAR
  else if NuvarandeStatus = stAR then
    NyStatus := stUA;

  if messagedlg('Vill du byta status för order ' + sp_OrderlistOrderID.AsString + ' till "' +
    Orderstatusbeteckning(NyStatus) + '"?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
  begin

    with sp_OrdertstatusUpdate do
    begin
      parambyname('@Orderid').value := sp_Orderlist.FieldByName('OrderId').asInteger;
      parambyname('@OrderstatusIdNew').value := NyStatus;
      execproc;
    end;

    RefreshOrderlist;
  end;

end;

procedure TfrmOrderLista.actOrderVisaExecute(Sender: TObject);
begin
  with TrptOrder.create(Application) do
  begin
    header.caption := 'Beställning';
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
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
    with sp_Orderlist.parambyname('@Kundid') do
    begin
      DataType := ftInteger;
      Clear;
    end;
    open;
    wwDBLookupCombo1.Text := '';
  end;
end;

procedure TfrmOrderLista.btnSokClick(Sender: TObject);
var
  Soktext: string;
begin

  if (Sender as TButton).caption = '&Sök' then
  begin

    Soktext := trim(edtTextsok.Text);
    with sp_Orderlist do
    begin
      close;
      parambyname('@soktext').value := Soktext;
      open;
      (Sender as TButton).caption := 'X';
      // (Sender as TButton).Caption := 'X (' + recordcount.ToString+')' ;
      edtTextsok.Enabled := false;

    end;

  end
  else

    with sp_Orderlist do
    begin
      close;
      with sp_Orderlist.parambyname('@Kundid') do
      begin
        parambyname('@soktext').value := Null;
      end;
      open;
      wwDBLookupCombo1.Text := '';
      (Sender as TButton).caption := '&Sök';
      edtTextsok.Text := '';
      (Sender as TButton).Enabled := false;
      edtTextsok.Enabled := true;

    end;

end;

procedure TfrmOrderLista.cbVisaAllaFakturorClick(Sender: TObject);
var
  cnt: Integer;
begin

  with sp_Orderlist do
  begin
    close;
    parambyname('@OrderstatusId').value := 1; // Fakturerade
    parambyname('@FakturadatumVisaBaraSenasteÅr').value := not(cbVisaAllaFakturor.Checked);
    open;
  end;
end;

procedure TfrmOrderLista.edtTextsokChange(Sender: TObject);
begin
  btnSok.Enabled := length(edtTextsok.Text) > 1;
  btnSok.default := btnSok.Enabled;

end;

procedure TfrmOrderLista.Soktext;
var
  Soktext: string;
  SokOrderId, tabind, OrderstatusId: Integer;
begin

end;

procedure TfrmOrderLista.sp_OrderlistCalcFields(DataSet: TDataSet);
begin

  if DataSet.FieldByName('AntalArtikelnoteringar').asInteger > 0 then
    DataSet.FieldByName('cAntalArtikelnoteringar').AsString := DataSet.FieldByName('AntalArtikelnoteringar')
      .asInteger.ToString
  else
    DataSet.FieldByName('cAntalArtikelnoteringar').AsString := '';

end;

procedure TfrmOrderLista.PageControl1Change(Sender: TObject);
var
  raderFinns: Boolean;
  summa:double;
  pos:Integer;
  bm:Tbookmark;
  begin



  (*
    stUA: Integer = 4; // Under arbete
    stAR: Integer = 3; // Återrapporterad
    stPS: Integer = 2; // Prissatt
    stFA: Integer = 1; // Fakturerat
    stOF: Integer = 5; // Offert
    stAK: Integer = 6; // Arkiv

  *)

  apStatus := PageControl1.ActivePage.Tag;
  // Menyoptioner

  mnuLäggtillÄndrapositioner.Visible := true; // 1
  mnuResfreshOrderlista.Visible := true; // 2
  mnuLaggtilloffertrader.Visible := true; // 3
  mnuPrissättaPositioner.Visible := true; // 3
  mnuNyOrder.Visible := true; // 3
  mnuNyOffert.Visible := true; // 3
  mnuKopieraOrder.Visible := true; // 3
  mnuSkapaorderfrånOffert.Visible := true; // 3
  mnuSkapaPlanering.Visible := true; // 3
  mnuOffertEdit.Visible := true; // 3
  mnuÄndraOrderstatusManuellt.Visible := true; // 3
  mnuTaBortPlanering.Visible := true; // 3
  mnuVisaOrder.Visible := true; // 3
  mnuSkapaPDFOrder.Visible := true; // 3
  mnuSkspaPDFOrderbekräftlese.Visible := true; // 3
  mnuSkapaPDFOffert.Visible := true; // 3
  mnuUtsktriftPalletikett.Visible := true; // 3
  mnuSättfakturamärkning.Visible := true; // 3
  mnuSkrivutfakturaunderlag.Visible := true; // 3
  mnuSkapaSamlingsfaktura.Visible := true; // 3
  mnuSkapaXMLFakturaunderlag.Visible := true; // 3
  mnuSkickaOrderbekräftelseViaEpost.Visible := true; // 3
  mnuSkrivutetiketter.Visible := true; // 3
  mnuSkrivutfljesedel.Visible := true; // 3
  mnuSkrivutfljesedel.Visible := true; // 3
  mnuSkrivutritningar.Visible := true; // 3
  mnuTabortOrder.Visible := true; // 3
  mnuTaBortOffert.Visible := true; // 3

  (*

    mnuPrissättaPositioner.Visible := (apStatus <> stOF);
    mnuSkapaPDFOrder.Visible := (apStatus <> stOF);
    mnuNyOffert.Visible := (apStatus = stOF);
    mnuLaggtilloffertrader.Visible := (apStatus = stOF);
    mnuNyOrder.Visible := (apStatus = stUA);
    mnuSkapaorderfrånOffert.Visible := (apStatus = stOF);
    mnuOffertEdit.Visible := (apStatus = stOF);
    mnuÄndraOrderstatusManuellt.Visible := (apStatus <> stOF);
    mnuGorOmordertilloffert1.Visible := (apStatus <> stOF);
    mnuSkapaPlanering.Visible := (apStatus = stUA);
    mnuTaBortPlanering.Visible := (apStatus = stUA);
    mnuVisaOrder.Visible := True;
    mnuSkapaPDFOrder.Visible := (apStatus <> stOF);
    mnuSkspaPDFOrderbekräftlese.Visible := True;
    mnuUtsktriftPalletikett.Visible := (apStatus in [stUA, stAR, stPS, stFA]);
    mnuSkrivutfakturaunderlag.Visible := (apStatus in [stAR, stPS, stFA]);
    mnuSättfakturamärkning.Visible := (apStatus in [stPS]);
    mnuSkapaSamlingsfaktura.Visible := (apStatus = stFA);
    mnuSkapaPDFOffert.Visible := (apStatus = stOF);
    mnuSkapaXMLFakturaunderlag.Visible := (apStatus = stFA);
    mnuSkickaOrderbekräftelseViaEpost.Visible := True;
    mnuSkrivutetiketter.Visible := (apStatus in [stUA, stAR, stPS, stFA]);

  *)

  // Buttons för Statusändringar
  btnStatusBytePrev.Enabled := (apStatus <> stUA);
  btnStatusByteNext.Enabled := (apStatus <> stAK);

  mnuTabortOrder.Visible := true;

  // PrissättaPositioner.Visible:= raderFinns;

  Label5.Visible := (apStatus = stPS); // Prissatta
  ordersumma := 0;
  Label5.caption := '';
  cbVisaAllaFakturor.Visible := (apStatus = stFA);

  (*
    // Original
    mnuLäggtillÄndrapositioner.Visible := True; // 1
    mnuResfreshOrderlista.Visible := True; // 2

    mnuPrissättaPositioner.Visible := (apStatus <> stOF);
    mnuSkapaPDFOrder.Visible := (apStatus <> stOF);

    mnuNyOffert.Visible := (apStatus = stOF);
    mnuLaggtilloffertrader.Visible := (apStatus = stOF);
    NyOrder.Visible := (apStatus = stUA);
    mnuSkapaorderfrånOffert.Visible := (apStatus = stOF);
    mnuOffertEdit.Visible := (apStatus = stOF);
    mnuÄndraOrderstatusManuellt.Visible := (apStatus <> stOF);

    mnuGorOmordertilloffert1.Visible := (apStatus <> stOF);

    mnuSkapaPlanering.Visible := (apStatus = stUA);
    mnuTaBortPlanering.Visible := (apStatus = stUA);

    mnuVisaOrder.Visible := True;
    mnuSkapaPDFOrder.Visible := (apStatus <> stOF);
    mnuSkspaPDFOrderbekräftlese.Visible := True;

    mnuUtsktriftPalletikett.Visible := (apStatus in [stUA, stAR, stPS, stFA]);
    mnuSkrivutfakturaunderlag.Visible := (apStatus in [stAR, stPS, stFA]);

    // mnuSättfakturamärkning.Visible := (apStatus in[ stPS,stFA]);
    mnuSättfakturamärkning.Visible := (apStatus in [stPS]);

    mnuSkapaSammelfaktura.Visible := (apStatus = stFA);

    // N10.Visible := (apStatus = stUA);

    mnuSkapaPDFOffert.Visible := (apStatus = stOF);
    mnuSkapaXMLFakturaunderlag.Visible := (apStatus = stFA);

    mnuSkickaOrderbekräftelseViaEpost.Visible := True;
    mnuSkrivutetiketter.Visible := (apStatus in [stUA, stAR, stPS, stFA]);

    // Buttons för Statusändringar
    btnStatusBytePrev.Enabled := (apStatus <> stUA);
    btnStatusByteNext.Enabled := (apStatus <> stAK);

    mnuTabortOrder.Visible := True;

    // PrissättaPositioner.Visible:= raderFinns;


    Label5.Visible := (apStatus = stPS); // Prissatta
    ordersumma := 0;
    Label5.Caption := '';
    cbVisaAllaFakturor.Visible := (apStatus = stFA);

  *)

  wwDBGrid1.Selected.Clear;

  with qryGridColumns do
  begin
    sql.Clear;
    sql.Add('Select Fieldname,Displaywidth, [Fieldheader] from Gridcolumns where Status' + inttostr(apStatus) +
      ' = 1 order by Ordning');
    open;
    while not eof do
    begin
      wwDBGrid1.Selected.Add(FieldByName('Fieldname').AsString + #9 + FieldByName('Displaywidth').AsString + #9 +
        FieldByName('Fieldheader').AsString);
      next;
    end;
  end;

  if apStatus = stFA then // Fakturerade
  begin

    wwDBGrid1.Options := wwDBGrid1.Options - [dgMultiselect];
    wwDBGrid1.GroupFieldName := 'Fakturanummer';

  end
  else

    if apStatus = stPS then // Prissatta
  begin
    wwDBGrid1.Options := wwDBGrid1.Options + [dgMultiselect];
    if not wwDBGrid1.ColumnByName('Ordersumma').Visible then
      wwDBGrid1.ColumnByName('Ordersumma').Visible := true;
    wwDBGrid1.GroupFieldName := '';
  end
  else if apStatus = stOF then // Offerter
  begin
    wwDBGrid1.Options := wwDBGrid1.Options - [dgMultiselect];
    wwDBGrid1.GroupFieldName := '';

  end
  else

  begin

    wwDBGrid1.Options := wwDBGrid1.Options - [dgMultiselect];
    wwDBGrid1.GroupFieldName := '';

  end;

  with sp_Orderlist do
  begin
    close;
    parambyname('@OrderstatusId').value := apStatus;
    parambyname('@Orderby').value := 'OrderID';
    open;
  end;

  summa := 0;

  bm:= wwdbgrid1.DataSource.DataSet.Bookmark;
  with wwdbgrid1.DataSource.DataSet do
  begin
    bm:= Bookmark;
    DisableControls;
    top;
    while not eof do
    begin
      summa := summa + fieldbyname('Ordersumma').AsFloat;
      next;
    end;
    enableControls;

  end;
  wwDBGrid1.ColumnByName('Ordersumma').FooterValue := FloatToStrF(summa, ffCurrency, 10, 2);
  wwdbgrid1.DataSource.DataSet.GotoBookmark(bm);

end;

procedure TfrmOrderLista.PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer; const Rect: TRect;
  Active: Boolean);
var
  h, L: Integer;
begin

  // Rita upp själva tabsen i olika färgar beråde från status

  Control.Canvas.Font.Color := clBlack;
  Control.Canvas.Font.Size := 10;
  Control.Canvas.Font.name := 'Verdana';

  if Active then
  begin

    // Control.Canvas.Font.Style := Control.Canvas.Font.Style + [fsBold];
    Control.Canvas.Brush.Color := PageControl1.Pages[TabIndex].Brush.Color;
  end
  else
  begin
    // Control.Canvas.Font.Style := Control.Canvas.Font.Style - [fsBold];
    Control.Canvas.Brush.Color := $00F9F9F9;
  end;

  Control.Canvas.Pen.Style := psClear;

  Control.Canvas.Rectangle(Rect);
  h := Control.Canvas.TextHeight((Control as TPageControl).ActivePage.caption);
  L := Rect.Left;
  Inc(L, 10);
  Control.Canvas.TextOut(L, Rect.Top + (Rect.Bottom - Rect.Top - h) div 2,
    (Control as TPageControl).Pages[TabIndex].caption);

end;

procedure TfrmOrderLista.PopupMenuOrderlistaPopup(Sender: TObject);
var
  raderFinns: Boolean;

begin

  raderFinns := (sp_OrderlistAntalTotal.asInteger > 0);

  mnuPrissättaPositioner.Enabled := raderFinns;
  // Visautskrift1.Enabled := raderFinns;
  actOrderSkrivut.Enabled := raderFinns;
  actFakturaunderlagPrint.Enabled := raderFinns;
  // offertsommailtillkund2.enabled := (sp_orderlistOrdertyp.asstring = 'O');
  actPrissattningPositioner.Enabled := raderFinns;
  actSattFakturadatum.Enabled := raderFinns;

  actFakturarunderlagXML.Enabled := (sp_OrderlistKundID.asInteger = 1) and raderFinns and
    (PageControl1.ActivePageIndex = 3);

  // showmessage(  pagecontrol1.ActivePageIndex.ToString());

  actSattFakturadata.Enabled := (raderFinns) and (wwDBGrid1.Selected.count > 0);
  mnuSättfakturamärkning.Enabled := (raderFinns) and (wwDBGrid1.Selected.count > 0);

  if apStatus = stOF then
  begin
    mnuVisaOrder.caption := '1 Visa offert';
    mnuSkspaPDFOrderbekräftlese.caption := '3 Skapa PDF-offertbekräftelse';
    mnuKopieraOrder.caption := 'Kopiera offert';
  end
  else
  begin
    mnuVisaOrder.caption := '1 Visa order';
    mnuSkspaPDFOrderbekräftlese.caption := '3 Skapa PDF-orderbekräftelse';
    mnuKopieraOrder.caption := 'Kopiera order';
    // mnuSkapaPDFOrder.Caption := 'Skapa PDF order';
  end;

end;

procedure TfrmOrderLista.actOrderStatusUpdateExecute(Sender: TObject);
var
  OrderId: Integer;
begin

  OrderId := sp_Orderlist.FieldByName('Orderid').asInteger;

  with TfrmOrderStatusUpdate.create(Application) do
  begin

    qryLU_orderstatus.open;
    qryLU_orderstatus.Locate('Id', sp_Orderlist.FieldByName('OrderstatusId').asInteger, []);
    LU_orderstatus.LookupValue := sp_Orderlist.FieldByName('OrderstatusId').AsString;

    showmodal;

    if modalResult = mrOK then
    begin
      dm.FDConnection1.ExecSQL('Update  Orderhuvud set OrderstatusId = ' + qryLU_orderstatus.FieldByName('Id').AsString
        + ' where Id = ' + OrderId.ToString);
      RefreshOrderlist;
    end;
  end;
end;

procedure TfrmOrderLista.actPallEtikettExecute(Sender: TObject);
begin
  with TrptPalletikett.create(Application) do
  begin
    with qry do
    begin

      close;
      parambyname('Orderid').value := sp_Orderlist.FieldByName('Orderid').asInteger;
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
    parambyname('@Kundid').value := LookupTable.FieldByName('Kundid').AsString;
    open;
  end;

end;

procedure TfrmOrderLista.wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
var
  sortasc: Boolean;
begin

  if (uppercase(AFieldName) = 'ORDERID') or (uppercase(AFieldName) = 'KUNDNAMN') or
    (uppercase(AFieldName) = 'ORDERNUMMER') or (uppercase(AFieldName) = 'ORDERDATUM') or
    (uppercase(AFieldName) = 'YTBEHANDLINGDATUM') or (uppercase(AFieldName) = 'LEVERANSDATUM') or
    (AFieldName = 'Godsmärke') or (AFieldName = 'EgenMärkning') or (uppercase(AFieldName) = 'KUNDREFERENS') or
    (uppercase(AFieldName) = 'FAKTURANUMMER')

  then
  begin

    if uppercase(AFieldName) = 'ORDERID' then
    begin
      cOrderid := not cOrderid;
      sortasc := cOrderid;
    end;

    if uppercase(AFieldName) = 'KUNDNAMN' then
    begin
      cKundnamn := not cKundnamn;
      sortasc := cKundnamn;
    end;

    if uppercase(AFieldName) = 'ORDERNUMMER' then
    begin
      cordernummer := not cordernummer;
      sortasc := cordernummer;
    end;

    if uppercase(AFieldName) = 'ORDERDATUM' then
    begin
      cOrderdatum := not cOrderdatum;
      sortasc := cOrderdatum;
    end;

    if uppercase(AFieldName) = 'YTBEHANDLINGDATUM' then
    begin
      cYTBEHANDLINGDATUM := not cYTBEHANDLINGDATUM;
      sortasc := cYTBEHANDLINGDATUM;
    end;

    if uppercase(AFieldName) = 'LEVERANSDATUM' then
    begin
      cLeveransdatum := not cLeveransdatum;
      sortasc := cLeveransdatum;
    end;

    if AFieldName = 'Godsmärke' then
    begin
      cGodsmarke := not cGodsmarke;
      sortasc := cGodsmarke;
    end;

    if AFieldName = 'EgenMärkning' then
    begin
      cEgenmarkning := not cEgenmarkning;
      sortasc := cEgenmarkning;
    end;

    if uppercase(AFieldName) = 'KUNDREFERENS' then
    begin
      cKundreferens := not cKundreferens;
      sortasc := cKundreferens;
    end;

    if uppercase(AFieldName) = 'FAKTURANUMMER' then
    begin
      cFakturanummer := not cFakturanummer;
      sortasc := cFakturanummer;
    end;

    with sp_Orderlist do
    begin
      close;
      parambyname('@Orderby').value := AFieldName;
      parambyname('@OrderstatusId').value := apStatus;
      parambyname('@sortasc').value := sortasc; // -- 0 = asc, 1 = desc
      open;
    end;

  end;

end;


procedure TfrmOrderLista.actArbetsorderPrintExecute(Sender: TObject);
begin
  with TrptArbetsOrder.create(Application) do
  begin
    with qry do
    begin
      close;
      params.parambyname('OrderID').value := sp_OrderlistOrderID.asInteger;
      open;
    end;
    report.preview;
  end;

end;

procedure TfrmOrderLista.actArkiveraExecute(Sender: TObject);
var
  Fakturanummer: String;
begin

  Fakturanummer := sp_Orderlist.FieldByName('Fakturanummer').AsString;

  if sp_Orderlist.FieldByName('Orderstatusid').asInteger = stFA then

    if messagedlg('Vill du arkivera denna faktura (alla ordrar med fakturanmummer ' + Fakturanummer + ')?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dm.FDConnection1.ExecSQL('Update  Orderhuvud set OrderstatusId = ' + inttostr(stAK) + ' where fakturanummer =' +
        char(39) + Fakturanummer + char(39));

      RefreshOrderlist;
    end;

end;

procedure TfrmOrderLista.actCopyOffertExecute(Sender: TObject);
var
  OrderIdNy: Integer;
begin

  // Kopiera en hel order

  if messagedlg('Vill du skapa en kopia av denna offert?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    with sp_OrderKopiera do
    begin
      parambyname('@OrderId').value := sp_Orderlist.FieldByName('OrderId').asInteger;
      parambyname('@SkapaOrderFrånOffert').value := true;

      execproc;

      OrderIdNy := parambyname('@OrderIdNew').asInteger;

      RefreshOrderlist;

      // wwdbgrid1.Refresh;
      sp_Orderlist.Locate('OrderId', OrderIdNy, [])

      // actOrderEditExecute(Sender);

    end;
  end;

end;

procedure TfrmOrderLista.actCopyOrderExecute(Sender: TObject);
var
  OrderIdNy: Integer;
begin

  // Kopiera en hel order

  if messagedlg('Vill du skapa en kopia av denna order?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    with sp_OrderKopiera do
    begin
      parambyname('@OrderId').value := sp_Orderlist.FieldByName('OrderId').asInteger;
      parambyname('@SkapaOrderFrånOffert').value := false;

      execproc;

      OrderIdNy := parambyname('@OrderIdNew').asInteger;

      RefreshOrderlist;

      // wwdbgrid1.Refresh;
      sp_Orderlist.Locate('OrderId', OrderIdNy, [])

      // actOrderEditExecute(Sender);

    end;
  end;
end;

procedure TfrmOrderLista.actEtiketterSkrivUtExecute(Sender: TObject);
var
  EtikettPrintername: string;
begin

  qryEtiketter.close;
  qryEtiketter.open;

  if qryEtiketter.recordcount > 0 then
  begin

    with TIniFile.create(extractfilepath(Application.ExeName) + 'Ordus.ini') do
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

    with TrptEtikett.create(Application) do
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
  with TfrmPrintPDF.create(Application) do
    showmodal;
end;

procedure TfrmOrderLista.actPlaneringTabortExecute(Sender: TObject);
begin
  if messagedlg('Vill du verkligen ta bort planeringen för denna order?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with spPlaneringDelete do
    begin
      params.parambyname('@OrderId').value := sp_OrderlistOrderID.asInteger;
      execproc;
      RefreshOrderlist;
    end;
  end;

end;

procedure TfrmOrderLista.Skapaplanering1Click(Sender: TObject);

begin

  with TfrmOrderPlanering.create(Application) do
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

    if modalResult = mrOK then
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
  with TfrmOrderimport.create(Application) do
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
  filename: array [0 .. MAXFILENAME] of char;
  strFilename: string;
begin
  // how many files dropped?
  fileCount := DragQueryFile(msg.Drop, $FFFFFFFF, filename, MAXFILENAME);

  if fileCount > 0 then
  begin
    // query for file names
    for cnt := 0 to -1 + fileCount do
    begin
      DragQueryFile(msg.Drop, cnt, filename, MAXFILENAME);

      // do something with the file(s)
      // memo1.Lines.Insert(0, fileName);

      strFilename := filename;

      if lowercase(extractfileext(extractfilename(strFilename))) = '.xml' then
        ReadOrderfileIntersystemXML(strFilename)

      else if lowercase(extractfileext(extractfilename(strFilename))) = '.xlsx' then
        ReadOrderfileExcelGenerell(strFilename)
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
    CurrentRecord := FieldByName('OrderId').asInteger;
    Active := false;
    Active := true;
    Locate('OrderId', CurrentRecord, []);
  end;
end;

end.
