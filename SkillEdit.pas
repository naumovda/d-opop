unit SkillEdit;

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
  TfmSkillEdit = class(TFormEditAbs)
    cxType: TcxDBRadioGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxSkill: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    cxMin: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxMid: TcxDBMemo;
    dxLayoutItem4: TdxLayoutItem;
    cxMax: TcxDBMemo;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxCode: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSkillEdit: TfmSkillEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
