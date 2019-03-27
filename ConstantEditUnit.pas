unit ConstantEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxTextEdit, cxLabel,
  dxLayoutControl;

type
  TConstantEdit = class(TFormEditAbs)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConstantEdit: TConstantEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
