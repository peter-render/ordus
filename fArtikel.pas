unit fArtikel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fStdRV, Db, Menus, DBCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid,
  Shellapi, System.Win.ComObj, System.Types, Variants,
  ExtCtrls, wwdblook, Mask, Wwkeycb, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.wwdatsrc, System.UITypes, funclibProj;

type
  TfrmArtikel = class(TfrmStdRV)
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label6: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel6: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtYtbehandling: TwwDBLookupCombo;
    edtKund: TwwDBLookupCombo;
    DBEdit3: TDBEdit;
    Button1: TButton;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Custom_Artikel_Delete: TFDStoredProc;
    sp_Custom_ArtikelGrupp_add: TFDStoredProc;
    qryArtikelgrupp: TFDQuery;
    dsoArtikelgrupp: TDataSource;
    FDQuery1Id: TFDAutoIncField;
    FDQuery1Artikelnummer: TStringField;
    FDQuery1Beteckning: TStringField;
    FDQuery1YtbehandlingIdDefault: TIntegerField;
    FDQuery1KundID: TIntegerField;
    FDQuery1PDFFinns: TIntegerField;
    FDQuery1PDFFilnamn: TStringField;
    FDQuery1Lagersaldo: TBCDField;
    FDQuery1Lagerplats: TStringField;
    FDQuery1ArtikeltypId: TIntegerField;
    FDQuery1ArtikeltypBeteckning: TStringField;
    FDQuery1ArtikeltypSystemname: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label9: TLabel;
    qryLU_Artikeltyp: TFDQuery;
    qryLU_ArtikeltypId: TIntegerField;
    qryLU_ArtikeltypBeteckning: TStringField;
    qryLU_Kund: TFDQuery;
    qryLU_KundKundnamn: TStringField;
    qryLU_KundKundId: TFDAutoIncField;
    qryLU_KundID: TFDAutoIncField;
    qryLU_KundKortbeteckning: TStringField;
    FDQuery1BockritningFinns: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    FDQuery1FixaturFinns: TBooleanField;
    ImageList1: TImageList;
    FDQuery1_YtbehandlingIDdefault: TStringField;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    FDQuery1Fastpris: TCurrencyField;
    qryArtikelgruppId: TFDAutoIncField;
    qryArtikelgruppArtikelId: TIntegerField;
    qryArtikelgruppUnderartikelId: TIntegerField;
    qryArtikelgruppAntal: TBCDField;
    qryArtikelgruppLeverantör: TStringField;
    qryArtikelgruppArtikelnummer: TStringField;
    qryArtikelgruppUnderartikelNummer: TStringField;
    qryArtikelgruppUnderartikelBeteckning: TStringField;
    qryArtikelgruppFastpris: TCurrencyField;
    qryArtikelgruppBorttagen: TSQLTimeStampField;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    FDQuery1Notering: TMemoField;
    FDQuery1cRitningsNotereingFinns: TBooleanField;
    cbLagersaldo: TCheckBox;
    wwDataSource1: TwwDataSource;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    FDQuery1PrisPerEnhet: TCurrencyField;
    Button5: TButton;
    procedure btnNyClick(Sender: TObject);
    procedure btnAndraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBortClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FDQuery1CalcFields(DataSet: TDataSet);
    procedure dbGridCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure dbGridTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure dbGridCalcTitleAttributes(Sender: TObject; AFieldName: string; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure cbLagersaldoClick(Sender: TObject);
    procedure btnLagerlistaClick(Sender: TObject);
    procedure btnSparaClick(Sender: TObject);

  private
    procedure btnState;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArtikel: TfrmArtikel;
  ascArtikelnummer: Boolean;
  ascBeteckning: Boolean;
  ascPDFFinns: Boolean;
  ascLagerplats: Boolean;
  ascLagersaldo: Boolean;
  ascPDFFilnamn: Boolean;

implementation

uses fMain, fritning, Datamodule, fArtikelgrupp, funclib;

{$R *.DFM}

procedure TfrmArtikel.btnSparaClick(Sender: TObject);
var
  id: integer;
begin
  fdQuery1.FieldByName('Kundid').value := qryLU_Kund.FieldByName('KundID').asInteger;
  inherited;
  id := fdQuery1.FieldByName('Id').asInteger;
  dm.qryArtikel.close;
  dm.qryArtikel.open;
  dm.qryArtikel.Locate('ArtikelId', id, []);
  btnState;

end;

procedure TfrmArtikel.btnState;
begin
  Button2.Enabled := not(datasource1.DataSet.State in [dsedit, dsInsert]);
  Button3.Enabled := Button2.Enabled;
  Button4.Enabled := Button2.Enabled;
  wwDBGrid1.Enabled := Button2.Enabled;
end;

procedure TfrmArtikel.btnBortClick(Sender: TObject);
begin
  // inherited;

  if MessageDlg('Vill du ta bort artikeln?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    with Custom_Artikel_Delete do
    begin
      ParamByName('@ArtikelId').value := datasource1.DataSet.FieldByName('Id').asInteger;
      execproc;
      if ParamByName('@RETURN_VALUE').value = 0 then
      begin
        with datasource1.DataSet do
        begin
          close;
          open;
        end;
      end;
    end;
end;

procedure TfrmArtikel.btnLagerlistaClick(Sender: TObject);
var
  x, ci, row, i, W, NumberOfWorksheetsNeeded: integer;
  Param, orderstring, fstring, ExcelFileName: String;
  oRng, ExcelApplication, ExcelWorkbook, ExcelWorksheet: Variant;
  bm: Tbookmark;
  rTyp: integer;

  Outlook: OleVariant;
  Mail: Variant;
  rowsfound: Boolean;
  xfilename: String;


const
  olMailItem = $00000000;

begin
  // xfilename := FoldernameFix(ftgsystemvalue('pdf.folder.orderbekraftelse', '')) + 'Orderbekräftelse_' +
  // stringreplace(DateToStr(Date), '-', '', [rfReplaceAll, rfIgnoreCase]) + '.xlsx';
  //
  // while FileExists(xfilename) do
  // xfilename := AppendDuplicationNumber(xfilename);

  NumberOfWorksheetsNeeded := 1;
  xfilename := 'Lagerlista.xlsx';

  try
    // create Excel OLE
    ExcelApplication := CreateOleObject('Excel.Application');
  except
    ExcelApplication := Null;
    showmessage('Kan inte hitta Excel på denna datorn!');
    exit;
  end;

  If VarIsNull(ExcelApplication) = false then
  begin

    ExcelApplication.Visible := True;
    // set to False if you do not want to see the activity in the background
    ExcelApplication.DisplayAlerts := false;
    // ensures message dialogs do not interrupt the flow of your automation process. May be helpful to set to True during testing and debugging.

    // Open Excel Workbook
    try
      ExcelWorkbook := ExcelApplication.Workbooks.Add(-4167);
      // or
      // ExcelWorkbook := ExcelApplication.WorkBooks.Add;
      // reference
      // https://docs.microsoft.com/en-us/office/vba/api/excel.workbooks.add
    except
      ExcelWorkbook := Null;
      // add error/exception handling code as desired
    end;

    If VarIsNull(ExcelWorkbook) = false then
    begin
      try
        // create the desired number of worksheets in this workbook
        // if the default number of worksheets created is less than the desired number

        If NumberOfWorksheetsNeeded > ExcelWorkbook.WorkSheets.count then
        begin
          While ExcelWorkbook.WorkSheets.count < NumberOfWorksheetsNeeded do
            ExcelWorkbook.WorkSheets.Add(Null, ExcelWorkbook.WorkSheets[ExcelWorkbook.WorkSheets.count], 1, -4167);
          // or use the code below if you do not care about the order in which the sheets are named
          // ExcelWorkbook.WorkSheets.Add(Null,Null,(NumberOfWorksheets-ExcelWorkbook.Worksheets.Count),-4167);
        end;

        // if the default number of worksheets created is more than the desired number
        If NumberOfWorksheetsNeeded < ExcelWorkbook.WorkSheets.count then
        begin
          While ExcelWorkbook.WorkSheets.count > NumberOfWorksheetsNeeded do
            ExcelWorkbook.WorkSheets[ExcelWorkbook.WorkSheets.count].delete;

          For W := 1 to ExcelWorkbook.WorkSheets.count do
            ExcelWorkbook.WorkSheets[W].name := 'Blad' + inttostr(W);
          // renames the sheets
        end;

        // connect to Excel Worksheet using either the ExcelApplication or ExcelWorkbook handle
        ExcelWorksheet := ExcelWorkbook.WorkSheets[1]; // [1] specifies the first worksheet

      except
        ExcelWorksheet := Null;
        // add error/exception handling code as desired
      end;

      If VarIsNull(ExcelWorksheet) = false then
      begin

        ExcelWorksheet.Select;

        row := 1;
        ExcelWorksheet.cells[row, 1] := 'Artikelnummer';
        ExcelWorksheet.cells[row, 2] := 'Beteckning';
        ExcelWorksheet.cells[row, 3] := 'Lagerplats';
        ExcelWorksheet.cells[row, 4] := 'Antal';
        ExcelWorksheet.cells[row, 5] := 'Pris/Enhet';
        ExcelWorksheet.cells[row, 6] := 'Pris totalt';

        for x := 1 to 6 do
          ExcelWorksheet.cells[row, x].Interior.ColorIndex := 24;

        // ExcelWorksheet.Columns['A' + inttostr(row), 'G' + inttostr(row)].Interior.ColorIndex := 24;

        row := row + 1;

        with fdQuery1 do
        begin
          bm:= fdQuery1.Bookmark;
          DisableControls;
          first;
          while not eof do
          begin
            if FieldByName('Lagersaldo').AsFloat > 0 then
            begin
              ExcelWorksheet.cells[row, 1] := FieldByName('Artikelnummer').AsString;
              ExcelWorksheet.cells[row, 2] := FieldByName('Beteckning').AsString;

              if FieldByName('Lagerplats').AsString <> '' then
                ExcelWorksheet.cells[row, 3] := ' '+FieldByName('Lagerplats').AsString;

              ExcelWorksheet.cells[row, 4] := FieldByName('Lagersaldo').AsFloat;
              ExcelWorksheet.cells[row, 5] := FieldByName('PrisPerEnhet').AsFloat;
              ExcelWorksheet.cells[row, 6] := FieldByName('Lagersaldo').AsFloat * FieldByName('PrisPerEnhet').AsFloat;
              row := row + 1;
            end;
            next;
          end;
          gotobookmark(bm);

          ExcelWorksheet.cells[row, 6]:= '=+SUM(F2:F'+ inttostr(row-1)+')';

          ExcelWorksheet.Range['A1', 'F1'].EntireColumn.AutoFit;
          Enablecontrols;
        end;
      end;
    end;

    // ExcelWorkbook.SaveAs(xfilename);

    // ExcelApplication.Visible := true;
    // or
    // ExcelApplication.WorkBooks[1].SaveAs(NewExcelFileName);

    // Note: If a file with the new name already exists, it overwrites it. Write additional code to address as desired.
    // reference
    // https://docs.microsoft.com/en-us/office/vba/api/excel.workbook.saveas

  end;
  // try
  // ExcelWorksheet := Unassigned;
  // ExcelWorkbook := Unassigned;
  // ExcelApplication := Unassigned;
  //
  // finally
  // Application.ProcessMessages;
  // Screen.cursor := crDefault;
  // end;

end;

procedure TfrmArtikel.btnNyClick(Sender: TObject);
begin
  inherited;
  edtKund.LookupTable.Locate('KundID', 1, []);
  edtKund.text := edtKund.LookupTable.FieldByName('Kundnamn').AsString;
  edtKund.setfocus;
  btnState;

end;

procedure TfrmArtikel.Button2Click(Sender: TObject);
begin
  // inherited;
  wwDBGrid1.Enabled := false;

  with TfrmArtikelgrupp.create(Application) do
  begin
    caption := 'Lägg till artikel till artikelgruppen';

    with qryLU_artikel do
    begin
      close;
      ParamByName('Id').value := datasource1.DataSet.FieldByName('Id').asInteger;
      open;
    end;

    qryArtikelgrupp.Append;
    // qryArtikelgrupp.Fieldbyname('ArtikelId').asInteger := dm.qryArtikelArtikelId.AsInteger;
   qryArtikelgrupp.Fieldbyname('Antal').asFLoat := 1.0;

    Showmodal;

    if modalresult = mrOK then
    begin

      with sp_Custom_ArtikelGrupp_add do
      begin
        ParamByName('@ArtikelId').value := datasource1.DataSet.FieldByName('Id').asInteger;
        ParamByName('@UnderartikelId').value := qryArtikelgrupp.FieldByName('UnderartikelId').asInteger;
        ParamByName('@Antal').value := qryArtikelgrupp.FieldByName('Antal').AsFloat;
        ParamByName('@Leverantör').value := qryArtikelgrupp.FieldByName('Leverantör').AsString;
        execproc;

      end;
      qryArtikelgrupp.Cancel;

      requery(qryArtikelgrupp);
      wwDBGrid1.Enabled := True;;
    end
    else
      qryArtikelgrupp.Cancel;

  end;
  btnState;

end;

procedure TfrmArtikel.Button3Click(Sender: TObject);
begin

  // qryArtikelgrupp.Fieldbyname('ArtikelId').asInteger := frmmain.qryArtikel.FieldByName('ArtikelId').asInteger;

  with TfrmArtikelgrupp.create(Application) do
  begin

    caption := 'Ändra artikel i artikelgruppen';

    Showmodal;

    wwDBLookupCombo1.Enabled := false;
    qryArtikelgrupp.Edit;

    if modalresult = mrOK then
    begin
      qryArtikelgrupp.post;
      requery(qryArtikelgrupp);
    end
    else
      qryArtikelgrupp.Cancel;
  end;

end;

procedure TfrmArtikel.Button4Click(Sender: TObject);
begin
  if MessageDlg('Vill du ta bort artiklen från artikelgruppen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    with qryArtikelgrupp do
    begin
      Edit;
      FieldByName('Borttagen').AsDateTime := Date;
      post;
      requery(qryArtikelgrupp);
    end;
  btnState;

end;

procedure TfrmArtikel.cbLagersaldoClick(Sender: TObject);
begin
  inherited;
  dbGridTitleButtonClick(Sender, 'Lagersaldo');
end;

procedure TfrmArtikel.dbGridCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin
  inherited;
  if (Field.FieldName = 'cRitningsnoteringFinns') and (fdQuery1.FieldByName('cRitningsnoteringFinns').AsBoolean = True)
  then
    ABrush.Color := clGreen;

end;

procedure TfrmArtikel.dbGridCalcTitleAttributes(Sender: TObject; AFieldName: string; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
  inherited;
  if (UpperCase(AFieldName) = UpperCase(fdQuery1.IndexName)) then
    ABrush.Color := clYellow;
end;

procedure TfrmArtikel.dbGridTitleButtonClick(Sender: TObject; AFieldName: string);
var
  ascdesc: Boolean;
  orderby: string;
begin
  ascdesc := false;

  if (AFieldName = 'Artikelnummer') or (AFieldName = 'Beteckning') or (AFieldName = 'PDFFilnamn') or
    (AFieldName = 'Lagersaldo') or (AFieldName = 'PDFFinns') or (AFieldName = 'Lagerplats')

  then
  begin
    with fdQuery1 do
    begin
      close;

      if (AFieldName = 'Artikelnummer') then
      begin
        ascArtikelnummer := not ascArtikelnummer;
        ascdesc := ascArtikelnummer;
      end
      else if (AFieldName = 'Beteckning') then
      begin
        ascBeteckning := not ascBeteckning;
        ascdesc := ascBeteckning;
      end;
      if (AFieldName = 'PDFFilnamn') then
      begin
        ascPDFFilnamn := not ascPDFFilnamn;
        ascdesc := ascPDFFilnamn;
      end;

      if (AFieldName = 'Lagersaldo') then
      begin
        ascLagersaldo := not ascLagersaldo;
        ascdesc := ascLagersaldo;
      end;

      if (AFieldName = 'PDFFinns') then
      begin
        ascPDFFinns := not ascPDFFinns;
        ascdesc := ascPDFFinns;
      end;

      if (AFieldName = 'Lagerplats') then
      begin
        ascLagerplats := not ascLagerplats;
        ascdesc := ascLagerplats;
      end;

      // showmessage(sql.text);
      // showmessage(inttostr(sql.Count));
      if sql.count > 27 then
      begin
        sql.delete(sql.count - 1);
        sql.delete(sql.count - 1);
      end
      else
        sql.delete(sql.count - 1);
      // showmessage(sql.text);
      if cbLagersaldo.Checked then
        sql.Add('and Lagersaldo > 0 ');

      orderby := 'Order by ' + AFieldName + ' ' + iif(ascdesc, ' ASC', 'DESC');
      sql.Add(orderby);
      // showmessage(sql.text);
      open;
    end;

  end;
end;

procedure TfrmArtikel.btnAndraClick(Sender: TObject);
begin
  inherited;
  edtKund.setfocus;
  btnState;

end;

procedure TfrmArtikel.FDQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cRitningsnoteringFinns').AsBoolean :=

    DataSet.FieldByName('Notering').AsString <> '';

end;

procedure TfrmArtikel.FormShow(Sender: TObject);
begin
  inherited;

  edtKund.LookupTable.open;
  edtYtbehandling.LookupTable.open;
  qryArtikelgrupp.open;
  qryLU_Artikeltyp.open;
  btnState;

end;

end.
