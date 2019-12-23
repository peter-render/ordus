unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, wwdblook;

type
  TForm1 = class(TForm)
    LU: TwwDBLookupCombo;
    qryLU_Ytbehandling2: TADOQuery;
    qryLU_Ytbehandling2Beteckning: TStringField;
    qryLU_Ytbehandling2YtbehandlingID: TStringField;
    qryLU_Ytbehandling2Sortorder: TSmallintField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormShow(Sender: TObject);
begin
lu.LookupValue:= 'O   '

end;

end.
