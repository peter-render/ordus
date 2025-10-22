unit Datamodule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Login, FireDAC.Moni.Base,
  FireDAC.Moni.FlatFile, FireDAC.Phys.ODBC, FireDAC.Phys.MSSQLDef, DBPlanner;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryLUYtbehandling: TFDQuery;
    qryLUYtbehandlingid: TFDAutoIncField;
    qryLUYtbehandlingYtbehandlingId: TIntegerField;
    qryLUYtbehandlingBeteckning: TStringField;
    qryLUYtbehandlingantal: TIntegerField;
    qryLUYtbehandlingBGColor: TStringField;
    dsoArtikel: TDataSource;
    qryArtikel: TFDQuery;
    qryArtikelArtikelId: TFDAutoIncField;
    qryArtikelArtikelnummer: TStringField;
    qryArtikelArtikelbeteckning: TStringField;
    qryArtikelYtbehandlingIdDefault: TIntegerField;
    qryArtikelKundID: TIntegerField;
    qryArtikelPDFFilnamn: TStringField;
    qryArtikelLagersaldo: TBCDField;
    qryArtikelPDFFinns: TIntegerField;
    qryArtikelLagerplats: TStringField;
    qryArtikelKundnamn: TStringField;
    qryArtikelbeteckning: TStringField;
    qryLU_Kund: TFDQuery;
    qryLU_KundKundId: TFDAutoIncField;
    qryLU_KundID: TFDAutoIncField;
    qryLU_KundKundnamn: TStringField;
    qryLU_KundKortbeteckning: TStringField;
    sp_OrderRadImport: TFDStoredProc;
    sp_KundpersonlistforKund: TFDStoredProc;
    sp_KundpersonlistforKundKundpersonId: TFDAutoIncField;
    sp_KundpersonlistforKundNamn: TStringField;
    dsoKundPersonlistforKund: TDataSource;
    FDCommand1: TFDCommand;
    dsoPlanering: TDataSource;
    qryVecka: TFDQuery;
    qryVeckaID: TIntegerField;
    qryVeckaBeteckning: TStringField;
    qryVeckaKortbeteckning: TStringField;
    qryVeckaArbetsstart: TStringField;
    qryVeckaArbetsslut: TStringField;
    qryVeckaAntalArbetstimmar: TIntegerField;
    dsoVecka: TDataSource;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    spResourceDatasource: TFDStoredProc;
    dsoResourceDatasource: TDataSource;
    spResourceDatasourceId: TIntegerField;
    spResourceDatasourceNamn: TStringField;
    qryPlanering: TFDQuery;
    qryPlaneringStarttid: TStringField;
    qryPlaneringSluttid: TStringField;
    qryPlaneringBeteckning: TStringField;
    qryPlaneringColor: TStringField;
    qryPlaneringDestination: TIntegerField;
    qryPlaneringHint: TStringField;
    qryPlaneringAvrapporterad: TSQLTimeStampField;
    qryPlaneringId: TFDAutoIncField;
    qryPlaneringOrderhuvudId: TIntegerField;
    qryPlaneringResursId: TSmallintField;
    qryPlaneringOrderradAvrapporteradAntal: TIntegerField;
    qryPlaneringOrderradAntal: TIntegerField;
    qryLU_personal: TFDQuery;
    qryLU_personalId: TFDAutoIncField;
    qryLU_personalNamn: TStringField;
    sp_KundLookuplist: TFDStoredProc;
    sp_KundLookuplistKundnamn: TStringField;
    sp_KundLookuplistKundId: TIntegerField;
    qryGetStatusData: TFDQuery;
    qryGetStatusDataId: TFDAutoIncField;
    qryGetStatusDataOrderstatus: TStringField;
    qryGetStatusDataBeteckning: TStringField;
    qryGetStatusDataSortorder: TSmallintField;
    qryGetStatusDataBGColor: TStringField;
    qryGetStatusDataTabId: TSmallintField;
    qryGetStatusDataTabBeteckning: TStringField;
    qryGetStatusDataOmsättningsgrundande: TBooleanField;
    qryGetStatusDataÄrStatus: TBooleanField;
    qryGetStatusDataKräverAdmin: TBooleanField;
    sp: TFDStoredProc;
    qryGetKundnr: TFDQuery;
    qryGetKundnrId: TFDAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnection1Error(ASender: TObject;
      const AInitiator: IFDStanObject; var AException: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.DFM}

uses funclib, fConnectionEdit;

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  par, strDSN, strUsername, strPassword: string;
  integrated, blnLogin, NoMars, AMek, amek2, holzer: boolean;
  i: word;
  ISCon, mars: boolean;
  connectionfile, strServerName, strDatabaseName, metadefschema: string;

begin


  ISCon := false;
  FDConnection1.Connected := false;

  if ISCon then
    AllocConsole;

  // Om inga parametrar angiva..

  if paramcount = 0 then
  begin
   // cwriteln('Paramstr(0): ' + paramstr(0), ISCon);
    //cwriteln('Paramstr(1): ' + paramstr(1), ISCon);

    connectionfile := extractfilepath(paramstr(0)) + 'Ordus.con';

    if fileexists(connectionfile) then
    begin
      FDConnection1.Params.Clear;
      FDConnection1.Params.LoadFromFile(connectionfile);
    end
    else
    begin
      showmessage('Inga inoggningsparameter är angivna');
      Application.Terminate;
    end;
  end
  else
  begin
    // ------------------------------------------------------------------------
    // Endast en parameter angiven
    // ------------------------------------------------------------------------
    if paramcount = 1 then
    begin

      par := paramstr(1);
//      cwriteln(par, ISCon);

      if ansiuppercase(copy(par, 1, 2)) = '/C' then
      begin
        connectionfile := extractfilepath(paramstr(0)) + copy(par, 3, 100);
        FDConnection1.Params.clear;
        FDConnection1.Params.LoadFromFile(connectionfile);

      end

      else if ansiuppercase(copy(par, 1, 2)) = '/H' then
        with FDConnection1.Params do
        begin
          Add('Server=LENOPEHO');
          Add('Database=Ordus');
          Add('OSAuthent=Yes');
        end

      else if ansiuppercase(copy(par, 1, 2)) = '/A' then
      begin
        // amek
        with FDConnection1.Params do
        begin
          clear;

          Add('DriverID=MSSQL');
          Add('Server=AMEKSRV2012\SQLEXPRESS');
          Add('Database=Ordus');
          Add('OSAutent=No');
          Add('User_name=amekuser');
          Add('Password=amekuser');
          Add('Trusted_Connection=Yes');

//          Add('ODBCDRIVER=SQL Server');
//          Add('ODBCAdvanced=MARS_Connection=YES;');
        end
      end
    end
    else
    begin
      // Fler parametrar är angivna

      strServerName := '';
      strDatabaseName := '';
      integrated := true;
      blnLogin := false;
      strUsername := '';
      strPassword := '';
      strDSN := '';
      NoMars := false;
      metadefschema := '';
      AMek := false;
      holzer := false;

      for i := 1 to paramcount do
      begin

        par := paramstr(i);
//        cwriteln(par, ISCon);

        if ansiuppercase(copy(par, 1, 2)) = '/M' then
        begin
          if ansiuppercase(copy(par, 3, 2)) = 'NO' then
            mars := false
          else
            mars := true;

        end
        else if ansiuppercase(copy(par, 1, 2)) = '/O' then
          strDSN := copy(par, 3, 100)

        else if ansiuppercase(copy(par, 1, 2)) = '/L' then
          blnLogin := true

        else if ansiuppercase(copy(par, 1, 2)) = '/S' then
          strServerName := copy(par, 3, 100)

        else if ansiuppercase(copy(par, 1, 2)) = '/U' then
        begin
          strUsername := copy(par, 3, 100);
          integrated := false;
        end
        else if ansiuppercase(copy(par, 1, 2)) = '/P' then
          strPassword := copy(par, 3, 100)

        else if ansiuppercase(copy(par, 1, 2)) = '/D' then
          strDatabaseName := copy(par, 3, 100);

      end;

      with FDConnection1.Params do
      begin
        clear;
        if strDSN <> '' then
        begin
          Add('DriverID=ODBC');
          Add('Datasource=' + strDSN);
          Add('ODBCDriver=SQL Server');
//          Add('ODBCDriver=ODBC Driver 11 for SQL Server');
//          Add('ODBCDriver=SQL Server Native Client 11.0');
          Add('ODBCAdvanced=MARS_Connection=yes;Server=' + strServerName);
        end
        else
        begin
          Add('DriverID=MSSQL');
          Add('Server=' + strServerName);
        end;

        if strDatabaseName <> '' then
          Add('Database=' + strDatabaseName);

        if integrated and not blnLogin then
          Add('OSAuthent=Yes')
        else
        begin
          Add('OSAuthent=No');
          if strUsername <> '' then
            Add('User_Name=' + strUsername);
          if strPassword <> '' then
            Add('Password=' + strPassword)
        end;
       if (strDSN <> '') and (strUsername = '') then
        Add('Password=' + strPassword);

    end;
  end;
end;
try
//  cwriteln('----------------- Connection parameters ----------------------',
//    ISCon);
//  for i := 0 to FDConnection1.Params.Count - 1 do
//    cwriteln(FDConnection1.Params[i], ISCon);

 // cwriteln('------------------ Connection String -------------------------',
 //   ISCon);

  FDConnection1.Connected := false;
  FDConnection1.LoginPrompt := blnLogin;
//  cwriteln(FDConnection1.ConnectionString, ISCon);
//  cwriteln('--------------------------------------------------------------',
//    ISCon);

  FDConnection1.Connected := true;



finally
end;
end;

procedure Tdm.FDConnection1Error(ASender: TObject;
  const AInitiator: IFDStanObject; var AException: Exception);
begin
  showmessage('OrdusConnection-Exception:' + AException.message);

  Application.Terminate;

end;

end.
