unit rdtest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,ShellApi;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var strfilename:string;strCommand:string;

begin
//        strfilename := '"C:\Program Files\Adobe\Acrobat 6.0\Reader\AcroRd32.exe"';
        strCommand := '"C:\Program Files\Adobe\Acrobat 6.0\Reader\AcroRd32.exe"';
        strfilename := ' /t "C:\Demo3.pdf"  "LJ1012" "5.60.1604.0"';
//        strfilename := '"C:\Program Files\Adobe\Acrobat 6.0\Reader\AcroRd32.exe /t  C:\Demo3.pdf  LJ1012  5.60.1604.0';

        memo1.text := strfilename;

(*        if ShellExecute(Application.Handle, nil, PChar('CMD.exe'),
          PChar(strfilename), nil, SW_SHOWNORMAL) <= 32 then
          ShowMessage(SysErrorMessage(GetLastError));
*)

         ShellExecute(Handle, 'open',PChar(strCOmmand),pchar(strfilename),nil , SW_SHOWNORMAL);

//        ShellExecute(Handle, 'open',  pchar(strfilename), nil, nil, SW_SHOWNORMAL);

end;

end.
