unit Period;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfmPeriod = class(TFormListAbs)
    tvMainObjectName: TcxGridDBColumn;
    tvMainIsCurrent: TcxGridDBColumn;
    acSetCurrent: TAction;
    dxBarButton1: TdxBarButton;
    procedure acSetCurrentExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPeriod: TfmPeriod;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmPeriod.acSetCurrentExecute(Sender: TObject);
var
  ObjectId: string;
begin
  ObjectId := dmPublic.tPeriodObjectId.Value;

  dmPublic.tPeriod.First;

  while not dmPublic.tPeriod.Eof do
  begin
    dmPublic.tPeriod.Edit;

    if ObjectId = dmPublic.tPeriodObjectId.Value then
      dmPublic.tPeriodIsCurrent.Value := true
    else
      dmPublic.tPeriodIsCurrent.Value := false;    

    dmPublic.tPeriod.Post;

    dmPublic.tPeriod.Next;
  end;
end;

end.
