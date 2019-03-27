unit Cathedra;

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
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit;

type
  TfmCathedra = class(TFormListAbs)
    tvMainObjectID: TcxGridDBColumn;
    tvMainObjectIntID: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectName: TcxGridDBColumn;
    tvMainContacts: TcxGridDBColumn;
    cxCode: TcxTextEdit;
    dxLeftItem1: TdxLayoutItem;
    cxName: TcxTextEdit;
    dxLeftItem2: TdxLayoutItem;
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure cxCodePropertiesChange(Sender: TObject);
    procedure cxNamePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCathedra: TfmCathedra;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmCathedra.acClearExecute(Sender: TObject);
begin
  inherited;

  cxCode.Text := '';

  cxName.Text := '';
end;

procedure TfmCathedra.acSearchExecute(Sender: TObject);
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

procedure TfmCathedra.cxCodePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmCathedra.cxNamePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

end.
