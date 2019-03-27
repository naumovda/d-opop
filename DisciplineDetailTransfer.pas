unit DisciplineDetailTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormReportAbsUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ImgList, dxBar, cxClasses, ActnList,
  cxSplitter, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxGroupBox, cxRadioGroup, Menus, StdCtrls,
  cxButtons;

type
  TfmDisciplineTransfer = class(TFormReportAbs)
    cxSourceOPOP: TcxDBButtonEdit;
    dxOPOP: TdxLayoutItem;
    dxLayoutDiscipline: TdxLayoutItem;
    cxDiscipline: TcxGrid;
    tvDiscipline: TcxGridDBTableView;
    lvDiscipline: TcxGridLevel;
    tvDisciplineRowNumber: TcxGridDBColumn;
    tvDisciplineObjectCode: TcxGridDBColumn;
    tvDisciplineObjectName: TcxGridDBColumn;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxSelect: TcxRadioGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxDetail: TcxGrid;
    tvBiblio: TcxGridDBTableView;
    tvMainBook: TcxGridDBColumn;
    tvMainIsBase: TcxGridDBColumn;
    tvPerson: TcxGridDBTableView;
    tvPersonPerson: TcxGridDBColumn;
    tvPersonIsBaseProfile: TcxGridDBColumn;
    tvPersonHoursRate: TcxGridDBColumn;
    tvPersonHours: TcxGridDBColumn;
    tvPersonRatio: TcxGridDBColumn;
    tvAuditory: TcxGridDBTableView;
    tvAuditoryAuditory: TcxGridDBColumn;
    tvAuditoryType: TcxGridDBColumn;
    lvDetail: TcxGridLevel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDestOPOP: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDisciplineDest: TcxGrid;
    tvDisciplineDest: TcxGridDBTableView;
    lvDisciplineDest: TcxGridLevel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    cxDestination: TcxGrid;
    tvBiblioDestination: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    tvPersonDestination: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    tvAuditoryDestination: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    lvDestination: TcxGridLevel;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutDestinationDetail: TdxLayoutItem;
    tvDisciplineDestRowNumber: TcxGridDBColumn;
    tvDisciplineDestObjectCode: TcxGridDBColumn;
    tvDisciplineDestObjectName: TcxGridDBColumn;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    acAddOne: TAction;
    acAddDetail: TAction;
    acAddAll: TAction;
    tvSoftware: TcxGridDBTableView;
    tvSoftwareRowNumber: TcxGridDBColumn;
    tvSoftwareSoftware: TcxGridDBColumn;
    tvSoftwareLicense: TcxGridDBColumn;
    tvSoftwareDestination: TcxGridDBTableView;
    tvSoftwareDestinationRowNumber: TcxGridDBColumn;
    tvSoftwareDestinationSoftware: TcxGridDBColumn;
    procedure cxSelectPropertiesChange(Sender: TObject);
    procedure cxOPOPSourcePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxOPOPDestinationPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acAddDetailExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acAddOneExecute(Sender: TObject);
  private
    { Private declarations }
  public
    SourceOPOPId, DestOPOPId: string;
  end;

var
  fmDisciplineTransfer: TfmDisciplineTransfer;

implementation

{$R *.dfm}

uses
  DataModuleUnit
  ,OPOP
  ,OPOPEdit  
  ;

procedure TfmDisciplineTransfer.cxSelectPropertiesChange(Sender: TObject);
begin
  case cxSelect.EditValue of
  0:
    begin
      lvDetail.GridView := tvBiblio;

      lvDestination.GridView := tvBiblioDestination;
    end;
  1:
    begin
      lvDetail.GridView := tvPerson;

      lvDestination.GridView := tvPersonDestination;
    end;
  2:
    begin
      lvDetail.GridView := tvAuditory;

      lvDestination.GridView := tvAuditoryDestination
    end;
  3:
    begin
      lvDetail.GridView := tvSoftware;

      lvDestination.GridView := tvSoftwareDestination
    end;
  end;
end;

procedure TfmDisciplineTransfer.cxOPOPSourcePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmOPOP.Execute(fmOPOPEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    SourceOPOPId := dmPublic.tOPOPObjectID.Value;

    cxSourceOPOP.Text := dmPublic.tOPOPObjectCode.Value;

    dmPublic.tDiscipline.Filter := 'OPOPId ='''+ SourceOPOPId +'''';

    dmPublic.tDiscipline.Filtered := true;
  end;
end;

procedure TfmDisciplineTransfer.FormShow(Sender: TObject);
begin
  inherited;

  dmPublic.tOPOP.First;

  SourceOPOPId := dmPublic.tOPOPObjectID.Value;

  dmPublic.tDiscipline.Filter := 'OPOPId ='''+ SourceOPOPId +'''';

  dmPublic.tDiscipline.Filtered := true;

  cxSelectPropertiesChange(Sender);    
end;

procedure TfmDisciplineTransfer.cxOPOPDestinationPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  F: TForm;
begin
  F := TfmOPOP.Execute(fmOPOPEdit, 'modal');

  F.ShowModal;

  if F.Tag = mrOk then
  begin
    DestOPOPId := dmPublic.tOPOPObjectID.Value;

    cxDestOPOP.Text := dmPublic.tOPOPObjectCode.Value;

    dmPublic.tDestOPOP.Close;

    dmPublic.tDestOPOP.Open;

    dmPublic.tDestOPOP.Locate('ObjectId', DestOPOPId, []);

    dmPublic.tDestDiscipline.Close;

    dmPublic.tDestDiscipline.Open;

    dmPublic.tDestDisciplineBooks.Close;

    dmPublic.tDestDisciplineBooks.Open;

    dmPublic.tDestDisciplineSoftware.Close;

    dmPublic.tDestDisciplineSoftware.Open;
  end;
end;

procedure TfmDisciplineTransfer.acAddDetailExecute(Sender: TObject);
var
  strFromId, strToId, strQuery: string;
begin
  strFromId := dmPublic.tDiscipline.FieldValues['ObjectId'];

  strToId := dmPublic.tDestDiscipline.FieldValues['ObjectId'];

  case cxSelect.EditValue of
  0:
    //библиография
    strQuery := 'INSERT INTO DisciplineBooks(BookId, DisciplineId, IsBase) SELECT '
      + 'BookId, '
      + '''' + strToId + ''''
      + ', IsBase FROM DisciplineBooks WHERE DisciplineId = '
      + '''' + strFromId + '''';
  1:
    //кадры
    strQuery := 'INSERT INTO DisciplinePersons(PersonId, Hours, HoursRate, Ratio, DisciplineId) SELECT '
      + 'PersonId, Hours, HoursRate, Ratio, '
      + '''' + strToId + ''''
      + ' FROM DisciplinePersons WHERE DisciplineId = '
      + '''' + strFromId + '''';
  2:
    //аудитории
    strQuery := 'INSERT INTO DisciplineAuditory(AuditoryId, AuditoryTypeId, DisciplineId) SELECT '
      + 'AuditoryId, AuditoryTypeId, '
      + '''' + strToId + ''''
      + ' FROM DisciplineAuditory WHERE DisciplineId = '
      + '''' + strFromId + '''';
  3:
    //ПО
    strQuery := 'INSERT INTO DisciplineSoftware(SoftwareId, RowNumber, DisciplineId) SELECT '
      + 'SoftwareId, RowNumber, '
      + '''' + strToId + ''''
      + ' FROM DisciplineSoftware WHERE DisciplineId = '
      + '''' + strFromId + '''';
  end;

  dmPublic.qCopyPaste.SQL.Clear;

  dmPublic.qCopyPaste.SQL.Add(strQuery);

  dmPublic.qCopyPaste.ExecSQL;

  case cxSelect.EditValue of
  0:
    //библиография
    begin
      dmPublic.tDestDisciplineBooks.Close;

      dmPublic.tDestDisciplineBooks.Open;
    end;
  1:
    //кадры
    begin
      //dmPublic.tDestDisciplinePerson.Close;

      //dmPublic.tDestDisciplinePerson.Open;
    end;
  2:
    //аудитории
    begin
      //dmPublic.tDestDisciplineAuditory.Close;

      //dmPublic.tDestDisciplineAuditory.Open;
    end;
  3:
    //ПО
    begin
      dmPublic.tDestDisciplineSoftware.Close;

      dmPublic.tDestDisciplineSoftware.Open;
    end;
  end;
end;

procedure TfmDisciplineTransfer.acRefreshExecute(Sender: TObject);
begin
  inherited;

  dmPublic.tDisciplineBooks.Close;

  dmPublic.tDisciplineBooks.Open;

  //dmPublic.tDisciplinePerson.Close;

  //dmPublic.tDisciplinePerson.Open;

  //dmPublic.tDisciplineAuditory.Close;

  //dmPublic.tDisciplineAuditory.Open;

  dmPublic.tDestDisciplineSoftware.Close;

  dmPublic.tDestDisciplineSoftware.Open;
end;

procedure TfmDisciplineTransfer.acAddOneExecute(Sender: TObject);
var
  strFromId, strToId, strQuery, strDetailId: string;
begin
  strFromId := dmPublic.tDiscipline.FieldValues['ObjectId'];

  strToId := dmPublic.tDestDiscipline.FieldValues['ObjectId'];

  strDetailId := dmPublic.tDisciplineBooks.FieldValues['BookId'];

  case cxSelect.EditValue of
  0:
    //библиография
    strQuery := 'INSERT INTO DisciplineBooks(BookId, DisciplineId, IsBase) SELECT '
      + 'BookId, '
      + '''' + strToId + ''''
      + ', IsBase FROM DisciplineBooks WHERE DisciplineId = '
      + '''' + strFromId + ''' and BookId = '
      + '''' + strDetailId + '''';
  {
  1:
    //кадры
    strQuery := 'INSERT INTO DisciplinePersons(PersonId, Hours, HoursRate, Ratio, DisciplineId) SELECT '
      + 'PersonId, Hours, HoursRate, Ratio, '
      + '''' + strToId + ''''
      + ' FROM DisciplinePersons WHERE DisciplineId = '
      + '''' + strFromId + '''';
  2:
    //аудитории
    strQuery := 'INSERT INTO DisciplineAuditory(AuditoryId, AuditoryTypeId, DisciplineId) SELECT '
      + 'AuditoryId, AuditoryTypeId, '
      + '''' + strToId + ''''
      + ' FROM DisciplineAuditory WHERE DisciplineId = '
      + '''' + strFromId + '''';
  }
  3:
    //программное обеспечение
    strQuery := 'INSERT INTO DisciplineSoftware(SoftwareId, DisciplineId, RowNumber) SELECT '
      + 'SoftwareId, '
      + '''' + strToId + ''''
      + ', RowNumber FROM DisciplineBooks WHERE DisciplineId = '
      + '''' + strFromId + ''' and SoftwareId = '
      + '''' + strDetailId + '''';
  end;

  dmPublic.qCopyPaste.SQL.Clear;

  dmPublic.qCopyPaste.SQL.Add(strQuery);

  dmPublic.qCopyPaste.ExecSQL;

  case cxSelect.EditValue of
  0:
    //библиография
    begin
      dmPublic.tDestDisciplineBooks.Close;

      dmPublic.tDestDisciplineBooks.Open;
    end;
  1:
    //кадры
    begin
      //dmPublic.tDestDisciplinePerson.Close;

      //dmPublic.tDestDisciplinePerson.Open;
    end;
  2:
    //аудитории
    begin
      //dmPublic.tDestDisciplineAuditory.Close;

      //dmPublic.tDestDisciplineAuditory.Open;
    end;
  3:
    begin
      dmPublic.tDestDisciplineSoftware.Close;

      dmPublic.tDestDisciplineSoftware.Open;
    end;
  end;
end;

end.
