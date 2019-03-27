unit PersonEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormEditAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxBarDBNav, dxBar, cxClasses,
  ImgList, ActnList, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxContainer, dxLayoutcxEditAdapters, cxDropDownEdit, cxCalc, cxDBEdit,
  cxMemo, cxMaskEdit, cxButtonEdit, cxTextEdit, cxCheckBox;

type
  TfmPersonEdit = class(TFormEditAbs)
    cxFirstName: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxSecondName: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxLastName: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxCathedra: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxAttraction: TcxDBButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDegree: TcxDBButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxStatus: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxEducation: TcxDBMemo;
    dxLayoutItem8: TdxLayoutItem;
    cxEduactionAdd: TcxDBMemo;
    dxLayoutItem9: TdxLayoutItem;
    cxStage: TcxDBCalcEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxStagePed: TcxDBCalcEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxCode: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxPost: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    tvMainOrganization: TcxGridDBColumn;
    tvMainPost: TcxGridDBColumn;
    tvMainPeriod: TcxGridDBColumn;
    tvMainStage: TcxGridDBColumn;
    tvMainIsShown: TcxGridDBColumn;
    cxWorker: TcxDBMemo;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    procedure cxDegreePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxStatusPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPostPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxAttractionPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCathedraPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPersonEdit: TfmPersonEdit;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,Attraction
  ,AttractionEdit
  ,Cathedra
  ,CathedraEdit
  ,Degree
  ,DegreeEdit
  ,Post
  ,PostEdit
  ,Status
  ,StatusEdit
  ,PersonWorker
  ;

procedure TfmPersonEdit.cxDegreePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmDegree.Execute(fmDegreeEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tPerson.Edit;

    dmPublic.tPersonDegreeId.Value := dmPublic.tDegreeObjectID.Value;
  end;
end;

procedure TfmPersonEdit.cxStatusPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmStatus.Execute(fmStatusEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tPerson.Edit;

    dmPublic.tPersonStatusId.Value := dmPublic.tStatusObjectID.Value;
  end;
end;

procedure TfmPersonEdit.cxPostPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmPost.Execute(fmPostEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tPerson.Edit;

    dmPublic.tPersonPostId.Value := dmPublic.tPostObjectID.Value;
  end;
end;

procedure TfmPersonEdit.cxAttractionPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmAttraction.Execute(fmAttractionEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    dmPublic.tPerson.Edit;

    dmPublic.tPersonAttractionId.Value := dmPublic.tAttractionObjectID.Value;
  end;
end;

procedure TfmPersonEdit.cxCathedraPropertiesButtonClick(Sender: TObject;
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
        dmPublic.tPerson.Edit;

        dmPublic.tPersonCathedraId.Value := dmPublic.tCathedraObjectID.Value;
      end;
    end;
  1:
    begin
      dmPublic.tPerson.Edit;

      dmPublic.tPerson.FieldValues['CathedraId'] := NULL;
    end;
  end;
end;

procedure TfmPersonEdit.FormCreate(Sender: TObject);
begin
  FEditForm := fmPersonWorker;
  inherited;
end;

end.
