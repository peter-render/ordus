unit fimpleDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TfrmSimpledialog = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimpledialog: TfrmSimpledialog;

implementation

{$R *.DFM}

end.
