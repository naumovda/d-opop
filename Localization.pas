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
  cxSetResourceString(@cxSEditCheckBoxChecked     ,'Да');
  cxSetResourceString(@cxSEditCheckBoxGrayed      ,'Не определено');
  cxSetResourceString(@cxSEditCheckBoxUnchecked   ,'Нет');
  cxSetResourceString(@cxSRadioGroupDefaultCaption,'Не определено');

  cxSetResourceString(@cxSTextTrue,       'Да');
  cxSetResourceString(@cxSTextFalse,      'Нет');


  cxSetResourceString(@cxSDatePopupClear, 'Очистить');
  cxSetResourceString(@cxSDatePopupNow,   'Сейчас');
  cxSetResourceString(@cxSDatePopupOK,    'OK');
  cxSetResourceString(@cxSDatePopupToday, 'Сегодня');
  cxSetResourceString(@cxSDateError,      'Неверная дата!');


  cxSetResourceString(@scxUnsupportedExport, 'Не поддерживается экспорт типа: %1');
  cxSetResourceString(@scxStyleManagerKill,'Менеджер стиля в настоящее время занят и не может быть использован вами в данный момент');
  cxSetResourceString(@scxStyleManagerCreate,'Не могу создать менеджер стиля');

  cxSetResourceString(@scxExportToHtml , 'Экспорт в веб-страницу (*.html)');
  cxSetResourceString(@scxExportToXml  , 'Экспорт в XML (*.xml)');
  cxSetResourceString(@scxExportToText , 'Экспорт в текстовый формат (*.txt)');

  cxSetResourceString(@scxEmptyExportCache, 'Кэш экспорта пуст');
  cxSetResourceString(@scxIncorrectUnion, 'Некорректное объединение ячеек');
  cxSetResourceString(@scxIllegalWidth, 'Неверно задана ширина столбца');
  cxSetResourceString(@scxInvalidColumnRowCount, 'Неверно задано число столбцов или строк');
  cxSetResourceString(@scxIllegalHeight, 'Неверно задана высота строки');
  cxSetResourceString(@scxInvalidColumnIndex, 'Отсутствует связь со столбцом номер %d ');
  cxSetResourceString(@scxInvalidRowIndex, 'Отсутствует связь со строкой номер %d');
  cxSetResourceString(@scxInvalidStyleIndex, 'Неверный индекс стиля %d');

  cxSetResourceString(@scxExportToExcel, 'Экспортировать в MS Excel (*.xls)');
  cxSetResourceString(@scxWorkbookWrite, 'Ошибка записи в XLS-файл');
  cxSetResourceString(@scxInvalidCellDimension, 'Неверно задан размер ячейки');

  cxSetResourceString(@scxBoolTrue , 'Да');
  cxSetResourceString(@scxBoolFalse, 'Нет');

  cxSetResourceString(@sxlfFalse, 'Нет');
  cxSetResourceString(@sxlfTrue,  'Да');

  cxSetResourceString(@cxSFilterBoolOperatorAnd, 'и');        // all
  cxSetResourceString(@cxSFilterBoolOperatorOr, 'или');           // any
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, 'и не');  // not all
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, 'или не');    // not any
  //
    cxSetResourceString(@cxSFilterRootButtonCaption, 'Фильтр'); 
  cxSetResourceString(@cxSFilterAddCondition, 'Добавить &условие'); 
  cxSetResourceString(@cxSFilterAddGroup, 'Добавить &группу'); 
  cxSetResourceString(@cxSFilterRemoveRow, '&Удалить строку'); 
  cxSetResourceString(@cxSFilterClearAll, 'Очистить &все'); 
  cxSetResourceString(@cxSFilterFooterAddCondition, 'Нажмите кнопку для добавления нового  условия');

  cxSetResourceString(@cxSFilterGroupCaption, 'Применить для следующих условий');
  cxSetResourceString(@cxSFilterRootGroupCaption, '<начало>');
  cxSetResourceString(@cxSFilterControlNullString, '<пусто>');
  cxSetResourceString(@cxSFilterErrorBuilding, 'Невозможно создать фильтр из исходных данных');

  //FilterDialog
    cxSetResourceString(@cxSFilterDialogCaption, 'Пользовательский фильтр'); 
  cxSetResourceString(@cxSFilterDialogInvalidValue, 'Неверно задано значение'); 
  cxSetResourceString(@cxSFilterDialogUse, 'Использовать'); 
  cxSetResourceString(@cxSFilterDialogSingleCharacter, 'интерпретировать отдельные символы'); 
  cxSetResourceString(@cxSFilterDialogCharactersSeries, 'интерпретировать последовательность символов'); 
  cxSetResourceString(@cxSFilterDialogOperationAnd, 'и'); 
  cxSetResourceString(@cxSFilterDialogOperationOr, 'или'); 
  cxSetResourceString(@cxSFilterDialogRows, 'Показывает строки, где:'); 

  // FilterControlDialog
  cxSetResourceString(@cxSFilterControlDialogCaption, 'Конструктор фильтров'); 
  cxSetResourceString(@cxSFilterControlDialogNewFile, 'untitled.flt'); 
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Открыть существующий фильтр'); 
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, 'Сохранить активный фильтр в файл'); 
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, '&Сохранить как...'); 
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&Открыть...'); 
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, '&Применить'); 
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'OK'); 
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Отмена'); 
  cxSetResourceString(@cxSFilterControlDialogFileExt, 'flt'); 
  cxSetResourceString(@cxSFilterControlDialogFileFilter, 'Фильтры (*.flt)|*.flt');

  cxSetResourceString(@scxGridRecursiveLevels, 'Вы не можете создать рекурсивные уровни'); 

  cxSetResourceString(@scxGridDeletingConfirmationCaption, 'Подтвердить'); 
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText, 'Удалить запись?');
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText, 'Удалить все выделенные записи?'); 

  cxSetResourceString(@scxGridNoDataInfoText, '<Нет данных для отображения>');

  cxSetResourceString(@scxGridFilterRowInfoText, 'Щелкните для задания фильтра'); 
  cxSetResourceString(@scxGridNewItemRowInfoText, 'Щелкните для добавления новой строки'); 

  cxSetResourceString(@scxGridFilterIsEmpty, '<Фильтр отсутствует>');

  cxSetResourceString(@scxGridCustomizationFormCaption, 'Настройка');
  cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, 'Столбцы'); 
  cxSetResourceString(@scxGridGroupByBoxCaption, 'Переместите сюда заголовок столбца для группировки данных'); 
  cxSetResourceString(@scxGridFilterApplyButtonCaption, 'Применить фильтр');  
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption, 'Настроить...'); 
  cxSetResourceString(@scxGridColumnsQuickCustomizationHint, 'Щелкните, чтобы показать/скрыть/переместить столбцы'); 

  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, 'Связи'); 
  cxSetResourceString(@scxGridBandsQuickCustomizationHint, 'Щелкните здесь, чтобы показать/скрыть/переместить связи'); 

  cxSetResourceString(@scxGridCustomizationFormRowsPageCaption, 'Строки'); 

  cxSetResourceString(@scxGridConverterIntermediaryMissing, 'Пропущен промежуточный компонент!'#13#10'Добавьте компонент %s на форму.'); 
  cxSetResourceString(@scxGridConverterNotExistGrid, 'cxGrid не существует'); 
  cxSetResourceString(@scxGridConverterNotExistComponent, 'Компонент не существует'); 
  cxSetResourceString(@scxImportErrorCaption, 'Ошибка импорта'); 

  cxSetResourceString(@scxNotExistGridView, 'Представление таблицы не существует'); 
  cxSetResourceString(@scxNotExistGridLevel, 'нет активного уровня таблицы'); 
  cxSetResourceString(@scxCantCreateExportOutputFile, 'Невозможно создать выходной файл экспорта'); 

  cxSetResourceString(@cxSEditRepositoryExtLookupComboBoxItem, 'ExtLookupComboBox|реализует расширенный поиск в таблице QuantumGrid посредством раскрывающегося в ячейке списка.'); 

  // date ranges

  cxSetResourceString(@scxGridYesterday, 'Вчера'); 
  cxSetResourceString(@scxGridToday, 'Сегодня'); 
  cxSetResourceString(@scxGridTomorrow, 'Завтра'); 
  cxSetResourceString(@scxGridLast30Days, 'Последние 30 дней'); 
  cxSetResourceString(@scxGridLast14Days, 'Последние 14 дней'); 
  cxSetResourceString(@scxGridLast7Days, 'Последние 7 дней'); 
  cxSetResourceString(@scxGridNext7Days, 'Следующие 7 дней'); 
  cxSetResourceString(@scxGridNext14Days, 'Следующие 14 дней'); 
  cxSetResourceString(@scxGridNext30Days, ' Следующие 30 дней'); 
  cxSetResourceString(@scxGridLastTwoWeeks, 'Последние две недели'); 
  cxSetResourceString(@scxGridLastWeek, 'Последняя неделя'); 
  cxSetResourceString(@scxGridThisWeek, 'Эта неделя'); 
  cxSetResourceString(@scxGridNextWeek, 'Следующая неделя'); 
  cxSetResourceString(@scxGridNextTwoWeeks, 'Две последующие недели'); 
  cxSetResourceString(@scxGridLastMonth, 'Последний месяц'); 
  cxSetResourceString(@scxGridThisMonth, 'Этот месяц'); 
  cxSetResourceString(@scxGridNextMonth, 'Следующий месяц'); 
  cxSetResourceString(@scxGridLastYear, 'Прошлый год'); 
  cxSetResourceString(@scxGridThisYear, 'Этот год'); 
  cxSetResourceString(@scxGridNextYear, 'Следующий год'); 
  cxSetResourceString(@scxGridPast, 'Прошлое'); 
  cxSetResourceString(@scxGridFuture, 'Будущее'); 

  cxSetResourceString(@scxGridMonthFormat, 'mmmm yyyy'); 
  cxSetResourceString(@scxGridYearFormat, 'yyyy'); 
 // ChartView
  
  cxSetResourceString(@scxGridChartCategoriesDisplayText, 'Данные'); 

  cxSetResourceString(@scxGridChartValueHintFormat, '%s для %s равно %s');   // series display text, category, value
  cxSetResourceString(@scxGridChartPercentValueTickMarkLabelFormat, '0%'); 

  cxSetResourceString(@scxGridChartToolBoxDataLevels, 'Уровни данных:'); 
  cxSetResourceString(@scxGridChartToolBoxDataLevelSelectValue, 'выбор значения'); 
  cxSetResourceString(@scxGridChartToolBoxCustomizeButtonCaption, 'Настроить диаграмму'); 

  cxSetResourceString(@scxGridChartNoneDiagramDisplayText, 'Нет диаграммы'); 
  cxSetResourceString(@scxGridChartColumnDiagramDisplayText, 'Столбчатая диаграмма'); 
  cxSetResourceString(@scxGridChartBarDiagramDisplayText, 'Гистограмма'); 
  cxSetResourceString(@scxGridChartLineDiagramDisplayText, 'Линейчатая диаграмма'); 
  cxSetResourceString(@scxGridChartAreaDiagramDisplayText, 'Диаграмма с областями'); 
  cxSetResourceString(@scxGridChartPieDiagramDisplayText, 'Разрезанная объемная круговая диаграмма'); 

  cxSetResourceString(@scxGridChartCustomizationFormSeriesPageCaption, 'Последовательность'); 
  cxSetResourceString(@scxGridChartCustomizationFormSortBySeries, 'Упорядочить по:'); 
  cxSetResourceString(@scxGridChartCustomizationFormNoSortedSeries, '<none series>'); 
  cxSetResourceString(@scxGridChartCustomizationFormDataGroupsPageCaption, 'Группы данных'); 
  cxSetResourceString(@scxGridChartCustomizationFormOptionsPageCaption, 'Свойства'); 

  cxSetResourceString(@scxGridChartLegend, 'Легенда'); 
  cxSetResourceString(@scxGridChartLegendKeyBorder, 'Граница ключа легенды'); 
  cxSetResourceString(@scxGridChartPosition, 'Позиция'); 
  cxSetResourceString(@scxGridChartPositionDefault, 'По умолчанию'); 
  cxSetResourceString(@scxGridChartPositionNone, 'Ничего'); 
  cxSetResourceString(@scxGridChartPositionLeft, 'Слева'); 
  cxSetResourceString(@scxGridChartPositionTop, 'По верхнему краю'); 
  cxSetResourceString(@scxGridChartPositionRight, 'Справа'); 
  cxSetResourceString(@scxGridChartPositionBottom, 'По нижнему краю'); 
  cxSetResourceString(@scxGridChartAlignment, 'Выравнивание'); 
  cxSetResourceString(@scxGridChartAlignmentDefault, 'По умолчанию'); 
  cxSetResourceString(@scxGridChartAlignmentStart, 'Начало'); 
  cxSetResourceString(@scxGridChartAlignmentCenter, 'По центру'); 
  cxSetResourceString(@scxGridChartAlignmentEnd, 'Конец'); 
  cxSetResourceString(@scxGridChartOrientation, 'Ориентация'); 
  cxSetResourceString(@scxGridChartOrientationDefault, 'По умолчанию'); 
  cxSetResourceString(@scxGridChartOrientationHorizontal, 'Горизонтальная'); 
  cxSetResourceString(@scxGridChartOrientationVertical, 'Вертикальная'); 
  cxSetResourceString(@scxGridChartBorder, 'Граница'); 
  cxSetResourceString(@scxGridChartTitle, 'Заголовок'); 
  cxSetResourceString(@scxGridChartToolBox, 'Окно инструментария'); 
  cxSetResourceString(@scxGridChartDiagramSelector, 'Выбор диаграмм'); 
  cxSetResourceString(@scxGridChartOther, 'Прочее'); 
  cxSetResourceString(@scxGridChartValueHints, 'Всплывающая подсказка'); 

  cxSetResourceString(@cxSDateToday                      , 'сегодня'); 
  cxSetResourceString(@cxSDateYesterday                  , 'вчера'); 
  cxSetResourceString(@cxSDateTomorrow                   , 'завтра'); 
  cxSetResourceString(@cxSDateSunday                     , 'воскресенье'); 
  cxSetResourceString(@cxSDateMonday                     , 'понедельник'); 
  cxSetResourceString(@cxSDateTuesday                    , 'вторник'); 
  cxSetResourceString(@cxSDateWednesday                  , 'среда'); 
  cxSetResourceString(@cxSDateThursday                   , 'четверг'); 
  cxSetResourceString(@cxSDateFriday                     , 'пятница'); 
  cxSetResourceString(@cxSDateSaturday                   , 'суббота'); 
  cxSetResourceString(@cxSDateFirst                      , 'первое'); 
  cxSetResourceString(@cxSDateSecond                     , 'второе'); 
  cxSetResourceString(@cxSDateThird                      , 'третье'); 
  cxSetResourceString(@cxSDateFourth                     , 'четвертое'); 
  cxSetResourceString(@cxSDateFifth                      , 'пятое'); 
  cxSetResourceString(@cxSDateSixth                      , 'шестое'); 
  cxSetResourceString(@cxSDateSeventh                    , 'седьмое'); 
  cxSetResourceString(@cxSDateBOM                        , 'начало'); 
  cxSetResourceString(@cxSDateEOM                        , 'конец'); 
  cxSetResourceString(@cxSDateNow                        , 'сейчас'); 

  cxSetResourceString(@scxDataField , 'Данные');
  //
  cxSetResourceString(@scxDropFilterFields, 'Поместите сюда поля для фильтрации'); 
  cxSetResourceString(@scxDropDataItems   , 'Поместите сюда поля данных'); 
  cxSetResourceString(@scxDropRowFields   , 'Поместите сюда поля строк'); 
  cxSetResourceString(@scxDropColumnFields, 'Поместите сюда поля столбцов'); 
  cxSetResourceString(@scxGrandTotal      , 'Общий итог'); 
  cxSetResourceString(@scxNoDataToDisplay , '<Нет данных для отображения>'); 

  // field list strings
  cxSetResourceString(@scxAddTo           , 'Добавить к'); 
  cxSetResourceString(@scxDragItems       , 'Перетащите элементы в таблицу'); 
  cxSetResourceString(@scxFieldListCaption, 'Список полей'); 

  cxSetResourceString(@scxRowArea   , 'Область строк'); 
  cxSetResourceString(@scxColumnArea, 'Область столбцов'); 
  cxSetResourceString(@scxFilterArea, 'Область фильтра'); 
  cxSetResourceString(@scxDataArea  , 'Область данных'); 

  // group strings 
  cxSetResourceString(@scxGroupTotal     , '%s Всего'); 
  cxSetResourceString(@scxGroupCount     , '%s Количество'); 
  cxSetResourceString(@scxGroupSum       , '%s Сумма'); 
  cxSetResourceString(@scxGroupMin       , '%s Минимум'); 
  cxSetResourceString(@scxGroupMax       , '%s Максимум'); 
  cxSetResourceString(@scxGroupAverage   , '%s Среднее'); 
  cxSetResourceString(@scxGroupStdDev    , '%s СКО'); 
  cxSetResourceString(@scxGroupStdDevP   , '%s СКОП'); 
  cxSetResourceString(@scxGroupVariance  , '%s Вар'); 
  cxSetResourceString(@scxGroupVarianceP , '%s ВарП'); 
  cxSetResourceString(@scxGroupCustom    , '%s Настроки'); 

  cxSetResourceString(@scxOthers          , 'Другие'); 

  // filter strings
  cxSetResourceString(@scxPivotGridShowAll, '(Показать все)'); 
  cxSetResourceString(@scxPivotGridOk     , 'Ok'); 
  cxSetResourceString(@scxPivotGridCancel , 'Отменить'); 

  // intervals
  cxSetResourceString(@scxQuarterFormat, 'Кварт. %d');

  // pivot grid exception

  cxSetResourceString(@scxFieldNotADataField, 'Поле должно быть в области данных!'); 
  cxSetResourceString(@scxInvalidLayout , 'Неверная раскладка!'); 
  cxSetResourceString(@scxNotImplemented,  'Еще не выполнено!'); 

  // pivot grid pupup menu items
  cxSetResourceString(@scxSeparator      , '-'); 

  cxSetResourceString(@scxHide           , 'Скрыть'); 
  cxSetResourceString(@scxOrder          , 'Упорядочить'); 
  cxSetResourceString(@scxMoveToBeginning, 'Перейти на начало'); 
  cxSetResourceString(@scxMoveToEnd      , 'Перейти на конец'); 
  cxSetResourceString(@scxMoveToLeft     , 'Перейти влево'); 
  cxSetResourceString(@scxMoveToRight    , 'Перейти вправо'); 
  //
  cxSetResourceString(@scxExpand         , 'Развернуть'); 
  cxSetResourceString(@scxCollapse       , 'Свернуть'); 
  cxSetResourceString(@scxExpandAll      , 'Развернуть все'); 
  cxSetResourceString(@scxCollapseAll    , 'Свернуть все'); 
  // misc. commands
  cxSetResourceString(@scxShowCustomization, 'Показать список полей'); 
  cxSetResourceString(@scxHideCustomization, 'Скрыть список полей'); 

  cxSetResourceString(@scxIndexOutOfBounds   , 'Индекс %d не имеет связей'); 
  cxSetResourceString(@scxInvalidStreamFormat, 'Неверный формат потока'); 
  cxSetResourceString(@scxMultiSelectRequired, 'Необходимо выбрать несколько пунктов'); 

  // designers constants

  cxSetResourceString(@scxDesignerCaption    , 'Редактирование TreeListDesigner - '); 
  cxSetResourceString(@scxBands              , 'Связи...'); 
  cxSetResourceString(@scxColumns            , 'Столбцы...'); 
  cxSetResourceString(@scxCreateAllItems     , 'Создать все столбцы'); 
  cxSetResourceString(@scxDeleteAllItems     , 'Удалить все столбцы'); 
  cxSetResourceString(@scxItems, 'Редактор пунктов...'); 

  // customizing box
  
  cxSetResourceString(@scxCustomizeCaption, 'Настроить'); 
  cxSetResourceString(@scxColumnsCaption  , '   Столбцы   '); 
  cxSetResourceString(@scxBandsCaption    , '    Связи    '); 

  //cxSetResourceString(@scxInvalidIntegerValue  , 'Не целое число'); 
  cxSetResourceString(@scxOperationNotSupported, 'Операция не поддерживается'); 

  cxSetResourceString(@scxTreeListDeletingFocusedConfirmationText, 'Удалить записи?'); 
  cxSetResourceString(@scxTreeListDeletingConfirmationCaption, 'Подтвердите'); 

  cxSetResourceString(@scxExportNotVisibleControl, 'Контроль должен быть видимым для экспорта'); 

  cxSetResourceString(@dxSBAR_DBNAVERROR1, 'У вас уже есть кнопка DBNavigator с таким же стилем');

  cxSetResourceString(@dxSBAR_CATEGORYNAME, 'Навигатор');
  cxSetResourceString(@dxSBAR_DELETERECORD, 'Вы хотите удалить текущую запись'); 

  cxSetResourceString(@dxSBAR_BTNCAPTION_FIRST, 'Первое'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_PRIOR, 'Предыдущее'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_NEXT, 'Следующее'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_LAST, 'Последнее'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_INSERT, 'Вставить'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_DELETE, 'Удалить'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_EDIT, 'Редактировать'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_POST, 'Почта'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_CANCEL, 'Отмена'); 
  cxSetResourceString(@dxSBAR_BTNCAPTION_REFRESH, 'обновить'); 


  cxSetResourceString(@dxSBAR_LOOKUPDIALOGCAPTION, 'Выберите значение'); 
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGOK, 'OK'); 
  cxSetResourceString(@dxSBAR_LOOKUPDIALOGCANCEL, 'Отмена'); 

  cxSetResourceString(@dxSBAR_DIALOGOK, 'OK'); 
  cxSetResourceString(@dxSBAR_DIALOGCANCEL, 'Отмена'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_0, 'Черный'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_1, 'Красно-коричневый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_2, 'Зеленый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_3, 'Оливковый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_4, 'Темно-синий'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_5, 'Фиолетовый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_6, 'Бежевый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_7, 'Серый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_8, 'Серебристый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_9, 'Красный'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_10, 'Светло-зеленый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_11, 'Желтый'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_12, 'Синий'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_13, 'Фуксия'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_14, 'Цвет морской волны'); 
  cxSetResourceString(@dxSBAR_COLOR_STR_15, 'Белый'); 
  cxSetResourceString(@dxSBAR_COLORAUTOTEXT, '(automatic)'); 
  cxSetResourceString(@dxSBAR_COLORCUSTOMTEXT, '(custom)'); 
  cxSetResourceString(@dxSBAR_DATETODAY, 'сегодня'); 
  cxSetResourceString(@dxSBAR_DATECLEAR, 'очистить'); 
  cxSetResourceString(@dxSBAR_DATEDIALOGCAPTION, 'Выберите дату'); 
  cxSetResourceString(@dxSBAR_TREEVIEWDIALOGCAPTION, 'Выберите пункт'); 
  cxSetResourceString(@dxSBAR_IMAGEDIALOGCAPTION, 'Выберите пункт'); 
  cxSetResourceString(@dxSBAR_IMAGEINDEX, 'Номер изображения'); 
  cxSetResourceString(@dxSBAR_IMAGETEXT, 'Текст'); 
  cxSetResourceString(@dxSBAR_PLACEFORCONTROL, 'Место для '); 
  cxSetResourceString(@dxSBAR_CANTASSIGNCONTROL, 'Вы не можете присваивать одно и то же управление двум и более TcxSetResourceString(@dxBarControlContainerItem'); 
  cxSetResourceString(@dxSBAR_CXEDITVALUEDIALOGCAPTION, 'Введите значение'); 

  cxSetResourceString(@dxSBAR_WANTTORESETTOOLBAR, 'Вы уверены, что хотите отменить изменения, внесенные в панель инструментов ''%s'' ?'); 
  cxSetResourceString(@dxSBAR_WANTTORESETUSAGEDATA, 'Внимание! В результате этих действий будет удалена запись, используемая вами в этом приложении, при этом она заменится на установленный по умолчанию набор команд в меню и панели инструментов.Эти действия не могу быть отменены. Вы уверены? '); 
  cxSetResourceString(@dxSBAR_BARMANAGERMORETHANONE , 'Управление должно содержать только один TcxSetResourceString(@dxBarManager'); 
  cxSetResourceString(@dxSBAR_BARMANAGERBADOWNER, 'Владельцем TcxSetResourceString(@dxBarManager должен быть TWinControl'); 
  cxSetResourceString(@dxSBAR_NOBARMANAGERS, 'Нет доступных TcxSetResourceString(@dxBarManagers'); 
  cxSetResourceString(@dxSBAR_WANTTODELETETOOLBAR, 'Вы действительно хотите удалить панель инструментов ''%s''?'); 
  cxSetResourceString(@dxSBAR_WANTTODELETETOOLBARS, 'Вы действительно хотите удалить выбранные панели инструментов?'); 
  cxSetResourceString(@dxSBAR_WANTTODELETECATEGORY, 'Вы действительно хотите удалить категорию ''%s''?'); 
  cxSetResourceString(@dxSBAR_WANTTOCLEARCOMMANDS, 'Вы действительно хотите удалить все команды в категории ''%s'''); 
  cxSetResourceString(@dxSBAR_RECURSIVEMENUS, 'Вы не можете создавать рекурсивные меню'); 
  cxSetResourceString(@dxSBAR_COMMANDNAMECANNOTBEBLANK, 'Название команды не может быть пустой строкой. Введите название.'); 
  cxSetResourceString(@dxSBAR_TOOLBAREXISTS, 'Панель инструментов с названием''%s'' уже существует. Введите другое имя.'); 
  cxSetResourceString(@dxSBAR_RECURSIVEGROUPS, 'Вы не можете создавать рекурсивные группы'); 
  cxSetResourceString(@dxSBAR_WANTTODELETECOMPLEXITEM, 'Один из выбранных объектов ссылается на несколько источников. Вы действительно хотите удалить эти ссылки? '); 
  cxSetResourceString(@dxSBAR_CANTPLACEQUICKACCESSGROUPBUTTON, 'Вы можете разместить TcxSetResourceString(@dxRibbonQuickAccessGroupButton только на TcxSetResourceString(@dxRibbonQuickAccessToolbar'); 
  cxSetResourceString(@dxSBAR_QUICKACCESSGROUPBUTTONTOOLBARNOTDOCKEDINRIBBON, 'Быстрый доступ к панели инструментов GroupButton  не находится на полосе'); 
  cxSetResourceString(@dxSBAR_QUICKACCESSALREADYHASGROUPBUTTON, 'Панель быстрого доступа уже содержит GroupButton c такой же панелью инструментов'); 
  cxSetResourceString(@dxSBAR_CANTPLACESEPARATOR, 'Разделитель не может быть размещен на данной панели инструментов'); 
  cxSetResourceString(@dxSBAR_CANTPLACERIBBONGALLERY, 'Вы можете разместить TcxSetResourceString(@dxRibbonGalleryItem только на полосе'); 

  cxSetResourceString(@dxSBAR_CANTMERGEBARMANAGER, 'Вы можете установить связь только с помощью особого менеджера панелей'); 
  cxSetResourceString(@dxSBAR_CANTMERGETOOLBAR, 'Вы не можете установить связь с выбранной панелью инструментов'); 
  cxSetResourceString(@dxSBAR_CANTMERGEWITHMERGEDTOOLBAR, 'Вы не можете установить связь с уже связанной панелью инструментов'); 
  cxSetResourceString(@dxSBAR_CANTUNMERGETOOLBAR, 'Вы не можете разорвать связь'); 
  cxSetResourceString(@dxSBAR_ONEOFTOOLBARSALREADYMERGED, 'Одна из панелей инструментов данного менеджера панелей уже связана'); 
  cxSetResourceString(@dxSBAR_ONEOFTOOLBARSHASMERGEDTOOLBARS, ' Одна из панелей инструментов данного менеджера панелей связывает панели инструментов '); 
  cxSetResourceString(@dxSBAR_TOOLBARHASMERGEDTOOLBARS, 'Панель инструментов ''%s'' связала панели'); 
  cxSetResourceString(@dxSBAR_TOOLBARSALREADYMERGED, 'Панель инструментов ''%s'' уже связана с toolbar is already merged with the ''%s'' toolbar'); 
  cxSetResourceString(@dxSBAR_TOOLBARSARENOTMERGED, 'Панель инструментов ''%s'' не связана с панелью ''%s'' '); 

  cxSetResourceString(@dxSBAR_DEFAULTCATEGORYNAME, 'По умолчанию'); 
  // begin DesignTime section
  cxSetResourceString(@dxSBAR_NEWBUTTONCAPTION, 'Новая кнопка'); 
  cxSetResourceString(@dxSBAR_NEWITEMCAPTION, 'Новый пункт'); 
  cxSetResourceString(@dxSBAR_NEWRIBBONGALLERYITEMCAPTION, 'Новая галерея'); 
  cxSetResourceString(@dxSBAR_NEWSEPARATORCAPTION, 'Новый разделитель'); 
  cxSetResourceString(@dxSBAR_NEWSUBITEMCAPTION, 'Новый подпункт'); 

  cxSetResourceString(@dxSBAR_CP_ADDSUBITEM, 'Добавить &подпункт'); 
  cxSetResourceString(@dxSBAR_CP_ADDBUTTON, 'Добавить &кнопку'); 
  cxSetResourceString(@dxSBAR_CP_ADDSEPARATOR, 'Добавить &разделитель');
  //cxSetResourceString(@dxSBAR_CP_ADD,
  //cxSetResourceString(@dxITEM, 'Добавить  &Пункт');
  cxSetResourceString(@dxSBAR_CP_ADDCXITEM, 'Добавить &cxEditItem'); 
  cxSetResourceString(@dxSBAR_CP_ADDGROUPBUTTON, 'Добавить Gro&upButton'); 
  cxSetResourceString(@dxSBAR_CP_DELETEITEM, 'Удалить пункт'); 
  cxSetResourceString(@dxSBAR_CP_DELETELINK, 'Удалить ссылку'); 
  // end DesignTime section

  cxSetResourceString(@dxSBAR_CP_RESET, '&Восстановить'); 
  cxSetResourceString(@dxSBAR_CP_DELETE, '&Удалить'); 
  cxSetResourceString(@dxSBAR_CP_NAME, '&Имя:'); 
  cxSetResourceString(@dxSBAR_CP_CAPTION, '&Заголовок:');  // is the same as cxSetResourceString(@dxSBAR_CP_NAME (at design time)
  cxSetResourceString(@dxSBAR_CP_BUTTONPAINTSTYLEMENU, 'Стиль &изображения кнопки'); 
  cxSetResourceString(@dxSBAR_CP_DEFAULTSTYLE, 'Стиль&по умолчанию'); 
  cxSetResourceString(@dxSBAR_CP_TEXTONLYALWAYS, '&Только текст (Всегда)'); 
  cxSetResourceString(@dxSBAR_CP_TEXTONLYINMENUS, 'Только &текст (в меню)'); 
  cxSetResourceString(@dxSBAR_CP_IMAGEANDTEXT, 'Изображения &и текст'); 
  cxSetResourceString(@dxSBAR_CP_BEGINAGROUP, 'Создать  &группу'); 
  cxSetResourceString(@dxSBAR_CP_VISIBLE, '&Видимый'); 
  cxSetResourceString(@dxSBAR_CP_MOSTRECENTLYUSED, '&недавно используемые'); 
  // begin DesignTime section
  cxSetResourceString(@dxSBAR_CP_POSITIONMENU, '&Позиция'); 
  cxSetResourceString(@dxSBAR_CP_VIEWLEVELSMENU, 'Вид&Уровни'); 
  cxSetResourceString(@dxSBAR_CP_ALLVIEWLEVELS, 'Все'); 
  cxSetResourceString(@dxSBAR_CP_SINGLEVIEWLEVELITEMSUFFIX, ' только'); 
  cxSetResourceString(@dxSBAR_CP_BUTTONGROUPMENU, 'ButtonG&roup'); 
  cxSetResourceString(@dxSBAR_CP_BUTTONGROUP, 'Групиировка'); 
  cxSetResourceString(@dxSBAR_CP_BUTTONUNGROUP, 'Разгруппировка'); 
  // end DesignTime section

  cxSetResourceString(@dxSBAR_ADDEX, 'Добавить...'); 
  cxSetResourceString(@dxSBAR_RENAMEEX, 'Переименовать...'); 
  cxSetResourceString(@dxSBAR_DELETE, 'Удалить'); 
  cxSetResourceString(@dxSBAR_CLEAR, 'Очистить'); 
  cxSetResourceString(@dxSBAR_VISIBLE, 'Видимый'); 
  cxSetResourceString(@dxSBAR_OK, 'OK'); 
  cxSetResourceString(@dxSBAR_CANCEL, 'Отмена'); 
  cxSetResourceString(@dxSBAR_SUBMENUEDITOR, 'Редактор подменю...'); 
  cxSetResourceString(@dxSBAR_SUBMENUEDITORCAPTION, 'Редактор подпиню ExpressBars'); 
  cxSetResourceString(@dxSBAR_INSERTEX, 'Вставка...'); 

  cxSetResourceString(@dxSBAR_MOVEUP, 'Переместить вверх'); 
  cxSetResourceString(@dxSBAR_MOVEDOWN, 'переместить вниз'); 
  cxSetResourceString(@dxSBAR_POPUPMENUEDITOR, 'Редактор контекстного меню...'); 
  cxSetResourceString(@dxSBAR_TABSHEET1, ' Панели инструментов '); 
  cxSetResourceString(@dxSBAR_TABSHEET2, ' Команды '); 
  cxSetResourceString(@dxSBAR_TABSHEET3, ' Настройки '); 
  cxSetResourceString(@dxSBAR_TOOLBARS, 'Панели&инструментов:'); 
  cxSetResourceString(@dxSBAR_TNEW, '&Новый...'); 
  cxSetResourceString(@dxSBAR_TRENAME, 'П&ереименовать...'); 
  cxSetResourceString(@dxSBAR_TDELETE, '&Удалить'); 
  cxSetResourceString(@dxSBAR_TRESET, '&Восстановить...'); 
  cxSetResourceString(@dxSBAR_CLOSE, 'Закрыть'); 
  cxSetResourceString(@dxSBAR_CAPTION, ' Настроить '); 
  cxSetResourceString(@dxSBAR_CATEGORIES, 'Кате&гории:'); 
  cxSetResourceString(@dxSBAR_COMMANDS, 'Коман&ды:'); 
  cxSetResourceString(@dxSBAR_DESCRIPTION, 'Описание  '); 

  cxSetResourceString(@dxSBAR_MDIMINIMIZE, 'Свернуть окно'); 
  cxSetResourceString(@dxSBAR_MDIRESTORE, 'Восстановить окно'); 
  cxSetResourceString(@dxSBAR_MDICLOSE, 'Закрыть окно'); 
  cxSetResourceString(@dxSBAR_CUSTOMIZE, '& Настроить...'); 
  cxSetResourceString(@dxSBAR_ADDREMOVEBUTTONS, '&Добавить/удалить кнопки'); 
  cxSetResourceString(@dxSBAR_MOREBUTTONS, 'Еще кнопки'); 
  cxSetResourceString(@dxSBAR_RESETTOOLBAR, '&Восстановить панель инструментов'); 
  cxSetResourceString(@dxSBAR_EXPAND, 'Развернуть (Ctrl-Down)'); 
  cxSetResourceString(@dxSBAR_DRAGTOMAKEMENUFLOAT, 'Тяните, чтобы сделать меню плоским'); 
  cxSetResourceString(@dxSBAR_MORECOMMANDS, '&Другие команды...'); 
  cxSetResourceString(@dxSBAR_SHOWBELOWRIBBON, '&Показывать панель быстрого запуска за полосой'); 
  cxSetResourceString(@dxSBAR_SHOWABOVERIBBON, '& Показывать панель быстрого запуска поверх полосы');
  cxSetResourceString(@dxSBAR_MINIMIZERIBBON, 'С&вернуть полосу'); 
  cxSetResourceString(@dxSBAR_ADDTOQAT, '&Добавить на панель быстрого запуска'); 
  cxSetResourceString(@dxSBAR_ADDTOQATITEMNAME, '&Добавить %s на панель быстрого запуска '); 
  cxSetResourceString(@dxSBAR_REMOVEFROMQAT, '&Удалить с панели быстрого запуска '); 
  cxSetResourceString(@dxSBAR_CUSTOMIZEQAT, 'Настроить панель быстрого запуска '); 
  cxSetResourceString(@dxSBAR_ADDGALLERYNAME, 'Галерея'); 
  cxSetResourceString(@dxSBAR_SHOWALLGALLERYGROUPS, 'Показывать все группы'); 
  cxSetResourceString(@dxSBAR_HIDEALLGALLERYGROUPS, 'Скрыть все группы'); 
  cxSetResourceString(@dxSBAR_CLEARGALLERYFILTER, 'Очистка фильтра'); 
  cxSetResourceString(@dxSBAR_GALLERYEMPTYFILTERCAPTION, '<empty>'); 

  cxSetResourceString(@dxSBAR_TOOLBARNEWNAME , 'Настройки '); 
  cxSetResourceString(@dxSBAR_CATEGORYADD , 'Добавить категорию'); 
  cxSetResourceString(@dxSBAR_CATEGORYINSERT , 'Вставить категорию'); 
  cxSetResourceString(@dxSBAR_CATEGORYRENAME , 'Переименовать категорию'); 
  cxSetResourceString(@dxSBAR_TOOLBARADD , 'Добавить панель инструментов'); 
  cxSetResourceString(@dxSBAR_TOOLBARRENAME , 'Переименовать панель инструментов'); 
  cxSetResourceString(@dxSBAR_CATEGORYNAME , '&Название категории:'); 
  cxSetResourceString(@dxSBAR_TOOLBARNAME , '&Название панели инструментов:'); 
  cxSetResourceString(@dxSBAR_CUSTOMIZINGFORM, 'Форма настроек...'); 

  cxSetResourceString(@dxSBAR_MODIFY, '... изменить'); 
  cxSetResourceString(@dxSBAR_PERSMENUSANDTOOLBARS, 'Личные меню и панели инструментов '); 
  cxSetResourceString(@dxSBAR_MENUSSHOWRECENTITEMS, 'Ме&ню сначала показывает недавно используемые команды'); 
  cxSetResourceString(@dxSBAR_SHOWFULLMENUSAFTERDELAY, 'Показывать пол&ное меню после небольшой задержки'); 
  cxSetResourceString(@dxSBAR_RESETUSAGEDATA, '&Восстановить мои побьзовательские данные'); 

  cxSetResourceString(@dxSBAR_OTHEROPTIONS, 'Прочее  '); 
  cxSetResourceString(@dxSBAR_LARGEICONS, '&Крупные значки'); 
  cxSetResourceString(@dxSBAR_HINTOPT1, 'Показывать &подсказки на панелях инструментов'); 
  cxSetResourceString(@dxSBAR_HINTOPT2, 'Показывать горячие& клавиши в подсказках'); 
  cxSetResourceString(@dxSBAR_MENUANIMATIONS, '&Анимация меню:'); 
  cxSetResourceString(@dxSBAR_MENUANIM1, '(None)'); 
  cxSetResourceString(@dxSBAR_MENUANIM2, 'Случайная'); 
  cxSetResourceString(@dxSBAR_MENUANIM3, 'Развертывание'); 
  cxSetResourceString(@dxSBAR_MENUANIM4, 'Выскальзывание'); 
  cxSetResourceString(@dxSBAR_MENUANIM5, 'Выпадение'); 

  cxSetResourceString(@dxSBAR_CANTFINDBARMANAGERFORSTATUSBAR, 'Для строки состояний не найдет менеджер панелей'); 

  cxSetResourceString(@dxSBAR_BUTTONDEFAULTACTIONDESCRIPTION, 'Нажать'); 

  cxSetResourceString(@dxSBAR_GDIPLUSNEEDED, '%s требует установки библиотеки Microsoft GDI+ '); 
  cxSetResourceString(@dxSBAR_RIBBONMORETHANONE , 'There should be only one %s instance on the form'); 
  cxSetResourceString(@dxSBAR_RIBBONBADOWNER, '%s should have TCustomForm as its Owner'); 
  cxSetResourceString(@dxSBAR_RIBBONBADPARENT, '%s should have TCustomForm as its Parent'); 
  cxSetResourceString(@dxSBAR_RIBBONADDTAB, 'Добавить закладку'); 
  cxSetResourceString(@dxSBAR_RIBBONDELETETAB, 'Удалить закладку'); 
  cxSetResourceString(@dxSBAR_RIBBONADDEMPTYGROUP, 'Добавить'); 
  cxSetResourceString(@dxSBAR_RIBBONADDGROUPWITHTOOLBAR, 'Добавить группу на панель инструментов'); 
  cxSetResourceString(@dxSBAR_RIBBONDELETEGROUP, 'Удалить группу'); 

  cxSetResourceString(@dxSBAR_ACCESSIBILITY_RIBBONNAME, 'Полоса'); 
  cxSetResourceString(@dxSBAR_ACCESSIBILITY_RIBBONTABCOLLECTIONNAME, 'Полоса закладок'); 

  cxSetResourceString(@sdxAutoColorText, 'Авто'); 
  cxSetResourceString(@sdxCustomColorText, 'Настроить...'); 

  cxSetResourceString(@sdxSysColorScrollBar, 'Полоса прокрутки'); 
  cxSetResourceString(@sdxSysColorBackground, 'Фон'); 
  cxSetResourceString(@sdxSysColorActiveCaption, 'Активный заголовок'); 
  cxSetResourceString(@sdxSysColorInactiveCaption, 'Неактивный заголовок'); 
  cxSetResourceString(@sdxSysColorMenu, 'Меню'); 
  cxSetResourceString(@sdxSysColorWindow, 'Окно'); 
  cxSetResourceString(@sdxSysColorWindowFrame, 'Граница окна'); 
  cxSetResourceString(@sdxSysColorMenuText, 'Текст меню'); 
  cxSetResourceString(@sdxSysColorWindowText, 'Текст окна'); 
  cxSetResourceString(@sdxSysColorCaptionText, 'Текст заголовка'); 
  cxSetResourceString(@sdxSysColorActiveBorder, 'Граница активного окна'); 
  cxSetResourceString(@sdxSysColorInactiveBorder, 'Граница неактивного окна'); 
  cxSetResourceString(@sdxSysColorAppWorkSpace, 'Рабочая область приложений'); 
  cxSetResourceString(@sdxSysColorHighLight, 'Выделение'); 
  cxSetResourceString(@sdxSysColorHighLighText, 'Выделенный текст'); 
  cxSetResourceString(@sdxSysColorBtnFace, 'Кнопка'); 
  cxSetResourceString(@sdxSysColorBtnShadow, 'Тень кнопки'); 
  cxSetResourceString(@sdxSysColorGrayText, 'Серый текст'); 
  cxSetResourceString(@sdxSysColorBtnText, 'Текст кнопки'); 
  cxSetResourceString(@sdxSysColorInactiveCaptionText, 'Текст неактивного заголовка'); 
  cxSetResourceString(@sdxSysColorBtnHighligh, 'Активная кнопка'); 
  cxSetResourceString(@sdxSysColor3DDkShadow, '3D тень'); 
  cxSetResourceString(@sdxSysColor3DLight, '3Dосвещение'); 
  cxSetResourceString(@sdxSysColorInfoText, 'Текст подсказок'); 
  cxSetResourceString(@sdxSysColorInfoBk, 'Фон подсказок'); 

  cxSetResourceString(@sdxPureColorBlack, 'Черный'); 
  cxSetResourceString(@sdxPureColorRed, 'Красный'); 
  cxSetResourceString(@sdxPureColorLime, 'Лайм'); 
  cxSetResourceString(@sdxPureColorYellow, 'Желтый'); 
  cxSetResourceString(@sdxPureColorGreen, 'Зеленый'); 
  cxSetResourceString(@sdxPureColorTeal, 'Бежевый'); 
  cxSetResourceString(@sdxPureColorAqua, 'Цвет морской волны'); 
  cxSetResourceString(@sdxPureColorBlue, 'Синий'); 
  cxSetResourceString(@sdxPureColorWhite, 'Белый'); 
  cxSetResourceString(@sdxPureColorOlive, 'Оливковый'); 
  cxSetResourceString(@sdxPureColorMoneyGreen, 'Темно-зеленый');  
  cxSetResourceString(@sdxPureColorNavy, 'Темно-синий'); 
  cxSetResourceString(@sdxPureColorSkyBlue, 'Небесно-голубой'); 
  cxSetResourceString(@sdxPureColorGray, 'Серый'); 
  cxSetResourceString(@sdxPureColorMedGray, 'Светло-серый'); 
  cxSetResourceString(@sdxPureColorSilver, 'Серебряный'); 
  cxSetResourceString(@sdxPureColorMaroon, 'Красно-коричневый'); 
  cxSetResourceString(@sdxPureColorPurple, 'Фиолетовый'); 
  cxSetResourceString(@sdxPureColorFuchsia, 'Фуксия'); 
  cxSetResourceString(@sdxPureColorCream, 'Кремовый'); 
  
  cxSetResourceString(@sdxBrushStyleSolid, 'Сплошная'); 
  cxSetResourceString(@sdxBrushStyleClear, 'Очистка'); 
  cxSetResourceString(@sdxBrushStyleHorizontal, 'Горизонтальная'); 
  cxSetResourceString(@sdxBrushStyleVertical, 'Вертикальная'); 
  cxSetResourceString(@sdxBrushStyleFDiagonal, 'С наклоном вправо'); 
  cxSetResourceString(@sdxBrushStyleBDiagonal, 'С наклоном влево'); 
  cxSetResourceString(@sdxBrushStyleCross, 'Крест'); 
  cxSetResourceString(@sdxBrushStyleDiagCross, 'Косой крест'); 

  cxSetResourceString(@dxSB_NEWITEM              , 'Новый пункт'); 

  cxSetResourceString(@dxSB_DEFAULTGROUP         , 'По умолчанию'); 
  cxSetResourceString(@dxSB_DEFAULTITEMCAPTION   , 'Новый пункт'); 
  cxSetResourceString(@dxSB_DEFAULTGROUPCAPTION  , 'Новая группа'); 

  //PopupMenu
  cxSetResourceString(@dxSB_ADDGROUP             , 'Добавить группу'); 
  cxSetResourceString(@dxSB_REMOVEGROUP          , 'Удалить группу'); 
  cxSetResourceString(@dxSB_RENAMEGROUP          , 'Переименовать группу'); 
  cxSetResourceString(@dxSB_REMOVEITEM           , 'Удалить горячую клавишу'); 
  cxSetResourceString(@dxSB_RENAMEITEM           , 'Изменить горячую клавишу'); 
  cxSetResourceString(@dxSB_LARGEICONTYPE        , 'Крупные значки'); 
  cxSetResourceString(@dxSB_SMALLICONTYPE        , 'Мелкие значки'); 
  cxSetResourceString(@dxSB_CUSTOMIZE            , 'Настроить...'); 
  cxSetResourceString(@dxSB_CUSTOMIZECLOSEBUTTON , 'Закрыть'); 

  cxSetResourceString(@dxSB_CANTDELETEGROUP , 'Группа содержит элементы. Удаление невозможно. '); 
end;
end.
 