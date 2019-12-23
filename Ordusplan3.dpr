program Ordusplan3;

uses
  Vcl.Forms,
  fPlanner in 'fPlanner.pas' {frmPlanner},
  Datamodule in 'Datamodule.pas' {dm: TDataModule},
  funclib in 'funclib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPlanner, frmPlanner);
  Application.Run;
end.
