unit DisciplineAuditoryEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit;

type
  TfmDisciplineAuditoryEdit = class(TFormEditAbs)
    cxType: TcxDBButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxAuditory: TcxDBButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    procedure cxTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxAuditoryPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDisciplineAuditoryEdit: TfmDisciplineAuditoryEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,AuditoryType
  ,AuditoryTypeEdit
  ,Auditory
  ,AuditoryEdit
  ;

procedure TfmDisciplineAuditoryEdit.cxTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmAuditoryType.Execute(fmAuditoryTypeEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tDisciplineAuditory.Edit;

    dmPublic.tDisciplineAuditoryAuditoryTypeId.Value :=
      dmPublic.tAuditoryTypeObjectId.Value;
  end;
end;

procedure TfmDisciplineAuditoryEdit.cxAuditoryPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmAuditory.Execute(fmAuditoryEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tDisciplineAuditory.Edit;

    dmPublic.tDisciplineAuditoryAuditoryId.Value :=
      dmPublic.tAuditoryObjectId.Value;
  end;
end;

end.
