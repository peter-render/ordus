unit fMainRapport;

interface

uses
  system.UITypes, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook, ExtCtrls, wwdbdatetimepicker, Mask,
  wwdbedit, Buttons, QuickRpt, QRCtrls, DBCtrls, EditNew;

type
  TfrmOrdusrapport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    Label1: TLabel;
    Label2: TLabel;
    qryLU_Order: TADOQuery;
    edtArtikelnr: TwwDBLookupCombo;
    Label3: TLabel;
    Label5: TLabel;
    qryLU_OrderRad: TADOQuery;
    qryLU_OrderRadOrderID: TIntegerField;
    qryLU_OrderRadArtikelID: TIntegerField;
    qryLU_OrderRadRadNr: TIntegerField;
    qryLU_OrderRadPositionnummer: TIntegerField;
    qryLU_OrderRadAntal: TBCDField;
    qryLU_OrderRadPrisPerEnhet: TBCDField;
    qryLU_OrderRadDatum: TDateTimeField;
    qryLU_OrderRadYtbehandlingID: TStringField;
    qryLU_OrderRadOrderInfo: TStringField;
    qryLU_OrderRadAvrapporteradDatum: TDateTimeField;
    qryLU_OrderRadAvrapporterad: TBooleanField;
    dsoLU_Order: TDataSource;
    qryLU_OrderRadArtikelnummer: TStringField;
    qryLU_OrderRadBeteckning: TStringField;
    Label6: TLabel;
    edtYtbehandling: TwwDBLookupCombo;
    edtSignatur: TwwDBLookupCombo;
    qryLU_Ytbehandling: TADOQuery;
    qryLU_YtbehandlingBeteckning: TStringField;
    qryLU_YtbehandlingYtbehandlingID: TStringField;
    qryLU_YtbehandlingSortorder: TSmallintField;
    qryLU_personal: TADOQuery;
    qryLU_personalPersonID: TAutoIncField;
    btnPost: TButton;
    btnCancel: TButton;
    Button3: TButton;
    Label7: TLabel;
    Label8: TLabel;
    qryLU_OrderOrderID: TAutoIncField;
    qryLU_Orderkundnamn: TStringField;
    Label4: TLabel;
    Label9: TLabel;
    qryOrderrad: TADOQuery;
    qryOrderradOrderID: TIntegerField;
    qryOrderradArtikelID: TIntegerField;
    qryOrderradRadNr: TIntegerField;
    qryOrderradPositionnummer: TIntegerField;
    qryOrderradAntal: TBCDField;
    qryOrderradPrisPerEnhet: TBCDField;
    qryOrderradDatum: TDateTimeField;
    qryOrderradYtbehandlingID: TStringField;
    qryOrderradOrderInfo: TStringField;
    qryOrderradAvrapporteradDatum: TDateTimeField;
    qryOrderradAvrapporterad: TBooleanField;
    dsoOrderrad: TDataSource;
    dsoLU_OrderRad: TDataSource;
    qryOrderradTotaltid: TIntegerField;
    qryOrderradVikt: TFloatField;
    qryOrderradAvrapporteradPersonID: TIntegerField;
    qryLU_personalNamn: TStringField;
    Label10: TLabel;
    Image1: TImage;
    Label11: TLabel;
    qryOrderradAvrapporteradPlasmatid: TIntegerField;
    qryOrderradAvrapporteradAntalStarter: TIntegerField;
    qryOrderradAvrapporteradAntalRitningar: TIntegerField;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    btnCalc: TBitBtn;
    SpeedButton1: TSpeedButton;
    qryOrderradOrdernummer: TStringField;
    qryOrderradGodsmrke: TStringField;
    qryOrderradLeveransdatum: TDateTimeField;
    qryOrderradkundnamn: TStringField;
    Label17: TLabel;
    edtAntal: TDBEditN;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEditN1: TDBEditN;
    DBEditN2: TDBEditN;
    DBEditN3: TDBEditN;
    edtTotaltid: TDBEditN;
    qryOrderradPrisPerEnhetAuto: TBCDField;
    qryOrderradSortorder: TIntegerField;
    qryOrderradOrderRadID: TAutoIncField;
    edtOrderNr: TEditN;
    qryLU_OrderRadAvrapporteradPersonID: TIntegerField;
    qryLU_OrderRadOrderRadID: TAutoIncField;
    qryLU_OrderRadFrnLager: TBCDField;
    qryLU_OrderRadAttProducera: TBCDField;
    qryLU_OrderRadTillLager: TBCDField;
    qryOrderradFrnLager: TBCDField;
    qryOrderradAttProducera: TBCDField;
    qryOrderradTillLager: TBCDField;
    Label20: TLabel;
    edtPlasmatid: TDBEditN;
    DBEditN5: TDBEditN;
    qryOrderradSkrotandelProcent: TBCDField;
    qryOrderradArtikelnummer: TStringField;
    edtAntalStarter: TDBEditN;
    edtVikt: TDBEditN;
    Label21: TLabel;
    DBEditN6: TDBEditN;
    qryOrderradLagerplats: TStringField;
    DBText1: TDBText;
    qryOrderradLagersaldo: TBCDField;
    Bevel1: TBevel;
    Label22: TLabel;
    btnLagersaldo: TButton;
    qryLagersaldo: TADOQuery;
    dsoLagersaldo: TDataSource;
    qryLagersaldoArtikelID: TAutoIncField;
    qryLagersaldoArtikelnummer: TStringField;
    qryLagersaldoBeteckning: TStringField;
    qryLagersaldoYtbehandlingIDdefault: TStringField;
    qryLagersaldoKundID: TIntegerField;
    qryLagersaldoPDFFinns: TIntegerField;
    qryLagersaldoPDFFilnamn: TStringField;
    qryLagersaldoLagersaldo: TBCDField;
    qryLagersaldoLagerplats: TStringField;
    procedure FormShow(Sender: TObject);
    procedure edtOrderNrExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtArtikelnrExit(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure edtTotaltidEnter(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcClick(Sender: TObject);
    procedure edtArtikelnrEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryOrderradAfterOpen(DataSet: TDataSet);
    procedure btnLagersaldoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdusrapport: TfrmOrdusrapport;
  strServerName: string;
  strDatabaseName: string;
 DefaultPrinterName:string;
implementation

uses fCalc, rEtikett, funclib, fLagersaldo;

{$R *.DFM}

procedure TfrmOrdusrapport.FormShow(Sender: TObject);
var
  par, strUsername, strPassword: string;
  blnLogin: boolean;
  i: word;
begin
        HEIGHT:= 485;

  if paramcount > 0 then
  begin


    strServerName := '';
    strDatabaseName := '';

    blnLogin := false;
    strUserName := '';
    strPassword := '';


    for i := 1 to paramcount do
    begin

      par := paramstr(i);

      if Uppercase(copy(par, 1, 2)) = '/S' then
        strServerName := copy(par, 3, 100);

      if Uppercase(copy(par, 1, 2)) = '/U' then
        strUsername := copy(par, 3, 100);

      if Uppercase(copy(par, 1, 2)) = '/P' then
        strPassword := copy(par, 3, 100);

      if Uppercase(copy(par, 1, 2)) = '/D' then
        strDatabasename := copy(par, 3, 100);

      if Uppercase(copy(par, 1, 2)) = '/L' then
        blnLogin := true;

    end;
  //end;

    if strServername <> '' then
    begin
      with ADOConnection1 do
      begin
        close;
        keepconnection := true;
        LoginPrompt := blnLogin;

        connectionString := 'Provider=SQLOLEDB.1';
        if strUsername = '' then
        begin
          connectionString := connectionString + ';Integrated Security=SSPI';
          connectionString := connectionString + ';Persist Security Info=False';
        end
        else
          connectionString := connectionString + ';Persist Security Info=True';

        connectionString := connectionString + ';User ID = ' + strUsername;
        connectionString := connectionString + ';Initial Catalog=' + strDatabasename;
        connectionString := connectionString + ';Data Source=' + strServername;
        connectionString := connectionString + ';Use Procedure for Prepare=1';
        connectionString := connectionString + ';Auto Translate=True;';
        if strPassword <> '' then
          connectionstring := connectionstring + ';Password=' + strPassword;

        if strDatabaseName = '' then
          strDatabaseName := 'Ordus';

        try
          open;
        except
          begin
            showmessage('Problem med att kontakta databasen...');
            application.terminate;
          end;
        end;
          // ===================================================================
      //lblServer.caption := strServername;
      //lblDatabase.caption := strDatabasename;

      end;
    end else
    begin
      MessageDlg('Inloggningen misslyckades!', mtError, [mbOK], 0);
      application.terminate;
    end;
  end
  else
  begin
    MessageDlg('Inloggningsparametrar måste anges!', mtError, [mbOK], 0);
    application.terminate;

  end;

//  with TfrmTop.create(Application) do show;
//------------------------------------------------
  qryLU_order.open;
  qryLU_orderRad.open;
  qryLU_Ytbehandling.open;
  qryLU_personal.open;




end;

procedure TfrmOrdusrapport.edtOrderNrExit(Sender: TObject);
begin

  if edtOrdernr.text <> '' then
  begin
    with qryLU_OrderRad do
    begin
      close;
      parameters.parambyname('Orderid').value := strtoint(edtOrdernr.text);
      open;
      if recordcount > 0 then
      begin
        label10.caption := '';
        edtArtikelNr.enabled := true;
        edtArtikelNr.color := clWhite;
        edtArtikelNr.setfocus;

      end
      else
      begin
        label10.caption := '"' + edtOrdernr.text + '" finns inte eller är redan fakturerad';
        edtOrdernr.text := '';
        edtOrdernr.setfocus;
      end;

    end;
  end;
end;

procedure TfrmOrdusrapport.Button3Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmOrdusrapport.edtArtikelnrExit(Sender: TObject);
begin

  if (edtArtikelnr.text) <> '' then
  begin

    edtTotaltid.color := clWindow;
    edtVikt.color := clWindow;
    edtYtbehandling.color := clWindow;
    edtSignatur.color := clWindow;
    edtPlasmatid.color := clWindow;
    edtAntalStarter.color := clWindow;
    edtTotaltid.enabled := true;
    edtPlasmatid.enabled := true;
    edtAntalStarter.enabled := true;
    edtVikt.enabled := true;
    btnCalc.Enabled := true;
    edtYtbehandling.enabled := true;
    edtSignatur.enabled := true;
    btnPost.enabled := true;
    btnCancel.enabled := true;
    btnLagersaldo.Enabled:= true;



    with qryOrderRad do
    begin
      open;
      edit;
    end;

//    edtTotaltid.setfocus;
    edtAntal.setfocus;
  end else
    edtOrdernr.setfocus;


end;

procedure TfrmOrdusrapport.btnPostClick(Sender: TObject);
begin

  //Update Orderrad
  qryOrderradAvrapporteradDatum.AsDateTime := now;   // används triggern så att man vet att updaten kommer från avrpporteringen
  qryOrderrad.post;
  qryOrderrad.close;


  edtOrdernr.text := '';
  edtArtikelnr.text := '';

  edtArtikelnr.color := clBtnFace;
  edtTotaltid.color := clBtnFace;
  edtVikt.color := clBtnFace;

  edtYtbehandling.color := clBtnFace;
  edtSignatur.color := clBtnFace;
  edtPlasmatid.color := clBtnFace;
  edtAntalStarter.color := clBtnFace;

  edtPlasmatid.enabled := false;
  edtAntalStarter.enabled := false;


  edtArtikelnr.enabled := false;
  edtTotaltid.enabled := false;
  edtVikt.enabled := false;
  btnCalc.Enabled := false;
  edtYtbehandling.enabled := false;
  edtSignatur.enabled := false;
  btnPost.enabled := false;
  btnCancel.enabled := false;
  edtOrdernr.setfocus;
   speedbutton1.Enabled:= false;
    btnLagersaldo.Enabled:= false;


end;

procedure TfrmOrdusrapport.edtTotaltidEnter(Sender: TObject);
begin
  if edtArtikelnr.text = '' then
    edtArtikelnr.setfocus;
end;

procedure TfrmOrdusrapport.btnCancelClick(Sender: TObject);
begin

  qryOrderrad.cancel;
  qryOrderrad.close;
  edtOrdernr.text := '';
  edtArtikelnr.text := '';

  edtArtikelnr.color := clBtnFace;
  edtTotaltid.color := clBtnFace;
  edtVikt.color := clBtnFace;
  edtYtbehandling.color := clBtnFace;

  edtSignatur.color := clBtnFace;
  edtPlasmatid.color := clBtnFace;
  edtAntalStarter.color := clBtnFace;

  edtArtikelnr.enabled := false;
  edtTotaltid.enabled := false;
  edtVikt.enabled := false;
  btnCalc.Enabled := false;
  edtYtbehandling.enabled := false;
  edtSignatur.enabled := false;
  btnPost.enabled := false;
  edtPlasmatid.enabled := false;
  edtAntalStarter.enabled := false;

  edtOrdernr.setfocus;

      speedbutton1.Enabled:= false;


end;

procedure TfrmOrdusrapport.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then //Ist die gedrückte Taste ASCII-Return?
  begin
    Perform(WM_NEXTDLGCTL, 0, 0); //Zum nächsten Element wechseln
    Key := #0; //Gedrückte Taste unwirksam machen
  end;


end;

procedure TfrmOrdusrapport.btnCalcClick(Sender: TObject);
var l: integer; t: integer;
begin
  l := self.left;
  t := self.top;

  with TfrmCalc.create(Application) do
  begin
    left := l + 270;
    top := t + 130;
    Showmodal;
    if modalresult = mrOK then
      edtVikt.text := edtv.text;

  end;

end;

procedure TfrmOrdusrapport.edtArtikelnrEnter(Sender: TObject);
begin
        edtartikelnr.DropDown;
end;

procedure TfrmOrdusrapport.SpeedButton1Click(Sender: TObject);
begin

// report.preview;



       DefaultPrinterName:= SetDefaultPrinter('DYMO LabelWriter 400');

        with TrptEtikett.create(Application) do
        begin
          report.dataset:= qryOrderrad;
          
          QRDBText1.dataset:=   qryOrderrad;
          QRDBText2.dataset:=   qryOrderrad;
          QRDBText3.dataset:=   qryOrderrad;
          QRDBText4.dataset:=   qryOrderrad;
          QRDBText5.dataset:=   qryOrderrad;
          QRDBText6.dataset:=   qryOrderrad;
          QRDBText7.dataset:=   qryOrderrad;

          report.print;

        end;

       //SetDefaultPrinter('LaserJet 1012');
        SetDefaultPrinter(DefaultPrinterName);


end;

procedure TfrmOrdusrapport.qryOrderradAfterOpen(DataSet: TDataSet);
begin
       speedbutton1.Enabled:= dataset.RecordCount > 0;
end;

procedure TfrmOrdusrapport.btnLagersaldoClick(Sender: TObject);
begin
  qryLagersaldo.open;
  qryLagersaldo.edit;
  with TfrmLagersaldo.create(Application) do
  begin
  Showmodal;

  if modalresult = mrOK then
            qryLagersaldo.Post
            else
            qryLagersaldo.cancel;


  end;

end;

end.


