unit CompetentionEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxButtonEdit, cxDBEdit, cxMaskEdit,
  cxSpinEdit, cxMemo, cxTextEdit;

type
  TfmCompetentionEdit = class(TFormEditAbs)
    cxCode: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxCompetention: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    cxNumber: TcxDBSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxType: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    tvMainSkillType: TcxGridDBColumn;
    tvMainSkillText: TcxGridDBColumn;
    procedure cxTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompetentionEdit: TfmCompetentionEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,CompetentionType
  ,CompetentionTypeEdit
  ,CompetentionSkillEdit
  ;

procedure TfmCompetentionEdit.cxTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  case AButtonIndex of
  0:
    begin
      F := TfmCompetentionType.Execute(fmCompetentionTypeEdit, 'modal');

      F.ShowModal;

      if F.Tag = mrOk then
      begin
        dmPublic.tCompetention.Edit;

        dmPublic.tCompetentionCompetitionTypeId.Value :=
          dmPublic.tCompetentionTypeObjectId.Value;
      end;
    end;
  1:
    begin
      dmPublic.tCompetention.Edit;

      dmPublic.tCompetention.FieldValues['CompetitionTypeId'] := NULL;
    end;
  end;
end;

procedure TfmCompetentionEdit.FormShow(Sender: TObject);
begin
  FEditForm := fmCompetentionSkillEdit;

  inherited;
end;

end.
