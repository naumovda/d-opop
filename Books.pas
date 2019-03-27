unit Books;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore, dxBar,
  cxClasses, ActnList, ImgList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxSplitter, dxLayoutControl, Menus, StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxGroupBox, cxRadioGroup, cxTextEdit;

type
  TfmBooks = class(TFormListAbs)
    tvMainObjectID: TcxGridDBColumn;
    tvMainObjectIntID: TcxGridDBColumn;
    tvMainBiblioDescription: TcxGridDBColumn;
    tvMainBooksCount: TcxGridDBColumn;
    tvMainExistInELibrary: TcxGridDBColumn;
    cxName: TcxTextEdit;
    dxLeftName: TdxLayoutItem;
    cxIsELib: TcxRadioGroup;
    dxLeftIsELib: TdxLayoutItem;
    tvMainELibrary: TcxGridDBColumn;
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxNamePropertiesChange(Sender: TObject);
    procedure cxIsELibPropertiesChange(Sender: TObject);
    procedure acImportExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBooks: TfmBooks;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,BooksImport
  ;

procedure TfmBooks.acClearExecute(Sender: TObject);
begin
  inherited;

  cxName.EditValue := '';

  cxIsELib.ItemIndex := 0;
end;

procedure TfmBooks.acSearchExecute(Sender: TObject);
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    if cxName.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('BiblioDescription'),
        foLike,
        '%' + cxName.Text + '%',
        cxName.Text
      );

    if cxIsELib.ItemIndex = 1 then
      AddItem(tvMain.GetColumnByFieldName('ExistInELibrary'),
        foEqual,
        true,
        'Есть в электронной библиотеке'
      );

    if cxIsELib.ItemIndex = 2 then
      AddItem(tvMain.GetColumnByFieldName('ExistInELibrary'),
        foEqual,
        false,
        'Отсутствует в электронной библиотеке'
      );
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TfmBooks.FormShow(Sender: TObject);
begin
  inherited;

  acClear.Execute;

  FocusControl(cxName);
end;

procedure TfmBooks.cxNamePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmBooks.cxIsELibPropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmBooks.acImportExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmBooksImport.Execute(true);

  F.ShowModal;
end;

end.
