unit AuditoryEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Menus, StdCtrls, cxButtons;

type
  TfmAuditoryEdit = class(TFormEditAbs)
    cxNumber: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxMTO: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    cxSoftware: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxCathedra: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    tvMainRowNumber: TcxGridDBColumn;
    tvMainSoftware: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    acFillSoftware: TAction;
    cxBuilding: TcxDBButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxBarButton7: TdxBarButton;
    acSelect: TAction;
    procedure cxCathedraPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBuildingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acSelectExecute(Sender: TObject);
    procedure acFillSoftwareExecute(Sender: TObject);
    procedure acPasteDetailExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAuditoryEdit: TfmAuditoryEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,Cathedra
  ,CathedraEdit
  ,Building
  ,BuildingEdit
  ,AuditorySoftwareSelect  
  ;

procedure TfmAuditoryEdit.cxCathedraPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TfmCathedra.Execute(fmCathedraEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        dmPublic.tAuditory.Edit;

        dmPublic.tAuditoryCathedraId.Value := dmPublic.tCathedraObjectId.Value;
      end;
    end;
  1:
    begin
      dmPublic.tAuditory.Edit;

      dmPublic.tAuditory.FieldValues['CathedraId'] := NULL;
    end;
  end;
end;

procedure TfmAuditoryEdit.cxBuildingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmBuilding.Execute(fmBuildingEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tAuditory.Edit;

    dmPublic.tAuditoryBuildingId.Value := dmPublic.tBuildingObjectId.Value;
  end;
end;

procedure TfmAuditoryEdit.acSelectExecute(Sender: TObject);
begin
  inherited;

  fmAuditorySoftwareSelect.ShowModal;
end;

procedure TfmAuditoryEdit.acFillSoftwareExecute(Sender: TObject);
var
  s: string;
  i: integer;
begin
  s := '';

  i := 1;

  dmPublic.tAuditorySoftware.First;

  while not dmPublic.tAuditorySoftware.Eof do
  begin
    if s <> '' then
      s := s + #13;

    s := s + IntToStr(i) + '. ' + dmPublic.tAuditorySoftwareSoftware.Value + '('
      + dmPublic.tAuditorySoftwareLicense.Value + ')';

    i := i + 1;

    dmPublic.tAuditorySoftware.Next;
  end;

  dmPublic.tAuditory.Edit;

  dmPublic.tAuditoryObjectSoftware.Value := s;
end;

procedure TfmAuditoryEdit.acPasteDetailExecute(Sender: TObject);
var
  strQuery, strToId: string;
begin
  inherited;

  if FromId = NULL then
  begin
    ShowMessage('Не выбран источник данных!');

    exit;
  end;

  strToId := DSMaster.DataSet.FieldValues['ObjectId'];

  strQuery := 'INSERT INTO AuditorySoftware(SoftwareId, AuditoryId, RowNumber) SELECT '
    + 'SoftwareId, '
    + '''' + strToId + ''''
    + ', RowNumber FROM AuditorySoftware WHERE AuditoryId = '
    + '''' + FromId + '''';

  dmPublic.qCopyPaste.SQL.Clear;

  dmPublic.qCopyPaste.SQL.Add(strQuery);

  dmPublic.qCopyPaste.ExecSQL;

  DS.DataSet.Close;

  DS.DataSet.Open;
end;

end.
