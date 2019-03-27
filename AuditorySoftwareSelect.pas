unit AuditorySoftwareSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC;

type
  TfmAuditorySoftwareSelect = class(TFormEditAbs)
    tvMainRowNumber: TcxGridDBColumn;
    tvMainSoftware: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    cxSelect: TcxGrid;
    tvSelect: TcxGridDBTableView;
    tvMainObjectId: TcxGridDBColumn;
    tvMainObjectIntId: TcxGridDBColumn;
    tvMainIsFree: TcxGridDBColumn;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainObjectName: TcxGridDBColumn;
    tvMainObjectLicense: TcxGridDBColumn;
    lvSelect: TcxGridLevel;
    procedure tvSelectCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAuditorySoftwareSelect: TfmAuditorySoftwareSelect;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmAuditorySoftwareSelect.tvSelectCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dmPublic.tAuditorySoftware.Append;

  dmPublic.tAuditorySoftwareSoftwareId.Value :=
    dmPublic.tSoftwareObjectId.Value;

  dmPublic.tAuditorySoftwareRowNumber.Value :=
    dmPublic.tAuditorySoftware.RecordCount + 1;

  dmPublic.tAuditorySoftware.Post;
end;

end.
