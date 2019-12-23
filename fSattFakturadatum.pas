unit fSattFakturadatum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,dateUtils;

type
  TfrmSattFakturadatum = class(TForm)
    edtFakturanummer: TEdit;
    Label1: TLabel;
    edtFakturadatum: TDateTimePicker;
    Label2: TLabel;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    edtForfallodatum: TDateTimePicker;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtFakturadatumExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSattFakturadatum: TfrmSattFakturadatum;

implementation

{$R *.dfm}

procedure TfrmSattFakturadatum.edtFakturadatumExit(Sender: TObject);
begin
edtForfallodatum.Date :=  incday(edtFakturadatum.Date,30);
end;

procedure TfrmSattFakturadatum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:= caFree;
end;

end.
