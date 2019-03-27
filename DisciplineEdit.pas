unit DisciplineEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxRadioGroup, cxBarEditItem, cxCheckBox,
  cxButtonEdit, cxSpinEdit, cxMemo, cxRichEdit, cxDBRichEdit;

type
  TfmDisciplineEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutCode: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutName: TdxLayoutItem;
    cxDB01: TcxDBCalcEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDB02: TcxDBCalcEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDB03: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDB04: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDB05: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDB06: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    cxDBCalcEdit1: TcxDBCalcEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCalcEdit2: TcxDBCalcEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCalcEdit3: TcxDBCalcEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBCalcEdit4: TcxDBCalcEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    cxDBCalcEdit5: TcxDBCalcEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCalcEdit6: TcxDBCalcEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBCalcEdit7: TcxDBCalcEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBCalcEdit8: TcxDBCalcEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCalcEdit9: TcxDBCalcEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCalcEdit10: TcxDBCalcEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    cxDBCalcEdit11: TcxDBCalcEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBCalcEdit12: TcxDBCalcEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBCalcEdit13: TcxDBCalcEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    cxDBCalcEdit14: TcxDBCalcEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    tvMainIsBase: TcxGridDBColumn;
    tvMainBook: TcxGridDBColumn;
    acSelect: TAction;
    dxBarAddMany: TdxBarButton;
    cxSelect: TcxBarEditItem;
    tvPerson: TcxGridDBTableView;
    tvPersonHours: TcxGridDBColumn;
    tvPersonRatio: TcxGridDBColumn;
    tvPersonPerson: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem21: TdxLayoutItem;
    cxDBCalcEdit15: TcxDBCalcEdit;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxDBCalcEdit16: TcxDBCalcEdit;
    dxLayoutItem23: TdxLayoutItem;
    cxDBCalcEdit17: TcxDBCalcEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    cxCathedra: TcxDBButtonEdit;
    dxLayoutItem25: TdxLayoutItem;
    tvPersonIsBaseProfile: TcxGridDBColumn;
    tvAuditory: TcxGridDBTableView;
    tvAuditoryType: TcxGridDBColumn;
    tvAuditoryAuditory: TcxGridDBColumn;
    dxLayoutGroup16: TdxLayoutGroup;
    cxRow: TcxDBSpinEdit;
    dxLayoutItem27: TdxLayoutItem;
    tvPersonHoursRate: TcxGridDBColumn;
    tvSoftware: TcxGridDBTableView;
    tvSoftwareRowNumber: TcxGridDBColumn;
    tvSoftwareSoftware: TcxGridDBColumn;
    cxTabGoal: TcxTabSheet;
    cxDBGoal: TcxDBMemo;
    cxTabTask: TcxTabSheet;
    cxTabContent: TcxTabSheet;
    cxDBContent: TcxDBMemo;
    cxTabSheet1: TcxTabSheet;
    cxDBKnow: TcxDBMemo;
    cxTabCan: TcxTabSheet;
    cxTabSkill: TcxTabSheet;
    cxDBCan: TcxDBMemo;
    cxDBSkill: TcxDBMemo;
    tvCompetention: TcxGridDBTableView;
    tvCompetentionCompetention: TcxGridDBColumn;
    tvCompetentionDescription: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
    procedure acEditExecute(Sender: TObject);
    procedure acSelectExecute(Sender: TObject);
    procedure cxSelectPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvMainCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxCathedraPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acPasteDetailExecute(Sender: TObject);
    procedure acCopyDetailExecute(Sender: TObject);
  private
  public
  end;

var
  fmDisciplineEdit: TfmDisciplineEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,BooksSelect
  ,DisciplinePersonEdit
  ,DisciplineBooksEdit
  ,DisciplineAuditoryEdit
  ,DisciplineSoftwareEdit    
  ,Cathedra
  ,CathedraEdit
  ,DisciplineCompetentionSelect
  ,SkillEdit
  ,DisciplineSkillEdit
  ;

procedure TfmDisciplineEdit.acEditExecute(Sender: TObject);
begin
  if cxSelect.EditValue = 0 then
  begin
    DS.DataSet.Edit;

    dmPublic.tDisciplineBooksIsBase.Value :=
      not dmPublic.tDisciplineBooksIsBase.Value;
  end else
    inherited;
end;

procedure TfmDisciplineEdit.acSelectExecute(Sender: TObject);
var
  F: TForm;
begin
  case cxSelect.EditValue of
  0:
    begin
      F := TfmBooksSelect.Execute(nil, 'modal');

      F.ShowModal;
    end;
  1: exit;
  2: exit;
  3: exit;
  4:
    fmDisciplineCompetentionSelect.ShowModal;
  end;
end;

procedure TfmDisciplineEdit.cxSelectPropertiesChange(Sender: TObject);
begin
  case cxSelect.EditValue of
  0:
    begin
      lvMain.GridView := tvMain;

      dxBarAddMany.Visible := ivAlways;

      dxBarCopyDetail.Visible := ivAlways;

      dxBarPasteDetail.Visible := ivAlways;

      DS.DataSet := dmPublic.tDisciplineBooks;

      self.FEditForm := fmDisciplineBooksEdit;
    end;
  1:
    begin
      lvMain.GridView := tvPerson;

      dxBarAddMany.Visible := ivNever;

      dxBarCopyDetail.Visible := ivNever;

      dxBarPasteDetail.Visible := ivNever;

      DS.DataSet := dmPublic.tDisciplinePersons;

      self.FEditForm := fmDisciplinePersonEdit;
    end;
  2:
    begin
      lvMain.GridView := tvAuditory;

      dxBarAddMany.Visible := ivNever;

      dxBarCopyDetail.Visible := ivAlways;

      dxBarPasteDetail.Visible := ivAlways;

      DS.DataSet := dmPublic.tDisciplineAuditory;

      self.FEditForm := fmDisciplineAuditoryEdit;
    end;
  3:
    begin
      lvMain.GridView := tvSoftware;

      dxBarAddMany.Visible := ivNever;

      dxBarCopyDetail.Visible := ivAlways;

      dxBarPasteDetail.Visible := ivAlways;

      DS.DataSet := dmPublic.tDisciplineSoftware;

      self.FEditForm := fmDisciplineSoftwareEdit;
    end;
  4:
    begin
      lvMain.GridView := tvCompetention;

      dxBarAddMany.Visible := ivAlways;

      dxBarCopyDetail.Visible := ivAlways;

      dxBarPasteDetail.Visible := ivAlways;

      DS.DataSet := dmPublic.tDisciplineCompetention;

      self.FEditForm := fmDisciplineSkillEdit;
    end;
  end;
end;

procedure TfmDisciplineEdit.FormShow(Sender: TObject);
begin
  inherited;

  cxSelect.EditValue := 0;

  cxSelectPropertiesChange(Sender);
end;

procedure TfmDisciplineEdit.tvMainCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  case cxSelect.EditValue of
  0: acEdit.Execute;
  1: inherited;
  2: inherited;
  3: inherited;
  4: inherited;
  end;
end;

procedure TfmDisciplineEdit.cxCathedraPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmCathedra.Execute(fmCathedraEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tDiscipline.Edit;

    dmPublic.tDisciplineCathedraId.Value := dmPublic.tCathedraObjectID.Value;
  end;
end;

procedure TfmDisciplineEdit.acPasteDetailExecute(Sender: TObject);
var
  strQuery, strToId: string;
begin
  inherited;

  if FromId = NULL then
  begin
    ShowMessage('Не выбран источник данных!');

    exit;
  end;

  strToId := DSMaster.DataSet.FieldValues['ObjectId'];

  case cxSelect.EditValue of
  0:
    //библиография
    strQuery := 'INSERT INTO DisciplineBooks(BookId, DisciplineId, IsBase) SELECT '
      + 'BookId, '
      + '''' + strToId + ''''
      + ', IsBase FROM DisciplineBooks WHERE DisciplineId = '
      + '''' + FromId + '''';
  1:
    //кадры
    strQuery := 'INSERT INTO DisciplinePersons(PersonId, Hours, HoursRate, Ratio, DisciplineId) SELECT '
      + 'PersonId, Hours, HoursRate, Ratio, '
      + '''' + strToId + ''''
      + ' FROM DisciplinePersons WHERE DisciplineId = '
      + '''' + FromId + '''';
  2:
    //аудитории
    strQuery := 'INSERT INTO DisciplineAuditory(AuditoryId, AuditoryTypeId, DisciplineId) SELECT '
      + 'AuditoryId, AuditoryTypeId, '
      + '''' + strToId + ''''
      + ' FROM DisciplineAuditory WHERE DisciplineId = '
      + '''' + FromId + '''';
  3:
    //программаж
    strQuery := 'INSERT INTO DisciplineSoftware(SoftwareId, RowNumber, DisciplineId) SELECT '
      + 'SoftwareId, RowNumber, '
      + '''' + strToId + ''''
      + ' FROM DisciplineSoftware WHERE DisciplineId = '
      + '''' + FromId + '''';
  4:
    exit;
  end;

  dmPublic.qCopyPaste.SQL.Clear;

  dmPublic.qCopyPaste.SQL.Add(strQuery);

  dmPublic.qCopyPaste.ExecSQL;

  DS.DataSet.Close;

  DS.DataSet.Open;
end;

procedure TfmDisciplineEdit.acCopyDetailExecute(Sender: TObject);
begin
  if cxSelect.EditValue = 4 then
    exit;

  inherited;

  FromTitle := dmPublic.tDisciplineObjectCode.Value;

  acPasteDetail.Caption := 'Вставить из (' + FromTitle + ')';
end;

end.
