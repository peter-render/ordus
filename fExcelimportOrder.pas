unit fExcelimportOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, vcl.wwdblook, Datamodule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  vcl.Wwdbdatetimepicker;

type
  TfrmExcelImportOrder = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TButton;
    Button2: TButton;
    LUCKund: TwwDBLookupCombo;
    Kund: TLabel;
    rgTyp: TRadioGroup;
    edtInkopsorder: TEdit;
    edtGodsmärke: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblAntal: TLabel;
    edtBestdatum: TwwDBDateTimePicker;
    edtLeveransdatum: TwwDBDateTimePicker;
    edtReferens: TEdit;
    Label6: TLabel;
    procedure rgTypClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExcelImportOrder: TfrmExcelImportOrder;

implementation

{$R *.dfm}

procedure TfrmExcelImportOrder.rgTypClick(Sender: TObject);
begin
btnOK.enabled:= True ;
end;

end.
