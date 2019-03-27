unit FormEditAbsUnit;

interface

uses
  Windows, Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxBarDBNav, dxBar, cxClasses, ImgList, Controls, Classes,
  ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ExtCtrls,
  dxLayoutControl;

type
  TFormEditAbs = class(TForm)
    DS: TDataSource;
    DSMaster: TDataSource;
    ActionList: TActionList;
    acCheck: TAction;
    ImageList: TImageList;
    cxStyleRep: TcxStyleRepository;
    cxStyleSel: TcxStyle;
    cxStyleDis: TcxStyle;
    dxBarManager: TdxBarManager;
    dxActionBar: TdxBar;
    dxButtons: TdxBar;
    dxOKButton: TdxBarButton;
    dxCloseButton: TdxBarButton;
    dxAction: TdxBarSubItem;
    dxSave: TdxBarButton;
    dxOK: TdxBarButton;
    dxSaveButton: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxClose: TdxBarButton;
    acSave: TAction;
    acOk: TAction;
    acCancelEdit: TAction;
    dxBarSeparator1: TdxBarSeparator;
    dxBarManagerBar1: TdxBar;
    cxPageControl: TcxPageControl;
    cxTable: TcxTabSheet;
    dxBarDockControl: TdxBarDockControl;
    Grid: TcxGrid;
    tvMain: TcxGridDBTableView;
    lvMain: TcxGridLevel;
    acNew: TAction;
    acEdit: TAction;
    acDelete: TAction;
    acPost: TAction;
    acCancel: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarDB: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxLayoutGroup_Root: TdxLayoutGroup;
    dxLayout: TdxLayoutControl;
    acCopy: TAction;
    dxBarCopy: TdxBarButton;
    acNewMaster: TAction;
    dxBarNewMaster: TdxBarButton;
    acCopyDetail: TAction;
    acPasteDetail: TAction;
    dxBarCopyDetail: TdxBarButton;
    dxBarPasteDetail: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFilterClick(Sender: TObject);
    procedure btNewItemRowClick(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acOkExecute(Sender: TObject);
    procedure acCancelEditExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dxBarManagerDocking(Sender: TdxBar;
      Style: TdxBarDockingStyle; DockControl: TdxDockControl;
      var CanDocking: Boolean);
    procedure acNewExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure tvMainCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure DSStateChange(Sender: TObject);
    procedure acCopyExecute(Sender: TObject);
    procedure acNewMasterExecute(Sender: TObject);
    procedure acCopyDetailExecute(Sender: TObject);
  private
  public
    FEditForm   : TFormEditAbs;

    Mode        : TDataSetState;

    can_close   : boolean;

    FromID: Variant;
    FromTitle: string;

    procedure UpdateMaster();

    procedure RefreshInfo(); virtual;
  end;

var
  FormEditAbs: TFormEditAbs;

implementation

uses
  DataModuleUnit
  ,Variants
  ;

{$R *.dfm}

procedure TFormEditAbs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    tvMain.StoreToIniFile(dmPublic.AppPath + '\Ini\'+ self.Name +'.ini');
  except
  end;

    if FormStyle = fsMDIChild then
      Action := caFree
    else
      Action := caHide;
end;

procedure TFormEditAbs.RefreshInfo();
begin
  if Visible then
    begin
      cxPageControl.Visible := (DS.DataSet <> nil);

      acNew.Enabled := (DS.DataSet <> nil) and (dsBrowse = DS.Dataset.State);

      acEdit.Enabled := acNew.Enabled and (not DS.DataSet.IsEmpty);

      acDelete.Enabled := acEdit.Enabled;

      acPost.Enabled := (DS.DataSet <> nil) and (DS.Dataset.State in [dsEdit, dsInsert]);

      acCancel.Enabled := acPost.Enabled;

      acCopyDetail.Enabled := acEdit.Enabled;

      acPasteDetail.Enabled := acNew.Enabled and (FromId <> NULL);
    end;
end;

procedure TFormEditAbs.btPostClick(Sender: TObject);
begin
  DS.DataSet.Post;

  RefreshInfo();
end;

procedure TFormEditAbs.FormShow(Sender: TObject);
begin
  //FromId := NULL;

  try
    case Mode of
      dsEdit    : DSMaster.DataSet.Edit;
      dsInsert  : DSMaster.DataSet.Append;
    end;
  except
  end;

  try
    tvMain.RestoreFromIniFile('Ini\'+ self.Name +'.ini');
  except
  end;

  FormResize(Sender);

  RefreshInfo();
end;

procedure TFormEditAbs.btFilterClick(Sender: TObject);
begin
  tvMain.FilterRow.Visible := not tvMain.FilterRow.Visible;
end;

procedure TFormEditAbs.btNewItemRowClick(Sender: TObject);
begin
  tvMain.NewItemRow.Visible := not tvMain.NewItemRow.Visible;
end;

procedure TFormEditAbs.UpdateMaster();
begin
  if DSMaster.DataSet.State in [dsEdit, dsInsert] then
    DSMaster.DataSet.Post;
end;

procedure TFormEditAbs.acSaveExecute(Sender: TObject);
begin
  UpdateMaster();

  if DS.DataSet <> nil then begin
    if DS.DataSet.State in [dsEdit, dsInsert] then
      try
        DS.DataSet.Post;
      except
      end;

    DS.DataSet.Refresh;
  end;

  RefreshInfo();
end;

procedure TFormEditAbs.acOkExecute(Sender: TObject);
begin
  acSaveExecute(Sender);

  Close;
end;

procedure TFormEditAbs.acCancelEditExecute(Sender: TObject);
begin
  can_close := true;

  if DSMaster.DataSet <> nil then
    if DSMaster.DataSet.State in [dsEdit, dsInsert] then
      DSMaster.DataSet.Cancel;

  if DS.DataSet <> nil then
    if DS.DataSet.State in [dsEdit, dsInsert] then
      DS.DataSet.Cancel;

  Close;
end;

procedure TFormEditAbs.FormResize(Sender: TObject);
begin
  dxButtons.DockedLeft := Width - 210;
end;

procedure TFormEditAbs.dxBarManagerDocking(Sender: TdxBar;
  Style: TdxBarDockingStyle; DockControl: TdxDockControl;
  var CanDocking: Boolean);
begin
  if Sender.Name = 'dxActionBar' then
    CanDocking := false
  else
    CanDocking := true;
end;

procedure TFormEditAbs.acNewExecute(Sender: TObject);
begin
  UpdateMaster();

  DS.DataSet.Append;

  RefreshInfo();

  if FEditForm <> nil then
    FEditForm.ShowModal
end;

procedure TFormEditAbs.acEditExecute(Sender: TObject);
begin
  DS.DataSet.Edit;

  if FEditForm <> nil then
    FEditForm.ShowModal
end;

procedure TFormEditAbs.acDeleteExecute(Sender: TObject);
begin
  DS.DataSet.Delete;

  RefreshInfo();
end;

procedure TFormEditAbs.acPostExecute(Sender: TObject);
begin
  DS.DataSet.Post;

  DS.DataSet.Close;

  DS.DataSet.Open;

  RefreshInfo();
end;

procedure TFormEditAbs.acCancelExecute(Sender: TObject);
begin
  DS.DataSet.Cancel;

  RefreshInfo();
end;

procedure TFormEditAbs.tvMainCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  acEditExecute(Self);
end;

procedure TFormEditAbs.DSDataChange(Sender: TObject; Field: TField);
begin
   RefreshInfo();
end;

procedure TFormEditAbs.DSStateChange(Sender: TObject);
begin
   RefreshInfo(); 
end;

procedure TFormEditAbs.acCopyExecute(Sender: TObject);
var
  Records: Array of Variant;

  i: integer;
begin
  if DS.Dataset <> nil then
  begin
    SetLength(Records, DS.DataSet.FieldCount);

    Records[0] := NewGUID();
    Records[1] := NULL;

    for i := 2 to DS.DataSet.FieldCount - 1 do
      Records[i] := DS.DataSet.Fields[i].Value;

    if DS.DataSet.State in [dsEdit, dsInsert] then
      DS.DataSet.Post;

    DS.DataSet.Append;

    for i := 0 to DS.DataSet.FieldCount - 1 do
      if Records[i] <> NULL then
        DS.DataSet.Fields[i].Value := Records[i];
  end;
end;

procedure TFormEditAbs.acNewMasterExecute(Sender: TObject);
begin
  DSMaster.DataSet.Append;
end;

procedure TFormEditAbs.acCopyDetailExecute(Sender: TObject);
begin
  FromId := DSMaster.DataSet.FieldValues['ObjectId'];

  RefreshInfo;
end;

end.
