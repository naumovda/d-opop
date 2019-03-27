unit Localization;

interface

  uses
    cxClasses,
    cxEditConsts,
    cxDataConsts,
    dxBarStrs,
    cxPivotGridStrs,
    cxExportStrs,
    cxLibraryStrs,
    cxGridStrs,
    cxPCConsts,
    dxExtCtrlsStrs,
    cxTLStrs,
    dxsbstrs,
    cxFilterControlStrs,
    dxBarDBNavStrs,
    cxSSRes
    ;

  procedure SetRussian();

implementation

procedure SetRussian();
begin
  cxSetResourceString(@cxSEditCheckBoxChecked     ,'��');
  cxSetResourceString(@cxSEditCheckBoxGrayed      ,'�� ����������');
  cxSetResourceString(@cxSEditCheckBoxUnchecked   ,'���');
  cxSetResourceString(@cxSRadioGroupDefaultCaption,'�� ����������');

  cxSetResourceString(@cxSTextTrue,       '��');
  cxSetResourceString(@cxSTextFalse,      '���');


  cxSetResourceString(@cxSDatePopupClear, '��������');
  cxSetResourceString(@cxSDatePopupNow,   '������');
  cxSetResourceString(@cxSDatePopupOK,    'OK');
  cxSetResourceString(@cxSDatePopupToday, '�������');
  cxSetResourceString(@cxSDateError,      '�������� ����!');


  cxSetResourceString(@scxUnsupportedExport, '�� �������������� ������� ����: %1');
  cxSetResourceString(@scxStyleManagerKill,'�������� ����� � ��������� ����� ����� � �� ����� ���� ����������� ���� � ������ ������');
  cxSetResourceString(@scxStyleManagerCreate,'�� ���� ������� �������� �����');

  cxSetResourceString(@scxExportToHtml , '������� � ���-�������� (*.html)');
  cxSetResourceString(@scxExportToXml  , '������� � XML (*.xml)');
  cxSetResourceString(@scxExportToText , '������� � ��������� ������ (*.txt)');

  cxSetResourceString(@scxEmptyExportCache, '��� �������� ����');
  cxSetResourceString(@scxIncorrectUnion, '������������ ����������� �����');
  cxSetResourceString(@scxIllegalWidth, '������� ������ ������ �������');
  cxSetResourceString(@scxInvalidColumnRowCount, '������� ������ ����� �������� ��� �����');
  cxSetResourceString(@scxIllegalHeight, '������� ������ ������ ������');
  cxSetResourceString(@scxInvalidColumnIndex, '����������� ����� �� �������� ����� %d ');
  cxSetResourceString(@scxInvalidRowIndex, '����������� ����� �� ������� ����� %d');
  cxSetResourceString(@scxInvalidStyleIndex, '�������� ������ ����� %d');

  cxSetResourceString(@scxExportToExcel, '�������������� � MS Excel (*.xls)');
  cxSetResourceString(@scxWorkbookWrite, '������ ������ � XLS-����');
  cxSetResourceString(@scxInvalidCellDimension, '������� ����� ������ ������');

  cxSetResourceString(@scxBoolTrue , '��');
  cxSetResourceString(@scxBoolFalse, '���');

  cxSetResourceString(@sxlfFalse, '���');
  cxSetResourceString(@sxlfTrue,  '��');

  cxSetResourceString(@cxSFilterBoolOperatorAnd, '�');        // all
  cxSetResourceString(@cxSFilterBoolOperatorOr, '���');           // any
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, '� ��');  // not all
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, '��� ��');    // not any
  //
    cxSetResourceString(@cxSFilterRootButtonCaption, '������'); 
  cxSetResourceString(@cxSFilterAddCondition, '�������� &�������'); 
  cxSetResourceString(@cxSFilterAddGroup, '�������� &������'); 
  cxSetResourceString(@cxSFilterRemoveRow, '&������� ������'); 
  cxSetResourceString(@cxSFilterClearAll, '�������� &���'); 
  cxSetResourceString(@cxSFilterFooterAddCondition, '������� ������ ��� ���������� ������  �������');

  cxSetResourceString(@cxSFilterGroupCaption, '��������� ��� ��������� �������');
  cxSetResourceString(@cxSFilterRootGroupCaption, '<������>');
  cxSetResourceString(@cxSFilterControlNullString, '<�����>');
  cxSetResourceString(@cxSFilterErrorBuilding, '���������� ������� ������ �� �������� ������');

  //FilterDialog
    cxSetResourceString(@cxSFilterDialogCaption, '���������������� ������'); 
  cxSetResourceString(@cxSFilterDialogInvalidValue, '������� ������ ��������'); 
  cxSetResourceString(@cxSFilterDialogUse, '������������'); 
  cxSetResourceString(@cxSFilterDialogSingleCharacter, '���������������� ��������� �������'); 
  cxSetResourceString(@cxSFilterDialogCharactersSeries, '���������������� ������������������ ��������'); 
  cxSetResourceString(@cxSFilterDialogOperationAnd, '�'); 
  cxSetResourceString(@cxSFilterDialogOperationOr, '���'); 
  cxSetResourceString(@cxSFilterDialogRows, '���������� ������, ���:'); 

  // FilterControlDialog
  cxSetResourceString(@cxSFilterControlDialogCaption, '����������� ��������'); 
  cxSetResourceString(@cxSFilterControlDialogNewFile, 'untitled.flt'); 
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, '������� ������������ ������'); 
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, '��������� �������� ������ � ����'); 
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, '&��������� ���...'); 
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&�������...'); 
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, '&���������'); 
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'OK'); 
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, '������'); 
  cxSetResourceString(@cxSFilterControlDialogFileExt, 'flt'); 
  cxSetResourceString(@cxSFilterControlDialogFileFilter, '������� (*.flt)|*.flt');

  cxSetResourceString(@scxGridRecursiveLevels, '�� �� ������ ������� ����������� ������'); 

  cxSetResourceString(@scxGridDeletingConfirmationCaption, '�����������'); 
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText, '������� ������?');
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText, '������� ��� ���������� ������?'); 

  cxSetResourceString(@scxGridNoDataInfoText, '<��� ������ ��� �����������>');

  cxSetResourceString(@scxGridFilterRowInfoText, '�������� ��� ������� �������'); 
  cxSetResourceString(@scxGridNewItemRowInfoText, '�������� ��� ���������� ����� ������'); 

  cxSetResourceString(@scxGridFilterIsEmpty, '<������ �����������>');

  cxSetResourceString(@scxGridCustomizationFormCaption, '���������');
  cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, '�������'); 
  cxSetResourceString(@scxGridGroupByBoxCaption, '����������� ���� ��������� ������� ��� ����������� ������'); 
  cxSetResourceString(@scxGridFilterApplyButtonCaption, '��������� ������');  
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption, '���������...'); 
  cxSetResourceString(@scxGridColumnsQuickCustomizationHint, '��������, ����� ��������/������/����������� �������'); 

  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, '�����'); 
  cxSetResourceString(@scxGridBandsQuickCustomizationHint, '�������� �����, ����� ��������/������/����������� �����'); 

  cxSetResourceString(@scxGridCustomizationFormRowsPageCaption, '������'); 

  cxSetResourceString(@scxGridConverterIntermediaryMissing, '�������� ������������� ���������!'#13#10'�������� ��������� %s �� �����.'); 
  cxSetResourceString(@scxGridConverterNotExistGrid, 'cxGrid �� ����������'); 
  cxSetResourceString(@scxGridConverterNotExistComponent, '��������� �� ����������'); 
  cxSetResourceString(@scxImportErrorCaption, '������ �������'); 

  cxSetResourceString(@scxNotExistGridView, '������������� ������� �� ����������'); 
  cxSetResourceString(@scxNotExistGridLevel, '��� ��������� ������ �������'); 
  cxSetResourceString(@scxCantCreateExportOutputFile, '���������� ������� �������� ���� ��������'); 

  cxSetResourceString(@cxSEditRepositoryExtLookupComboBoxItem, 'ExtLookupComboBox|��������� ����������� ����� � ������� QuantumGrid ����������� ��������������� � ������ ������.'); 

  // date ranges

  cxSetResourceString(@scxGridYesterday, '�����'); 
  cxSetResourceString(@scxGridToday, '�������'); 
  cxSetResourceString(@scxGridTomorrow, '������'); 
  cxSetResourceString(@scxGridLast30Days, '��������� 30 ����'); 
  cxSetResourceString(@scxGridLast14Days, '��������� 14 ����'); 
  cxSetResourceString(@scxGridLast7Days, '��������� 7 ����'); 
  cxSetResourceString(@scxGridNext7Days, '��������� 7 ����'); 
  cxSetResourceString(@scxGridNext14Days, '��������� 14 ����'); 
  cxSetResourceString(@scxGridNext30Days, ' ��������� 30 ����'); 
  cxSetResourceString(@scxGridLastTwoWeeks, '��������� ��� ������'); 
  cxSetResourceString(@scxGridLastWeek, '��������� ������'); 
  cxSetResourceString(@scxGridThisWeek, '��� ������'); 
  cxSetResourceString(@scxGridNextWeek, '��������� ������'); 
  cxSetResourceString(@scxGridNextTwoWeeks, '��� ����������� ������'); 
  cxSetResourceString(@scxGridLastMonth, '��������� �����'); 
  cxSetResourceString(@scxGridThisMonth, '���� �����'); 
  cxSetResourceString(@scxGridNextMonth, '��������� �����'); 
  cxSetResourceString(@scxGridLastYear, '������� ���'); 
  cxSetResourceString(@scxGridThisYear, '���� ���'); 
  cxSetResourceString(@scxGridNextYear, '��������� ���'); 
  cxSetResourceString(@scxGridPast, '�������'); 
  cxSetResourceString(@scxGridFuture, '�������'); 

  cxSetResourceString(@scxGridMonthFormat, 'mmmm yyyy'); 
  cxSetResourceString(@scxGridYearFormat, 'yyyy'); 
 // ChartView
  
  cxSetResourceString(@scxGridChartCategoriesDisplayText, '������'); 

  cxSetResourceString(@scxGridChartValueHintFormat, '%s ��� %s ����� %s');   // series display text, category, value
  cxSetResourceString(@scxGridChartPercentValueTickMarkLabelFormat, '0%'); 

  cxSetResourceString(@scxGridChartToolBoxDataLevels, '������ ������:'); 
  cxSetResourceString(@scxGridChartToolBoxDataLevelSelectValue, '����� ��������'); 
  cxSetResourceString(@scxGridChartToolBoxCustomizeButtonCaption, '��������� ���������'); 

  cxSetResourceString(@scxGridChartNoneDiagramDisplayText, '��� ���������'); 
  cxSetResourceString(@scxGridChartColumnDiagramDisplayText, '���������� ���������'); 
  cxSetResourceString(@scxGridChartBarDiagramDisplayText, '�����������'); 
  cxSetResourceString(@scxGridChartLineDiagramDisplayText, '���������� ���������'); 
  cxSetResourceString(@scxGridChartAreaDiagramDisplayText, '��������� � ���������'); 
  cxSetResourceString(@scxGridChartPieDiagramDisplayText, '����������� �������� �������� ���������'); 

  cxSetResourceString(@scxGridChartCustomizationFormSeriesPageCaption, '������������������'); 
  cxSetResourceString(@scxGridChartCustomizationFormSortBySeries, '����������� ��:'); 
  cxSetResourceString(@scxGridChartCustomizationFormNoSortedSeries, '<none series>'); 
  cxSetResourceString(@scxGridChartCustomizationFormDataGroupsPageCaption, '������ ������'); 
  cxSetResourceString(@scxGridChartCustomizationFormOptionsPageCaption, '��������'); 

  cxSetResourceString(@scxGridChartLegend, '�������'); 
  cxSetResourceString(@scxGridChartLegendKeyBorder, '������� ����� �������'); 
  cxSetResourceString(@scxGridChartPosition, '�������'); 
  cxSetResourceString(@scxGridChartPositionDefault, '�� ���������'); 
  cxSetResourceString(@scxGridChartPositionNone, '������'); 
  cxSetResourceString(@scxGridChartPositionLeft, '�����'); 
  cxSetResourceString(@scxGridChartPositionTop, '�� �������� ����'); 
  cxSetResourceString(@scxGridChartPositionRight, '������'); 
  cxSetResourceString(@scxGridChartPositionBottom, '�� ������� ����'); 
  cxSetResourceString(@scxGridChartAlignment, '������������'); 
  cxSetResourceString(@scxGridChartAlignmentDefault, '�� ���������'); 
  cxSetResourceString(@scxGridChartAlignmentStart, '������'); 
  cxSetResourceString(@scxGridChartAlignmentCenter, '�� ������'); 
  cxSetResourceString(@scxGridChartAlignmentEnd, '�����'); 
  cxSetResourceString(@scxGridChartOrientation, '����������'); 
  cxSetResourceString(@scxGridChartOrientationDefault, '�� ���������'); 
  cxSetResourceString(@scxGridChartOrientationHorizontal, '��������������'); 
  cxSetResourceString(@scxGridChartOrientationVertical, '������������'); 
  cxSetResourceString(@scxGridChartBorder, '�������'); 
  cxSetResourceString(@scxGridChartTitle, '���������'); 
  cxSetResourceString(@scxGridChartToolBox, '���� ��������������'); 
  cxSetResourceString(@scxGridChartDiagramSelector, '����� ��������'); 
  cxSetResourceString(@scxGridChartOther, '������'); 
  cxSetResourceString(@scxGridChartValueHints, '����������� ���������'); 

  cxSetResourceString(@cxSDateToday                      , '�������'); 
  cxSetResourceString(@cxSDateYesterday                  , '�����'); 
  cxSetResourceString(@cxSDateTomorrow                   , '������'); 
  cxSetResourceString(@cxSDateSunday                     , '�����������'); 
  cxSetResourceString(@cxSDateMonday                     , '�����������'); 
  cxSetResourceString(@cxSDateTuesday                    , '�������'); 
  cxSetResourceString(@cxSDateWednesday                  , '�����'); 
  cxSetResourceString(@cxSDateThursday                   , '�������'); 
  cxSetResourceString(@cxSDateFriday                     , '�������'); 
  cxSetResourceString(@cxSDateSaturday                   , '�������'); 
  cxSetResourceString(@cxSDateFirst                      , '������'); 
  cxSetResourceString(@cxSDateSecond                     , '������'); 
  cxSetResourceString(@cxSDateThird                      , '������'); 
  cxSetResourceString(@cxSDateFourth                     , '���������'); 
  cxSetResourceString(@cxSDateFifth                      , '�����'); 
  cxSetResourceString(@cxSDateSixth                      , '������'); 
  cxSetResourceString(@cxSDateSeventh                    , '�������'); 
  cxSetResourceString(@cxSDateBOM                        , '������'); 
  cxSetResourceString(@cxSDateEOM                        , '�����'); 
  cxSetResourceString(@cxSDateNow                        , '������'); 

  cxSetResourceString(@scxDataField , '������');
  //
  cxSetResourceString(@scxDropFilterFields, '��������� ���� ���� ��� ����������'); 
  cxSetResourceString(@scxDropDataItems   , '��������� ���� ���� ������'); 
  cxSetResourceString(@scxDropRowFields   , '��������� ���� ���� �����'); 
  cxSetResourceString(@scxDropColumnFields, '��������� ���� ���� ��������'); 
  cxSetResourceString(@scxGrandTotal      , '����� ����'); 
  cxSetResourceString(@scxNoDataToDisplay , '<��� ������ ��� �����������>'); 

  // field list strings
  cxSetResourceString(@scxAddTo           , '�������� �'); 
  cxSetResourceString(@scxDragItems       , '���������� �������� � �������'); 
  cxSetResourceString(@scxFieldListCaption, '������ �����'); 

  cxSetResourceString(@scxRowArea   , '������� �����'); 
  cxSetResourceString(@scxColumnArea, '������� ��������'); 
  cxSetResourceString(@scxFilterArea, '������� �������'); 
  cxSetResourceString(@scxDataArea  , '������� ������'); 

  // group strings 
  cxSetResourceString(@scxGroupTotal     , '%s �����'); 
  cxSetResourceString(@scxGroupCount     , '%s ����������'); 
  cxSetResourceString(@scxGroupSum       , '%s �����'); 
  cxSetResourceString(@scxGroupMin       , '%s �������'); 
  cxSetResourceString(@scxGroupMax       , '%s ��������'); 
  cxSetResourceString(@scxGroupAverage   , '%s �������'); 
  cxSetResourceString(@scxGroupStdDev    , '%s ���'); 
  cxSetResourceString(@scxGroupStdDevP   , '%s ����'); 
  cxSetResourceString(@scxGroupVariance  , '%s ���'); 
  cxSetResourceString(@scxGroupVarianceP , '%s ����'); 
  cxSetResourceString(@scxGroupCustom    , '%s ��������'); 

  cxSetResourceString(@scxOthers          , '������'); 

  // filter strings
  cxSetResourceString(@scxPivotGridShowAll, '(�������� ���)'); 
  cxSetResourceString(@scxPivotGridOk     , 'Ok'); 
  cxSetResourceString(@scxPivotGridCancel , '��������'); 

  // intervals
  cxSetResourceString(@scxQuarterFormat, '�����. %d');

  // pivot grid exception

  cxSetResourceString(@scxFieldNotADataField, '���� ������ ���� � ������� ������!'); 
  cxSetResourceString(@scxInvalidLayout , '�������� ���������!'); 
  cxSetResourceString(@scxNotImplemented,  '��� �� ���������!'); 

  // pivot grid pupup menu items
  cxSetResourceString(@scxSeparator      , '-'); 

  cxSetResourceString(@scxHide           , '������'); 
  cxSetResourceString(@scxOrder          , '�����������'); 
  cxSetResourceString(@scxMoveToBeginning, '������� �� ������'); 
  cxSetResourceString(@scxMoveToEnd      , '������� �� �����'); 
  cxSetResourceString(@scxMoveToLeft     , '������� �����'); 
  cxSetResourceString(@scxMoveToRight    , '������� ������'); 
  //
  cxSetResourceString(@scxExpand         , '����������'); 
  cxSetResourceString(@scxCollapse       , '��������'); 
  cxSetResourceString(@scxExpandAll      , '���������� ���'); 
  cxSetResourceString(@scxCollapseAll    , '�������� ���'); 
  // misc. commands
  cxSetResourceString(@scxShowCustomization, '�������� ������ �����'); 
  cxSetResourceString(@scxHideCustomization, '������ ������ �����'); 

  cxSetResourceString(@scxIndexOutOfBounds   , '������ %d �� ����� ������'); 
  cxSetResourceString(@scxInvalidStreamFormat, '�������� ������ ������'); 
  cxSetResourceString(@scxMultiSelectRequired, '���������� ������� ��������� �������'); 

  // designers constants

  cxSetResourceString(@scxDesignerCaption    , '�������������� TreeListDesigner - '); 
  cxSetResourceString(@scxBands              , '�����...'); 
  cxSetResourceString(@scxColumns            , '�������...'); 
  cxSetResourceString(@scxCreateAllItems     , '������� ��� �������'); 
  cxSetResourceString(@scxDeleteAllItems     , '������� ��� �������'); 
  cxSetResourceString(@scxItems, '�������� �������...'); 

  // customizing box
  
  cxSetResourceString(@scxCustomizeCaption, '���������'); 
  cxSetResourceString(@scxColumnsCaption  , '   �������   '); 
  cxSetResourceString(@scxBandsCaption    , '    �����    '); 

  //cxSetResourceString(@scxInvalidIntegerValue  , '�� ����� �����'); 
  cxSetResourceString(@scxOperationNotSupported, '�������� �� ��������������'); 

  cxSetResourceString(@scxTreeListDeletingFocusedConfirmationText, '������� ������?'); 
  cxSetResourceString(@scxTreeListDeletingConfirmationCaption, '�����������'); 

  cxSetResourceString(@scxExportNotVisibleControl, '�������� ������ ���� ������� ��� ��������'); 

  cxSetResourceString(@dxSBAR_DBNAVERROR1, '� ��� ��� ���� ������ DBNavigator � ����� �� ������');

  cxSetResourceString(@dxSBAR_CATEGORYNAME, '���������');
  cxSetResourceString(@dxSBAR_DELETERECORD, '�� ������ ������� ������� ������'); 

  cxSetResourceString(@dxSBAR_BTNCAPTION_FIRST, '������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_PRIOR, '����������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_NEXT, '���������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_LAST, '���������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_INSERT, '��������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_DELETE, '�������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_EDIT, '�������������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_POST, '�����'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_CANCEL, '������'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_REFRESH, '��������'); 


  cxSetResourceString(@dxSBAR_LOOKUPDIALOGCAPTION, '�������� ��������'); 
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGOK, 'OK'); 
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGCANCEL, '������'); 

  cxSetResourceString(@dxSBAR_DIALOGOK, 'OK'); 
  cxSetResourceString(@dxSBAR_DIALOGCANCEL, '������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_0, '������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_1, '������-����������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_2, '�������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_3, '���������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_4, '�����-�����'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_5, '����������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_6, '�������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_7, '�����'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_8, '�����������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_9, '�������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_10, '������-�������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_11, '������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_12, '�����'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_13, '������'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_14, '���� ������� �����'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_15, '�����'); 
  cxSetResourceString(@dxSBAR_COLORAUTOTEXT, '(automatic)'); 
  cxSetResourceString(@dxSBAR_COLORCUSTOMTEXT, '(custom)'); 
  cxSetResourceString(@dxSBAR_DATETODAY, '�������'); 
  cxSetResourceString(@dxSBAR_DATECLEAR, '��������'); 
  cxSetResourceString(@dxSBAR_DATEDIALOGCAPTION, '�������� ����'); 
  cxSetResourceString(@dxSBAR_TREEVIEWDIALOGCAPTION, '�������� �����'); 
  cxSetResourceString(@dxSBAR_IMAGEDIALOGCAPTION, '�������� �����'); 
  cxSetResourceString(@dxSBAR_IMAGEINDEX, '����� �����������'); 
  cxSetResourceString(@dxSBAR_IMAGETEXT, '�����'); 
  cxSetResourceString(@dxSBAR_PLACEFORCONTROL, '����� ��� '); 
  cxSetResourceString(@dxSBAR_CANTASSIGNCONTROL, '�� �� ������ ����������� ���� � �� �� ���������� ���� � ����� TcxSetResourceString(@dxBarControlContainerItem'); 
  cxSetResourceString(@dxSBAR_CXEDITVALUEDIALOGCAPTION, '������� ��������'); 

  cxSetResourceString(@dxSBAR_WANTTORESETTOOLBAR, '�� �������, ��� ������ �������� ���������, ��������� � ������ ������������ ''%s'' ?'); 
  cxSetResourceString(@dxSBAR_WANTTORESETUSAGEDATA, '��������! � ���������� ���� �������� ����� ������� ������, ������������ ���� � ���� ����������, ��� ���� ��� ��������� �� ������������� �� ��������� ����� ������ � ���� � ������ ������������.��� �������� �� ���� ���� ��������. �� �������? '); 
  cxSetResourceString(@dxSBAR_BARMANAGERMORETHANONE , '���������� ������ ��������� ������ ���� TcxSetResourceString(@dxBarManager'); 
  cxSetResourceString(@dxSBAR_BARMANAGERBADOWNER, '���������� TcxSetResourceString(@dxBarManager ������ ���� TWinControl'); 
  cxSetResourceString(@dxSBAR_NOBARMANAGERS, '��� ��������� TcxSetResourceString(@dxBarManagers'); 
  cxSetResourceString(@dxSBAR_WANTTODELETETOOLBAR, '�� ������������� ������ ������� ������ ������������ ''%s''?'); 
  cxSetResourceString(@dxSBAR_WANTTODELETETOOLBARS, '�� ������������� ������ ������� ��������� ������ ������������?'); 
  cxSetResourceString(@dxSBAR_WANTTODELETECATEGORY, '�� ������������� ������ ������� ��������� ''%s''?'); 
  cxSetResourceString(@dxSBAR_WANTTOCLEARCOMMANDS, '�� ������������� ������ ������� ��� ������� � ��������� ''%s'''); 
  cxSetResourceString(@dxSBAR_RECURSIVEMENUS, '�� �� ������ ��������� ����������� ����'); 
  cxSetResourceString(@dxSBAR_COMMANDNAMECANNOTBEBLANK, '�������� ������� �� ����� ���� ������ �������. ������� ��������.'); 
  cxSetResourceString(@dxSBAR_TOOLBAREXISTS, '������ ������������ � ���������''%s'' ��� ����������. ������� ������ ���.'); 
  cxSetResourceString(@dxSBAR_RECURSIVEGROUPS, '�� �� ������ ��������� ����������� ������'); 
  cxSetResourceString(@dxSBAR_WANTTODELETECOMPLEXITEM, '���� �� ��������� �������� ��������� �� ��������� ����������. �� ������������� ������ ������� ��� ������? '); 
  cxSetResourceString(@dxSBAR_CANTPLACEQUICKACCESSGROUPBUTTON, '�� ������ ���������� TcxSetResourceString(@dxRibbonQuickAccessGroupButton ������ �� TcxSetResourceString(@dxRibbonQuickAccessToolbar'); 
  cxSetResourceString(@dxSBAR_QUICKACCESSGROUPBUTTONTOOLBARNOTDOCKEDINRIBBON, '������� ������ � ������ ������������ GroupButton  �� ��������� �� ������'); 
  cxSetResourceString(@dxSBAR_QUICKACCESSALREADYHASGROUPBUTTON, '������ �������� ������� ��� �������� GroupButton c ����� �� ������� ������������'); 
  cxSetResourceString(@dxSBAR_CANTPLACESEPARATOR, '����������� �� ����� ���� �������� �� ������ ������ ������������'); 
  cxSetResourceString(@dxSBAR_CANTPLACERIBBONGALLERY, '�� ������ ���������� TcxSetResourceString(@dxRibbonGalleryItem ������ �� ������'); 

  cxSetResourceString(@dxSBAR_CANTMERGEBARMANAGER, '�� ������ ���������� ����� ������ � ������� ������� ��������� �������'); 
  cxSetResourceString(@dxSBAR_CANTMERGETOOLBAR, '�� �� ������ ���������� ����� � ��������� ������� ������������'); 
  cxSetResourceString(@dxSBAR_CANTMERGEWITHMERGEDTOOLBAR, '�� �� ������ ���������� ����� � ��� ��������� ������� ������������'); 
  cxSetResourceString(@dxSBAR_CANTUNMERGETOOLBAR, '�� �� ������ ��������� �����'); 
  cxSetResourceString(@dxSBAR_ONEOFTOOLBARSALREADYMERGED, '���� �� ������� ������������ ������� ��������� ������� ��� �������'); 
  cxSetResourceString(@dxSBAR_ONEOFTOOLBARSHASMERGEDTOOLBARS, ' ���� �� ������� ������������ ������� ��������� ������� ��������� ������ ������������ '); 
  cxSetResourceString(@dxSBAR_TOOLBARHASMERGEDTOOLBARS, '������ ������������ ''%s'' ������� ������'); 
  cxSetResourceString(@dxSBAR_TOOLBARSALREADYMERGED, '������ ������������ ''%s'' ��� ������� � toolbar is already merged with the ''%s'' toolbar'); 
  cxSetResourceString(@dxSBAR_TOOLBARSARENOTMERGED, '������ ������������ ''%s'' �� ������� � ������� ''%s'' '); 

  cxSetResourceString(@dxSBAR_DEFAULTCATEGORYNAME, '�� ���������'); 
  // begin DesignTime section
  cxSetResourceString(@dxSBAR_NEWBUTTONCAPTION, '����� ������'); 
  cxSetResourceString(@dxSBAR_NEWITEMCAPTION, '����� �����'); 
  cxSetResourceString(@dxSBAR_NEWRIBBONGALLERYITEMCAPTION, '����� �������'); 
  cxSetResourceString(@dxSBAR_NEWSEPARATORCAPTION, '����� �����������'); 
  cxSetResourceString(@dxSBAR_NEWSUBITEMCAPTION, '����� ��������'); 

  cxSetResourceString(@dxSBAR_CP_ADDSUBITEM, '�������� &��������'); 
  cxSetResourceString(@dxSBAR_CP_ADDBUTTON, '�������� &������'); 
  cxSetResourceString(@dxSBAR_CP_ADDSEPARATOR, '�������� &�����������');
  //cxSetResourceString(@dxSBAR_CP_ADD,
  //cxSetResourceString(@dxITEM, '��������  &�����');
  cxSetResourceString(@dxSBAR_CP_ADDCXITEM, '�������� &cxEditItem'); 
  cxSetResourceString(@dxSBAR_CP_ADDGROUPBUTTON, '�������� Gro&upButton'); 
  cxSetResourceString(@dxSBAR_CP_DELETEITEM, '������� �����'); 
  cxSetResourceString(@dxSBAR_CP_DELETELINK, '������� ������'); 
  // end DesignTime section

  cxSetResourceString(@dxSBAR_CP_RESET, '&������������'); 
  cxSetResourceString(@dxSBAR_CP_DELETE, '&�������'); 
  cxSetResourceString(@dxSBAR_CP_NAME, '&���:'); 
  cxSetResourceString(@dxSBAR_CP_CAPTION, '&���������:');  // is the same as cxSetResourceString(@dxSBAR_CP_NAME (at design time)
  cxSetResourceString(@dxSBAR_CP_BUTTONPAINTSTYLEMENU, '����� &����������� ������'); 
  cxSetResourceString(@dxSBAR_CP_DEFAULTSTYLE, '�����&�� ���������'); 
  cxSetResourceString(@dxSBAR_CP_TEXTONLYALWAYS, '&������ ����� (������)'); 
  cxSetResourceString(@dxSBAR_CP_TEXTONLYINMENUS, '������ &����� (� ����)'); 
  cxSetResourceString(@dxSBAR_CP_IMAGEANDTEXT, '����������� &� �����'); 
  cxSetResourceString(@dxSBAR_CP_BEGINAGROUP, '�������  &������'); 
  cxSetResourceString(@dxSBAR_CP_VISIBLE, '&�������'); 
  cxSetResourceString(@dxSBAR_CP_MOSTRECENTLYUSED, '&������� ������������'); 
  // begin DesignTime section
  cxSetResourceString(@dxSBAR_CP_POSITIONMENU, '&�������'); 
  cxSetResourceString(@dxSBAR_CP_VIEWLEVELSMENU, '���&������'); 
  cxSetResourceString(@dxSBAR_CP_ALLVIEWLEVELS, '���'); 
  cxSetResourceString(@dxSBAR_CP_SINGLEVIEWLEVELITEMSUFFIX, ' ������'); 
  cxSetResourceString(@dxSBAR_CP_BUTTONGROUPMENU, 'ButtonG&roup'); 
  cxSetResourceString(@dxSBAR_CP_BUTTONGROUP, '�����������'); 
  cxSetResourceString(@dxSBAR_CP_BUTTONUNGROUP, '��������������'); 
  // end DesignTime section

  cxSetResourceString(@dxSBAR_ADDEX, '��������...'); 
  cxSetResourceString(@dxSBAR_RENAMEEX, '�������������...'); 
  cxSetResourceString(@dxSBAR_DELETE, '�������'); 
  cxSetResourceString(@dxSBAR_CLEAR, '��������'); 
  cxSetResourceString(@dxSBAR_VISIBLE, '�������'); 
  cxSetResourceString(@dxSBAR_OK, 'OK'); 
  cxSetResourceString(@dxSBAR_CANCEL, '������'); 
  cxSetResourceString(@dxSBAR_SUBMENUEDITOR, '�������� �������...'); 
  cxSetResourceString(@dxSBAR_SUBMENUEDITORCAPTION, '�������� ������� ExpressBars'); 
  cxSetResourceString(@dxSBAR_INSERTEX, '�������...'); 

  cxSetResourceString(@dxSBAR_MOVEUP, '����������� �����'); 
  cxSetResourceString(@dxSBAR_MOVEDOWN, '����������� ����'); 
  cxSetResourceString(@dxSBAR_POPUPMENUEDITOR, '�������� ������������ ����...'); 
  cxSetResourceString(@dxSBAR_TABSHEET1, ' ������ ������������ '); 
  cxSetResourceString(@dxSBAR_TABSHEET2, ' ������� '); 
  cxSetResourceString(@dxSBAR_TABSHEET3, ' ��������� '); 
  cxSetResourceString(@dxSBAR_TOOLBARS, '������&������������:'); 
  cxSetResourceString(@dxSBAR_TNEW, '&�����...'); 
  cxSetResourceString(@dxSBAR_TRENAME, '�&������������...'); 
  cxSetResourceString(@dxSBAR_TDELETE, '&�������'); 
  cxSetResourceString(@dxSBAR_TRESET, '&������������...'); 
  cxSetResourceString(@dxSBAR_CLOSE, '�������'); 
  cxSetResourceString(@dxSBAR_CAPTION, ' ��������� '); 
  cxSetResourceString(@dxSBAR_CATEGORIES, '����&�����:'); 
  cxSetResourceString(@dxSBAR_COMMANDS, '�����&��:'); 
  cxSetResourceString(@dxSBAR_DESCRIPTION, '��������  '); 

  cxSetResourceString(@dxSBAR_MDIMINIMIZE, '�������� ����'); 
  cxSetResourceString(@dxSBAR_MDIRESTORE, '������������ ����'); 
  cxSetResourceString(@dxSBAR_MDICLOSE, '������� ����'); 
  cxSetResourceString(@dxSBAR_CUSTOMIZE, '& ���������...'); 
  cxSetResourceString(@dxSBAR_ADDREMOVEBUTTONS, '&��������/������� ������'); 
  cxSetResourceString(@dxSBAR_MOREBUTTONS, '��� ������'); 
  cxSetResourceString(@dxSBAR_RESETTOOLBAR, '&������������ ������ ������������'); 
  cxSetResourceString(@dxSBAR_EXPAND, '���������� (Ctrl-Down)'); 
  cxSetResourceString(@dxSBAR_DRAGTOMAKEMENUFLOAT, '������, ����� ������� ���� �������'); 
  cxSetResourceString(@dxSBAR_MORECOMMANDS, '&������ �������...'); 
  cxSetResourceString(@dxSBAR_SHOWBELOWRIBBON, '&���������� ������ �������� ������� �� �������'); 
  cxSetResourceString(@dxSBAR_SHOWABOVERIBBON, '& ���������� ������ �������� ������� ������ ������');
  cxSetResourceString(@dxSBAR_MINIMIZERIBBON, '�&������� ������'); 
  cxSetResourceString(@dxSBAR_ADDTOQAT, '&�������� �� ������ �������� �������'); 
  cxSetResourceString(@dxSBAR_ADDTOQATITEMNAME, '&�������� %s �� ������ �������� ������� '); 
  cxSetResourceString(@dxSBAR_REMOVEFROMQAT, '&������� � ������ �������� ������� '); 
  cxSetResourceString(@dxSBAR_CUSTOMIZEQAT, '��������� ������ �������� ������� '); 
  cxSetResourceString(@dxSBAR_ADDGALLERYNAME, '�������'); 
  cxSetResourceString(@dxSBAR_SHOWALLGALLERYGROUPS, '���������� ��� ������'); 
  cxSetResourceString(@dxSBAR_HIDEALLGALLERYGROUPS, '������ ��� ������'); 
  cxSetResourceString(@dxSBAR_CLEARGALLERYFILTER, '������� �������'); 
  cxSetResourceString(@dxSBAR_GALLERYEMPTYFILTERCAPTION, '<empty>'); 

  cxSetResourceString(@dxSBAR_TOOLBARNEWNAME , '��������� '); 
  cxSetResourceString(@dxSBAR_CATEGORYADD , '�������� ���������'); 
  cxSetResourceString(@dxSBAR_CATEGORYINSERT , '�������� ���������'); 
  cxSetResourceString(@dxSBAR_CATEGORYRENAME , '������������� ���������'); 
  cxSetResourceString(@dxSBAR_TOOLBARADD , '�������� ������ ������������'); 
  cxSetResourceString(@dxSBAR_TOOLBARRENAME , '������������� ������ ������������'); 
  cxSetResourceString(@dxSBAR_CATEGORYNAME , '&�������� ���������:'); 
  cxSetResourceString(@dxSBAR_TOOLBARNAME , '&�������� ������ ������������:'); 
  cxSetResourceString(@dxSBAR_CUSTOMIZINGFORM, '����� ��������...'); 

  cxSetResourceString(@dxSBAR_MODIFY, '... ��������'); 
  cxSetResourceString(@dxSBAR_PERSMENUSANDTOOLBARS, '������ ���� � ������ ������������ '); 
  cxSetResourceString(@dxSBAR_MENUSSHOWRECENTITEMS, '��&�� ������� ���������� ������� ������������ �������'); 
  cxSetResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY, '���������� ���&��� ���� ����� ��������� ��������'); 
  cxSetResourceString(@dxSBAR_RESETUSAGEDATA, '&������������ ��� ���������������� ������'); 

  cxSetResourceString(@dxSBAR_OTHEROPTIONS, '������  '); 
  cxSetResourceString(@dxSBAR_LARGEICONS, '&������� ������'); 
  cxSetResourceString(@dxSBAR_HINTOPT1, '���������� &��������� �� ������� ������������'); 
  cxSetResourceString(@dxSBAR_HINTOPT2, '���������� �������& ������� � ����������'); 
  cxSetResourceString(@dxSBAR_MENUANIMATIONS, '&�������� ����:'); 
  cxSetResourceString(@dxSBAR_MENUANIM1, '(None)'); 
  cxSetResourceString(@dxSBAR_MENUANIM2, '���������'); 
  cxSetResourceString(@dxSBAR_MENUANIM3, '�������������'); 
  cxSetResourceString(@dxSBAR_MENUANIM4, '��������������'); 
  cxSetResourceString(@dxSBAR_MENUANIM5, '���������'); 

  cxSetResourceString(@dxSBAR_CANTFINDBARMANAGERFORSTATUSBAR, '��� ������ ��������� �� ������ �������� �������'); 

  cxSetResourceString(@dxSBAR_BUTTONDEFAULTACTIONDESCRIPTION, '������'); 

  cxSetResourceString(@dxSBAR_GDIPLUSNEEDED, '%s ������� ��������� ���������� Microsoft GDI+ '); 
  cxSetResourceString(@dxSBAR_RIBBONMORETHANONE , 'There should be only one %s instance on the form'); 
  cxSetResourceString(@dxSBAR_RIBBONBADOWNER, '%s should have TCustomForm as its Owner'); 
  cxSetResourceString(@dxSBAR_RIBBONBADPARENT, '%s should have TCustomForm as its Parent'); 
  cxSetResourceString(@dxSBAR_RIBBONADDTAB, '�������� ��������'); 
  cxSetResourceString(@dxSBAR_RIBBONDELETETAB, '������� ��������'); 
  cxSetResourceString(@dxSBAR_RIBBONADDEMPTYGROUP, '��������'); 
  cxSetResourceString(@dxSBAR_RIBBONADDGROUPWITHTOOLBAR, '�������� ������ �� ������ ������������'); 
  cxSetResourceString(@dxSBAR_RIBBONDELETEGROUP, '������� ������'); 

  cxSetResourceString(@dxSBAR_ACCESSIBILITY_RIBBONNAME, '������'); 
  cxSetResourceString(@dxSBAR_ACCESSIBILITY_RIBBONTABCOLLECTIONNAME, '������ ��������'); 

  cxSetResourceString(@sdxAutoColorText, '����'); 
  cxSetResourceString(@sdxCustomColorText, '���������...'); 

  cxSetResourceString(@sdxSysColorScrollBar, '������ ���������'); 
  cxSetResourceString(@sdxSysColorBackground, '���'); 
  cxSetResourceString(@sdxSysColorActiveCaption, '�������� ���������'); 
  cxSetResourceString(@sdxSysColorInactiveCaption, '���������� ���������'); 
  cxSetResourceString(@sdxSysColorMenu, '����'); 
  cxSetResourceString(@sdxSysColorWindow, '����'); 
  cxSetResourceString(@sdxSysColorWindowFrame, '������� ����'); 
  cxSetResourceString(@sdxSysColorMenuText, '����� ����'); 
  cxSetResourceString(@sdxSysColorWindowText, '����� ����'); 
  cxSetResourceString(@sdxSysColorCaptionText, '����� ���������'); 
  cxSetResourceString(@sdxSysColorActiveBorder, '������� ��������� ����'); 
  cxSetResourceString(@sdxSysColorInactiveBorder, '������� ����������� ����'); 
  cxSetResourceString(@sdxSysColorAppWorkSpace, '������� ������� ����������'); 
  cxSetResourceString(@sdxSysColorHighLight, '���������'); 
  cxSetResourceString(@sdxSysColorHighLighText, '���������� �����'); 
  cxSetResourceString(@sdxSysColorBtnFace, '������'); 
  cxSetResourceString(@sdxSysColorBtnShadow, '���� ������'); 
  cxSetResourceString(@sdxSysColorGrayText, '����� �����'); 
  cxSetResourceString(@sdxSysColorBtnText, '����� ������'); 
  cxSetResourceString(@sdxSysColorInactiveCaptionText, '����� ����������� ���������'); 
  cxSetResourceString(@sdxSysColorBtnHighligh, '�������� ������'); 
  cxSetResourceString(@sdxSysColor3DDkShadow, '3D ����'); 
  cxSetResourceString(@sdxSysColor3DLight, '3D���������'); 
  cxSetResourceString(@sdxSysColorInfoText, '����� ���������'); 
  cxSetResourceString(@sdxSysColorInfoBk, '��� ���������'); 

  cxSetResourceString(@sdxPureColorBlack, '������'); 
  cxSetResourceString(@sdxPureColorRed, '�������'); 
  cxSetResourceString(@sdxPureColorLime, '����'); 
  cxSetResourceString(@sdxPureColorYellow, '������'); 
  cxSetResourceString(@sdxPureColorGreen, '�������'); 
  cxSetResourceString(@sdxPureColorTeal, '�������'); 
  cxSetResourceString(@sdxPureColorAqua, '���� ������� �����'); 
  cxSetResourceString(@sdxPureColorBlue, '�����'); 
  cxSetResourceString(@sdxPureColorWhite, '�����'); 
  cxSetResourceString(@sdxPureColorOlive, '���������'); 
  cxSetResourceString(@sdxPureColorMoneyGreen, '�����-�������');  
  cxSetResourceString(@sdxPureColorNavy, '�����-�����'); 
  cxSetResourceString(@sdxPureColorSkyBlue, '�������-�������'); 
  cxSetResourceString(@sdxPureColorGray, '�����'); 
  cxSetResourceString(@sdxPureColorMedGray, '������-�����'); 
  cxSetResourceString(@sdxPureColorSilver, '����������'); 
  cxSetResourceString(@sdxPureColorMaroon, '������-����������'); 
  cxSetResourceString(@sdxPureColorPurple, '����������'); 
  cxSetResourceString(@sdxPureColorFuchsia, '������'); 
  cxSetResourceString(@sdxPureColorCream, '��������'); 
  
  cxSetResourceString(@sdxBrushStyleSolid, '��������'); 
  cxSetResourceString(@sdxBrushStyleClear, '�������'); 
  cxSetResourceString(@sdxBrushStyleHorizontal, '��������������'); 
  cxSetResourceString(@sdxBrushStyleVertical, '������������'); 
  cxSetResourceString(@sdxBrushStyleFDiagonal, '� �������� ������'); 
  cxSetResourceString(@sdxBrushStyleBDiagonal, '� �������� �����'); 
  cxSetResourceString(@sdxBrushStyleCross, '�����'); 
  cxSetResourceString(@sdxBrushStyleDiagCross, '����� �����'); 

  cxSetResourceString(@dxSB_NEWITEM              , '����� �����'); 

  cxSetResourceString(@dxSB_DEFAULTGROUP         , '�� ���������'); 
  cxSetResourceString(@dxSB_DEFAULTITEMCAPTION   , '����� �����'); 
  cxSetResourceString(@dxSB_DEFAULTGROUPCAPTION  , '����� ������'); 

  //PopupMenu
  cxSetResourceString(@dxSB_ADDGROUP             , '�������� ������'); 
  cxSetResourceString(@dxSB_REMOVEGROUP          , '������� ������'); 
  cxSetResourceString(@dxSB_RENAMEGROUP          , '������������� ������'); 
  cxSetResourceString(@dxSB_REMOVEITEM           , '������� ������� �������'); 
  cxSetResourceString(@dxSB_RENAMEITEM           , '�������� ������� �������'); 
  cxSetResourceString(@dxSB_LARGEICONTYPE        , '������� ������'); 
  cxSetResourceString(@dxSB_SMALLICONTYPE        , '������ ������'); 
  cxSetResourceString(@dxSB_CUSTOMIZE            , '���������...'); 
  cxSetResourceString(@dxSB_CUSTOMIZECLOSEBUTTON , '�������'); 

  cxSetResourceString(@dxSB_CANTDELETEGROUP , '������ �������� ��������. �������� ����������. '); 
end;
end.
 