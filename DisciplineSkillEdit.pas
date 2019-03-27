unit DisciplineSkillEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxTextEdit, cxMemo, cxMaskEdit, cxSpinEdit;

type
  TfmDisciplineSkillEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDisciplineName: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    tvMainSkillText: TcxGridDBColumn;
    tvMainSkillType: TcxGridDBColumn;
    tvMainCode: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisciplineSkillEdit: TfmDisciplineSkillEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,SkillDetailEdit
  ;

procedure TfmDisciplineSkillEdit.FormShow(Sender: TObject);
begin
  FEditForm := fmSkillDetailEdit;

  inherited;
end;

end.
