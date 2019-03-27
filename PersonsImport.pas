unit PersonsImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, cxSSheet, ImgList,
  dxBar, cxClasses, ActnList, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfmPersonImport = class(TFormReportAbs)
    cxSheet: TcxSpreadSheet;
    dxLayoutSheet: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    tvMainObjectID: TcxGridDBColumn;
    tvMainObjectIntId: TcxGridDBColumn;
    tvMainCathedraID: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainFirstName: TcxGridDBColumn;
    tvMainSecondName: TcxGridDBColumn;
    tvMainLastName: TcxGridDBColumn;
    tvMainAttractionId: TcxGridDBColumn;
    tvMainDegreeId: TcxGridDBColumn;
    tvMainPostId: TcxGridDBColumn;
    tvMainStatusId: TcxGridDBColumn;
    tvMainEducation: TcxGridDBColumn;
    tvMainSpeciality: TcxGridDBColumn;
    tvMainQualification: TcxGridDBColumn;
    tvMainEducationAdd: TcxGridDBColumn;
    tvMainExperiance: TcxGridDBColumn;
    tvMainExperiancePedagogical: TcxGridDBColumn;
    procedure acExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    FileName: string;
  public
    { Public declarations }
  end;

var
  fmPersonImport: TfmPersonImport;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmPersonImport.acExcelExecute(Sender: TObject);
begin
  //загружаем файл
  if OpenDialog.Execute then
  begin
    FileName := OpenDialog.FileName;

    cxSheet.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TfmPersonImport.acRefreshExecute(Sender: TObject);
begin
  if FileName <> '' then
    cxSheet.LoadFromFile(OpenDialog.FileName);
end;

function Parse(s: string):integer;
var
  i, y, m: integer;
begin
  i := Pos(' ', s);

  if i < 1 then
  begin
    Result := 0;

    exit;
  end;

  y := StrToInt(Copy(s, 1, i-1));

  Delete(s, 1, i);

  i := Pos(' ', s);

  if i > 1 then
    Delete(s, 1, i);

  i := Pos(' ', s);

  if i < 1 then
  begin
    Result := 12*y;

    exit;
  end;

  m := StrToInt(Copy(s, 1, i-1));

  Result := 12*y + m;
end;

procedure TfmPersonImport.acPrintExecute(Sender: TObject);
var
  sFN, sSN, sLN, sPost, sCath, sEdu, sAtt, sStage, sStagePed, sEduPost,
    sDegree, sStatus: string;

  PostId, CathId, AttId, DegreeId, StatusId: Variant;

  ACell: TcxSSCellObject;

  i, rows, Count: integer;
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
    sFN := Trim(cxSheet.Sheet.GetCellObject(0, i).Text);
    sSN := Trim(cxSheet.Sheet.GetCellObject(1, i).Text);
    sLN := Trim(cxSheet.Sheet.GetCellObject(2, i).Text);
    sPost := Trim(cxSheet.Sheet.GetCellObject(3, i).Text);
    sCath := Trim(cxSheet.Sheet.GetCellObject(5, i).Text);
    sEdu := Trim(cxSheet.Sheet.GetCellObject(7, i).Text);
    sAtt := Trim(cxSheet.Sheet.GetCellObject(8, i).Text);
    sStage := Trim(cxSheet.Sheet.GetCellObject(9, i).Text);
    sStagePed := Trim(cxSheet.Sheet.GetCellObject(10, i).Text);
    sEduPost := Trim(cxSheet.Sheet.GetCellObject(11, i).Text);
    sDegree := Trim(cxSheet.Sheet.GetCellObject(12, i).Text);
    sStatus := Trim(cxSheet.Sheet.GetCellObject(13, i).Text);

    if dmPublic.tPost.Locate('ObjectName', sPost, []) then
      PostId := dmPublic.tPostObjectID.Value
    else begin
      dmPublic.tPost.Append;

      dmPublic.tPostObjectCode.Value := sPost;
      dmPublic.tPostObjectName.Value := sPost;

      dmPublic.tPost.Post;

       PostId := dmPublic.tPostObjectID.Value;
    end;

    if dmPublic.tCathedra.Locate('ObjectName', sCath, []) then
      CathId := dmPublic.tCathedraObjectID.Value
    else begin
      dmPublic.tCathedra.Append;

      dmPublic.tCathedraObjectCode.Value := sCath;
      dmPublic.tCathedraObjectName.Value := sCath;

      dmPublic.tCathedra.Post;

      CathId := dmPublic.tCathedraObjectID.Value;
    end;

    if dmPublic.tAttraction.Locate('ObjectName', sAtt, []) then
      AttId := dmPublic.tAttractionObjectID.Value
    else begin
      dmPublic.tAttraction.Append;

      dmPublic.tAttractionObjectCode.Value := sAtt;
      dmPublic.tAttractionObjectName.Value := sAtt;

      dmPublic.tAttraction.Post;

      AttId := dmPublic.tAttractionObjectID.Value;
    end;

    if dmPublic.tDegree.Locate('ObjectCode', sDegree, []) then
      DegreeId := dmPublic.tDegreeObjectID.Value
    else begin
      dmPublic.tDegree.Append;

      dmPublic.tDegreeObjectCode.Value := sDegree;
      dmPublic.tDegreeObjectName.Value := sDegree;

      dmPublic.tDegree.Post;

      DegreeId := dmPublic.tDegreeObjectID.Value;
    end;

    if dmPublic.tStatus.Locate('ObjectName', sStatus, []) then
      StatusId := dmPublic.tStatusObjectID.Value
    else begin
      dmPublic.tStatus.Append;

      dmPublic.tStatusObjectCode.Value := sStatus;
      dmPublic.tStatusObjectName.Value := sStatus;

      dmPublic.tStatus.Post;

      StatusId := dmPublic.tStatusObjectID.Value;
    end;

    if sFN <> '' then
      if not dmPublic.tPerson.Locate('FirstName;SecondName;LastName', VarArrayOf([sFN, sSN, sLN]), []) then
      begin
        dmPublic.tPerson.Append;

        dmPublic.tPersonCathedraID.Value := CathID;
        dmPublic.tPersonObjectCode.Value := sFN[1] + sSN[1] + sLN[1];
        dmPublic.tPersonFirstName.Value := sFN;
        dmPublic.tPersonSecondName.Value := sSN;
        dmPublic.tPersonLastName.Value := sLN;
        dmPublic.tPersonAttractionId.Value := AttId;
        dmPublic.tPersonDegreeId.Value := DegreeId;
        dmPublic.tPersonPostId.Value := PostId;
        dmPublic.tPersonStatusId.Value := StatusId;
        dmPublic.tPersonEducation.Value := sEdu;
        dmPublic.tPersonEducationAdd.Value := sEduPost;
        dmPublic.tPersonExperiance.Value := Parse(sStage);
        dmPublic.tPersonExperiancePedagogical.Value := Parse(sStagePed);

        dmPublic.tPerson.Post;
      end;
  end;
end;

end.
