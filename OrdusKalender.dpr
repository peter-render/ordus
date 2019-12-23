program OrdusKalender;

uses
  Vcl.Forms,
  fKalender in 'fKalender.pas' {frmKalender},
  Datamodule in 'Datamodule.pas' {dm: TDataModule},
  fDagens in 'fDagens.pas' {frmDagens},
  fPlaneringOrderradInfo in 'fPlaneringOrderradInfo.pas' {frmPlaneringOrderradInfo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmKalender, frmKalender);
  Application.CreateForm(TfrmDagens, frmDagens);
  Application.CreateForm(TfrmPlaneringOrderradInfo, frmPlaneringOrderradInfo);
  Application.Run;
end.
