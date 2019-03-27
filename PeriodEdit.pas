unit PeriodEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxLabel, cxDBLabel, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit;

type
  TfmPeriodEdit = class(TFormEditAbs)
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPeriodEdit: TfmPeriodEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
