unit fOrderPlanering;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, ExtCtrls, wwdbdatetimepicker, Db, ComCtrls,
  Mask, DBCtrls, Vcl.Grids, Vcl.wwdbigrd, Vcl.wwdbgrid, EditNew,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  system.UITypes,system.dateutils, Data.Win.ADODB, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmOrderPlanering = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    btnSparaPlanera: TButton;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtLevdatum: TwwDBDateTimePicker;
    LU_Kundperson: TwwDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    edtDatumYtbehandling: TwwDBDateTimePicker;
    LUYtbehandling: TwwDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    spPlaneringPerResursDagGetlist: TFDStoredProc;
    spPlaneringPerResursDagGetlistStarttid: TStringField;
    spPlaneringPerResursDagGetlistSluttid: TStringField;
    qryDagar: TFDQuery;
    DataSource1: TDataSource;
    spSkapaPlanering: TFDStoredProc;
    qryDay: TFDQuery;
    FDMemTable1: TFDMemTable;
    Label11: TLabel;
    spIsArbetsdag: TFDStoredProc;
    qryOrderEdit: TFDQuery;
    qryOrderEditId: TFDAutoIncField;
    qryOrderEditKundId: TIntegerField;
    qryOrderEditOrdernummer: TStringField;
    qryOrderEditOrderdatum: TSQLTimeStampField;
    qryOrderEditGodsm�rke: TStringField;
    qryOrderEditReferensId: TIntegerField;
    qryOrderEditOrdertypId: TIntegerField;
    qryOrderEditOrderStatusId: TIntegerField;
    qryOrderEditLeveransdatum: TSQLTimeStampField;
    qryOrderEditFakturanummer: TStringField;
    qryOrderEditFritext: TStringField;
    qryOrderEditYtbehandlingDatum: TSQLTimeStampField;
    qryOrderEditYtbehandlingId: TIntegerField;
    dsoOrderedit: TDataSource;
    qryOrderEditKundnamn: TStringField;
    qryDayId: TIntegerField;
    qryDayArbetsstart: TStringField;
    qryDayArbetsslut: TStringField;
    wwDBGrid1: TwwDBGrid;
    fdcTrans: TFDQuery;
    fdcTransTransaktionsId: TIntegerField;
    edtTotaltidPlanerad: TDBEditN;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    edtAutotid: TDBEditN;
    Label12: TLabel;
    Label13: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    spNextWorkdayGet: TFDStoredProc;
    spPreviousWorkdayGet: TFDStoredProc;
    spPreviousWorkdayGetDatum: TDateField;
    spNextWorkdayGetDatum: TDateField;
    qryDagarDatum: TDateField;
    qryDagarVecka: TByteField;
    qryDagarArbetsdag: TBooleanField;
    qryDagarVeckodag: TByteField;
    qryDagarAntalResurser: TByteField;
    Label14: TLabel;
    Label15: TLabel;
    edtTotalTid: TEditN;
    qryOrderEditFakturadatum: TDateField;
    luKund: TwwDBLookupCombo;
    CheckBox1: TCheckBox;
    btnSpara: TButton;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    qryOrderEditEgenM�rkning: TStringField;
    Label16: TLabel;
    edtVarReferens: TwwDBLookupCombo;
    qryLU_personal: TFDQuery;
    qryLU_personalNamn: TStringField;
    qryLU_personalId: TFDAutoIncField;
    qryOrderEditV�rReferensPersonId: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure luKundCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet;
      modified: Boolean);
    procedure btnSparaClick(Sender: TObject);
    procedure btnSparaPlaneraClick(Sender: TObject);
    procedure edtTotaltidPlaneradChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtTotalTidChange(Sender: TObject);
    procedure edtAutotidChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edtTotalTidExit(Sender: TObject);
  private
    function PreviousWorkdayGet(datum: Tdatetime): Tdatetime;
    function NextWorkdayGet(datum: Tdatetime): Tdatetime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderPlanering: TfrmOrderPlanering;

implementation

uses fMain, fOrderLista, Datamodule, funclib;

{$R *.DFM}

procedure TfrmOrderPlanering.BitBtn1Click(Sender: TObject);
begin

  if BitBtn1.caption = '>' then
  begin
    self.Width := 960;
    BitBtn1.caption := '<'
  end
  else
  begin
    self.Width := 540;
    BitBtn1.caption := '>'
  end;
end;

procedure TfrmOrderPlanering.Button2Click(Sender: TObject);
begin
  try

    qryOrderEdit.cancel;

  finally
    self.close;
  end;
end;

procedure TfrmOrderPlanering.CheckBox1Click(Sender: TObject);
begin
luKund.Enabled:= true;
end;

procedure TfrmOrderPlanering.btnSparaClick(Sender: TObject);
var

  calcFdatum, fdatum, tdatum, Investdatum, FomDatum, TomDatum: Tdatetime;

  UppdragstidMinuter, TidAttF�rdela: integer;
  ledigaMinuter: integer;
  TransId: integer;
AntalResurserTom,  AntalResurser: integer;
  IsArbetsdag: Boolean;

begin


  try

    qryOrderEdit.post;

  finally
    self.close;
  end;

end;

procedure TfrmOrderPlanering.btnSparaPlaneraClick(Sender: TObject);
var

  calcFdatum, fdatum, tdatum, Investdatum, FomDatum, TomDatum, LVDatum,
    YBDatum: Tdatetime;
  resursId, intWeekday: integer;
  tStarttid, tSluttid, dayStart, DayEnd: Tdatetime;
  UppdragstidMinuter, TidAttF�rdela: integer;
  ledigaMinuter: integer;
  TransId: integer;
AntalResurserTom,  AntalResurser: integer;
  IsArbetsdag: Boolean;

begin


  try

    qryOrderEdit.post;

     TidAttF�rdela:= edtTotalTid.valueinteger;

    with fdcTrans do
    begin
      Open;
      TransId := fieldbyname('TransaktionsId').asInteger + 1;
    end;


    with FDMemTable1.FieldDefs do
    begin
      with AddFieldDef do
      begin
        Name := 'Fom';
        DataType := ftDateTime;
      end;
      with AddFieldDef do
      begin
        Name := 'Tom';
        DataType := ftDateTime;
      end;
      with AddFieldDef do
      begin
        Name := 'Upptagen';
        DataType := ftBoolean;
      end;
    end;

    FDMemTable1.Open;
    YBDatum := edtDatumYtbehandling.DateTime;
    LVDatum := edtLevdatum.DateTime;

    if dateisempty(YBDatum) then
      TomDatum := LVDatum
    else
      TomDatum := YBDatum; // Vanligtvis ytbehandlingsdatum

    if TomDatum < addday(now, 1) then
    begin
      MessageDlg
        ('Ytbehandlings- alt leveransdatum m�ste vara i framtiden - planering kan ej genomf�ras',
        mtError, [mbOK], 0);
    end else
    begin

    TomDatum := PreviousWorkdayGet(TomDatum);
    FomDatum := NextWorkdayGet(now);

    Investdatum := TomDatum;

    resursId:= 0;

    while true do
    begin

       if investdatum < fomdatum  then
       begin
          Investdatum := TomDatum;
          if (ResursId < AntalResurserTom) then
            ResursId := ResursId +1
          else
            break;
       end;

      with qryDagar do
      begin
        close;
        parambyname('Datum').Value := Investdatum;
        Open;
        if qryDagar.RecordCount = 1 then
        begin
          AntalResurser := fieldbyname('AntalResurser').asInteger;
          IsArbetsdag := fieldbyname('Arbetsdag').asBoolean;
          intWeekday  := fieldbyname('Veckodag').asInteger;
          if (investdatum = tomdatum)
             then AntalResurserTom :=  AntalResurser;
        end
        else
        begin
          showmessage('Tabellen Dagar inneh�ller inga poster f�r datum ' +
            datetostr(Investdatum) + '!' + chr(10) +
            'Planeringen kan ej genomf�ras');
          exit;
        end;
      end;


      with qryDay do
      begin
        Open;
        if RecordCount = 0 then
        begin
          MessageDlg
            ('Inga veckotider uppsatta - planeringen kan inte genomf�ras!',
            mtError, [mbOK], 0);
          exit;
        end;

        close;
        qryDay.Params[0].Value := intWeekday;

        Open;
        dayStart := strtodatetime(datetostr(Investdatum) + ' ' +
          fieldbyname('Arbetsstart').Asstring);
        DayEnd := strtodatetime(datetostr(Investdatum) + ' ' +
          fieldbyname('Arbetsslut').Asstring);
      end;

      // S�tta dagens startdatum
      with FDMemTable1 do
      begin
        Open;
        Append;
        Fields[0].AsDateTime := dayStart;
        post;
      end;

      with spPlaneringPerResursDagGetlist do
      begin
        close;
        parambyname('@ResursId').Value := resursId;
        parambyname('@Datum').Value := Investdatum;

        Open;

        if RecordCount > 0 then
        begin

          tStarttid := fieldbyname('Starttid').AsDateTime;
          tSluttid := fieldbyname('Sluttid').AsDateTime;

          with FDMemTable1 do
          begin
            Edit;
            Fields[1].AsDateTime := tStarttid;
            Fields[2].asBoolean := false; // Upptagen;
            post;
            if Fields[0].AsDateTime = Fields[1].AsDateTime then
              delete;
          end;

          while not spPlaneringPerResursDagGetlist.eof do
          begin

            tStarttid := fieldbyname('Starttid').AsDateTime;
            tSluttid := fieldbyname('Sluttid').AsDateTime;

            with FDMemTable1 do
            begin
              Append;
              Fields[0].Value := tStarttid;
              Fields[1].Value := tSluttid;
              Fields[2].Value := true; // -- upptagen
              post;
            end;
            spPlaneringPerResursDagGetlist.next;
          end;

          if tSluttid < DayEnd then
          begin
            with FDMemTable1 do
            begin
              Append;
              Fields[0].AsDateTime := tSluttid;
              Fields[1].AsDateTime := DayEnd;
              Fields[2].asBoolean := false;
              post;
            end;
          end;
        end // poster finns
        else
        begin
          // -- det fins inga poster f�r resurs och dag...

          with FDMemTable1 do
          begin
            Edit;
            Fields[0].AsDateTime := dayStart;
            Fields[1].AsDateTime := DayEnd;
            Fields[2].asBoolean := false;
            post;
          end;
        end;
      end;

      // -- L�gga in planering

      with FDMemTable1 do
      begin
        last;
        if eof then
          previous;
        while not FDMemTable1.bof do
        begin
          // - om det finns ledig slot
          if Fields[2].asBoolean = false then
          begin
            fdatum := Fields[0].AsDateTime;
            tdatum := Fields[1].AsDateTime;
            calcFdatum := incminute(tdatum, TidAttF�rdela * -1);

            if calcFdatum > fdatum then
              fdatum := calcFdatum;

            ledigaMinuter := minutesbetween(fdatum, tdatum);

            // Skriva post i Planering
            with spSkapaPlanering do
            begin

              Memo1.Lines.Add(qryOrderEdit.fieldbyname('Id').Asstring + char(9)
                + ResursId.ToString + char(9) +
                datetimetostr(fdatum) + char(9) + datetimetostr(tdatum));

              parambyname('@Orderid').Value := qryOrderEdit.fieldbyname('Id')
                .asInteger;
              parambyname('@ResursId').Value := ResursId;
              parambyname('@Fromdatum').Value := fdatum;
              parambyname('@Tomdatum').Value := tdatum;
              parambyname('@TransaktionsId').Value := TransId;

              execproc;

              TidAttF�rdela := TidAttF�rdela - ledigaMinuter;
              // showmessage(TidAttF�rdela.ToString);

              if TidAttF�rdela <= 0 then
                exit;
            end
          end;
          FDMemTable1.Prior;
        end;
      end;

      // Ta bort allt i den tempor�re tabellen

      with FDMemTable1 do
      begin
        while RecordCount > 0 do
          delete;
      end;
      // F�rra arbetsdag
      Investdatum := PreviousWorkdayGet(Investdatum)

    end;

    if (TidAttF�rdela > 0) then
      if MessageDlg('Uppdraget kunde inte planeras in p.g.a. resursbrist.' +
        chr(13) + chr(13) + 'Tid kvar att f�rdela: ' + TidAttF�rdela.ToString +
        ' minuter' + char(13) + chr(13) +
        'Vill du ta bort hela planeringen f�r uppdraget?', mtInformation,
        [mbYes, mbNo], 0) = mryes then
      begin
        dm.fdconnection1.ExecSQL('delete from planering where Transaktionsid ='
          + TransId.ToString);
      end;
    end;
  finally
    // fdmemtable1.open;
//    if fdmemtable1.FieldDefs.Count > 0 then
//      fdmemtable1.FieldDefs.Destroy;

    if self.Width < 1000 then

    self.close;


  end;

end;


procedure TfrmOrderPlanering.edtAutotidChange(Sender: TObject);
begin
 if edtAutotid.DataSource.DataSet.FieldByName( edtAutotid.DataField).AsInteger  <> 0 then
     Label13.caption := MinutesToHoursMinutes(edtAutotid.DataSource.DataSet.FieldByName( edtAutotid.DataField).AsInteger);
end;

procedure TfrmOrderPlanering.edtTotalTidChange(Sender: TObject);
begin
  if edtTotaltid.valueinteger <> 0 then
    Label15.caption := MinutesToHoursMinutes(strtoint(edtTotaltid.text))
  else
    Label15.caption := '';
end;

procedure TfrmOrderPlanering.edtTotalTidExit(Sender: TObject);
begin
btnSparaPlanera.SetFocus;
end;

procedure TfrmOrderPlanering.edtTotaltidPlaneradChange(Sender: TObject);
begin
  if edtTotaltidPlanerad.text <> '' then
    Label11.caption := MinutesToHoursMinutes(strtoint(edtTotaltidPlanerad.text))
  else
    Label11.caption := '';

end;

(*
function TfrmOrderPlanering.IsArbetsdag(datum: Tdatetime): Boolean;
begin
  with spIsArbetsdag do
  begin
    parambyname('@Datum').Value := datum;
    execproc;
    result := (Params[0].asInteger = 1);
  end;

end;
*)
procedure TfrmOrderPlanering.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmOrderPlanering.FormShow(Sender: TObject);
begin
  self.Width:= 540;

  qryLU_personal.open;

  with dm.sp_KundpersonlistforKund do
  begin
    close;
    parambyname('@Kundid').Value := qryOrderEditKundId.asInteger;
    Open;
  end;

  dm.qryLU_Kund.Open;

  with dm.qryLUYtbehandling do
  begin
    close;
    Open;
  end;

  // Display av tiderna

  edtTotaltidPlaneradChange(sender);
  edtTotaltidChange(sender);

end;

procedure TfrmOrderPlanering.luKundCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin

  with dm.sp_KundpersonlistforKund do
  begin
    close;
    parambyname('@Kundid').Value := qryOrderEditKundId.asInteger;
    Open;
  end;

end;

function TfrmOrderPlanering.PreviousWorkdayGet(datum: Tdatetime): Tdatetime;
begin

  with spPreviousWorkdayGet do
  begin
    close;
    parambyname('@datum').Value := datum;
    Open;
    result := fieldbyname('Datum').AsDateTime;
  end;

end;

function TfrmOrderPlanering.NextWorkdayGet(datum: Tdatetime): Tdatetime;
begin

  with spNextWorkdayGet do
  begin
    close;
    parambyname('@datum').Value := datum;
    Open;
    result := fieldbyname('datum').AsDateTime;
  end;
end;

end.
