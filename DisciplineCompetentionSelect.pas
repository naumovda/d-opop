unit DisciplineCompetentionSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC;

type
  TfmDisciplineCompetentionSelect = class(TFormEditAbs)
    dxLayoutItem1: TdxLayoutItem;
    cxSelect: TcxGrid;
    tvSelect: TcxGridDBTableView;
    lvSelect: TcxGridLevel;
    tvMainCompetention: TcxGridDBColumn;
    tvMainDescription: TcxGridDBColumn;
    tvSelectRowNumber: TcxGridDBColumn;
    tvSelectObjectCode: TcxGridDBColumn;
    tvSelectObjectName: TcxGridDBColumn;
    tvSelectCompetentionTypeCalc: TcxGridDBColumn;
    tvSelectTypeCalc: TcxGridDBColumn;
    procedure tvSelectCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisciplineCompetentionSelect: TfmDisciplineCompetentionSelect;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmDisciplineCompetentionSelect.tvSelectCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dmPublic.tDisciplineCompetention.Append;

  dmPublic.tDisciplineCompetentionCompetentionId.Value :=
    dmPublic.tCompetentionObjectId.Value;

  dmPublic.tDisciplineCompetention.Post;
end;

end.
