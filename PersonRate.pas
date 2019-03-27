unit PersonRate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ImgList, dxBar, cxClasses, ActnList,
  cxSplitter, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDropDownEdit, cxCalc, cxDBEdit;

type
  TfmPersonRate = class(TFormReportAbs)
    cxName: TcxButtonEdit;
    dxOPOP: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    tvMainRateTotal: TcxGridDBColumn;
    tvMainRateBase: TcxGridDBColumn;
    tvMainRateDegree: TcxGridDBColumn;
    tvMainRateWorker: TcxGridDBColumn;
    tvMainIsBaseProfile: TcxGridDBColumn;
    tvMainIsDegreeExist: TcxGridDBColumn;
    tvMainIsWorker: TcxGridDBColumn;
    tvMainPerson: TcxGridDBColumn;
    tvMainRowNumber: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainDiscipline: TcxGridDBColumn;
    cxDBCalcEdit1: TcxDBCalcEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDBCalcEdit2: TcxDBCalcEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBCalcEdit3: TcxDBCalcEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    tvMainHours: TcxGridDBColumn;
    tvMainHoursRate: TcxGridDBColumn;
    tvMainIsStatusExist: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    OPOPId: string;
  public
    { Public declarations }
  end;

var
  fmPersonRate: TfmPersonRate;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,OPOP
  ,OPOPEdit
  ;

procedure TfmPersonRate.FormShow(Sender: TObject);
begin
  inherited;

  dmPublic.tPerson.Filtered := false;
  
  acRefreshExecute(Sender);
end;

procedure TfmPersonRate.cxNamePropertiesButtonClick(Sender: TObject;                                 
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmOPOP.Execute(fmOPOPEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    OPOPId := dmPublic.tOPOPObjectID.Value;

    cxName.Text := dmPublic.tOPOPObjectName.Value;
  end;
end;

procedure TfmPersonRate.acRefreshExecute(Sender: TObject);
begin
  inherited;

  OPOPId := dmPublic.tOPOPObjectID.Value;

  cxName.Text := dmPublic.tOPOPObjectName.Value;

  dmPublic.tPersonRateGroup.Close;

  dmPublic.tPersonRateGroup.Filter := 'OPOPId =''' + OPOPId + '''';

  dmPublic.tPersonRateGroup.Filtered := true;

  dmPublic.tPersonRateDetail.Close;

  dmPublic.tPersonRateDetail.Filter := 'OPOPId =''' + OPOPId + '''';

  dmPublic.tPersonRateDetail.Filtered := true;

  dmPublic.tPersonRateGroup.Open;
  
  dmPublic.tPersonRateDetail.Open;
end;

procedure TfmPersonRate.acPrintExecute(Sender: TObject);
begin
  dmPublic.frxReport.LoadFromFile('Reports\r06ratecalc.fr3');

  dmPublic.frxReport.ShowReport();
end;

end.
