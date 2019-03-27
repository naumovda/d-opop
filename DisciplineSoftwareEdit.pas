unit DisciplineSoftwareEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxDBEdit, cxListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfmDisciplineSoftwareEdit = class(TFormEditAbs)
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxSoftware: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisciplineSoftwareEdit: TfmDisciplineSoftwareEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
