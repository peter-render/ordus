program OrdusArtikel;

uses
  Vcl.Forms,
  fArtikel in 'fArtikel.pas' {frmArtikel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmArtikel, frmArtikel);
  Application.Run;
end.
