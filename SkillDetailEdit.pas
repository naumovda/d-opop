unit SkillDetailEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxGroupBox, cxRadioGroup, Menus, StdCtrls,
  cxButtons;

type
  TfmSkillDetailEdit = class(TFormEditAbs)
    cxCode: TcxDBSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxSkill: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    cxMin: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxMid: TcxDBMemo;
    dxLayoutItem4: TdxLayoutItem;
    cxMax: TcxDBMemo;
    dxLayoutItem5: TdxLayoutItem;
    cxType: TcxDBRadioGroup;
    dxLayoutItem6: TdxLayoutItem;
    cxSetCode: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure cxSetCodeClick(Sender: TObject);
    procedure cxTypeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSkillDetailEdit: TfmSkillDetailEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

procedure TfmSkillDetailEdit.cxSetCodeClick(Sender: TObject);
var
  Code: integer;
begin
  FocusControl(cxSetCode);

  Code := 0;

  dmPublic.tSkillList.Close;

  dmPublic.tSkillList.Open;

  dmPublic.tSkillList.First;

  while not dmPublic.tSkillList.Eof do
  begin
    if dmPublic.tSkillListSkillTypeId.Value = dmPublic.tSkillSkillTypeId.Value then
      Code := Code + 1;

    dmPublic.tSkillList.Next;
  end;

  dmPublic.tSkill.Edit;

  dmPublic.tSkillCode.Value := Code + 1;
end;

procedure TfmSkillDetailEdit.cxTypeClick(Sender: TObject);
begin  
  cxSetCodeClick(Sender);
end;

end.
