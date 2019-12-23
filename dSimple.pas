unit dSimple;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TdlgSimple = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSimple: TdlgSimple;

implementation

{$R *.DFM}

procedure TdlgSimple.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ACTION:= caFree;
end;

end.
