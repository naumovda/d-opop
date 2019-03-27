unit OPOPEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxMaskEdit, cxSpinEdit, cxDBEdit,
  cxTextEdit;

type
  TfmOPOPEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutCode: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutName: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxYearStart: TcxDBSpinEdit;
    dxLayoutYearStart: TdxLayoutItem;
    cxYearCount: TcxDBSpinEdit;
    dxLayoutYearCount: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPOPEdit: TfmOPOPEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
