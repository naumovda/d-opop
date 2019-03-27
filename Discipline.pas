unit Discipline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, dxLayoutControl, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxBar, cxClasses, ActnList, ImgList,
  cxSplitter, StdCtrls, cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit,
  dxNavBarCollns, dxNavBarBase, dxNavBar, dxPScxCommon, dxPScxGrid6Lnk;

type
  TfmDiscipline = class(TFormListAbs)
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectName: TcxGridDBColumn;
    tvMainCathedraId: TcxGridDBColumn;
    tvMainUnitCount: TcxGridDBColumn;
    tvMainHourTotal: TcxGridDBColumn;
    tvMainCourseExam: TcxGridDBColumn;
    tvMainCourseValid: TcxGridDBColumn;
    tvMainCourseProject: TcxGridDBColumn;
    tvMainCourseWord: TcxGridDBColumn;
    tvMainHourClass: TcxGridDBColumn;
    tvMainHourClassLection: TcxGridDBColumn;
    tvMainHourClassLaboratory: TcxGridDBColumn;
    tvMainHourClassPractice: TcxGridDBColumn;
    tvMainHourSelf: TcxGridDBColumn;
    tvMainHourSelfCourseProject: TcxGridDBColumn;
    tvMainHourSelfCourseWork: TcxGridDBColumn;
    tvMainHourSelfExam: TcxGridDBColumn;
    tvMainHourSelfConsult: TcxGridDBColumn;
    tvMainHourSelfWork: TcxGridDBColumn;
    tvMainA01: TcxGridDBColumn;
    tvMainA02: TcxGridDBColumn;
    tvMainA03: TcxGridDBColumn;
    tvMainA04: TcxGridDBColumn;
    tvMainA05: TcxGridDBColumn;
    tvMainA06: TcxGridDBColumn;
    tvMainA07: TcxGridDBColumn;
    tvMainA08: TcxGridDBColumn;
    tvMainA09: TcxGridDBColumn;
    tvMainA10: TcxGridDBColumn;
    tvMainS01: TcxGridDBColumn;
    tvMainS02: TcxGridDBColumn;
    tvMainS03: TcxGridDBColumn;
    tvMainS04: TcxGridDBColumn;
    tvMainS05: TcxGridDBColumn;
    tvMainS06: TcxGridDBColumn;
    tvMainS07: TcxGridDBColumn;
    tvMainS08: TcxGridDBColumn;
    tvMainS09: TcxGridDBColumn;
    tvMainS10: TcxGridDBColumn;
    tvMainExamCount: TcxGridDBColumn;
    tvMainValidCount: TcxGridDBColumn;
    tvMainCourseProjectCount: TcxGridDBColumn;
    tvMainCourseWorkCount: TcxGridDBColumn;
    tvMainIsPractic: TcxGridDBColumn;
    tvMainOPOPId: TcxGridDBColumn;
    tvMainRowNumber: TcxGridDBColumn;
    tvMainOPOP: TcxGridDBColumn;
    cxOPOP: TcxButtonEdit;
    dxLeftOPOP: TdxLayoutItem;
    dxNavBar: TdxNavBar;
    dxLeftItem1: TdxLayoutItem;
    dxNavBarGroup1: TdxNavBarGroup;
    dxR01: TdxNavBarItem;
    dxLeftSeparatorItem1: TdxLayoutSeparatorItem;
    acR01: TAction;
    dxComponentPrinterLink1: TdxGridReportLink;
    dxNavBarGroup2: TdxNavBarGroup;
    dxR02: TdxNavBarItem;
    acR02: TAction;
    tvMainHourStaff: TcxGridDBColumn;
    acR05: TAction;
    dxR05: TdxNavBarItem;
    acRPersonRate: TAction;
    dxRPersonRate: TdxNavBarItem;
    acRPersonListV02: TAction;
    dxR03: TdxNavBarItem;
    acR08: TAction;
    dxR08: TdxNavBarItem;
    dxBarDeleteAll: TdxBarButton;
    acR08discipline: TAction;
    dxR08discipline: TdxNavBarItem;
    acR09Auditory: TAction;
    dxLeftGroup1: TdxLayoutGroup;
    dxNavBarGroup3: TdxNavBarGroup;
    dxNavBarItem1: TdxNavBarItem;
    acR10: TAction;
    dxR10: TdxNavBarItem;
    acR11: TAction;
    dxR11: TdxNavBarItem;
    acR12: TAction;
    dxNavBarGroup4: TdxNavBarGroup;
    dxR12: TdxNavBarItem;
    procedure cxOPOPPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure acImportExecute(Sender: TObject);
    procedure acR01Execute(Sender: TObject);
    procedure acR02Execute(Sender: TObject);
    procedure acR05Execute(Sender: TObject);
    procedure acRPersonRateExecute(Sender: TObject);
    procedure acRPersonListV02Execute(Sender: TObject);
    procedure acR08Execute(Sender: TObject);
    procedure acR08disciplineExecute(Sender: TObject);
    procedure acR09AuditoryExecute(Sender: TObject);
    procedure acR10Execute(Sender: TObject);
    procedure acR11Execute(Sender: TObject);
    procedure acR12Execute(Sender: TObject);
  private
    { Private declarations }
  public
    OPOPId: string;

    procedure UpdateCompetentions();
  end;

var
  fmDiscipline: TfmDiscipline;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,DisciplinesImport
  ,OPOP
  ,OPOPEdit
  ,PersonRate
  ;

procedure TfmDiscipline.cxOPOPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TfmOPOP.Execute(fmOPOPEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        OPOPId := dmPublic.tOPOPObjectID.Value;

        cxOPOP.Text := dmPublic.tOPOPObjectCode.Value;

        dmPublic.tDiscipline.Filter := 'OPOPId ='''+ OPOPId +'''';

        dmPublic.tDiscipline.Filtered := true;
      end;
    end;
  1:
    begin
      OPOPId := '';

      cxOPOP.Text := '';

        dmPublic.tDiscipline.Filtered := false;      
    end;
  end;
end;

procedure TfmDiscipline.FormShow(Sender: TObject);
begin
  inherited;

  dmPublic.tOPOP.First;

  OPOPId := dmPublic.tOPOPObjectID.Value;

  cxOPOP.Text := dmPublic.tOPOPObjectCode.Value;

  dmPublic.tDiscipline.Filter := 'OPOPId ='''+ OPOPId +'''';

  dmPublic.tDiscipline.Filtered := true;
end;

procedure TfmDiscipline.acImportExecute(Sender: TObject);
var
  F: TForm;
begin
  inherited;

  if OPOPId = '' then
  begin
    ShowMessage('Необходимо выбрать ОПОП!');

    exit;
  end;

  F := TfmDisciplinesImport.Execute(false);
end;

procedure TfmDiscipline.acR01Execute(Sender: TObject);
begin
  if OPOPId = '' then
  begin
    ShowMessage('Необходимо выбрать ОПОП!');

    exit;
  end;

  dmPublic.tR01.Close;

  dmPublic.tR01.Open;

  dmPublic.tR01.First;

  while not dmPublic.tR01.Eof do
    dmPublic.tR01.Delete;

  dmPublic.tR01Q01.Close;
  dmPublic.tR01Q02.Close;
  dmPublic.tR01Q03.Close;
  dmPublic.tR01Q04.Close;
  dmPublic.tR01Q05.Close;
  dmPublic.tR01Q06.Close;

  dmPublic.tR01Q01.Filter := 'ObjectId = ''' + OPOPId + '''';
  dmPublic.tR01Q02.Filter := 'ObjectId = ''' + OPOPId + '''';
  dmPublic.tR01Q03.Filter := 'ObjectId = ''' + OPOPId + '''';
  dmPublic.tR01Q04.Filter := 'ObjectId = ''' + OPOPId + '''';
  dmPublic.tR01Q05.Filter := 'ObjectId = ''' + OPOPId + '''';
  dmPublic.tR01Q06.Filter := 'ObjectId = ''' + OPOPId + '''';

  dmPublic.tR01Q01.Filtered := true;
  dmPublic.tR01Q02.Filtered := true;
  dmPublic.tR01Q03.Filtered := true;
  dmPublic.tR01Q04.Filtered := true;
  dmPublic.tR01Q05.Filtered := true;
  dmPublic.tR01Q06.Filtered := true;

  dmPublic.tR01Q01.Open;
  dmPublic.tR01Q02.Open;
  dmPublic.tR01Q03.Open;
  dmPublic.tR01Q04.Open;
  dmPublic.tR01Q05.Open;
  dmPublic.tR01Q06.Open;

  dmPublic.tR01Q01.First;
  dmPublic.tR01.Append;
  dmPublic.tR01RowNumber.Value := 1;
  dmPublic.tR01ObjectName.Value := 'Общее количество наименований основной '
    +'литературы, указанной в рабочих программах дисциплин (модулей), '
    +'имеющихся в электронном каталоге электронно-библиотечной системы';
  dmPublic.tR01UnitName.Value := 'ед.';
  if not dmPublic.tR01Q01.Eof then
    dmPublic.tR01ParamValue.Value := dmPublic.tR01Q01ParamValue.AsString
  else
    dmPublic.tR01ParamValue.Value := '-';
  dmPublic.tR01.Post;

  dmPublic.tR01Q02.First;
  dmPublic.tR01.Append;
  dmPublic.tR01RowNumber.Value := 2;
  dmPublic.tR01ObjectName.Value := 'Общее количество наименований'
    +' дополнительной литературы, указанной в рабочих программах дисциплин '
    +'(модулей), имеющихся в электронном каталоге электронно-библиотечной '
    + 'системы';
  dmPublic.tR01UnitName.Value := 'ед.';
  if not dmPublic.tR01Q02.Eof then
    dmPublic.tR01ParamValue.Value := dmPublic.tR01Q02ParamValue.AsString
  else
    dmPublic.tR01ParamValue.Value := '-';
  dmPublic.tR01.Post;

  dmPublic.tR01Q03.First;
  dmPublic.tR01.Append;
  dmPublic.tR01RowNumber.Value := 3;
  dmPublic.tR01ObjectName.Value := 'Общее количество печатных изданий основной'
    +' литературы, перечисленной в рабочих программах дисциплин (модулей) в '
    +'наличии (суммарное количество экземпляров) в библиотеке по основной '
    +'образовательной программе';
  dmPublic.tR01UnitName.Value := 'экз.';
  if not dmPublic.tR01Q03.Eof then
    dmPublic.tR01ParamValue.Value := dmPublic.tR01Q03ParamValue.AsString
  else
    dmPublic.tR01ParamValue.Value := '-';
  dmPublic.tR01.Post;

  dmPublic.tR01Q04.First;
  dmPublic.tR01.Append;
  dmPublic.tR01RowNumber.Value := 4;
  dmPublic.tR01ObjectName.Value := 'Общее количество наименований основной '
    + ' литературы, перечисленной в рабочих программах дисциплин (модулей), '
    + 'в наличии в библиотеке по основной образовательной программе';
  dmPublic.tR01UnitName.Value := 'ед.';
  if not dmPublic.tR01Q04.Eof then
    dmPublic.tR01ParamValue.Value := dmPublic.tR01Q04ParamValue.AsString
  else
    dmPublic.tR01ParamValue.Value := '-';
  dmPublic.tR01.Post;

  dmPublic.tR01Q05.First;
  dmPublic.tR01.Append;
  dmPublic.tR01RowNumber.Value := 5;
  dmPublic.tR01ObjectName.Value := 'Общее количество печатных изданий '
    + 'дополнительной литературы, перечисленной в рабочих программах дисциплин'
    + '(модулей), в наличии в библиотеке (суммарное количество экземпляров) '
    + 'по основной образовательной программе';
  dmPublic.tR01UnitName.Value := 'экз.';
  if not dmPublic.tR01Q05.Eof then
    dmPublic.tR01ParamValue.Value := dmPublic.tR01Q05ParamValue.AsString
  else
    dmPublic.tR01ParamValue.Value := '-';
  dmPublic.tR01.Post;

  dmPublic.tR01Q06.First;
  dmPublic.tR01.Append;
  dmPublic.tR01RowNumber.Value := 6;
  dmPublic.tR01ObjectName.Value := 'Общее количество наименований '
    + ' дополнительной литературы, перечисленной в рабочих программах дисциплин'
    + ' (модулей), в наличии в библиотеке  по основной образовательной программе';
  dmPublic.tR01UnitName.Value := 'ед.';
  if not dmPublic.tR01Q06.Eof then
    dmPublic.tR01ParamValue.Value := dmPublic.tR01Q06ParamValue.AsString
  else
    dmPublic.tR01ParamValue.Value := '-';
  dmPublic.tR01.Post;

  dmPublic.frxReport.LoadFromFile('Reports\r01.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR02Execute(Sender: TObject);
var
  Post, DiscList, StaffList: string;
  FN, SN, LN: string;
begin
  if OPOPId = '' then
  begin
    ShowMessage('Необходимо выбрать ОПОП!');

    exit;
  end;

  {
  dmPublic.tR02.Close;

  dmPublic.tR02.Open;

  dmPublic.frxReport.LoadFromFile('Reports\r02.fr3');

  dmPublic.frxReport.ShowReport();
  }

  dmPublic.qDeletePersonReport03.ExecSQL;

  dmPublic.tPersonReport02Group.Close;

  dmPublic.tPersonReport02Group.Filter := 'OPOPId = ''' + OPOPId + '''';

  dmPublic.tPersonReport02Group.Filtered := true;

  dmPublic.tPersonReport02Group.Open;

  dmPublic.tPersonReport02Detail.Close;
  dmPublic.tPersonReport02Detail.Open;

  dmPublic.tPersonReport03.Close;
  dmPublic.tPersonReport03.Open;

  dmPublic.tPersonReport02Group.First;      

  while not dmPublic.tPersonReport02Group.Eof do
  begin
    dmPublic.tPersonReport03.Append;

    dmPublic.tPersonReport03PersonId.Value :=
      dmPublic.tPersonReport02GroupPersonId.Value;

    dmPublic.tPersonReport03PersonFirstName.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['FirstName']);

    dmPublic.tPersonReport03PersonSecondName.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['SecondName']);

    dmPublic.tPersonReport03PersonLastName.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['LastName']);

    dmPublic.tPersonReport03Attraction.Value :=
      dmPublic.tPersonReport02GroupAttraction.Value;

    Post := 'Должность - ' + dmPublic.tPersonReport02GroupPost.Value;

    if dmPublic.tPersonReport02GroupAddCathedra.Value then
      Post := Post + ' ' + dmPublic.tPersonReport02GroupCathedra.Value;

    dmPublic.tPersonReport03Post.Value := Post;

    dmPublic.tPersonReport03Degree.Value :=
      dmPublic.tPersonReport02GroupDegree.Value;

    dmPublic.tPersonReport03Status.Value :=
      dmPublic.tPersonReport02GroupStatus.Value;

    DiscList := '';

    dmPublic.tPersonReport02Detail.First;

    while not dmPublic.tPersonReport02Detail.Eof do
    begin
      if DiscList <> '' then
        DiscList := DiscList + #10#13;

      DiscList := DiscList + dmPublic.tPersonReport02DetailDiscipline.Value;

      dmPublic.tPersonReport02Detail.Next;
    end;

    dmPublic.tPersonReport03DisciplineList.Value := DiscList;

    dmPublic.tPersonReport03Education.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['Education']);

    dmPublic.tPersonReport03EducationAdd.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['EducationAdd']);

    StaffList := '';

    dmPublic.tPersonReport02Detail.First;

    while not dmPublic.tPersonReport02Detail.Eof do
    begin
      //if StaffList <> '' then
      //  StaffList := StaffList + #10#13;

      StaffList := StaffList
        + FloatToStrF(
          dmPublic.tPersonReport02DetailHours.Value /
          dmPublic.tPersonReport02DetailHoursRate.Value
          , ffFixed, 10, 4)
        + #10#13;

      if Length(dmPublic.tPersonReport02DetailDiscipline.Value) >= 23 then
        StaffList := StaffList + #10#13;

      dmPublic.tPersonReport02Detail.Next;
    end;

    dmPublic.tPersonReport03StaffValue.Value := StaffList;

    dmPublic.tPersonReport03Stage.Value :=
      dmPublic.tPersonReport02GroupExperiance.Value div 12;

    if dmPublic.tPerson.Locate('ObjectId',
      dmPublic.tPersonReport02GroupPersonId.Value, []) then
      dmPublic.tPersonReport03PracticDescription.Value :=
        dmPublic.tPersonWorkDescription.Value;

    dmPublic.tPersonReport03.Post;

    dmPublic.tPersonReport02Group.Next;
  end;

  dmPublic.frxReport.LoadFromFile('Reports\r04.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR05Execute(Sender: TObject);
begin
  dmPublic.tBooksReport02.Close;

  dmPublic.tBooksReport02.Open;

  dmPublic.frxReport.LoadFromFile('Reports\r05.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acRPersonRateExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmPersonRate.Execute();
end;

procedure TfmDiscipline.acRPersonListV02Execute(Sender: TObject);
var
  Post, DiscList, StaffList, HoursList: string;
  FN, SN, LN: string;
begin
  if OPOPId = '' then
  begin
    ShowMessage('Необходимо выбрать ОПОП!');

    exit;
  end;

  dmPublic.tPersonReport03.Open;

  dmPublic.tPersonReport03.First;

  while not dmPublic.tPersonReport03.Eof do
    dmPublic.tPersonReport03.Delete;

  //dmPublic.qDeletePersonReport03.ExecSQL;

  dmPublic.tPersonReport02Group.Close;

  dmPublic.tPersonReport02Group.Filter := 'OPOPId = ''' + OPOPId + '''';

  dmPublic.tPersonReport02Group.Filtered := true;

  dmPublic.tPersonReport02Group.Open;

  dmPublic.tPersonReport02Detail.Close;
  
  dmPublic.tPersonReport02Detail.Open;

  dmPublic.tPersonReport03.Close;
  
  dmPublic.tPersonReport03.Open;

  dmPublic.tPersonReport02Group.First;      

  while not dmPublic.tPersonReport02Group.Eof do
  begin
    dmPublic.tPersonReport03.Append;

    dmPublic.tPersonReport03PersonId.Value :=
      dmPublic.tPersonReport02GroupPersonId.Value;

    dmPublic.tPersonReport03PersonFirstName.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['FirstName']);

    dmPublic.tPersonReport03PersonSecondName.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['SecondName']);

    dmPublic.tPersonReport03PersonLastName.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['LastName']);

    dmPublic.tPersonReport03Attraction.Value :=
      dmPublic.tPersonReport02GroupAttraction.Value;

    Post := 'Должность - ' + dmPublic.tPersonReport02GroupPost.Value;

    if dmPublic.tPersonReport02GroupAddCathedra.Value then
      Post := Post + ' ' + dmPublic.tPersonReport02GroupCathedra.Value;

    dmPublic.tPersonReport03Post.Value := Post;

    dmPublic.tPersonReport03Degree.Value :=
      dmPublic.tPersonReport02GroupDegree.Value;

    dmPublic.tPersonReport03Status.Value :=
      dmPublic.tPersonReport02GroupStatus.Value;

    DiscList := '';

    dmPublic.tPersonReport02Detail.First;

    while not dmPublic.tPersonReport02Detail.Eof do
    begin
      if DiscList <> '' then
        DiscList := DiscList + #10#13;

      DiscList := DiscList + dmPublic.tPersonReport02DetailDiscipline.Value;

      dmPublic.tPersonReport02Detail.Next;
    end;

    dmPublic.tPersonReport03DisciplineList.Value := DiscList;

    dmPublic.tPersonReport03Education.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['Education']);

    dmPublic.tPersonReport03EducationAdd.Value :=
      V2S(dmPublic.tPersonReport02Group.FieldValues['EducationAdd']);

    StaffList := '';

    HoursList := '';

    dmPublic.tPersonReport02Detail.First;

    while not dmPublic.tPersonReport02Detail.Eof do
    begin
      StaffList := StaffList
        + FloatToStrF(
          dmPublic.tPersonReport02DetailHours.Value /
          dmPublic.tPersonReport02DetailHoursRate.Value
          , ffFixed, 10, 4)
        + #10#13;

      HoursList := HoursList
        + FloatToStrF(dmPublic.tPersonReport02DetailHours.Value, ffFixed, 10, 2)
        + #10#13;

      if Length(dmPublic.tPersonReport02DetailDiscipline.Value) >= 23 then
      begin
        StaffList := StaffList + #10#13;

        HoursList := HoursList + #10#13;
      end;

      dmPublic.tPersonReport02Detail.Next;
    end;

    dmPublic.tPersonReport03StaffValue.Value := StaffList;

    dmPublic.tPersonReport03HoursValue.Value := HoursList;    

    dmPublic.tPersonReport03Stage.Value :=
      dmPublic.tPersonReport02GroupExperiance.Value div 12;

    if dmPublic.tPerson.Locate('ObjectId',
      dmPublic.tPersonReport02GroupPersonId.Value, []) then
      dmPublic.tPersonReport03PracticDescription.Value :=
        dmPublic.tPersonWorkDescription.Value;

    dmPublic.tPersonReport03.Post;

    dmPublic.tPersonReport02Group.Next;
  end;

  dmPublic.tPersonReport03.Close;

  dmPublic.tPersonReport03.Open;

  dmPublic.tPersonReport04add.Close;

  dmPublic.tPersonReport04add.Open;

  dmPublic.frxReport.LoadFromFile('Reports\r03.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR08Execute(Sender: TObject);
begin
  dmPublic.tReport08Group.Close;

  dmPublic.tReport08Group.Filter := 'OPOPId = ''' + OPOPId + '''';

  dmPublic.tReport08Group.Filtered := true;

  dmPublic.tReport08Group.Open;

  dmPublic.tReport08Detail.Close;

  dmPublic.tReport08Detail.Filter := 'OPOPId = ''' + OPOPId + '''';

  dmPublic.tReport08Detail.Filtered := true;

  dmPublic.tReport08Detail.Open;

  dmPublic.frxReport.LoadFromFile('Reports\r07worker.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR08disciplineExecute(Sender: TObject);
begin
  dmPublic.frxReport.LoadFromFile('Reports\r08discipline.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR09AuditoryExecute(Sender: TObject);
begin
  dmPublic.tReportAuditory01.Close;

  dmPublic.tReportAuditory01.Filter := 'ObjectId = ''' + OPOPId + '''';

  dmPublic.tReportAuditory01.Filtered := true;

  dmPublic.tReportAuditory01.Open;

  dmPublic.frxReport.LoadFromFile('Reports\r09auditory.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR10Execute(Sender: TObject);
begin
  dmPublic.tReportSoftwareDist.Close;

  dmPublic.tReportSoftwareDist.Filter := 'OPOPId = ''' + OPOPId + '''';

  dmPublic.tReportSoftwareDist.Filtered := true;

  dmPublic.tReportSoftwareDist.Open;

  dmPublic.frxReport.LoadFromFile('Reports\r10software.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.acR11Execute(Sender: TObject);
begin
  dmPublic.frxReport.LoadFromFile('Reports\r11software.fr3');

  dmPublic.frxReport.ShowReport();
end;

procedure TfmDiscipline.UpdateCompetentions();
var
  s: string;
begin
  tvMain.BeginUpdate;

  dmPublic.tDiscipline.First;

  while not dmPublic.tDiscipline.Eof do
  begin
    s := '';

    dmPublic.tDisciplineCompetention.First;

    while not dmPublic.tDisciplineCompetention.Eof do
    begin
      s := dmPublic.AddComma(s,
        dmPublic.tDisciplineCompetentionCompetention.Value);

      dmPublic.tDisciplineCompetention.Next;
    end;

    dmPublic.tDiscipline.Edit;

    dmPublic.tDisciplineCompetentions.Value := s;

    dmPublic.tDiscipline.Post;

    dmPublic.tDiscipline.Next;
  end;

  tvMain.EndUpdate;
end;

procedure TfmDiscipline.acR12Execute(Sender: TObject);
begin
  UpdateCompetentions();

  dmPublic.frxReport.LoadFromFile('Reports\r12html2.fr3');

  dmPublic.frxReport.ShowReport();
end;

end.
