unit SoftwareEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxCheckBox,
  cxTextEdit;

type
  TfmSoftwareEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxName: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxIsFree: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cxLicense: TcxDBMemo;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSoftwareEdit: TfmSoftwareEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ;

end.
