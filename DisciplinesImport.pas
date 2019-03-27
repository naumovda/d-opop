unit DisciplinesImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, cxSSheet, ImgList,
  dxBar, cxClasses, ActnList, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfmDisciplinesImport = class(TFormReportAbs)
    cxSheet: TcxSpreadSheet;
    dxLayoutSheet: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    procedure acExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    FileName: string;
  public
    OPOPId: string;
  end;

var
  fmDisciplinesImport: TfmDisciplinesImport;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmDisciplinesImport.acExcelExecute(Sender: TObject);
begin
  //загружаем файл
  if OpenDialog.Execute then
  begin
    FileName := OpenDialog.FileName;

    cxSheet.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TfmDisciplinesImport.acRefreshExecute(Sender: TObject);
begin
  if FileName <> '' then
    cxSheet.LoadFromFile(OpenDialog.FileName);
end;

procedure TfmDisciplinesImport.acPrintExecute(Sender: TObject);
var
  sCode, sName, sCaf, sZE, sH, sEx, sZA, sKP, sKR,
  sAT, sAL, sALB, sAPZ, sS, sSKP, sSKR, sSE, sSK, sSS,
  sA01, sA02, sA03, sA04, sA05, sA06, sA07, sA08, sA09, sA10,
  sS01, sS02, sS03, sS04, sS05, sS06, sS07, sS08, sS09, sS10,
  sEcnt, sVcnt, sKPcnt, sKRcnt, sP: string;

  ACell: TcxSSCellObject;

  i, rows, Count: integer;

  ELib: Boolean;
begin
  OPOPId := dmPublic.tOPOPObjectID.Value;

  rows := 0;

  i := 8;

  repeat
    ACell := cxSheet.Sheet.GetCellObject(1, i);

    if ACell.Text = '' then break;

    i := i + 1;
  until false;

  rows := i;

  for i := 8 to rows - 1 do
  begin
    {
    sName := Trim(cxSheet.Sheet.GetCellObject(1, i).Text);
    sCount := Trim(cxSheet.Sheet.GetCellObject(2, i).Text);
    sElib := Trim(cxSheet.Sheet.GetCellObject(3, i).Text);
    }

    sCode := Trim(cxSheet.Sheet.GetCellObject( 2, i).CellValue);
    sName := Trim(cxSheet.Sheet.GetCellObject( 3, i).CellValue);
    sCaf  := Trim(cxSheet.Sheet.GetCellObject( 4, i).CellValue);
    sZE   := Trim(cxSheet.Sheet.GetCellObject( 5, i).CellValue);
    sH    := Trim(cxSheet.Sheet.GetCellObject( 6, i).CellValue);
    sEx   := Trim(cxSheet.Sheet.GetCellObject( 7, i).CellValue);
    sZA   := Trim(cxSheet.Sheet.GetCellObject( 8, i).CellValue);
    sKP   := Trim(cxSheet.Sheet.GetCellObject( 9, i).CellValue);
    sKR   := Trim(cxSheet.Sheet.GetCellObject(10, i).CellValue);
    sAT   := Trim(cxSheet.Sheet.GetCellObject(11, i).CellValue);
    sAL   := Trim(cxSheet.Sheet.GetCellObject(12, i).CellValue);
    sALB  := Trim(cxSheet.Sheet.GetCellObject(13, i).CellValue);
    sAPZ  := Trim(cxSheet.Sheet.GetCellObject(14, i).CellValue);
    sS    := Trim(cxSheet.Sheet.GetCellObject(15, i).CellValue);
    sSKP  := Trim(cxSheet.Sheet.GetCellObject(16, i).CellValue);
    sSKR  := Trim(cxSheet.Sheet.GetCellObject(17, i).CellValue);
    sSE   := Trim(cxSheet.Sheet.GetCellObject(18, i).CellValue);
    sSK   := Trim(cxSheet.Sheet.GetCellObject(19, i).CellValue);
    sSS   := Trim(cxSheet.Sheet.GetCellObject(20, i).CellValue);
    sA01  := Trim(cxSheet.Sheet.GetCellObject(21, i).CellValue);
    sA02  := Trim(cxSheet.Sheet.GetCellObject(22, i).CellValue);
    sA03  := Trim(cxSheet.Sheet.GetCellObject(23, i).CellValue);
    sA04  := Trim(cxSheet.Sheet.GetCellObject(24, i).CellValue);
    sA05  := Trim(cxSheet.Sheet.GetCellObject(25, i).CellValue);
    sA06  := Trim(cxSheet.Sheet.GetCellObject(26, i).CellValue);
    sA07  := Trim(cxSheet.Sheet.GetCellObject(27, i).CellValue);
    sA08  := Trim(cxSheet.Sheet.GetCellObject(28, i).CellValue);
    sA09  := Trim(cxSheet.Sheet.GetCellObject(29, i).CellValue);
    sA10  := Trim(cxSheet.Sheet.GetCellObject(30, i).CellValue);
    sS01  := Trim(cxSheet.Sheet.GetCellObject(31, i).CellValue);
    sS02  := Trim(cxSheet.Sheet.GetCellObject(32, i).CellValue);
    sS03  := Trim(cxSheet.Sheet.GetCellObject(33, i).CellValue);
    sS04  := Trim(cxSheet.Sheet.GetCellObject(34, i).CellValue);
    sS05  := Trim(cxSheet.Sheet.GetCellObject(35, i).CellValue);
    sS06  := Trim(cxSheet.Sheet.GetCellObject(36, i).CellValue);
    sS07  := Trim(cxSheet.Sheet.GetCellObject(37, i).CellValue);
    sS08  := Trim(cxSheet.Sheet.GetCellObject(38, i).CellValue);
    sS09  := Trim(cxSheet.Sheet.GetCellObject(39, i).CellValue);
    sS10  := Trim(cxSheet.Sheet.GetCellObject(40, i).CellValue);
    sEcnt := Trim(cxSheet.Sheet.GetCellObject(41, i).CellValue);
    sVcnt := Trim(cxSheet.Sheet.GetCellObject(42, i).CellValue);
    sKPcnt:= Trim(cxSheet.Sheet.GetCellObject(43, i).CellValue);
    sKRcnt:= Trim(cxSheet.Sheet.GetCellObject(44, i).CellValue);
    //sP    := Trim(cxSheet.Sheet.GetCellObject(44, i).CellValue);

    {
    if sCount <> '' then
      try
        Count := StrToInt(sCount);
      except
        Count := 0;
      end
    else
      Count := 0;
    }
    dmPublic.tDiscipline.Append;

    dmPublic.tDisciplineObjectCode.Value := sCode;
    dmPublic.tDisciplineObjectName.Value := sName;
    //dmPublic.tDisciplineCathedraId :=;
    dmPublic.tDisciplineUnitCount.Value := StrToFloat(IsSpace(sZE));
    dmPublic.tDisciplineHourTotal.Value := StrToInt(IsSpace(sH));
    dmPublic.tDisciplineCourseExam.Value := sEx;
    dmPublic.tDisciplineCourseValid.Value := sZA;
    dmPublic.tDisciplineCourseProject.Value := sKP;
    dmPublic.tDisciplineCourseWord.Value := sKR;
    dmPublic.tDisciplineHourClass.Value := StrToInt(IsSpace(sAT));
    dmPublic.tDisciplineHourClassLection.Value := StrToInt(IsSpace(sAL));
    dmPublic.tDisciplineHourClassLaboratory.Value := StrToInt(IsSpace(sALB));
    dmPublic.tDisciplineHourClassPractice.Value := StrToInt(IsSpace(sAPZ));
    dmPublic.tDisciplineHourSelf.Value := StrToInt(IsSpace(sS));
    dmPublic.tDisciplineHourSelfCourseProject.Value := StrToInt(IsSpace(sSKP));
    dmPublic.tDisciplineHourSelfCourseWork.Value := StrToInt(IsSpace(sSKR));

    dmPublic.tDisciplineHourSelfExam.Value := StrToInt(IsSpace(sSE));
    dmPublic.tDisciplineHourSelfConsult.Value := StrToInt(IsSpace(sSK));
    dmPublic.tDisciplineHourSelfWork.Value := StrToInt(IsSpace(sSS));
    dmPublic.tDisciplineA01.Value := StrToInt(IsSpace(sA01));
    dmPublic.tDisciplineA02.Value := StrToInt(IsSpace(sA02));
    dmPublic.tDisciplineA03.Value := StrToInt(IsSpace(sA03));
    dmPublic.tDisciplineA04.Value := StrToInt(IsSpace(sA04));
    dmPublic.tDisciplineA05.Value := StrToInt(IsSpace(sA05));
    dmPublic.tDisciplineA06.Value := StrToInt(IsSpace(sA06));
    dmPublic.tDisciplineA07.Value := StrToInt(IsSpace(sA07));
    dmPublic.tDisciplineA08.Value := StrToInt(IsSpace(sA08));
    dmPublic.tDisciplineA09.Value := StrToInt(IsSpace(sA09));
    dmPublic.tDisciplineA10.Value := StrToInt(IsSpace(sA10));
    dmPublic.tDisciplineS01.Value := StrToInt(IsSpace(sS01));
    dmPublic.tDisciplineS02.Value := StrToInt(IsSpace(sS02));
    dmPublic.tDisciplineS03.Value := StrToInt(IsSpace(sS03));
    dmPublic.tDisciplineS04.Value := StrToInt(IsSpace(sS04));
    dmPublic.tDisciplineS05.Value := StrToInt(IsSpace(sS05));
    dmPublic.tDisciplineS06.Value := StrToInt(IsSpace(sS06));
    dmPublic.tDisciplineS07.Value := StrToInt(IsSpace(sS07));
    dmPublic.tDisciplineS08.Value := StrToInt(IsSpace(sS08));
    dmPublic.tDisciplineS09.Value := StrToInt(IsSpace(sS09));
    dmPublic.tDisciplineS10.Value := StrToInt(IsSpace(sS10));

    dmPublic.tDisciplineExamCount.Value := StrToInt(IsSpace(sEcnt));
    dmPublic.tDisciplineValidCount.Value := StrToInt(IsSpace(sVcnt));
    dmPublic.tDisciplineCourseProjectCount.Value := StrToInt(IsSpace(sKPcnt));
    dmPublic.tDisciplineCourseWorkCount.Value := StrToInt(IsSpace(sKRcnt));

    dmPublic.tDisciplineIsPractic.Value := false;

    dmPublic.tDisciplineOPOPId.Value := OPOPId;

    dmPublic.tDisciplineRowNumber.Value := i - 7;

    dmPublic.tDiscipline.Post;
  end;
end;

end.
