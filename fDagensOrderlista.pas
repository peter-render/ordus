unit fDagensOrderlista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, funclibProj,
  system.IOUtils, Winapi.ShellAPI;

type
  TfrmDagensOrderlista = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    DBText1: TDBText;
    dbgrid: TwwDBGrid;
    DBText2: TDBText;
    qryOrderradDagens: TFDQuery;
    qryOrderradDagensAutoPrisFinns: TStringField;
    qryOrderradDagensPositionnummer: TIntegerField;
    qryOrderradDagensArtikelnummer: TStringField;
    f: TStringField;
    qryOrderradDagenscRitningsnoteringFinns_disp: TStringField;
    qryOrderradDagenscFixatur: TIntegerField;
    qryOrderradDagensAntal: TFMTBCDField;
    qryOrderradDagensPersonnamn: TStringField;
    qryOrderradDagensFöljesedelBeteckning: TStringField;
    qryOrderradDagensOrderradInfo: TStringField;
    qryOrderradDagensNotering: TMemoField;
    qryOrderradDagenscRitningsnoteringFinns: TBooleanField;
    qryOrderradDagenscBock: TIntegerField;
    qryOrderradDagensFixaturFinns: TBooleanField;
    qryOrderradDagensBockritningFinns: TBooleanField;
    qryOrderradDagensId: TFDAutoIncField;
    qryOrderradDagensKundid: TIntegerField;
    qryOrderradDagensPersonId: TFDAutoIncField;
    qryOrderradDagensArtikelID: TFDAutoIncField;
    qryOrderradDagensYtbehandlingIdDefault: TIntegerField;
    qryOrderradDagensLagersaldo: TBCDField;
    qryOrderradDagensLagerplats: TStringField;
    qryOrderradDagensAvrapporterad: TBooleanField;
    qryOrderradDagensOrderId: TFDAutoIncField;
    qryOrderradDagensOrdernummer: TStringField;
    qryOrderradDagensGodsmärke: TStringField;
    qryOrderradDagensLeveransdatum: TSQLTimeStampField;
    qryOrderradDagensKundnamn: TStringField;
    qryOrderradDagensRadnr: TIntegerField;
    qryOrderradDagensPrisPerEnhet: TCurrencyField;
    qryOrderradDagensPrisPerEnhetAuto: TCurrencyField;
    qryOrderradDagensDatum: TSQLTimeStampField;
    qryOrderradDagensYtbehandlingId: TIntegerField;
    qryOrderradDagensOrderinfo: TStringField;
    qryOrderradDagensAvrapporteradDatum: TSQLTimeStampField;
    qryOrderradDagensVikt: TFloatField;
    qryOrderradDagensAvrapporteradPersonId: TIntegerField;
    qryOrderradDagensSortorder: TIntegerField;
    qryOrderradDagensAvrapporteradPlasmatid: TIntegerField;
    qryOrderradDagensAvrapporteradAntalStarter: TIntegerField;
    qryOrderradDagensAvrapporteradAntalRitningar: TIntegerField;
    qryOrderradDagensFrånLager: TBCDField;
    qryOrderradDagensAttProducera: TBCDField;
    qryOrderradDagensTillLager: TBCDField;
    qryOrderradDagensLagerplats_1: TStringField;
    qryOrderradDagensRitning1: TBlobField;
    qryOrderradDagensFöljesedelId: TIntegerField;
    qryOrderradDagensTotaltid: TIntegerField;
    qryOrderradDagensAntalAvrapprterade: TIntegerField;
    qryOrderradDagensAvrapporteradPlasmatidSenast: TIntegerField;
    qryOrderradDagensSkrotandelProcentSenast: TBCDField;
    qryOrderradDagensSkrotandelProcent: TBCDField;
    qryOrderradDagensViktSenast: TFloatField;
    qryOrderradDagensVikt_1: TFloatField;
    qryOrderradDagensYtbehandlingIdForslag: TIntegerField;
    dsoOrderradDagens: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    rbAlla: TRadioButton;
    rbAvrapp: TRadioButton;
    rbEjavrapp: TRadioButton;
    PopupMenu1: TPopupMenu;
    Visaritning1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure rbClick(Sender: TObject);
    procedure Visaritning1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDagensOrderlista: TfrmDagensOrderlista;

implementation

{$R *.dfm}

procedure TfrmDagensOrderlista.Button1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmDagensOrderlista.PopupMenu1Popup(Sender: TObject);
begin
             Popupmenu1.AutoPopup:= true;
end;

procedure TfrmDagensOrderlista.rbClick(Sender: TObject);
begin
  if rbAlla.Checked then
  begin
    qryOrderradDagens.filtered := false;
  end
  else if rbAvrapp.Checked then
  begin
    qryOrderradDagens.filter := 'Personnamn <> null ';
    qryOrderradDagens.filtered := true;
  end
  else if rbEjavrapp.Checked then
  begin
    qryOrderradDagens.filter := 'Personnamn = null ';
    qryOrderradDagens.filtered := true;
  end;

end;

procedure TfrmDagensOrderlista.Visaritning1Click(Sender: TObject);
var
  filename, LURL: string;
begin

  filename := GetRitningFilename(qryOrderradDagens.fieldbyname('artikelnummer').asString, qryOrderradDagens.FieldByName('kundnamn').asString);

  // stringreplace(qryOrderrad.fieldbyname('artikelnummer').asString, ' ', '', [rfReplaceAll]) + '.pdf';
  if fileexists(filename) then
  begin
    LURL := TPath.GetFullPath(filename).Replace('\', '/', [rfReplaceAll]);
    LURL := 'file://' + LURL;
    ShellExecute(0, 'open', PChar(filename), nil, nil, SW_SHOWNORMAL);
  end else
  Showmessage('Fil "'+ filename + '" kan inte hittas!');
end;
end.
