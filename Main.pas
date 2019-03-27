unit MAIN;

interface

uses Windows, Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxBar, cxClasses, ImgList, Controls, StdActns, Classes, ActnList, Dialogs,
  dxStatusBar, SysUtils, cxPC;

type
  TGUIState = (gsConnected, gsWorkOffline, gsAdminRights, gsUserOMTSRights, gsUserStockRights);

  TGUIStates = set of TGUIState;

  TMainForm = class(TForm)
    OpenDialog1: TOpenDialog;
    ActionList: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout: TAction;
    WindowTileVertical1: TWindowTileVertical;
    ilImageListMain: TImageList;
    actConnectDB: TAction;
    actDisconnectDB: TAction;
    actBlockDB: TAction;
    OpenDialog: TOpenDialog;
    acExit: TAction;
    acPickServer: TAction;
    acPickDatabase: TAction;
    actCloseAll: TAction;
    acDataSetFilter: TAction;
    acRefresh: TAction;
    acHelp: TAction;
    dxBarManager: TdxBarManager;
    dxStatusBar: TdxStatusBar;
    dxBarManager1Bar1: TdxBar;
    dxConnect: TdxBarButton;
    dxFile: TdxBarSubItem;
    dxDisconnect: TdxBarButton;
    dxExit: TdxBarButton;
    dxBarManagerBar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarPopupMenu: TdxBarPopupMenu;
    dxBarHelper: TdxBarSubItem;
    ImageList: TImageList;
    acConstant: TAction;
    acShowLog: TAction;
    dxBarPopupPrint: TdxBarPopupMenu;
    dxBarHelp: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarPopupMenuImport: TdxBarPopupMenu;
    dxBarPopupMenuSource: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    acBooks: TAction;
    dxBarBooks: TdxBarButton;
    acOPOP: TAction;
    dxBarMain: TdxBarSubItem;
    dxBarOPOP: TdxBarButton;
    acDiscipline: TAction;
    dxBarDiscipline: TdxBarButton;
    acAttraction: TAction;
    dxBarButton2: TdxBarButton;
    acDegree: TAction;
    acPost: TAction;
    acStatus: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    acCathedra: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    acPerson: TAction;
    acPeriod: TAction;
    dxBarButton9: TdxBarButton;
    acAuditoryType: TAction;
    dxBarButton10: TdxBarButton;
    acAuditory: TAction;
    dxBarButton11: TdxBarButton;
    acLibrary: TAction;
    dxBarButton12: TdxBarButton;
    acCompetentionType: TAction;
    dxBarButton13: TdxBarButton;
    acCompetention: TAction;
    dxBarButton14: TdxBarButton;
    acDisciplineTransfer: TAction;
    dxBarButton15: TdxBarButton;
    acSoftware: TAction;
    dxBarButton16: TdxBarButton;
    acBuilding: TAction;
    dxBarButton17: TdxBarButton;
    procedure FileExit1Execute(Sender: TObject);
    procedure actConnectDBExecute(Sender: TObject);
    procedure actDisconnectDBExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure actCloseAllExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function FormHelp(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acHelpExecute(Sender: TObject);
    procedure acPickDatabaseExecute(Sender: TObject);
    procedure acBooksExecute(Sender: TObject);
    procedure acOPOPExecute(Sender: TObject);
    procedure acDisciplineExecute(Sender: TObject);
    procedure acAttractionExecute(Sender: TObject);
    procedure acDegreeExecute(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acStatusExecute(Sender: TObject);
    procedure acCathedraExecute(Sender: TObject);
    procedure acPersonExecute(Sender: TObject);
    procedure acPeriodExecute(Sender: TObject);
    procedure acAuditoryTypeExecute(Sender: TObject);
    procedure acAuditoryExecute(Sender: TObject);
    procedure acLibraryExecute(Sender: TObject);
    procedure acCompetentionTypeExecute(Sender: TObject);
    procedure acCompetentionExecute(Sender: TObject);
    procedure acDisciplineTransferExecute(Sender: TObject);
    procedure acSoftwareExecute(Sender: TObject);
    procedure acBuildingExecute(Sender: TObject);
  private
  public
    Err : boolean;

    aServer, aDatabase, aUserName, aPassword : string;

    GUIState    : TGUIStates;

    TableCount  : integer;

    CurrentTable: integer;

    procedure SetGUIState(State : TGUIStates);
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  FormAbsUnit
  ,DataModuleUnit
  ,Variants
  ,IniFiles
  ,LogUnit
  ,ExtActns
  ,Localization
  ,Books
  ,BooksEdit
  ,OPOP
  ,OPOPEdit
  ,Discipline
  ,DisciplineEdit
  ,Attraction
  ,AttractionEdit
  ,Degree
  ,DegreeEdit
  ,Post
  ,PostEdit
  ,Status
  ,StatusEdit
  ,Cathedra
  ,CathedraEdit
  ,Person
  ,PersonEdit
  ,PersonRate
  ,Period
  ,PeriodEdit
  ,AuditoryType
  ,AuditoryTypeEdit
  ,Auditory
  ,AuditoryEdit
  ,ELibrary
  ,ELibraryEdit
  ,CompetentionType
  ,CompetentionTypeEdit
  ,Competention
  ,CompetentionEdit
  ,DisciplineDetailTransfer
  ,Software
  ,SoftwareEdit
  ,Building
  ,BuildingEdit
  ;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.actConnectDBExecute(Sender: TObject);
var
  success: OleVariant;

  Ini: TIniFile;
begin
  dxStatusBar.Panels[0].Text := 'Соединение c ' + aServer + '://' + aDatabase + ':' + aUserName;

  dmPublic.Conn.Close;

  dmPublic.Conn.Open;

  Success := dmPublic.Conn.Connected;

  if not Success then begin
    MessageDlg('Ошибка соединения с базой данных',  mtCustom, [mbOk], 0);

    exit;
  end;

  if not dmPublic.SetOnline(true, true, false) then begin
    MessageDlg('Ошибка открытия таблиц базы данных',  mtCustom, [mbOk], 0);

    exit;
  end;

  SetGUIState([gsConnected]);
end;

procedure TMainForm.actDisconnectDBExecute(Sender: TObject);
begin
  dmPublic.SetOnline(false, false, true);

  actBlockDB.Checked := false;

  SetGUIState([]);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  SetRussian();

  SetGUIState([]);

  self.actConnectDB.Execute();
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetGUIState([]);
end;

procedure TMainForm.acExitExecute(Sender: TObject);
begin
  try
    dmPublic.Conn.Close;

    SetGUIState([]);
  except
    Application.Terminate;
  end;

  Close;
end;

procedure TMainForm.SetGUIState(State: TGUIStates);
var
  i: integer;

  item: TdxBarItem;

  start: Boolean;

  link: TdxBaritemLink;
begin
  GUIState := State;
  
  if gsConnected in State then begin
    for i := 0 to ActionList.ActionCount-1 do begin
      if (ActionList.Actions[i] as TAction).Category = 'Database' then
        (ActionList.Actions[i] as TAction).Enabled := true;
    end;

    if not (gsWorkOffline in State) then begin
      actConnectDB.Enabled    := false;
      actDisconnectDB.Enabled := true;
      actBlockDB.Enabled      := true;
      actBlockDB.Checked      := false;
      acRefresh.Enabled       := true;

      dxStatusBar.Panels[0].Text := 'Соединено c ' + aServer + '://' + aDatabase + ':' + aUserName;
    end
    else begin
      actConnectDB.Enabled    := true;
      actDisconnectDB.Enabled := false;
      actBlockDB.Checked      := true;
      acRefresh.Enabled       := false;

      dxStatusBar.Panels[0].Text := 'Локальное соединение';
    end;

    start := true;
  end
  else
  begin
    for i := 0 to ActionList.ActionCount-1 do begin
      if (ActionList.Actions[i] as TAction).Category = 'Database' then
        (ActionList.Actions[i] as TAction).Enabled := false;
    end;

    actConnectDB.Enabled    := true;
    actDisconnectDB.Enabled := false;
    actBlockDB.Enabled      := false;
    acRefresh.Enabled       := false;

    dxStatusBar.Panels[0].Text := 'Отключено';

    for i := MDIChildCount-1 downto 0 do
      MDIChildren[i].Close;
  end;
end;

procedure TMainForm.actCloseAllExecute(Sender: TObject);
var
  i: integer;
begin
  for i := MDIChildCount-1 downto 0 do
    MDIChildren[i].Close;
end;

procedure TMainForm.acRefreshExecute(Sender: TObject);
begin
  ShowMessage('Обновление завершено!');
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  actCloseAllExecute(Self);
end;

function TMainForm.FormHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
  Application.HelpFile := 'help.chm';

  Application.HelpContext(0);
end;

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(VK_Help) then
    Application.HelpContext(0);
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Help then
    Application.HelpContext(0);
end;

procedure TMainForm.acHelpExecute(Sender: TObject);
var
  fr: TFileRun;
begin
  fr := TFileRun.Create(self);

  fr.FileName := 'help.chm';

  fr.Execute;

  fr.Free;
end;

procedure TMainForm.acPickDatabaseExecute(Sender: TObject);
begin
  //
end;

procedure TMainForm.acBooksExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmBooks.Execute(fmBooksEdit, '');

  F.Show;
end;

procedure TMainForm.acOPOPExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmOPOP.Execute(fmOPOPEdit, '');

  F.Show;
end;

procedure TMainForm.acDisciplineExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmDiscipline.Execute(fmDisciplineEdit, '');

  F.Show;
end;

procedure TMainForm.acAttractionExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmAttraction.Execute(fmAttractionEdit, '');

  F.Show;
end;

procedure TMainForm.acDegreeExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmDegree.Execute(fmDegreeEdit, '');

  F.Show;
end;

procedure TMainForm.acPostExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmPost.Execute(fmPostEdit, '');

  F.Show;
end;

procedure TMainForm.acStatusExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmStatus.Execute(fmStatusEdit, '');

  F.Show;
end;

procedure TMainForm.acCathedraExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmCathedra.Execute(fmCathedraEdit, '');

  F.Show;
end;

procedure TMainForm.acPersonExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmPerson.Execute(fmPersonEdit, '');

  F.Show;
end;

procedure TMainForm.acPeriodExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmPeriod.Execute(fmPeriodEdit, '');

  F.Show;
end;

procedure TMainForm.acAuditoryTypeExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmAuditoryType.Execute(fmAuditoryTypeEdit, '');

  F.Show;
end;

procedure TMainForm.acAuditoryExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmAuditory.Execute(fmAuditoryEdit, '');

  F.Show;
end;

procedure TMainForm.acLibraryExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmLibrary.Execute(fmLibraryEdit, '');

  F.Show;
end;

procedure TMainForm.acCompetentionTypeExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmCompetentionType.Execute(fmCompetentionTypeEdit, '');

  F.Show;
end;

procedure TMainForm.acCompetentionExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmCompetention.Execute(fmCompetentionEdit, '');

  F.Show;
end;

procedure TMainForm.acDisciplineTransferExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmDisciplineTransfer.Execute();
end;

procedure TMainForm.acSoftwareExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmSoftware.Execute(fmSoftwareEdit, '');

  F.Show;
end;

procedure TMainForm.acBuildingExecute(Sender: TObject);
var
  F: TForm;
begin
  F := TfmBuilding.Execute(fmBuildingEdit, '');

  F.Show;
end;

end.
