unit fExtratidRapport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, ExtCtrls, rExtratidrapport;

type
  TfrmExtratidRapport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    edtFom: TwwDBDateTimePicker;
    edtTom: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExtratidRapport: TfrmExtratidRapport;

implementation

uses rAvrapporteradTidrapport, funclib;

{$R *.dfm}

procedure TfrmExtratidRapport.Button1Click(Sender: TObject);
begin
with TrptExtratidrapport.create(Application) do
begin
        with sp do
        begin
           parambyname('@DatumFom').value:= edtFom.Date;
           parambyname('@DatumTom').value:= edtTom.Date;
           open;
        end;
        report.Preview;
end;

end;

procedure TfrmExtratidRapport.Button2Click(Sender: TObject);
begin
close;
end;

procedure TfrmExtratidRapport.Button3Click(Sender: TObject);
begin
edtFom.Date:= date;
edtTom.Date:= date;

end;

procedure TfrmExtratidRapport.Button4Click(Sender: TObject);
begin
edtFom.Date:=  FirstDayOfMonth(date);
edtTom.Date:= LastDayOfMonth(date);

end;

procedure TfrmExtratidRapport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=caFree;
end;

end.
