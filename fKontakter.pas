unit fKontakter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Grids, Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.Wwkeycb,
  FireDAC.Comp.Client, Vcl.ExtCtrls, shellapi, Vcl.DBCtrls;

type
  TfrmKontakter = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    qryKontakter: TFDQuery;
    Label1: TLabel;
    dsoKontakter: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    qryKontakterF�rnamn: TStringField;
    qryKontakterefternamn: TStringField;
    qryKontakteremailadress: TStringField;
    qryKontakterTelefonnummer: TStringField;
    qryKontakterMobilnummer: TStringField;
    qryKontakterAkt�rnamn: TStringField;
    qryKontakterKundid: TIntegerField;
    qryKontakterKundnamn: TStringField;
    qryKontakterKortbeteckning: TStringField;
    qryKontaktersearchfield: TStringField;
    edtSok: TEdit;
    Button5: TButton;
    btnEpost: TButton;
    qryKontakterF�retag: TStringField;
    qryKontakterId: TFDAutoIncField;
    spKontaktpersonInsert: TFDStoredProc;
    spKontaktpersonUpdate: TFDStoredProc;
    spKontaktpersondelete: TFDStoredProc;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtSokChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnEpostClick(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
  private
    sortstring: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKontakter: TfrmKontakter;
  sqlstring: Tstringlist;

implementation

{$R *.dfm}

uses Datamodule, funclib, fKontaktEdit;

procedure TfrmKontakter.Button1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmKontakter.Button2Click(Sender: TObject);
var
  Akt�rId: integer;
begin
  with TfrmKontaktedit.create(Application) do
  begin
    caption := '�ndra kontaktinformation';
    qryKontakter.edit;
    showmodal;
    Akt�rId := qryKontakterId.asInteger;

    if ModalResult = mrOK then
    begin
      with spKontaktpersonUpdate do
      begin

        parambyname('@Akt�rId').Value := Akt�rId;
        parambyname('@F�rnamn').Value := dbedit6.Text;
        parambyname('@Efternamn').Value := dbedit7.Text;
        parambyname('@Emailadress').Value := dbedit2.Text;
        parambyname('@Telefonnummer').Value := dbedit3.Text;
        parambyname('@Mobilnummer').Value := dbedit4.Text;
        parambyname('@F�retag').Value := dbedit8.Text;
        if lcKund.LookupValue <> '' then
          parambyname('@Kundid').Value := strtoint(lcKund.LookupValue);
        execproc;
      end;
    end;
    qryKontakter.Cancel;
    qryKontakter.Close;
    qryKontakter.open;
    qryKontakter.Locate('Id', Akt�rId, []);
  end;

end;

procedure TfrmKontakter.Button3Click(Sender: TObject);
var
  Akt�rId: integer;
begin

  if MessageBox(0, 'Vill du ta bort kontaktpersonen?', 'Ordus kontaktperson',
    MB_ICONQUESTION or MB_YESNO) = mrYes then
  begin

    Akt�rId := qryKontakterId.asInteger;

    with spKontaktpersondelete do
    begin
      parambyname('@Akt�rId').Value := Akt�rId;
      execproc;
      qryKontakter.Close;
      qryKontakter.open;
      qryKontakter.Locate('Id', Akt�rId, []);
    end;

  end;
end;

procedure TfrmKontakter.Button4Click(Sender: TObject);
var
  Akt�rId: integer;
begin
  with TfrmKontaktedit.create(Application) do
  begin
    caption := 'Ny kontakt';
    qryKontakter.append;
    showmodal;
    if ModalResult = mrOK then
    begin
      with spKontaktpersonInsert do
      begin
        parambyname('@F�rnamn').Value := dbedit6.Text;
        parambyname('@Efternamn').Value := dbedit7.Text;
        parambyname('@Emailadress').Value := dbedit2.Text;
        parambyname('@Telefonnummer').Value := dbedit3.Text;
        parambyname('@Mobilnummer').Value := dbedit4.Text;
        parambyname('@F�retag').Value := dbedit8.Text;
        if lcKund.LookupValue <> '' then
          parambyname('@Kundid').Value := strtoint(lcKund.LookupValue);
        execproc;
        Akt�rId := parambyname('@RETURN_VALUE').asInteger;
      end;
    end;
    qryKontakter.Cancel;

    qryKontakter.Close;
    qryKontakter.open;
    qryKontakter.Locate('Id', Akt�rId, []);
  end;
end;

procedure TfrmKontakter.Button5Click(Sender: TObject);
begin
  edtSok.Text := '';
  edtSok.SetFocus;
end;

procedure TfrmKontakter.btnEpostClick(Sender: TObject);
var
  em_subject, em_body, em_mail, receiver: string;
  i: integer;
begin

  if wwDBGrid1.Selected.Count = 1 then
  begin
    receiver := trim(qryKontakteremailadress.AsString);
  end
  else
  begin

    begin
      with wwDBGrid1, wwDBGrid1.datasource.DataSet do
      begin
        receiver := '';
        DisableControls; { Disable controls to improve performance }
        for i := 0 to SelectedList.Count - 1 do
        begin
          GotoBookmark(SelectedList.items[i]);
          receiver := receiver + trim(qryKontakteremailadress.AsString);
          if i < SelectedList.Count then
            receiver := receiver + ';';
        end;
        EnableControls; { Re-enable controls }
      end;
    end;

    em_subject := '';
    em_body := '';
    em_mail := 'mailto:' + receiver;
    // ?subject=' + em_subject + '&body='
    // + em_body;
    ShellExecute(Handle, 'open', PChar(em_mail), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmKontakter.edtSokChange(Sender: TObject);
begin
  qryKontakter.IndexFieldNames := 'searchfield';
  qryKontakter.Close;
  qryKontakter.Filter := 'upper(searchfield) like ' +
    lsquote('%' + uppercase(edtSok.Text) + '%');
  qryKontakter.open;
  qryKontakter.Filtered := true;

end;

procedure TfrmKontakter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKontakter.FormShow(Sender: TObject);
begin
  sqlstring := Tstringlist.create;
  with qryKontakter do
  begin
    sqlstring.Addstrings(sql);
    Close;
    sortstring := ' order by k.Kundnamn,a.Namn';
    sql.Add(sortstring);
    open;
  end;
end;

procedure TfrmKontakter.wwDBGrid1RowChanged(Sender: TObject);
begin
  btnEpost.Enabled := (qryKontakteremailadress.AsString <> '') or
    (wwDBGrid1.Selected.Count > 1);

  if wwDBGrid1.Selected.Count > 1 then
    btnEpost.caption := 'Skicka epost till mark.'
  else
    btnEpost.caption := 'Skicka epost'

end;

procedure TfrmKontakter.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin

  if (AFieldName = 'Akt�rnamn') then

    if (sortstring = ' order by a.Namn') then
      sortstring := ' order by a.Namn desc'
    else
      sortstring := ' order by a.Namn'

  else if (AFieldName = 'Kundnamn') then
    if sortstring = ' order by k.Kundnamn,a.Namn' then
      sortstring := ' order by k.Kundnamn desc ,a.Namn'
    else
      sortstring := ' order by k.Kundnamn,a.Namn';

  with qryKontakter do
  begin
    Close;
    sql := sqlstring;
    sql.Add(sortstring);
    open;
  end;

  (*
    Select a.Id,a.F�rnamn,a.efternamn ,a.emailadress,a.Telefonnummer,a.Mobilnummer,a.namn Akt�rnamn,
    a.F�retag,
    a.namn + ' '+
    isnull(k.Kundnamn,'') + ' ' +
    isnull(a.emailadress,'') +' '+
    isnull(a.telefonnummer,'') +' '+
    isnull(a.mobilnummer,'') + ' '+
    isnull(a.F�retag,'') searchfield,
    kp.Kundid,
    k.Id Kundid,
    k.Kundnamn,
    k.Kortbeteckning
    from akt�r a
    left join kundperson kp on kp.id = a.Id
    left join kund k on k.id = kp.Kundid
  *)

end;

end.
