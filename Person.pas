unit Person;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, dxLayoutControl, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxBar, cxClasses, ActnList, ImgList,
  cxSplitter, StdCtrls, cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxImageComboBox, cxGroupBox, cxRadioGroup;

type
  TfmPerson = class(TFormListAbs)
    cxCode: TcxTextEdit;
    dxLeftItem1: TdxLayoutItem;
    cxName: TcxTextEdit;
    dxLeftItem2: TdxLayoutItem;
    tvMainObjectCode: TcxGridDBColumn;
    tvMainFirstName: TcxGridDBColumn;
    tvMainSecondName: TcxGridDBColumn;
    tvMainLastName: TcxGridDBColumn;
    tvMainEducation: TcxGridDBColumn;
    tvMainEducationAdd: TcxGridDBColumn;
    tvMainExperiance: TcxGridDBColumn;
    tvMainExperiancePedagogical: TcxGridDBColumn;
    tvMainCathedra: TcxGridDBColumn;
    tvMainAttraction: TcxGridDBColumn;
    tvMainDegree: TcxGridDBColumn;
    tvMainPost: TcxGridDBColumn;
    tvMainStatus: TcxGridDBColumn;
    cxCathedra: TcxButtonEdit;
    dxLeftItem4: TdxLayoutItem;
    tvMainIsWorker: TcxGridDBColumn;
    tvMainObjectState: TcxGridDBColumn;
    acSetObjectState: TAction;
    dxBarButton1: TdxBarButton;
    cxObjectState: TcxRadioGroup;
    dxLeftItem3: TdxLayoutItem;
    procedure acClearExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure cxCodePropertiesChange(Sender: TObject);
    procedure cxNamePropertiesChange(Sender: TObject);
    procedure acImportExecute(Sender: TObject);
    procedure cxCathedraPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure acSetObjectStateExecute(Sender: TObject);
    procedure cxObjectStatePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    CathedraId: string;
  end;

var
  fmPerson: TfmPerson;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,PersonsImport
  ,Cathedra
  ,CathedraEdit  
  ;

procedure TfmPerson.acClearExecute(Sender: TObject);
begin
  inherited;

  cxCode.Text := '';

  cxName.Text := '';

  cxCathedra.Text := '';

  CathedraId := '';  
end;

procedure TfmPerson.acSearchExecute(Sender: TObject);
begin
  inherited;

  tvMain.BeginUpdate;

  tvMain.DataController.Filter.Root.Clear;

  with tvMain.DataController.Filter.Root do
  begin
    Clear;

    BoolOperatorKind := fboAnd;

    if cxCode.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('ObjectCode'),
        foLike,
        cxCode.Text + '%',
        cxCode.Text
      );

    if cxName.Text <> '' then
      AddItem(tvMain.GetColumnByFieldName('FirstName'),
        foLike,
        cxName.Text + '%',
        cxName.Text
      );

    if CathedraId <> '' then
      AddItem(tvMain.GetColumnByFieldName('CathedraId'),
        foEqual,
        CathedraId,
        cxCathedra.Text
      );
  end;

  tvMain.DataController.Filter.Active := true;

  tvMain.EndUpdate;
end;

procedure TfmPerson.cxCodePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmPerson.cxNamePropertiesChange(Sender: TObject);
begin
  acSearch.Execute;
end;

procedure TfmPerson.acImportExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmPersonImport.Execute(false);
end;

procedure TfmPerson.cxCathedraPropertiesButtonClick(Sender: TObject;
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
        CathedraId := dmPublic.tCathedraObjectID.Value;

        cxCathedra.Text := dmPublic.tCathedraObjectCode.Value;

        acSearch.Execute;
      end;
    end;
  1:
    begin
      CathedraId := '';

      cxCathedra.Text := '';

      acSearch.Execute;
    end;
  end;
end;

procedure TfmPerson.FormShow(Sender: TObject);
begin
  inherited;

  acClear.Execute;
end;

procedure TfmPerson.acSetObjectStateExecute(Sender: TObject);
var
  id: string;
begin
  dmPublic.tPerson.Filtered := false;

  dmPublic.tPerson.First;

  while not dmPublic.tPerson.Eof do
  begin
    id := dmPublic.tPersonObjectID.Value;

    dmPublic.qPersonCount.Close;

    dmPublic.qPersonCount.SQL.Clear;

    dmPublic.qPersonCount.SQL.Add('select count(disciplineid) as PersonCount '
      + 'from disciplinepersons where personid = ''' + id + '''');

    dmPublic.qPersonCount.Open;

    dmPublic.qPersonCount.First;

    dmPublic.tPerson.Edit;

    if dmPublic.qPersonCountPersonCount.Value > 0 then
      dmPublic.tPersonObjectState.Value := true
    else
      dmPublic.tPersonObjectState.Value := false;

    dmPublic.tPerson.Post;

    dmPublic.tPerson.Next;
  end;
end;

procedure TfmPerson.cxObjectStatePropertiesChange(Sender: TObject);
begin
  case cxObjectState.ItemIndex of
  0:
    begin
      dmPublic.tPerson.Filter := 'ObjectState = true';

      dmPublic.tPerson.Filtered := true;
    end;
  1:
    begin
      dmPublic.tPerson.Filter := 'ObjectState = false';

      dmPublic.tPerson.Filtered := true;
    end;
  2:
    dmPublic.tPerson.Filtered := false;
  end;
end;

end.
