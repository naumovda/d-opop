unit PostEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc;

type
  TfmPostEdit = class(TFormEditAbs)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBCalcEdit1: TcxDBCalcEdit;
    dxLayoutItem3: TdxLayoutItem;
    tvMainHoursRate: TcxGridDBColumn;
    tvMainPeriod: TcxGridDBColumn;
    tvMainHoursRateAdd: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPostEdit: TfmPostEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
