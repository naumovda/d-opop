unit DisciplineBooksEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMemo, cxDBEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalc, cxGroupBox, cxRadioGroup,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfmDisciplineBooksEdit = class(TFormEditAbs)
    cxName: TcxMemo;
    dxLayoutName: TdxLayoutItem;
    cxCount: TcxCalcEdit;
    dxLayoutCount: TdxLayoutItem;
    cxIsELIb: TcxCheckBox;
    dxLayoutIsELib: TdxLayoutItem;
    dxLayoutGroupCount: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutItem1: TdxLayoutItem;
    acInit: TAction;
    cxELib: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    procedure acSaveExecute(Sender: TObject);
    procedure acInitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acNewMasterExecute(Sender: TObject);
    procedure cxIsELIbPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisciplineBooksEdit: TfmDisciplineBooksEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmDisciplineBooksEdit.acSaveExecute(Sender: TObject);
var
  Descr, ELib: string;

  Count: integer;

  IsInELib: Boolean;
begin
  Descr := cxName.Text;

  Count := cxCount.EditValue;

  IsInELib := cxIsELIb.EditValue;

  //find or add new book
  if not dmPublic.tBooks.Locate('BiblioShortDescription', Copy(Descr, 1, 255), []) then
  begin
    dmPublic.tBooks.Append;

    dmPublic.tBooksBiblioDescription.Value := Descr;

    dmPublic.tBooksExistInELibrary.Value := IsInELib;

    dmPublic.tBooksBooksCount.Value := Count;

    dmPublic.tBooks.FieldValues['ELibraryId'] := cxELIb.EditValue;

    dmPublic.tBooks.Post;
  end;

  dmPublic.tDisciplineBooks.Edit;

  dmPublic.tDisciplineBooksBookId.Value := dmPublic.tBooksObjectID.Value;

  inherited;
end;

procedure TfmDisciplineBooksEdit.acInitExecute(Sender: TObject);
begin
  inherited;

  cxName.Text := '';

  cxCount.EditValue := 0;

  cxIsELIb.EditValue := true;

  cxIsELIbPropertiesChange(Sender);
end;

procedure TfmDisciplineBooksEdit.FormShow(Sender: TObject);
begin
  inherited;

  acInit.Execute;
end;

procedure TfmDisciplineBooksEdit.acNewMasterExecute(Sender: TObject);
begin
  acInit.Execute;

  inherited;
end;

procedure TfmDisciplineBooksEdit.cxIsELIbPropertiesChange(Sender: TObject);
begin
  if cxIsELIb.EditValue then
  begin
    cxELIb.Enabled := true;

    cxELIb.ItemIndex := 0;
  end else
  begin
    cxELIb.Enabled := false;

    cxELIb.ItemIndex := -1;
  end;
end;

end.

