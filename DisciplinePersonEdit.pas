unit DisciplinePersonEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxDropDownEdit, cxCalc, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox, Menus, StdCtrls,
  cxButtons;

type
  TfmDisciplinePersonEdit = class(TFormEditAbs)
    cxPerson: TcxDBButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxHour: TcxDBCalcEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxHourTotal: TcxDBCalcEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxRestHour: TcxDBCalcEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxRatio: TcxDBCalcEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxFillHours: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    acFillHours: TAction;
    cxButton1: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    acCalc: TAction;
    cxHoursRate: TcxDBCalcEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    acGetHoursRate: TAction;
    dxLayoutGroup6: TdxLayoutGroup;
    procedure cxPersonPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acFillHoursExecute(Sender: TObject);
    procedure acCalcExecute(Sender: TObject);
    procedure acGetHoursRateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisciplinePersonEdit: TfmDisciplinePersonEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,Person
  ,PersonEdit
  ;

procedure TfmDisciplinePersonEdit.cxPersonPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TfmPerson.Execute(fmPersonEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        dmPublic.tDisciplinePersons.Edit;

        dmPublic.tDisciplinePersons.FieldValues['PersonId'] :=
          dmPublic.tPersonObjectID.Value;
      end;
    end;
  1:
    begin
      dmPublic.tDisciplinePersons.Edit;

      dmPublic.tDisciplinePersons.FieldValues['PersonId'] := NULL;
    end;
  end;
end;

procedure TfmDisciplinePersonEdit.acFillHoursExecute(Sender: TObject);
var
  f: real;
begin
  f := dmPublic.CalcStaff();

  dmPublic.tDisciplinePersons.Edit;

  dmPublic.tDisciplinePersonsHours.Value := dmPublic.tDisciplineHourStaff.Value;

  if f > 0 then
   dmPublic.tDisciplinePersonsRatio.Value :=
    dmPublic.tDisciplinePersonsHours.Value / f
  else
    dmPublic.tDisciplinePersonsRatio.Value := 0;
end;

procedure TfmDisciplinePersonEdit.acCalcExecute(Sender: TObject);
var
  f: real;
begin
  f := dmPublic.CalcStaff();

  dmPublic.tDisciplinePersons.Edit;

  if f = 0 then
    dmPublic.tDisciplinePersonsRatio.Value := 0
  else
    dmPublic.tDisciplinePersonsRatio.Value :=
      dmPublic.tDisciplinePersonsHours.Value / f;
end;

procedure TfmDisciplinePersonEdit.acGetHoursRateExecute(Sender: TObject);
var
  OPOPId, PeriodId, PersonId, PostId, CathedraId: string;

  Year: integer;

  SecondRate: Boolean;

  Rate: integer;
begin
  OPOPId := dmPublic.tDisciplineOPOPId.Value;

  if not dmPublic.tOPOP.Locate('ObjectId', OPOPId, []) then
  begin
    ShowMessage('Ошибка! Не найдена ОПОП!');

    exit;
  end;

  Year := dmPublic.tOPOPYearStart.Value;

  //ищем период
  if not dmPublic.tPeriod.Locate('ObjectCode', Year, []) then
  begin
    ShowMessage('Ошибка! Не найдена запись об учебном годе!');

    exit;
  end;

  PeriodId := dmPublic.tPeriodObjectId.Value;

  PersonId := dmPublic.tDisciplinePersonsPersonId.Value;

  if PersonId = '' then
  begin
    ShowMessage('Ошибка! Пользователь не указан!');

    exit;
  end;

  if not dmPublic.tPerson.Locate('ObjectId', PersonId, []) then
  begin
    ShowMessage('Ошибка! Сорудник не найден в БД!');

    exit;
  end;

  PostId := dmPublic.tPersonPostId.Value;

  if PostId = '' then
  begin
    ShowMessage('Ошибка! Должность не указана!');

    exit;
  end;

  if not dmPublic.tPost.Locate('ObjectId', PostId, []) then
  begin
    ShowMessage('Ошибка! Должность не найдена в БД!');

    exit;
  end;

  CathedraId := dmPublic.tDisciplineCathedraId.Value;

  if not dmPublic.tCathedra.Locate('ObjectId', CathedraId, []) then
  begin
    ShowMessage('Ошибка! Кафедра не найдена в БД!');

    exit;
  end;

  SecondRate := dmPublic.tCathedraSecondRate.Value;

  dmPublic.tPostPeriodRate.First;

  while not dmPublic.tPostPeriodRate.Eof do
  begin
    if dmPublic.tPostPeriodRatePeriodId.Value = PeriodId then
      break;

    dmPublic.tPostPeriodRate.Next;
  end;

  if dmPublic.tPostPeriodRatePeriodId.Value <> PeriodId  then
  begin
    ShowMessage('Ошибка! Нормы ставки не внесены в БД!');

    exit;
  end;

  if not SecondRate then
    Rate := dmPublic.tPostPeriodRateHoursRate.Value
  else
    Rate := dmPublic.tPostPeriodRateHoursRateAdd.Value;

  dmPublic.tDisciplinePersons.Edit;

  dmPublic.tDisciplinePersonsHoursRate.Value := Rate;
end;

procedure TfmDisciplinePersonEdit.FormShow(Sender: TObject);
begin
  inherited;

  if dmPublic.tDisciplinePersons.FieldValues['PersonId'] = NULL then
  begin
    acFillHours.Execute;

    cxPersonPropertiesButtonClick(Sender, 0);

    acGetHoursRate.Execute;
  end;
end;

end.
