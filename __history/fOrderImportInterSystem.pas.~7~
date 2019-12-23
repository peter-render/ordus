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
    Panel3: TPanel;
    Edit2: TEdit;
    btnBrowse: TButton;
    Label4: TLabel;
    sp: TFDStoredProc;
    sp_OrderRadImport: TFDStoredProc;
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

  with Opendialog1 do
  begin
    if execute then
    begin
      edit2.text := filename;
      ReadOrderfileIntersystem(edit2.Text);
    end;
  end;
  self.close;
end;

procedure TfrmOrderImportIntersystem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
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

