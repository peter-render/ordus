unit fDagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  ComCtrls, ShellApi, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, fDagensOrderlista;

type
  TfrmDagens = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsoDagens: TDataSource;
    Button1: TButton;
    wwDBGrid1: TwwDBGrid;
    DBText1: TDBText;
    qryDagens: TFDQuery;
    qryDagensKundnamn: TStringField;
    qryDagensAntalprissatt: TIntegerField;
    qryDagensAntalAvrapporterad: TIntegerField;
    qryDagensAntalTotal: TIntegerField;
    qryDagensleveransdatum: TSQLTimeStampField;
    qryDagensYtbehandlingdatum: TSQLTimeStampField;
    qryDagensYtbehandlingBGColor: TStringField;
    qryDagensStarttid: TStringField;
    qryDagensYtbehandlingBeteckning: TStringField;
    btnYtbehandling: TRadioButton;
    btnKund: TRadioButton;
    btnAlla: TRadioButton;
    qryDagensdestinationsbeteckning: TStringField;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Visaorderrader1: TMenuItem;
    qryDagensKlarFörYtbehandling: TBooleanField;
    Klarfrytbehandling1: TMenuItem;
    qryDagensOrderID: TFDAutoIncField;
    N1: TMenuItem;
    qryOrderUpdate: TFDQuery;
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
    BlobField1: TBlobField;
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
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField17: TIntegerField;
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
    procedure Klarfrytbehandling1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDagens: TfrmDagens;
  OrderString: string;

implementation

uses Datamodule;

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

procedure TfrmDagens.Klarfrytbehandling1Click(Sender: TObject);
begin
  with qryOrderUpdate do
  begin
     ParamByName('Orderid').value:=qryDagens.FieldByName('OrderId').AsInteger;
     ParamByName('Flagga').value:= not qryDagens.FieldByName('KlarFörYtbehandling').asBoolean;
     execsql;
  end;
  qryDagens.Refresh;
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
