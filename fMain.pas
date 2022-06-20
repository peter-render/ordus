unit fMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ComCtrls, ToolWin, Menus, ImgList, ExtCtrls, Inifiles,
  StdCtrls, FileCtrl, Mask, EditNew, ActnMan, ActnColorMaps, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,  FireDAC.Stan.Intf, FireDAC.Comp.UI, fOrderPlanering, fOrderkalkyl, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnCtrls, Vcl.ActnMenus, fComputer, fRitningsnotering;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Arkiv1: TMenuItem;
    Avslut1: TMenuItem;
    mnuRegister: TMenuItem;
    Artikel1: TMenuItem;
    ToolBar1: TToolBar;
    Kunder1: TMenuItem;
    Ytbehandlingstyper1: TMenuItem;
    tbtnOrderlista: TToolButton;
    About1: TMenuItem;
    About2: TMenuItem;
    tbtnKunder: TToolButton;
    tbtnArtikel: TToolButton;
    mnuListningar: TMenuItem;
    Artikellista1: TMenuItem;
    Personal1: TMenuItem;
    N1: TMenuItem;
    Orderstatus1: TMenuItem;
    Systemparameter1: TMenuItem;
    Printerindex1: TMenuItem;
    N4: TMenuItem;
    Fljesedlar1: TMenuItem;
    Register2: TMenuItem;
    Importbestllningsfil1: TMenuItem;
    Avrapporteradtid1: TMenuItem;
    tbtbKalender: TToolButton;
    tbrnMaterialbeställning: TToolButton;
    mnuImportOrderfilIntersystem: TMenuItem;
    tbtnKontakter: TToolButton;
    Planeringsvecka1: TMenuItem;
    mnuConnection: TMenuItem;
    Dagar1: TMenuItem;
    N3: TMenuItem;
    mnuUnderhåll: TMenuItem;
    StatusBar1: TStatusBar;
    tbtnOffertKalkyl: TToolButton;
    tbtnExit: TToolButton;
    ImageList1: TImageList;
    qryComputername: TFDQuery;
    qryComputernameÄrAdmin: TBooleanField;
    ActionList1: TActionList;
    Action2: TAction;
    Computer1: TMenuItem;
    Flikkolumner1: TMenuItem;
    Ritningsnotering1: TMenuItem;
    Import1: TMenuItem;
    SkickaorderbekrftleseExcel1: TMenuItem;
    procedure tbtnKunderClick(Sender: TObject);
    procedure btnAvslutClick(Sender: TObject);
    procedure Ytbehandlingstyper1Click(Sender: TObject);
    procedure Kunder1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Artikel1Click(Sender: TObject);
    procedure About2Click(Sender: TObject);
    procedure Orderlista1Click(Sender: TObject);
    procedure Artikellista1Click(Sender: TObject);
    procedure Personal1Click(Sender: TObject);
    procedure Orderstatus1Click(Sender: TObject);
    procedure Systemparameter1Click(Sender: TObject);
    procedure Printerindex1Click(Sender: TObject);
    procedure Supportfnster1Click(Sender: TObject);
    procedure tbtnKontakterClick(Sender: TObject);
    procedure Register2Click(Sender: TObject);
    procedure Importbestllningsfil1Click(Sender: TObject);
    procedure Avrapporteradtid1Click(Sender: TObject);
    procedure tbtbKalenderClick(Sender: TObject);
    procedure tbrnMaterialbeställningClick(Sender: TObject);
    procedure mnuImportOrderfilIntersystemClick(Sender: TObject);
    procedure Planeringsvecka1Click(Sender: TObject);
    procedure mnuConnectionClick(Sender: TObject);
    procedure Dagar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuUnderhållClick(Sender: TObject);
    procedure tbtnOffertKalkylClick(Sender: TObject);
    procedure tbtnExitClick(Sender: TObject);
    procedure Computer1Click(Sender: TObject);
    procedure Flikkolumner1Click(Sender: TObject);
    procedure Ritningsnotering1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  strServerName: string;
  strDatabaseName: string;
  DefaultPrinterName: string;
  apStatus: Integer;
  AdminComputer: Boolean;

implementation

uses fYtbehandling, fKunder, fShoworder, fOrderLista, fArtikel,
  fTop, fPersonal, fOrderstatus, fftgsystem,
  fSupport, fOrderImport, Datamodule, fFoljesedel, fAvtapporteradTidRapport,
  fKalender, fNyFoljesedel, Splashform, fNotering, fOrderImportInterSystem,
  funclib, fKontakter, fResurs, fPlaneringsvecka, fCalc, fConnection, fDagar,
  fUnderhåll, fUH, fFlikkolumner;

{$R *.DFM}

procedure TfrmMain.tbtnOffertKalkylClick(Sender: TObject);
begin

  with TfrmOrderkalkyl.Create(application) do
    showmodal;

end;

procedure TfrmMain.tbtnKunderClick(Sender: TObject);
begin
  (* SplashV.show;
  *)
end;

procedure TfrmMain.tbtbKalenderClick(Sender: TObject);
begin

  with TfrmKalender.Create(application) do
  begin
    width := self.width;
    height := self.height;
    showmodal;
  end;

end;

procedure TfrmMain.tbrnMaterialbeställningClick(Sender: TObject);
begin
  with TfrmNotering.Create(application) do
  begin
    memo1.text := '';
    showmodal;
  end;

end;

procedure TfrmMain.tbtnExitClick(Sender: TObject);
begin
  application.terminate;
end;

procedure TfrmMain.mnuUnderhållClick(Sender: TObject);
begin
  with TfrmUH.Create(application) do
    showmodal;

end;

procedure TfrmMain.btnAvslutClick(Sender: TObject);
begin
  application.terminate;
end;

procedure TfrmMain.Computer1Click(Sender: TObject);
begin
  with TfrmComputer.Create(application) do
  showmodal;
end;

procedure TfrmMain.mnuConnectionClick(Sender: TObject);
begin
  with tfrmConnection.Create(application) do
    showmodal;
end;

procedure TfrmMain.Dagar1Click(Sender: TObject);
begin
  with TfrmDagar.Create(application) do
    showmodal;

end;

procedure TfrmMain.Ytbehandlingstyper1Click(Sender: TObject);
begin
  with TfrmYtbehandling.Create(application) do
    showmodal;
end;

procedure TfrmMain.Kunder1Click(Sender: TObject);
begin
  with TfrmKunder.Create(application) do
    showmodal;

end;

procedure TfrmMain.Flikkolumner1Click(Sender: TObject);
begin
with TFrmFlikkolumner.Create(Application) do
showmodal;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  application.DefaultFont.Name := 'Tahoma';
  application.DefaultFont.Size := 10;

  caption := 'Ordus orderhantering | ' + GetAppVersionBuildStr + ' | ' + getcomputername + ' | ';

  with qryComputername do
  begin
    close;
    parambyname('Computername').Value := getcomputername;
    open;
    AdminComputer := fieldbyname('ÄrAdmin').asboolean;
  end;
  width:= 1440;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin

  dm.qryArtikel.open;
  dm.qryLUYtbehandling.open;

  // constraints.MaxWidth := width;
  // constraints.MinWidth := width;
  // Orderlista1Click(Sender);

  mnuUnderhåll.Visible := AdminComputer;
  mnuConnection.Visible := AdminComputer;
  mnuRegister.Visible := AdminComputer;
  mnuListningar.Visible := AdminComputer;
  mnuImportOrderfilIntersystem.Visible := AdminComputer;
  tbtnOffertKalkyl.Visible := AdminComputer;
  tbtnKunder.Visible := AdminComputer;

end;

procedure TfrmMain.Artikel1Click(Sender: TObject);
begin
  with TfrmArtikel.Create(application) do
    showmodal;
end;

procedure TfrmMain.About2Click(Sender: TObject);
begin
  with TSplashV.Create(application) do
    show;
end;

procedure TfrmMain.Orderlista1Click(Sender: TObject);
var
  i: Integer;
  bCreated: Boolean;
  f: TForm;
begin
  bCreated := False;

  for i := 0 to frmMain.MDIChildCount - 1 do
  begin
    if frmMain.MDIChildren[i] is TfrmOrderLista then
    begin
      f := frmMain.MDIChildren[i] as TfrmOrderLista;
      bCreated := True;
      Break;
    end;
  end;

  if not bCreated then
  begin
    with TfrmOrderLista.Create(application) do
    begin

      with sp_orderlist do
      begin
        open;
      end;

      show;
    end

  end
  else
  begin
    f.windowstate := wsmaximized;
    f.show;
  end;
  frmMain.tbtnOrderlista.enabled := True;
  frmMain.tbtnOrderlista.imageindex := 0;


end;

procedure TfrmMain.Artikellista1Click(Sender: TObject);
var
  i: Integer;
  bCreated: Boolean;
  f: TForm;
begin

  bCreated := False;

  for i := 0 to frmMain.MDIChildCount - 1 do
  begin
    if frmMain.MDIChildren[i] is TfrmShoworder then
    begin
      f := frmMain.MDIChildren[i] as TfrmShoworder;
      bCreated := True;
      Break;
    end;
  end;

  if not bCreated then
    TfrmShoworder.Create(application)
  else
  begin
    f.windowstate := wsmaximized;
    f.show;
  end;

  frmMain.tbtnOrderlista.enabled := True;
  frmMain.tbtnOrderlista.imageindex := 4;

end;

procedure TfrmMain.Avrapporteradtid1Click(Sender: TObject);
begin
  with TfrmAvrapporteradTidrapport.Create(application) do
    showmodal;
end;

procedure TfrmMain.Personal1Click(Sender: TObject);
begin
  with TfrmPersonal.Create(application) do
    showmodal;
end;

procedure TfrmMain.Planeringsvecka1Click(Sender: TObject);
begin
  with TfrmPlaneringsvecka.Create(application) do
    showmodal;

end;

procedure TfrmMain.Orderstatus1Click(Sender: TObject);
begin
  with TfrmOrderStatus.Create(application) do
    showmodal;
end;

procedure TfrmMain.Systemparameter1Click(Sender: TObject);
begin
  with TfrmFtgsystem.Create(application) do
    showmodal;
end;

procedure TfrmMain.Printerindex1Click(Sender: TObject);
begin
  // with TfrmPrinterindex.create(Application) do
  // showmodal;
end;

procedure TfrmMain.Supportfnster1Click(Sender: TObject);
begin
  with TfrmSupport.Create(application) do
    showmodal;
end;

procedure TfrmMain.tbtnKontakterClick(Sender: TObject);
begin
  with TfrmKontakter.Create(application) do
    showmodal;
  // frmOrderlista.actUpdateOrderlistaExecute(Sender);

end;

procedure TfrmMain.Register2Click(Sender: TObject);
begin
  with TfrmFoljesedel.Create(application) do
    showmodal;
end;

procedure TfrmMain.Ritningsnotering1Click(Sender: TObject);
begin

with TfrmRitningsnotering.create(Application) do

Showmodal;


end;

procedure TfrmMain.Importbestllningsfil1Click(Sender: TObject);
begin
  with TfrmOrderimport.Create(application) do
    showmodal;

end;

procedure TfrmMain.mnuImportOrderfilIntersystemClick(Sender: TObject);
begin
  with TfrmOrderimportIntersystem.Create(application) do
    showmodal;

end;

end.
