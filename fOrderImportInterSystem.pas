unit fOrderImportInterSystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, wwdblook, Db, ComCtrls,
  wwdbdatetimepicker, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmOrderImportIntersystem = class(TForm)
    Panel2: TPanel;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Label1: TLabel;
    btnBrowse: TButton;
    Button1: TButton;
    procedure btnBrowseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btnAvbrytClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderImportIntersystem: TfrmOrderImportIntersystem;
  intKundId: integer;

implementation

uses fMain, Datamodule, funclib, fOrderLista, funclibProj;

{$R *.DFM}

procedure TfrmOrderImportIntersystem.btnBrowseClick(Sender: TObject);

begin

  with OpenDialog1 do
  begin
    if execute then
    begin
      if extractfileext(filename) = '.xml' then
        ReadOrderfileIntersystemXML(filename)
      else
        ReadOrderfileIntersystem(filename);
      Showmessage('Du m�ste trycka p� "Refresh orderlista" f�r att en nyimpoterat order ska visas!');
    end;

  end;
end;

procedure TfrmOrderImportIntersystem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmOrderImportIntersystem.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrderImportIntersystem.btnAvbrytClick(Sender: TObject);
begin
  close;
end;

end.
