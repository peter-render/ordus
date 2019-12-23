unit dFakturaNummer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dSimple, StdCtrls, DBCtrls, ExtCtrls, Mask, ComCtrls, wwdbdatetimepicker;

type
  TdlgFakturaNummer = class(TdlgSimple)
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    edtDatum: TwwDBDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgFakturaNummer: TdlgFakturaNummer;

implementation

uses fOrderLista;

{$R *.DFM}

end.
