unit Auditory;

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
  dxLayoutcxEditAdapters, cxContainer, cxMaskEdit, cxButtonEdit, cxTextEdit;

type
  TfmAuditory = class(TFormListAbs)
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectTechnical: TcxGridDBColumn;
    tvMainObjectSoftware: TcxGridDBColumn;
    cxCode: TcxTextEdit;
    dxLeftCode: TdxLayoutItem;
    cxCathedra: TcxButtonEdit;
    dxLeftCathedra: TdxLayoutItem;
    tvMainCathedra: TcxGridDBColumn;
    tvMainObjectIntId: TcxGridDBColumn;
    tvMainBuilding: TcxGridDBColumn;
    procedure acSearchExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure cxCodePropertiesChange(Sender: TObject);
    procedure cxCathedraPropertiesChange(Sender: TObject);
    procedure cxCathedraPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAuditory: TfmAuditory;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,Cathedra
  ,CathedraEdit
  ;

procedure TfmAuditory.acSearchExecute(Sender: TObject);
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    if cxCode.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('ObjectCode'),
        foLike,
        cxCode.Text + '%',
        cxCode.Text
      );

    if cxCathedra.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('CathedraCalc'),
        foLike,
        cxCathedra.Text + '%',
        cxCathedra.Text
      );
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TfmAuditory.acClearExecute(Sender: TObject);
begin
  inherited;

  cxCode.EditValue := '';

  cxCathedra.EditValue := '';
end;

procedure TfmAuditory.cxCodePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmAuditory.cxCathedraPropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmAuditory.cxCathedraPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TfmCathedra.Execute(fmCathedraEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
        cxCathedra.EditValue := dmPublic.tCathedraObjectCode.Value;
    end;
    1:
      cxCathedra.EditValue := '';
  end;
end;

procedure TfmAuditory.FormShow(Sender: TObject);
begin
  inherited;

  acClearExecute(Sender);
end;

end.
