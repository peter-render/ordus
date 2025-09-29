unit funclibProj;

interface

uses datamodule, messages, sysutils, forms, windows, typinfo,
  stdctrls, controls, graphics, wwdbgrid, comobj, dialogs, DB, printers,
  comctrls, classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, system.Variants,
  System.DateUtils;
procedure ReadOrderfileIntersystem(filename: string);
procedure ReadOrderfileIntersystemXML(xmlfilename: string);
function Orderstatusbeteckning(intStatusId: integer): string;
function AppendDuplicationNumber(const AStr: string): string;
Function GetRitningFilename(Artikelnummer: string; kundnamn: string;revision:string): string;
Function GetRitningFolder(kundnamn: string): string;

implementation

uses funclib, IntersystemOrder;

Function GetRitningFolder(kundnamn: string): string;
var
  filename, folder: string;
  c: Char;
  n: integer;
begin
  folder := FoldernameFix(ftgsystemvalue('pdf.folder.ritningar', '')) + kundnamn + '\';
  result := folder;
end;

Function GetRitningFilename(Artikelnummer: string; kundnamn: string;revision:string): string;
var
  filename, folder: string;
  c: Char;
  n: integer;
begin

  folder := FoldernameFix(ftgsystemvalue('pdf.folder.ritningar', '')) + kundnamn + '\';
  if revision <> '' then
    filename := folder + Artikelnummer + '_REV_'+ trim(revision) +  '.pdf'
  else
    filename := folder + Artikelnummer + '.pdf';

  if not fileexists(filename) then
    for n := 71 downto 65 do
    begin
      filename := folder + Artikelnummer + '_REV_' + Chr(n) + '.pdf';
      if fileexists(filename) then
        break;
    end;

  // if fileexists(filename) then
  // with qryOrderradUpdate do
  // begin
  // parambyname('Id').value := OrderradId;
  // parambyname('Ritning').value := filename;
  // ExecSQL;
  // end;
  result := filename;

end;

function AppendDuplicationNumber(const AStr: string): string;
// Used to make strings unique
// This examines the string AStr for trailing '(n)' where
// 'n' is an integer.
// If the (n) part is found, n is incremented, otherwise '(2)' is
// appended to the string.
var
  iLH, iRH, p1, p2, i: integer;
  s: string;
begin
  p1 := ansipos('(', AStr);
  if p1 > 0 then
  begin
    p2 := LastDelimiter(')', AStr);
    i := strtoint(copy(AStr, p1 + 1, p2 - p1 - 1));
    i := i + 1;
    result := copy(AStr, 1, p1) + inttostr(i) + copy(AStr, p2, 100);
  end
  else
    result := copy(AStr, 1, ansipos('.', AStr) - 1) + ' (2)' + extractfileext(AStr);
end;

function Orderstatusbeteckning(intStatusId: integer): string;
begin
  with dm.qryGetStatusData do
  begin
    close;
    parambyname('StatusId').value := intStatusId;
    open;
    if recordcount = 1 then

      result := fieldbyname('Beteckning').AsString
    else
      result := 'Error: ogiltig OrderstatusId';

  end;
end;

function VarTypeIsStr(const AVarType: TVarType): Boolean;
begin
  result := (AVarType = varOleStr) or (AVarType = varString) or (AVarType = varUString);
end;

function VarIsStr(const V: Variant): Boolean;
begin
  result := VarTypeIsStr(FindVarData(V)^.VType);
end;

function VarStrEmpty(V: Variant): Boolean;
var
  data: PVarData;
begin
  data := FindVarData(V);

  case data^.VType of
    varOleStr:
      result := (data^.VOleStr^ = #0);
    varString:
      result := (data^.VString = nil);
    varUString:
      result := (data^.VUString = nil);
  else
    result := false;
  end;
end;

procedure ReadOrderfileIntersystemXML(xmlfilename: string);

var
  Orders420: IXMLORDERS420Type;
  X: integer;
  i: integer;
  sv: string;
  strOrdernummer: string;

  strMärke, strMärke1, strMärke2: string;
  strBuyer:string;
  strVarRef: string;
  strOrderDate: string;
  strLevDatum: string;
  intOrderId: integer;
  deliveryDate: Tdatetime;
  IntRadnr: integer;
  strArtikelnr: string;
  StrBenamning: string;
  strAntal: string;
  n: integer;
  strOrderinfo: string;
  TOTALN, IntAntal: integer;
  dblAntal: double;
  strBuyerName:string;
  intKundnr: Integer;
  strRevision: string;
  deldate:Tdatetime;

begin

  Orders420 := LoadORDERS420(xmlfilename);

  strOrdernummer := Orders420.Order.OrderNumber;
  strOrderDate := Orders420.Order.Head.Terms.OrderDate;

  strBuyerName := Orders420.Order.Head.Buyer.Name;

  // if VarStrEmpty(Orders420.Order.Head.References.GoodsLabeling.Row1) then
  if NOT VarIsStr(Orders420.Order.Head.References.GoodsLabeling.Row1) then
    strMärke1 := ''
  else
    strMärke1 := Orders420.Order.Head.References.GoodsLabeling.Row1;

  if NOT VarIsStr(Orders420.Order.Head.References.GoodsLabeling.Row2) then
    strMärke2 := ''
  else
    strMärke2 := Orders420.Order.Head.References.GoodsLabeling.Row2;

  if (strMärke1 <> '') and (strMärke2 <> '') then
    strMärke := strMärke1 + ', ' + strMärke2
  else
    strMärke := strMärke1 + strMärke2;

  strVarRef := Orders420.Order.Head.References.BuyerReference;

  // Ta reda på tidigaste Leveransdatum

  deliveryDate := strtodate('9999-12-31');

  TOTALN := Orders420.Order.Rows.Count;

  for i := 0 to TOTALN - 1 do
  begin
    if ((Orders420.Order.Rows[i].RowType = 1) or  (Orders420.Order.Rows[i].RowType = 2)) then
    begin
      deldate := Orders420.Order.Rows[i].DeliveryPeriod;

      if deldate < deliveryDate then
        deliveryDate := Orders420.Order.Rows[i].DeliveryPeriod;
    end;
  end;

  if datetostr(deliveryDate) = '9999-12-31' then
    deliveryDate :=  today();

  // Skapa Ordderhuvud
  // Kolla upp leverantör?

  with dm.qryGetKundnr do
  begin
    intKundnr:= -1;
    close;
    parambyname('KUNDNAMN').Value:= strBuyerName;
    open;
    intKundnr := fieldbyname('Id').AsInteger;

    if intkundnr < 1 then
    begin
      Showmessage('Kundens namn kan inte hittas, importen avbryts!');
        exit;
    end

  end;


  with dm.sp do
  begin
    parambyname('@Kundid').value :=intKundnr;
    parambyname('@ordernummer').value := strOrdernummer;
    parambyname('@orderdatum').value := strtodate(strOrderDate);
    parambyname('@Godsmärke').value := strMärke;
    parambyname('@Referens').value := strVarRef;
    parambyname('@Leveransdatum').value := deliveryDate;
    execproc;
    intOrderId := parambyname('@OrderID').value;

  end;

  (*
    Memo1.Clear;
    memo1.Lines.Add(Orders420.Order.OrderNumber );
    memo1.Lines.Add(Orders420.Order.Head.References.BuyerReference);
    memo1.Lines.Add(Orders420.Order.Head.References.GoodsLabeling.Row1);
    memo1.Lines.Add(Orders420.Order.Head.DeliveryAddress.Name);
    memo1.Lines.Add(Orders420.Order.Head.DeliveryAddress.StreetBox1);
    memo1.Lines.Add(Orders420.Order.Head.DeliveryAddress.ZipCity1);
    memo1.Lines.Add(Orders420.Order.Head.Terms.OrderDate);
    memo1.Lines.Add('');
  *)

  i := 0;

  // while i < (TOTALN - 1) do

  while i < (TOTALN) do
  begin
    strOrderinfo := '';
    IntRadnr := Orders420.Order.Rows[i].RowNumber;

//    Prepac har RowType = 2 för nomala orderrader
    if (Orders420.Order.Rows[i].RowType = 2) and (intKundnr = 1) then
      strArtikelnr := '999999'
    else
      strArtikelnr := Orders420.Order.Rows[i].Part.PartNumber;

    StrBenamning := Orders420.Order.Rows[i].Text;
    strRevision := Orders420.Order.Rows[i].Part.Revision;


    IntAntal := Round(Orders420.Order.Rows[i].Quantity); // 30000
    strAntal := inttostr(IntAntal);
    strAntal := copy(strAntal, 1, length(strAntal) - 2);
    IntAntal := strtoint(strAntal);

    // Finns textrader?

    if n < TOTALN - 1 then
    BEGIN

      n := i + 1; // är nästa rad samm artikel/radnr

      if n < TOTALN then

        while (Orders420.Order.Rows[n].RowNumber = IntRadnr) do
        begin

          if (Orders420.Order.Rows[n].RowType = 4) and (Orders420.Order.Rows[n].Text <> '') THEN
            strOrderinfo := iif(strOrderinfo <> '', strOrderinfo + ' & ', '') + Orders420.Order.Rows[n].Text;

          (* strOrderinfo := strOrderinfo + iif(strOrderinfo <> '',
            char(13) + chr(10), '') + Orders420.Order.Rows[n].Text;
          *)

          inc(n);

          if n > TOTALN - 1 then
            break;

        end;

      // nästa i = n-1
      i := n - 1;

    END;

    // if n >= 67 THEN
    // SHOWMESSAGE('67');

    strOrderinfo := trim(strOrderinfo);

    with dm.sp_OrderRadImport do
    begin
      parambyname('@Positionnummer').value := IntRadnr;
      parambyname('@KundId').value := intkundnr;
      parambyname('@OrderId').value := intOrderId;
      parambyname('@Artikelnummer').value := strArtikelnr;
      parambyname('@Revision').value := strRevision;
      parambyname('@Artikelbeteckning').value := StrBenamning;
      if IntAntal > 0 then
        parambyname('@Antal').value := IntAntal;
      parambyname('@OrderradInfo').value := strOrderinfo;

      (*
        if cbImportPris.checked then
        parameters.ParamByName('@PrisperEnhet').value := strtofloat(li.subitems[2])
        else
        parameters.ParamByName('@PrisperEnhet').value := 0;
      *)
      execproc;
    end;
    inc(i);
  end;
end;

procedure ReadOrderfileIntersystem(filename: string);

var
  i: integer;
  intOrderId: integer;
  csv: TStringlist;

  recordcount: integer;
  separator: Char;
  result: integer;
  s: string;
  lastpos: integer;
  strOrdernummer, strLevDatum, strAntal, StrBenamning, strArtikelnr, strMärke, strLevSatt, strVarRef, strBeställare,
    strrubrik: string;

begin

  if lowercase(extractfileext(filename)) <> '.csv' then
    exit;

  strrubrik := '';
  strOrdernummer := Parse('.', extractfilename(filename), 1);

  if length(strOrdernummer) > 30 then
  begin
    messagedlg('Ordernummer är längre än 30 tecken - ordern kan inte importeras!', mtError, [mbOK], 0);
    exit;
  end;

  recordcount := 0;
  result := 0;
  separator := ';';

  csv := TStringlist.create;
  try
    // read file to csv
    try
      csv.loadfromfile(filename);
    except
      result := 1;
      exit;
    end;

    if Parse(';', trim(csv[0]), 1) <> 'LevBest' then
    begin
      showmessage('Dokument innhåller ingen giltig leverantörsbeställning');
    end;

    recordcount := csv.Count;
    i := 0;

    while i < recordcount do
    begin

      s := trim(csv[i]);

      if s <> '' then
        strrubrik := (Parse(';', s, 1))
      else
        strrubrik := '';

      if strrubrik = 'Beställare' then
        strBeställare := trim(Parse(';', s, 2));

      if strrubrik = 'LevDatum' then
        strLevDatum := trim(Parse(';', s, 2));

      if strrubrik = 'Vår ref' then
        strVarRef := trim(Parse(';', s, 2));

      if strrubrik = 'LevSätt' then
        strLevSatt := trim(Parse(';', s, 2));

      if strrubrik = 'Märke' then
        strMärke := trim(Parse(';', s, 2));

      if strrubrik = 'Artnr' then
      begin

        // Skapa Ordderhuvud
        with dm.sp do
        begin
          parambyname('@Kundid').value := 1;
          parambyname('@ordernummer').value := strOrdernummer;
          parambyname('@orderdatum').value := date;
          parambyname('@Godsmärke').value := strMärke;
          parambyname('@Referens').value := strVarRef;
          parambyname('@Leveransdatum').value := strtodate(strLevDatum);
          execproc;
          intOrderId := parambyname('@OrderID').value;
        end;

        i := i + 1;
        s := trim(csv[i]);

        while (Parse(';', s, 1) <> '') and (s <> '') do
        begin
          strArtikelnr := stringreplace(Parse(';', s, 1), ' ', '', []);
          StrBenamning := Parse(';', s, 2);
          // LevArtnr läses inte in för tillfälle
          strAntal := Parse(';', s, 4);
          strLevDatum := Parse(';', s, 5);

          // Importera raderna

          if strArtikelnr <> 'T' then

            with dm.sp_OrderRadImport do
            begin
              parambyname('@KundId').value := 1;
              parambyname('@OrderId').value := intOrderId;
              parambyname('@Artikelnummer').value := strArtikelnr;
              parambyname('@Artikelbeteckning').value := StrBenamning;
              parambyname('@Antal').value := strtofloat(strAntal);

              (*
                if cbImportPris.checked then
                parameters.ParamByName('@PrisperEnhet').value := strtofloat(li.subitems[2])
                else
                parameters.ParamByName('@PrisperEnhet').value := 0;
              *)

              parambyname('@Positionnummer').value := i + 1;
              execproc;

            end;
          i := i + 1;
          if (i >= recordcount) then
            break;
          s := trim(csv[i])

        end;

      end;
      i := i + 1;
    end;
  finally
    csv.free;
  end;
end;

end.

