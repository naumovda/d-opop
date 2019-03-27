unit BooksSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Books, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControl, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore, dxBar,
  cxClasses, ActnList, ImgList, cxSplitter, cxGroupBox, cxRadioGroup,
  cxTextEdit, StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxBarEditItem;

type
  TfmBooksSelect = class(TfmBooks)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxBarDockControl1: TdxBarDockControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxGridSelect: TcxGrid;
    tvSelect: TcxGridDBTableView;
    tvMainBook: TcxGridDBColumn;
    tvMainIsBase: TcxGridDBColumn;
    lvSelect: TcxGridLevel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxBarManagerSelect: TdxBar;
    dxIsBase: TdxBarCombo;
    dxBarButton1: TdxBarButton;
    DSSelect: TDataSource;
    acDeleteFromSelect: TAction;
    acChangeBase: TAction;
    dxBarButton2: TdxBarButton;
    cxSplitter1: TcxSplitter;
    procedure tvMainStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure FormShow(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure DSSelectDataChange(Sender: TObject; Field: TField);
    procedure DSSelectStateChange(Sender: TObject);
    procedure acChangeBaseExecute(Sender: TObject);
    procedure acDeleteFromSelectExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvMainCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvSelectCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    Selected: TStringList;
  public
    procedure RefreshSelectInfo();
  end;

var
  fmBooksSelect: TfmBooksSelect;

implementation

uses DataModuleUnit;

{$R *.dfm}

procedure TfmBooksSelect.RefreshSelectInfo();
var
  CanDoAction: Boolean;
begin
  if Visible then
  begin
    CanDoAction := (DS.DataSet <> nil) and (dsBrowse = DS.Dataset.State)
      and (not DS.DataSet.IsEmpty);

    acChangeBase.Enabled := CanDoAction;

    acDelete.Enabled := CanDoAction;

    tvSelect.OptionsData.Editing := false;
   end;
end;

procedure TfmBooksSelect.tvMainStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  ID: Variant;
  Index: integer;
begin
  if Visible then
  begin
    ID := ARecord.Values[Sender.FindItemByName('tvMainObjectID').Index];

    if Selected.Find(ID, Index) then
      AStyle := cxStyleEven
    else
      AStyle := nil;
  end;
end;

procedure TfmBooksSelect.FormShow(Sender: TObject);
begin
  inherited;

  dmPublic.tDisciplineBooks.First;

  while not dmPublic.tDisciplineBooks.Eof do
  begin
    Selected.Add(dmPublic.tDisciplineBooksBookId.Value);

    dmPublic.tDisciplineBooks.Next;
  end;
end;

procedure TfmBooksSelect.acEditExecute(Sender: TObject);
var
  ID: Variant;
  Index: integer;
begin
  ID := dmPublic.tBooksObjectID.Value;

  if not Selected.Find(ID, Index) then
  begin
    dmPublic.tDisciplineBooks.Append;

    dmPublic.tDisciplineBooksBookId.Value := ID;

    dmPublic.tDisciplineBooksIsBase.Value := dxIsBase.ItemIndex = 0;

    dmPublic.tDisciplineBooks.Post;

    dmPublic.tBooks.Edit;
    
    dmPublic.tBooks.Post;    
  end;
end;

procedure TfmBooksSelect.DSSelectDataChange(Sender: TObject;
  Field: TField);
begin
  RefreshSelectInfo();
end;

procedure TfmBooksSelect.DSSelectStateChange(Sender: TObject);
begin
  RefreshSelectInfo();
end;

procedure TfmBooksSelect.acChangeBaseExecute(Sender: TObject);
begin
  dmPublic.tDisciplineBooks.Edit;

  dmPublic.tDisciplineBooksIsBase.Value :=
    not dmPublic.tDisciplineBooksIsBase.Value;

  dmPublic.tDisciplineBooks.Post;
end;

procedure TfmBooksSelect.acDeleteFromSelectExecute(Sender: TObject);
var
  ID: Variant;
  Index: integer;
begin
  tvMain.BeginUpdate;

  ID := dmPublic.tBooksObjectID.Value;

  if Selected.Find(ID, Index) then
    Selected.Delete(Index);

  dmPublic.tDisciplineBooks.Delete;

  dmPublic.tBooks.Edit;

  dmPublic.tBooks.Post;

  tvMain.EndUpdate;
end;

procedure TfmBooksSelect.FormCreate(Sender: TObject);
begin
  inherited;
  
  Selected := TStringList.Create;
end;

procedure TfmBooksSelect.tvMainCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //inherited;

  acEdit.Execute;
end;

procedure TfmBooksSelect.tvSelectCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  acChangeBase.Execute;
end;

end.
