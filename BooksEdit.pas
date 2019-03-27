unit BooksEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMemo, cxDBEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalc, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfmBooksEdit = class(TFormEditAbs)
    cxName: TcxDBMemo;
    dxLayoutName: TdxLayoutItem;
    cxCount: TcxDBCalcEdit;
    dxLayoutCount: TdxLayoutItem;
    cxIsELIb: TcxDBCheckBox;
    dxLayoutIsELib: TdxLayoutItem;
    dxLayoutGroupCount: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxELib: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBooksEdit: TfmBooksEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
