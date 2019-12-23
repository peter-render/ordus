{ Standarddialog registervård }
{ PHR 1997-02-19 11:30 }

unit fStdRV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Grids, Wwdbgrid, StdCtrls, ExtCtrls, Wwdbigrd, Mask,
  Wwdbedit, wwdblook, Wwdbspin,
  Menus, QrExtra, DB, wwdbdatetimepicker, shellapi,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.UITypes;

type

  ENoDatasource = class(Exception);

  TfrmStdRV = class(TForm) // Standarddialog registervård
    Panel1: TPanel;
    Panel2: TPanel;
    btnNy: TButton;
    btnAndra: TButton;
    btnAngra: TButton;
    btnSpara: TButton;
    btnBort: TButton;
    btnStang: TButton;
    dbGrid: TwwDBGrid;
    DBNav: TDBNavigator;
    Bevel1: TBevel;
    Bevel2: TBevel;
    PopupMenu1: TPopupMenu;
    Skrivuttabell1: TMenuItem;
    lblTTT: TLabel;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    procedure btnNyClick(Sender: TObject);
    procedure btnAndraClick(Sender: TObject);
    procedure btnAngraClick(Sender: TObject);
    procedure btnSparaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBNavClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnStangClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure KeyState(Sender: TObject);
    procedure btnBortClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure ExporttillExcel1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExporttoHTML1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    htMin, htMax: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var

  frmStdRV: TfrmStdRV;
  strRattigheter: string;
  blnSelfOpen: Boolean;
  TimeIdle: double;
  TimeLastEvent: Tdatetime;

implementation

uses Funclib, fMain, Datamodule, fPersonal;
{$R *.DFM}
// const
// {$I msgconst}

procedure TfrmStdRV.btnNyClick(Sender: TObject);
begin

  Height := htMax; { maximera fönstret }
  DataSource1.DataSet.Append;
  KeyState(self);
  // dbnav.btnClick(nbInsert);
end;

procedure TfrmStdRV.btnAndraClick(Sender: TObject);
begin
  Height := htMax; { maximera fönstret }
  DataSource1.DataSet.Edit;
  KeyState(self);
end;

procedure TfrmStdRV.btnAngraClick(Sender: TObject);
begin
  // dbnav.btnClick(nbCancel);
  DataSource1.DataSet.Cancel;
  KeyState(self);
end;

procedure TfrmStdRV.btnSparaClick(Sender: TObject);
begin
  // dbnav.btnClick(nbPost);

  with DataSource1.DataSet do
  begin
    try
      Post;
      // applyupdates(0);

      (*
        if (dbGrid.Datasource.DataSet is TADOQuery) then
        begin
        if blnEdit then
        book := (dbgrid.datasource.DataSet as TADOquery).bookmark;
        close;
        open;
        if blnEdit then
        (dbgrid.datasource.DataSet as TADOquery).Bookmark := book;
        end
        else
      *)
      // refresh;
    except
      on E: Exception do
      begin
        raise Exception.create(E.message);
        Cancel;
      end;
    end;
  end;
  KeyState(self);
end;

procedure TfrmStdRV.FormCreate(Sender: TObject);

begin
  htMin := Bevel1.Top + 25;
  htMax := Bevel2.Top + 25;
  // height   := htMin;
  Height := htMax;

  // top := frmMain.top + 20;
  // left := frmMain.left + (frmmain.width div 2) - (self.width div 2);

  with DataSource1.DataSet do
  begin
    if not active then
    begin
      open;
      blnSelfOpen := True;
    end
    else
      blnSelfOpen := false;
  end;
end;

procedure TfrmStdRV.DBNavClick(Sender: TObject; Button: TNavigateBtn);
begin
  KeyState(self);
end;

procedure TfrmStdRV.btnStangClick(Sender: TObject);
begin
  self.close;
end;

procedure TfrmStdRV.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if DataSource1.DataSet.state in [dsInsert, dsEdit] then
    DataSource1.DataSet.Cancel;

  if blnSelfOpen then
    dbGrid.datasource.DataSet.close;
  release;

end;

procedure TfrmStdRV.KeyState(Sender: TObject);
var
  colEdits: Tcolor;
  i: Integer;
begin


  // with dbnav.datasource.dataset do

  with DataSource1.DataSet do
  begin

    self.KeyPreview := state in [dsBrowse];
    DBNav.enabled := state in [dsBrowse];
    btnNy.Default := state in [dsBrowse];
    btnSpara.Default := state in [dsEdit, dsInsert];
    dbGrid.enabled := state in [dsBrowse];

    dbGrid.color := iif(state in [dsBrowse], clWindow, clBtnFace);

    btnSpara.enabled := state in [dsEdit, dsInsert];
    btnAngra.enabled := state in [dsEdit, dsInsert];

    btnStang.enabled := not(state in [dsEdit, dsInsert]);

    btnNy.enabled := not(state in [dsInsert, dsEdit]);
    btnAndra.enabled := (not(state in [dsInsert, dsEdit]));
    btnBort.enabled := (not(state in [dsInsert, dsEdit]));
    // editKey.readonly:= not (state in [dsInsert]);

    if state in [dsEdit, dsInsert] then
      colEdits := clBlue
    else
      colEdits := clBlack;

    // showmessage(inttostr(self.ComponentCount));

    for i := 0 to pred(self.ComponentCount) do
    begin

      if (self.Components[i] is TDBEdit) then
        TDBEdit(self.Components[i]).Font.color := colEdits
      else if (self.Components[i] is TwwDBEdit) then
        TwwDBEdit(self.Components[i]).Font.color := colEdits
        // else if
        // (self.Components[I] is TDBDateEdit) then
        // TDBDateEdit(self.Components[I]).Font.Color := colEdits
      else if (self.Components[i] is TwwDBSpinEdit) then
        TwwDBSpinEdit(self.Components[i]).Font.color := colEdits
      else if (self.Components[i] is TDBMemo) then
        TDBMemo(self.Components[i]).Font.color := colEdits
      else if (self.Components[i] is TwwDBLookupCombo) then
        TwwDBLookupCombo(self.Components[i]).Font.color := colEdits
      else if (self.Components[i] is TDBLookupComboBox) then
        TDBLookupComboBox(self.Components[i]).Font.color := colEdits
      else if (self.Components[i] is TDBComboBox) then
        TDBComboBox(self.Components[i]).Font.color := colEdits

      else if (self.Components[i] is TDBCheckbox) then
        TDBcheckbox(self.Components[i]).Font.color := colEdits

      else if (self.Components[i] is TwwDBDateTimePicker) then
        TwwDBDateTimePicker(self.Components[i]).Font.color := colEdits;

    end;
  end;
end;

procedure TfrmStdRV.btnBortClick(Sender: TObject);
begin

  if MessageDlg('Vill du ta bort posten?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      DataSource1.DataSet.Delete;
    except
      on E: Exception do
        raise Exception.create('Fel vid borttaging av posten!' + #13 + E.message);
    end;
  end;

end;

procedure TfrmStdRV.dbGridDblClick(Sender: TObject);
begin
  DBNav.btnClick(nbEdit);
end;

procedure TfrmStdRV.ExporttillExcel1Click(Sender: TObject);
begin
  // SkrivExcel(dbgrid, self.caption);
end;

procedure TfrmStdRV.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if Key = VK_ESCAPE then
    self.close;

end;

procedure TfrmStdRV.ExporttoHTML1Click(Sender: TObject);
begin
  // ShellExecute(Handle, 'OPEN', PChar(DBGrid.ExportOptions.Filename), nil, nil, sw_shownormal);
end;

procedure TfrmStdRV.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // Ist die gedrückte Taste ASCII-Return?
  begin
    Perform(WM_NEXTDLGCTL, 0, 0); // Zum nächsten Element wechseln
    Key := #0; // Gedrückte Taste unwirksam machen
  end;

end;

procedure TfrmStdRV.FormShow(Sender: TObject);
begin
  Bevel1.Left := dbGrid.Left;
  Bevel1.width := dbGrid.width;
  KeyState(self);

end;

end.
