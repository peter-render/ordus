unit fDagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  ComCtrls, ShellApi, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TfrmDagens = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsoDagens: TDataSource;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    DBText1: TDBText;
    qryDagens: TFDQuery;
    qryDagensOrderID: TFDAutoIncField;
    qryDagensKundnamn: TStringField;
    qryDagensAntalprissatt: TIntegerField;
    qryDagensAntalAvrapporterad: TIntegerField;
    qryDagensAntalTotal: TIntegerField;
    qryDagensleveransdatum: TSQLTimeStampField;
    qryDagensYtbehandlingdatum: TSQLTimeStampField;
    qryDagensYtbehandlingBGColor: TStringField;
    qryDagensStarttid: TStringField;
    qryDagensYtbehandlingBeteckning: TStringField;
    Label1: TLabel;
    btnYtbehandling: TRadioButton;
    btnKund: TRadioButton;
    btnAlla: TRadioButton;
    qryDagensdestinationsbeteckning: TStringField;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Visaorderrader1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgClick(Sender: TObject);
    procedure btnYtbehandlingClick(Sender: TObject);
    procedure btnKundClick(Sender: TObject);
    procedure btnAllaClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDagens: TfrmDagens;
  OrderString: string;

implementation

uses Datamodule, fDagensOrderlista;

{$R *.dfm}

procedure TfrmDagens.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDagens.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 27 then
    close;
end;

procedure TfrmDagens.FormShow(Sender: TObject);
begin
  OrderString := ' order by oh.Id';
  with qryDagens do
  begin
    close;
    sql.Add(' and 1=1');
    sql.Add(OrderString);
    open;
  end;
end;

procedure TfrmDagens.btnKundClick(Sender: TObject);
begin
  with qryDagens do
  begin
    close;
    sql.Delete(sql.Count - 1);
    sql.Delete(sql.Count - 1);
    sql.Add('and Destination = 2');
    sql.Add(OrderString);

    open;
  end;

end;

procedure TfrmDagens.btnYtbehandlingClick(Sender: TObject);
begin
  with qryDagens do
  begin
    close;
    sql.Delete(sql.Count - 1);
    sql.Delete(sql.Count - 1);
    sql.Add(' and Destination = 1');
    sql.Add(OrderString);

    open;
  end;

end;

procedure TfrmDagens.btnAllaClick(Sender: TObject);
begin
  with qryDagens do
  begin
    close;
    sql.Delete(sql.Count - 1);
    sql.Delete(sql.Count - 1);
    sql.Add(' and 1=1');
    sql.Add(OrderString);

    open;
  end;

end;

procedure TfrmDagens.rgClick(Sender: TObject);
begin
  with qryDagens do
  begin
    close;
    sql.Delete(sql.Count - 1);
    sql.Delete(sql.Count - 1);
    sql.Add(' and Destination = 1');
    sql.Add(OrderString);
    open;

  end;
end;

procedure TfrmDagens.wwDBGrid1DblClick(Sender: TObject);
var
  lpar: string;
begin

  (* if paramcount > 1 then
    begin

    lpar := paramstr(1) + ' ' + paramstr(2);
    showmessage(lpar);

    lpar := lpar + ' /I' + wwDBGrid1.DataSource.DataSet.FieldByName
    ('OrderId').AsString;
    ShellExecute(Handle, 'open', 'Ordusrapport.exe', pchar(lpar), nil,
    SW_SHOWNORMAL);
    end;
  *)
  with TfrmDagensOrderlista.create(Application) do
  begin

    with qryOrderradDagens do
    begin
      close;
      parambyname('OrderId').value := qryDagens.fieldbyname('Orderid').AsInteger;
      parambyname('VISAAVRAPPORTERADE').value := True;
      open;

    end;
    showmodal;
  end;
end;

procedure TfrmDagens.wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
begin

  self.Caption := AFieldName;

  if AFieldName = 'Ytbehandlingdatum' then
    OrderString := 'order by Ytbehandlingdatum'
  else if AFieldName = 'YtbehandlingBeteckning' then
    OrderString := 'order by Yb.Beteckning,Ytbehandlingdatum'
  else
    OrderString := 'order by oh.Id';

  with qryDagens do
  begin
    close;
    sql.Delete(sql.Count - 1);
    sql.Add(OrderString);
    open;
  end;
end;

end.
