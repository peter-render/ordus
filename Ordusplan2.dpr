program Ordusplan2;

uses
  Vcl.Forms,
  fPlanner in 'fPlanner.pas' {frmPlanner},
  Vcl.Themes,
  Vcl.Styles,
  funclib in 'funclib.pas',
  Datamodule in 'Datamodule.pas' {dm: TDataModule},
  fPlaneringOrderradInfo in 'fPlaneringOrderradInfo.pas' {frmPlaneringOrderradInfo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Dark');
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPlanner, frmPlanner);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
