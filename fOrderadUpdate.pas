unit fOrderadUpdate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  DBCtrls, Menus, ComCtrls, ToolWin, wwclearbuttongroup, wwradiogroup,
  wwDataInspector, wwDialog, wwrcdvw, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.VCLUI.Async, FireDAC.Comp.UI;

type
  THackdbgrid = class(Twwdbgrid);

  TfrmOrderradUpdate = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsoOrderrad: TDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    wwDBGrid1: Twwdbgrid;
    PopupMenu1: TPopupMenu;
    Tabort1: TMenuItem;
    Label5: TLabel;
    DBText1: TDBText;
    LU_senastePriser: TwwDBLookupCombo;
    LU_Prisinfo: TwwDBLookupCombo;
    sp_OrderradDelete: TFDStoredProc;
    qryOrderhistory: TFDQuery;
    qryPrisinfo: TFDQuery;
    qryPrisinfoorderradID: TIntegerField;
    qryPrisinfoBeteckning: TStringField;
    qryPrisinfoBelopp: TCurrencyField;
    qryOrderrad: TFDQuery;
    qryOrderhistoryartikelnummer: TStringField;
    qryOrderhistoryYtbehandling: TStringField;
    qryOrderhistoryPrisPerEnhet: TCurrencyField;
    qryOrderhistoryOrderdatum: TSQLTimeStampField;
    qryOrderhistoryantal: TFMTBCDField;
    qryOrderhistoryId: TFDAutoIncField;
    qryOrderradId: TFDAutoIncField;
    qryOrderradOrderId: TIntegerField;
    qryOrderradPositionnummer: TIntegerField;
    qryOrderradArtikelId: TIntegerField;
    qryOrderradYtbehandlingId: TIntegerField;
    qryOrderradAntal: TFMTBCDField;
    qryOrderradPrisperEnhet: TCurrencyField;
    qryOrderradPrisperEnhetAuto: TCurrencyField;
    qryOrderradAvrapporterad: TBooleanField;
    qryOrderradAvrapporteradDatum: TSQLTimeStampField;
    qryOrderradAvrapporteradAv: TStringField;
    qryOrderradArtikelnummer: TStringField;
    qryOrderradArtikelBeteckning: TStringField;
    qryOrderradYtbehandlingBeteckning: TStringField;
    qryOrderradSenastePrisPerEnhet: TCurrencyField;
    qryOrderradSenasteOrdertypId: TIntegerField;
    qryOrderradSenasteOrderdatum: TSQLTimeStampField;
    qryOrderhistoryOrdertypString: TStringField;
    qryOrderradOffertPrisPerEnhet: TCurrencyField;
    qryOrderradOffertdatum: TSQLTimeStampField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tabort1Click(Sender: TObject);
    procedure wwDBGrid1CellChanged(Sender: TObject);
    procedure qryOrderradAvrapporteradChange(Sender: TField);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderradUpdate: TfrmOrderradUpdate;

implementation

uses fMain, rOrder, fArtikel, fOrderLista, Datamodule, funclib;

{$R *.DFM}

procedure TfrmOrderradUpdate.FormActivate(Sender: TObject);
begin
  with qryOrderrad do
  begin
    close;
    open;
  end;
end;

procedure TfrmOrderradUpdate.FormCreate(Sender: TObject);
begin
  qryOrderrad.open;
  qryOrderhistory.open;
  qryPrisinfo.open;
end;

procedure TfrmOrderradUpdate.FormShow(Sender: TObject);
begin

  with qryOrderrad do
  begin
    close;
    Parambyname('ORDERID').value := frmOrderLista.sp_Orderlist.FieldByName('Orderid').AsInteger;
    open;

  end;

  qryOrderhistory.open;
  qryPrisinfo.open;

  // frmmain.tbtnOrderlista.enabled := true;
  // frmmain.tbtnOrderlista.ImageIndex := 4;

end;

procedure TfrmOrderradUpdate.Tabort1Click(Sender: TObject);
begin
  if messagedlg('Vill du ta bort raden?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with sp_OrderradDelete do
    begin
      Parambyname('@OrderradID').value := qryOrderradId.AsInteger;
      execproc;
      if Parambyname('@RETURN_VALUE').value = 0 then
        requery(qryOrderrad);
    end;
  end;

end;

procedure TfrmOrderradUpdate.wwDBGrid1CellChanged(Sender: TObject);
begin
  wwDBGrid1.datasource.DataSet.Refresh;
end;

procedure TfrmOrderradUpdate.wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
  gc: TGridCoord;
  dbg: Twwdbgrid;
  OrigActiveRecord: Integer;
  row, col: Integer;

begin

  dbg := Twwdbgrid(Sender);
  gc := dbg.MouseCoord(X, Y);

  col := gc.X;
  row := gc.Y;

  if dgTitles in dbg.Options then
    Dec(row); // if the titles are shown then adjust Row index (-1);
  if dgIndicator in dbg.Options then
    Dec(col); // if the indicator is shown then adjust the Column index (-1);

  if THackdbgrid(dbg).DataLink.Active and (row >= 0) and (col >= 0) then
  begin
    // OrigActiveRecord:=THackdbGrid(DBG).DataLink.ActiveRecord; //save the original index
    try

      // THackdbGrid(DBG).DataLink.ActiveRecord:= Row;

      // THackdbGrid(DBG).SelectedIndex:= row;

      if dbg.Columns[col].fieldname = 'SenastPris' then
      begin
        dbg.SetActiveRow(row);
        LU_senastePriser.Visible := true;
        LU_senastePriser.DropDown;

      end
      else
      begin

        LU_senastePriser.Visible := false;
        LU_senastePriser.CloseUp(false);

      end;

    finally
      // THackdbGrid(DBG).DataLink.ActiveRecord:= OrigActiveRecord; //restore the index
    end;
  end;

end;

procedure TfrmOrderradUpdate.wwDBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  gc: TGridCoord;
  dbg: Twwdbgrid;
  OrigActiveRecord: Integer;
  row, col: Integer;
begin

  dbg := Twwdbgrid(Sender);
  gc := dbg.MouseCoord(X, Y);

  col := gc.X;
  row := gc.Y;

  if dgTitles in dbg.Options then
    Dec(row); // if the titles are shown then adjust Row index (-1);
  if dgIndicator in dbg.Options then
    Dec(col); // if the indicator is shown then adjust the Column index (-1);

  if THackdbgrid(dbg).DataLink.Active and (row >= 0) and (col >= 0) then
  begin
    // OrigActiveRecord:=THackdbGrid(DBG).DataLink.ActiveRecord; //save the original index
    try

      // THackdbGrid(DBG).DataLink.ActiveRecord:= Row;
      // THackdbGrid(DBG).SelectedIndex:= row;

      if dbg.Columns[col].fieldname = 'SenastPris' then
      begin
        dbg.SetActiveRow(row);
        LU_senastePriser.Visible := true;
        LU_senastePriser.DropDown;

      end
      else
      begin

        LU_senastePriser.Visible := false;
        LU_senastePriser.CloseUp(false);

      end;

    finally
      // THackdbGrid(DBG).DataLink.ActiveRecord:= OrigActiveRecord; //restore the index
    end;
  end;
end;

procedure TfrmOrderradUpdate.qryOrderradAvrapporteradChange(Sender: TField);
begin

  if qryOrderradAvrapporterad.AsBoolean = true then
    qryOrderradAvrapporteradDatum.AsDateTime := Date
  else
    qryOrderradAvrapporteradDatum.AsString := '';

end;

procedure TfrmOrderradUpdate.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  (*
    if (field.fieldname = 'SenastPris') then
    afont.Style:=   [fsUnderline];

  *)
  if (Field.fieldname = 'PrisperEnhet') or (Field.fieldname = 'Antal') then
  begin

    if not Highlight then
      AFont.color := clBlue;

  end;

  if ((Field.fieldname = 'SenastePrisPerEnhet') or (Field.fieldname = 'SenasteOrderdatum')) and
    (qryOrderrad.FieldByName('SenasteOrdertypId').AsInteger = 3) then
    AFont.color := clRed;

end;

end.
