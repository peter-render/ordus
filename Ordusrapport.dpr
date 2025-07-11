program Ordusrapport;

uses
  Forms,
  fMainRapport2 in 'fMainRapport2.pas' {frmOrdusrapport2},
  fCalc in 'fCalc.pas' {frmCalc},
  rEtikett in 'rEtikett.pas' {rptEtikett},
  fLagersaldo in 'fLagersaldo.pas' {frmLagersaldo},
  fFoljesedel in 'fFoljesedel.pas' {frmFoljesedel},
  rFoljesedel in 'rFoljesedel.pas' {rptFoljesedel},
  Datamodule in 'Datamodule.pas' {dm: TDataModule},
  rPallEtikett in 'rPallEtikett.pas' {rptPallEtikett},
  fNyFoljesedel in 'fNyFoljesedel.pas' {frmNyFoljesedel},
  fEditBeteckning in 'fEditBeteckning.pas' {frmEditbeteckning},
  rLagerplatsetikett in 'rLagerplatsetikett.pas' {rptLagerplatsEtikett},
  fNotering in 'fNotering.pas' {frmNotering},
  fKalender in 'fKalender.pas' {frmKalender},
  Vcl.Themes,
  Vcl.Styles,
  funclib in 'funclib.pas',
  fConnectionEdit in 'fConnectionEdit.pas' {frmConnectionEdit},
  dSimple in 'dSimple.pas' {dlgSimple};

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmOrdusrapport2, frmOrdusrapport2);
  Application.Run;

end.
