unit frmPrintPDF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    ADOQuery1: TADOQuery;
    ADOQuery1Antal: TBCDField;
    ADOQuery1Artikelnummer: TStringField;
    ADOQuery1Beteckning: TStringField;
    DataSource1: TDataSource;
    ADOQuery1C_PDFFinns: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses fMain, fOrderLista;

{$R *.DFM}

end.
