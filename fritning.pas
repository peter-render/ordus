unit fritning;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls;

type
  TfrmRitning = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRitning: TfrmRitning;

implementation

uses fArtikel;

{$R *.DFM}

procedure TfrmRitning.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRitning.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  release;
end;

end.
