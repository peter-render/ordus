unit fPersonKund;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, StdCtrls, Mask, DBCtrls, Db, ADODB, Menus, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls;

type
  TfrmStdRV1 = class(TfrmStdRV)
    ADOQuery1KundID: TIntegerField;
    ADOQuery1PersonID: TAutoIncField;
    ADOQuery1Frnamn: TStringField;
    ADOQuery1Efternamn: TStringField;
    ADOQuery1Emailadress: TStringField;
    ADOQuery1Telefonnummer: TStringField;
    ADOQuery1Mobilnummer: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStdRV1: TfrmStdRV1;

implementation

uses fKunder;

{$R *.DFM}

end.
