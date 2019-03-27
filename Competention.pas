unit Competention;

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
  dxLayoutcxEditAdapters, cxContainer, cxMaskEdit, cxButtonEdit, cxDBEdit,
  cxTextEdit;

type
  TfmCompetention = class(TFormListAbs)
    tvMainObjectId: TcxGridDBColumn;
    tvMainObjectIntId: TcxGridDBColumn;
    tvMainRowNumber: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectName: TcxGridDBColumn;
    tvMainCompetitionTypeId: TcxGridDBColumn;
    tvMainCompetention: TcxGridDBColumn;
    tvMainTypeCalc: TcxGridDBColumn;
    cxName: TcxTextEdit;
    dxLeftItem1: TdxLayoutItem;
    cxCode: TcxTextEdit;
    dxLeftItem3: TdxLayoutItem;
    cxType: TcxButtonEdit;
    dxLeftItem2: TdxLayoutItem;
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure cxTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxNamePropertiesChange(Sender: TObject);
    procedure cxCodePropertiesChange(Sender: TObject);
    procedure cxTypePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompetention: TfmCompetention;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,CompetentionType
  ,CompetentionTypeEdit
  ;

procedure TfmCompetention.acClearExecute(Sender: TObject);
begin
  inherited;

  cxType.EditValue := '';

  cxCode.EditValue := '';

  cxName.EditValue := '';    
end;

procedure TfmCompetention.acSearchExecute(Sender: TObject);
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    if cxType.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('TypeCalc'),
        foEqual,
        cxType.Text,
        cxType.Text
      );

    if cxCode.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('ObjectCode'),
        foLike,
        '%' + cxCode.Text + '%',
        cxCode.Text
      );

    if cxName.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('ObjectName'),
        foLike,
        '%' + cxName.Text + '%',
        cxName.Text
      );
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TfmCompetention.cxTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TfmCompetentionType.Execute(fmCompetentionTypeEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
        cxType.Text := dmPublic.tCompetentionTypeObjectCode.Value;
    end;
  1:
      cxType.Text := '';
  end;
end;

procedure TfmCompetention.cxNamePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmCompetention.cxCodePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmCompetention.cxTypePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmCompetention.FormShow(Sender: TObject);
begin
  inherited;

  acClearExecute(Sender);

  acSearch.Execute;  
end;

end.
