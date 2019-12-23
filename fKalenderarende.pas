unit fKalenderarende;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmKalenderarende = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPost: TButton;
    btnCancel: TButton;
    edtStartdatum: TDateTimePicker;
    edtSlutdatum: TDateTimePicker;
    edtMemo: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKalenderarende: TfrmKalenderarende;

implementation

{$R *.dfm}

procedure TfrmKalenderarende.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:= caFree;
end;

procedure TfrmKalenderarende.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then close;

end;

end.
