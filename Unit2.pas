unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB;

type
  TForm2 = class(TForm)
    qryOrderrad: TADOQuery;
    qryOrderradPositionnummer: TIntegerField;
    qryOrderradArtikelnummer: TStringField;
    qryOrderradBeteckning: TStringField;
    qryOrderradPrisPerEnhet: TBCDField;
    qryOrderradAntal: TBCDField;
    qryOrderradBeteckning_1: TStringField;
    qryOrderradId: TAutoIncField;
    qryOrderradOrderID: TIntegerField;
    qryOrderradArtikelID: TIntegerField;
    qryOrderradRadNr: TIntegerField;
    qryOrderradPrisPerEnhetAuto: TBCDField;
    qryOrderradDatum: TDateTimeField;
    qryOrderradYtbehandlingId: TIntegerField;
    qryOrderrad_YtbehandlingID: TStringField;
    qryOrderradOrderInfo: TStringField;
    qryOrderradAvrapporteradDatum: TDateTimeField;
    qryOrderradAvrapporterad: TBooleanField;
    qryOrderradTotaltid: TIntegerField;
    qryOrderradVikt: TFloatField;
    qryOrderradAvrapporteradPersonID: TIntegerField;
    qryOrderradSortorder: TIntegerField;
    qryOrderradAvrapporteradPlasmatid: TIntegerField;
    qryOrderradAvrapporteradAntalStarter: TIntegerField;
    qryOrderradAvrapporteradAntalRitningar: TIntegerField;
    qryOrderradFrnLager: TBCDField;
    qryOrderradAttProducera: TBCDField;
    qryOrderradTillLager: TBCDField;
    qryOrderradSkrotandelProcent: TBCDField;
    qryOrderradLagerplats: TStringField;
    qryOrderradRitning1: TBlobField;
    qryOrderradFljesedelId: TIntegerField;
    qryOrderradId_1: TAutoIncField;
    qryOrderrad_YtbehandlingIDdefault: TStringField;
    qryOrderradYtbehandlingIdDefault: TIntegerField;
    qryOrderradKundID: TIntegerField;
    qryOrderradPDFFinns: TIntegerField;
    qryOrderradPDFFilnamn: TStringField;
    qryOrderradLagersaldo: TBCDField;
    qryOrderradLagerplats_1: TStringField;
    qryOrderradId_2: TAutoIncField;
    qryOrderradKundID_1: TIntegerField;
    qryOrderradOrderNummer: TStringField;
    qryOrderradOrderdatum: TDateTimeField;
    qryOrderradGodsmrke: TStringField;
    qryOrderradReferens: TStringField;
    qryOrderradReferensID: TIntegerField;
    qryOrderradOrdertypId: TIntegerField;
    qryOrderradOrdertyp: TStringField;
    qryOrderradOrderstatus: TStringField;
    qryOrderradOrderstatusId: TIntegerField;
    qryOrderradLeveransdatum: TDateTimeField;
    qryOrderradFakturaNummer: TStringField;
    qryOrderradFakturadatum: TDateTimeField;
    qryOrderradFritext: TStringField;
    qryOrderradID_3: TAutoIncField;
    qryOrderradKundnamn: TStringField;
    qryOrderradId_4: TAutoIncField;
    qryOrderradYtbehandlingsID: TStringField;
    qryOrderradSortorder_1: TSmallintField;
    qryOrder: TADOQuery;
    qryOrderId: TAutoIncField;
    qryOrderKundID: TIntegerField;
    qryOrderOrderNummer: TStringField;
    qryOrderOrderdatum: TDateTimeField;
    qryOrderGodsmrke: TStringField;
    qryOrderReferens: TStringField;
    qryOrderReferensID: TIntegerField;
    qryOrderOrdertypId: TIntegerField;
    qryOrderOrdertyp: TStringField;
    qryOrderOrderstatus: TStringField;
    qryOrderOrderstatusId: TIntegerField;
    qryOrderLeveransdatum: TDateTimeField;
    qryOrderFakturaNummer: TStringField;
    qryOrderFakturadatum: TDateTimeField;
    qryOrderFritext: TStringField;
    qryOrderKundnamn: TStringField;
    qryOrderBorttagen: TDateTimeField;
    qryLU_Artikel: TADOQuery;
    qryLU_ArtikelArtikelId: TAutoIncField;
    qryLU_ArtikelId: TAutoIncField;
    qryLU_ArtikelArtikelnummer: TStringField;
    qryLU_ArtikelBeteckning: TStringField;
    qryLU_Artikel_YtbehandlingIDdefault: TStringField;
    qryLU_ArtikelYtbehandlingIdDefault: TIntegerField;
    qryLU_ArtikelKundID: TIntegerField;
    qryLU_ArtikelPDFFinns: TIntegerField;
    qryLU_ArtikelPDFFilnamn: TStringField;
    qryLU_ArtikelLagersaldo: TBCDField;
    qryLU_ArtikelLagerplats: TStringField;
    qryLU_Artikelcnt: TIntegerField;
    qryOrderHistory: TADOQuery;
    qryOrderHistoryartikelnummer: TStringField;
    qryOrderHistoryBeteckning: TStringField;
    qryOrderHistoryId: TAutoIncField;
    qryOrderHistoryOrderID: TIntegerField;
    qryOrderHistoryArtikelID: TIntegerField;
    qryOrderHistoryRadNr: TIntegerField;
    qryOrderHistoryPositionnummer: TIntegerField;
    qryOrderHistoryAntal: TBCDField;
    qryOrderHistoryPrisPerEnhet: TBCDField;
    qryOrderHistoryPrisPerEnhetAuto: TBCDField;
    qryOrderHistoryDatum: TDateTimeField;
    qryOrderHistoryYtbehandlingId: TIntegerField;
    qryOrderHistory_YtbehandlingID: TStringField;
    qryOrderHistoryOrderInfo: TStringField;
    qryOrderHistoryAvrapporteradDatum: TDateTimeField;
    qryOrderHistoryAvrapporterad: TBooleanField;
    qryOrderHistoryTotaltid: TIntegerField;
    qryOrderHistoryVikt: TFloatField;
    qryOrderHistoryAvrapporteradPersonID: TIntegerField;
    qryOrderHistorySortorder: TIntegerField;
    qryOrderHistoryAvrapporteradPlasmatid: TIntegerField;
    qryOrderHistoryAvrapporteradAntalStarter: TIntegerField;
    qryOrderHistoryAvrapporteradAntalRitningar: TIntegerField;
    qryOrderHistoryFrnLager: TBCDField;
    qryOrderHistoryAttProducera: TBCDField;
    qryOrderHistoryTillLager: TBCDField;
    qryOrderHistorySkrotandelProcent: TBCDField;
    qryOrderHistoryLagerplats: TStringField;
    qryOrderHistoryRitning1: TBlobField;
    qryOrderHistoryFljesedelId: TIntegerField;
    qryOrderHistoryId_1: TAutoIncField;
    qryOrderHistoryKundID: TIntegerField;
    qryOrderHistoryOrderNummer: TStringField;
    qryOrderHistoryOrderdatum: TDateTimeField;
    qryOrderHistoryGodsmrke: TStringField;
    qryOrderHistoryReferens: TStringField;
    qryOrderHistoryReferensID: TIntegerField;
    qryOrderHistoryOrdertypId: TIntegerField;
    qryOrderHistoryOrdertyp: TStringField;
    qryOrderHistoryOrderstatus: TStringField;
    qryOrderHistoryOrderstatusId: TIntegerField;
    qryOrderHistoryLeveransdatum: TDateTimeField;
    qryOrderHistoryFakturaNummer: TStringField;
    qryOrderHistoryFakturadatum: TDateTimeField;
    qryOrderHistoryFritext: TStringField;
    qryOrderHistoryKortdatum: TStringField;
    qryOrderHistoryYtbehandlingIDDefault: TIntegerField;
    qryLU_Ytbehandling: TADOQuery;
    qryLU_YtbehandlingId: TAutoIncField;
    qryLU_YtbehandlingYtbehandlingsID: TStringField;
    qryLU_YtbehandlingBeteckning: TStringField;
    qryLU_YtbehandlingSortorder: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
