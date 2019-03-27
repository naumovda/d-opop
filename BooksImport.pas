unit BooksImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, cxSSheet, ImgList,
  dxBar, cxClasses, ActnList, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfmBooksImport = class(TFormReportAbs)
    cxSheet: TcxSpreadSheet;
    dxLayoutSheet: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    tvMainObjectIntID: TcxGridDBColumn;
    tvMainBiblioDescription: TcxGridDBColumn;
    tvMainBooksCount: TcxGridDBColumn;
    tvMainExistInELibrary: TcxGridDBColumn;
    procedure acExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    FileName: string;
  public
    { Public declarations }
  end;

var
  fmBooksImport: TfmBooksImport;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmBooksImport.acExcelExecute(Sender: TObject);
begin
  //загружаем файл
  if OpenDialog.Execute then
  begin
    FileName := OpenDialog.FileName;

    cxSheet.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TfmBooksImport.acRefreshExecute(Sender: TObject);
begin
  if FileName <> '' then
    cxSheet.LoadFromFile(OpenDialog.FileName);
end;

procedure TfmBooksImport.acPrintExecute(Sender: TObject);
var
  sName, sCount, sELib: string;

  ACell: TcxSSCellObject;

  i, rows, Count: integer;

  ELib: Boolean;
begin
  rows := 0;

  i := 0;

  repeat
    ACell := cxSheet.Sheet.GetCellObject(0, i);

    if ACell.Text = '' then break;

    i := i + 1;
  until false;

  rows := i;

  for i := 1 to rows - 1 do
  begin
    sName := Trim(cxSheet.Sheet.GetCellObject(1, i).Text);

    sCount := Trim(cxSheet.Sheet.GetCellObject(2, i).Text);

    sElib := Trim(cxSheet.Sheet.GetCellObject(3, i).Text);

    if sCount <> '' then
      try
        Count := StrToInt(sCount);
      except
        Count := 0;
      end
    else
      Count := 0;

    ELib := sELib = '1';

    if sName <> '' then
      if not dmPublic.tBooks.Locate('BiblioDescription', sName, []) then
      begin
        dmPublic.tBooks.Append;

        dmPublic.tBooksBiblioDescription.Value := sName;

        dmPublic.tBooksBooksCount.Value := Count;

        dmPublic.tBooksExistInELibrary.Value := ELib;

        dmPublic.tBooks.Post;
      end;
  end;
end;

end.
