object dmPublic: TdmPublic
  OldCreateOrder = False
  Left = 65528
  Top = 65528
  Height = 876
  Width = 1444
  object Conn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=database.mdb;Persis' +
      't Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object dsConstant: TDataSource
    DataSet = tConstant
    Left = 24
    Top = 64
  end
  object tConstant: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Constant'
    Left = 80
    Top = 64
    object tConstantCode: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
    object tConstantName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
    object tConstantValue: TWideStringField
      FieldName = 'Value'
      Size = 50
    end
    object tConstantValueDouble: TFloatField
      FieldName = 'ValueDouble'
      DisplayFormat = '#0.000000'
    end
  end
  object dsBooks: TDataSource
    DataSet = tBooks
    Left = 24
    Top = 120
  end
  object tBooks: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tBooksAfterInsert
    BeforePost = tBooksBeforePost
    OnPostError = tBooksPostError
    IndexFieldNames = 'ObjectIntId'
    TableName = 'Books'
    Left = 80
    Top = 120
    object tBooksObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tBooksObjectIntID: TAutoIncField
      FieldName = 'ObjectIntID'
      ReadOnly = True
    end
    object tBooksBooksCount: TIntegerField
      FieldName = 'BooksCount'
      Required = True
    end
    object tBooksExistInELibrary: TBooleanField
      FieldName = 'ExistInELibrary'
      Required = True
    end
    object tBooksBiblioDescription: TMemoField
      FieldName = 'BiblioDescription'
      BlobType = ftMemo
    end
    object tBooksBiblioShortDescription: TWideStringField
      FieldName = 'BiblioShortDescription'
      Size = 255
    end
    object tBooksELibraryId: TWideStringField
      FieldName = 'ELibraryId'
      Size = 50
    end
    object tBooksELibrary: TStringField
      FieldKind = fkLookup
      FieldName = 'ELibrary'
      LookupDataSet = tLibrary
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectCode'
      KeyFields = 'ELibraryId'
      Size = 50
      Lookup = True
    end
  end
  object dsOPOP: TDataSource
    DataSet = tOPOP
    Left = 24
    Top = 176
  end
  object tOPOP: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tOPOPAfterInsert
    TableName = 'OPOP'
    Left = 80
    Top = 176
    object tOPOPObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tOPOPObjectIntID: TAutoIncField
      FieldName = 'ObjectIntID'
      ReadOnly = True
    end
    object tOPOPObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tOPOPObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tOPOPYearStart: TIntegerField
      FieldName = 'YearStart'
    end
    object tOPOPYearCount: TFloatField
      FieldName = 'YearCount'
    end
  end
  object dsDiscipline: TDataSource
    DataSet = tDiscipline
    Left = 24
    Top = 232
  end
  object tDiscipline: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDisciplineAfterInsert
    OnCalcFields = tDisciplineCalcFields
    IndexFieldNames = 'RowNumber'
    TableName = 'Discipline'
    Left = 80
    Top = 232
    object tDisciplineObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tDisciplineObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDisciplineRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tDisciplineObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tDisciplineObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tDisciplineCathedraId: TWideStringField
      FieldName = 'CathedraId'
      Size = 50
    end
    object tDisciplineUnitCount: TBCDField
      FieldName = 'UnitCount'
      Precision = 19
    end
    object tDisciplineHourTotal: TIntegerField
      FieldName = 'HourTotal'
    end
    object tDisciplineCourseExam: TWideStringField
      FieldName = 'CourseExam'
      Size = 50
    end
    object tDisciplineCourseValid: TWideStringField
      FieldName = 'CourseValid'
      Size = 50
    end
    object tDisciplineCourseProject: TWideStringField
      FieldName = 'CourseProject'
      Size = 50
    end
    object tDisciplineCourseWord: TWideStringField
      FieldName = 'CourseWord'
      Size = 50
    end
    object tDisciplineHourClass: TIntegerField
      FieldName = 'HourClass'
    end
    object tDisciplineHourClassLection: TIntegerField
      FieldName = 'HourClassLection'
    end
    object tDisciplineHourClassLaboratory: TIntegerField
      FieldName = 'HourClassLaboratory'
    end
    object tDisciplineHourClassPractice: TIntegerField
      FieldName = 'HourClassPractice'
    end
    object tDisciplineHourSelf: TIntegerField
      FieldName = 'HourSelf'
    end
    object tDisciplineHourSelfCourseProject: TIntegerField
      FieldName = 'HourSelfCourseProject'
    end
    object tDisciplineHourSelfCourseWork: TIntegerField
      FieldName = 'HourSelfCourseWork'
    end
    object tDisciplineHourSelfExam: TIntegerField
      FieldName = 'HourSelfExam'
    end
    object tDisciplineHourSelfConsult: TIntegerField
      FieldName = 'HourSelfConsult'
    end
    object tDisciplineHourSelfWork: TIntegerField
      FieldName = 'HourSelfWork'
    end
    object tDisciplineA01: TIntegerField
      FieldName = 'A01'
    end
    object tDisciplineA02: TIntegerField
      FieldName = 'A02'
    end
    object tDisciplineA03: TIntegerField
      FieldName = 'A03'
    end
    object tDisciplineA04: TIntegerField
      FieldName = 'A04'
    end
    object tDisciplineA05: TIntegerField
      FieldName = 'A05'
    end
    object tDisciplineA06: TIntegerField
      FieldName = 'A06'
    end
    object tDisciplineA07: TIntegerField
      FieldName = 'A07'
    end
    object tDisciplineA08: TIntegerField
      FieldName = 'A08'
    end
    object tDisciplineA09: TIntegerField
      FieldName = 'A09'
    end
    object tDisciplineA10: TIntegerField
      FieldName = 'A10'
    end
    object tDisciplineS01: TIntegerField
      FieldName = 'S01'
    end
    object tDisciplineS02: TIntegerField
      FieldName = 'S02'
    end
    object tDisciplineS03: TIntegerField
      FieldName = 'S03'
    end
    object tDisciplineS04: TIntegerField
      FieldName = 'S04'
    end
    object tDisciplineS05: TIntegerField
      FieldName = 'S05'
    end
    object tDisciplineS06: TIntegerField
      FieldName = 'S06'
    end
    object tDisciplineS07: TIntegerField
      FieldName = 'S07'
    end
    object tDisciplineS08: TIntegerField
      FieldName = 'S08'
    end
    object tDisciplineS09: TIntegerField
      FieldName = 'S09'
    end
    object tDisciplineS10: TIntegerField
      FieldName = 'S10'
    end
    object tDisciplineExamCount: TIntegerField
      FieldName = 'ExamCount'
    end
    object tDisciplineValidCount: TIntegerField
      FieldName = 'ValidCount'
    end
    object tDisciplineCourseProjectCount: TIntegerField
      FieldName = 'CourseProjectCount'
    end
    object tDisciplineCourseWorkCount: TIntegerField
      FieldName = 'CourseWorkCount'
    end
    object tDisciplineIsPractic: TBooleanField
      FieldName = 'IsPractic'
    end
    object tDisciplineOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tDisciplineOPOP: TStringField
      FieldKind = fkLookup
      FieldName = 'OPOP'
      LookupDataSet = tOPOP
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'OPOPId'
      Size = 255
      Lookup = True
    end
    object tDisciplineHourRest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HourRest'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object tDisciplineHourStaff: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HourStaff'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object tDisciplineHourPractic: TBCDField
      FieldName = 'HourPractic'
      Precision = 19
    end
    object tDisciplineCathedra: TStringField
      FieldKind = fkLookup
      FieldName = 'Cathedra'
      LookupDataSet = tCathedra
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'CathedraId'
      Size = 50
      Lookup = True
    end
    object tDisciplineGoalText: TMemoField
      FieldName = 'GoalText'
      BlobType = ftMemo
    end
    object tDisciplineTaskText: TMemoField
      FieldName = 'TaskText'
      BlobType = ftMemo
    end
    object tDisciplineContentText: TMemoField
      FieldName = 'ContentText'
      BlobType = ftMemo
    end
    object tDisciplineKnowText: TMemoField
      FieldName = 'KnowText'
      BlobType = ftMemo
    end
    object tDisciplineCanDoText: TMemoField
      FieldName = 'CanDoText'
      BlobType = ftMemo
    end
    object tDisciplineSkillText: TMemoField
      FieldName = 'SkillText'
      BlobType = ftMemo
    end
    object tDisciplineCompetentions: TWideStringField
      FieldName = 'Competentions'
      Size = 255
    end
    object tDisciplineLessonKinds: TStringField
      FieldKind = fkCalculated
      FieldName = 'LessonKinds'
      Size = 255
      Calculated = True
    end
    object tDisciplineValidKinds: TStringField
      FieldKind = fkCalculated
      FieldName = 'ValidKinds'
      Size = 255
      Calculated = True
    end
  end
  object dsDisciplineBooks: TDataSource
    DataSet = tDisciplineBooks
    Left = 24
    Top = 288
  end
  object tDisciplineBooks: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDiscipline
    TableName = 'DisciplineBooks'
    Left = 80
    Top = 288
    object tDisciplineBooksBookId: TWideStringField
      FieldName = 'BookId'
      Size = 50
    end
    object tDisciplineBooksDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDisciplineBooksIsBase: TBooleanField
      FieldName = 'IsBase'
    end
    object tDisciplineBooksBook: TStringField
      FieldKind = fkLookup
      FieldName = 'Book'
      LookupDataSet = tBooks
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'BiblioDescription'
      KeyFields = 'BookId'
      Size = 255
      Lookup = True
    end
  end
  object tR01Q01: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Report01Query01'
    Left = 192
    Top = 64
    object tR01Q01ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01Q01ParamValue: TIntegerField
      FieldName = 'ParamValue'
    end
  end
  object tR01Q02: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Report01Query02'
    Left = 192
    Top = 120
    object tR01Q02ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01Q02ParamValue: TIntegerField
      FieldName = 'ParamValue'
    end
  end
  object tR01Q03: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Report01Query03'
    Left = 192
    Top = 176
    object tR01Q03ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01Q03ParamValue: TFloatField
      FieldName = 'ParamValue'
    end
  end
  object tR01Q04: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Report01Query04'
    Left = 192
    Top = 232
    object tR01Q04ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01Q04ParamValue: TIntegerField
      FieldName = 'ParamValue'
    end
  end
  object tR01Q05: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Report01Query05'
    Left = 192
    Top = 288
    object tR01Q05ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01Q05ParamValue: TFloatField
      FieldName = 'ParamValue'
    end
  end
  object tR01Q06: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'Report01Query06'
    Left = 192
    Top = 344
    object tR01Q06ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01Q06ParamValue: TIntegerField
      FieldName = 'ParamValue'
    end
  end
  object tR01: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tR01AfterInsert
    TableName = 'ReportDisciplineBooks01'
    Left = 256
    Top = 64
    object tR01ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tR01ObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tR01RowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tR01ObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tR01UnitName: TWideStringField
      FieldName = 'UnitName'
      Size = 50
    end
    object tR01ParamValue: TWideStringField
      FieldName = 'ParamValue'
      Size = 50
    end
  end
  object frxReport: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '?? ?????????'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43274.165702800900000000
    ReportOptions.LastChange = 43373.810552870370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 32
    Datasets = <
      item
        DataSet = frxOPOP
        DataSetName = 'frxOPOP'
      end
      item
        DataSet = frxPersonRateGroup
        DataSetName = 'frxPersonRateGroup'
      end
      item
        DataSet = frxPersonReport04add
        DataSetName = 'frxPersonReport04add'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 234.330860000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        object Memo1: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 94.488250000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#164#1056#181#1056#1169#1056#181#1057#1026#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#181' '#1056#1110#1056#1109#1057#1027#1057#1107#1056#1169#1056#176#1057#1026#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1056#1109#1056#181' '#1056#177#1057#1035#1056#1169#1056#182#1056#181 +
              #1057#8218#1056#1029#1056#1109#1056#181' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#181' '#1057#1107#1057#8225#1057#1026#1056#181#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1056#181' '#1056#1030#1057 +
              #8249#1057#1027#1057#8364#1056#181#1056#1110#1056#1109' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039
            
              #1042#171#1056#160#1057#1039#1056#183#1056#176#1056#1029#1057#1027#1056#1108#1056#1105#1056#8470' '#1056#1110#1056#1109#1057#1027#1057#1107#1056#1169#1056#176#1057#1026#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1057#8249#1056#8470' '#1057#1026#1056#176#1056#1169#1056#1105#1056#1109#1057#8218 +
              #1056#181#1057#8230#1056#1029#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1056#8470' '#1057#1107#1056#1029#1056#1105#1056#1030#1056#181#1057#1026#1057#1027#1056#1105#1057#8218#1056#181#1057#8218#1042#187
            #1056#1038#1056#1111#1057#1026#1056#176#1056#1030#1056#1108#1056#176
            
              #1056#1109' '#1056#1108#1056#176#1056#1169#1057#1026#1056#1109#1056#1030#1056#1109#1056#1112' '#1056#1109#1056#177#1056#181#1057#1027#1056#1111#1056#181#1057#8225#1056#181#1056#1029#1056#1105#1056#1105' '#1056#1109#1057#1027#1056#1029#1056#1109#1056#1030#1056#1029#1056#1109#1056#8470' '#1056#1109#1056#177 +
              #1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1109#1056#1110#1057#1026#1056#176#1056#1112#1056#1112#1057#8249' '#1056#1030#1057#8249#1057#1027#1057#8364#1056#181#1056#1110#1056#1109' '#1056#1109#1056 +
              #177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1074#1026#8220' '#1056#1111#1057#1026#1056#1109#1056#1110#1057#1026#1056#176#1056#1112#1056#1112#1057#8249' '#1057#1027#1056#1111#1056#181#1057#8224#1056#1105#1056#176#1056#187#1056#1105#1057#8218#1056#181#1057 +
              #8218#1056#176
            '[frxOPOP."ObjectName"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 94.488250000000000000
          Width = 26.456710000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 94.488250000000000000
          Width = 124.724490000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#164'.'#1056#152'.'#1056#1115'. '#1056#1111#1057#1026#1056#181#1056#1111#1056#1109#1056#1169#1056#176#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1039', '#1057#1026#1056#181#1056#176#1056#187#1056#1105#1056#183#1057#1107#1057#1035#1057#8240#1056#181#1056#1110#1056#1109' '#1056 +
              #1111#1057#1026#1056#1109#1056#1110#1057#1026#1056#176#1056#1112#1056#1112#1057#1107)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Top = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1032#1057#1027#1056#187#1056#1109#1056#1030#1056#1105#1057#1039' '#1056#1111#1057#1026#1056#1105#1056#1030#1056#187#1056#181#1057#8225#1056#181#1056#1029#1056#1105#1057#1039' ('#1057#8364#1057#8218#1056#176#1057#8218#1056#1029#1057#8249#1056#8470', '#1056#1030#1056#1029#1057#1107#1057#8218#1057 +
              #1026#1056#181#1056#1029#1056#1029#1056#1105#1056#8470' '#1057#1027#1056#1109#1056#1030#1056#1112#1056#181#1057#1027#1057#8218#1056#1105#1057#8218#1056#181#1056#187#1057#1034', '#1056#1030#1056#1029#1056#181#1057#8364#1056#1029#1056#1105#1056#8470' '#1057#1027#1056#1109#1056#1030#1056#1112#1056#181#1057 +
              #1027#1057#8218#1056#1105#1057#8218#1056#181#1056#187#1057#1034', '#1056#1111#1056#1109' '#1056#1169#1056#1109#1056#1110#1056#1109#1056#1030#1056#1109#1057#1026#1057#1107' '#1056#8220#1056#1119#1056#1168')')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.346630000000000000
          Top = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034', '#1057#1107#1057#8225#1056#181#1056#1029#1056#176#1057#1039' '#1057#1027#1057#8218#1056#181#1056#1111#1056#181#1056#1029#1057#1034', '#1057#1107#1057#8225#1056#181#1056#1029#1056#1109#1056#181' '#1056#183 +
              #1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 385.512060000000000000
          Top = 94.488250000000000000
          Width = 181.417440000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#181#1057#8225#1056#181#1056#1029#1057#1034' '#1057#8225#1056#1105#1057#8218#1056#176#1056#181#1056#1112#1057#8249#1057#8230' '#1056#1169#1056#1105#1057#1027#1057#8224#1056#1105#1056#1111#1056#187#1056#1105#1056#1029)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 566.929500000000000000
          Top = 94.488250000000000000
          Width = 181.417440000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1032#1057#1026#1056#1109#1056#1030#1056#181#1056#1029#1057#1034' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039', '#1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' ' +
              #1057#1027#1056#1111#1056#181#1057#8224#1056#1105#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105', '#1056#1029#1056#176#1056#1111#1057#1026#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1111#1056#1109#1056#1169#1056#1110#1056#1109#1057#8218#1056 +
              #1109#1056#1030#1056#1108#1056#1105', '#1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1111#1057#1026#1056#1105#1057#1027#1056#1030#1056#1109#1056#181#1056#1029#1056#1029#1056#1109#1056#8470' '#1056#1108#1056#1030#1056#176#1056 +
              #187#1056#1105#1057#8222#1056#1105#1056#1108#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 748.346940000000000000
          Top = 94.488250000000000000
          Width = 158.740260000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1038#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1109' '#1056#1169#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#1112' '#1056#1111#1057#1026#1056#1109#1057#8222#1056#181#1057#1027#1057#1027#1056 +
              #1105#1056#1109#1056#1029#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#1112' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 907.087200000000000000
          Top = 94.488250000000000000
          Width = 139.842610000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1056#177#1057#1033#1056#181#1056#1112' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1056#1109#1056#8470' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#1105'* '#1056#1111#1056#1109' '#1056#1169#1056#1105#1057#1027#1057#8224#1056#1105#1056#1111#1056#187#1056 +
              #1105#1056#1029#1056#181', '#1056#1111#1057#1026#1056#176#1056#1108#1057#8218#1056#1105#1056#1108#1056#176#1056#1112', '#1056#8220#1056#152#1056#1106)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 907.087200000000000000
          Top = 158.740260000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1029#1057#8218#1056#176#1056#1108#1057#8218#1056#1029#1056#176#1057#1039' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 907.087200000000000000
          Top = 181.417440000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 982.677800000000000000
          Top = 181.417440000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1057#1039' '#1057#1027#1057#8218#1056#176#1056#1030#1056#1108#1056#1105)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 211.653680000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 26.456710000000000000
          Top = 211.653680000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 151.181200000000000000
          Top = 211.653680000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 268.346630000000000000
          Top = 211.653680000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 385.512060000000000000
          Top = 211.653680000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Top = 211.653680000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 748.346940000000000000
          Top = 211.653680000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 907.087200000000000000
          Top = 211.653680000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 982.677800000000000000
          Top = 211.653680000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        DataSet = frxPersonReport04add
        DataSetName = 'frxPersonReport04add'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 26.456710000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxPersonReport04add."PersonFirstName"]'
            '[frxPersonReport04add."PersonSecondName"] '
            '[frxPersonReport04add."PersonLastName"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataSet = frxPersonReport03
          DataSetName = 'frxPersonReport03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxPersonReport04add."Attraction"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 268.346630000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxPersonReport04add."Post"],'
            
              #1057#1107#1057#8225#1056#181#1056#1029#1056#176#1057#1039' '#1057#1027#1057#8218#1056#181#1056#1111#1056#181#1056#1029#1057#1034' - [frxPersonReport04add."Degree"], '#1057 +
              #1107#1057#8225#1056#181#1057#8218#1056#1029#1056#1109#1056#181' '#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181' - [frxPersonReport04add."Status"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Left = 385.512060000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataSet = frxPersonReport03
          DataSetName = 'frxPersonReport03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          Memo.UTF8 = (
            '[frxPersonReport04add."DisciplineList"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 566.929500000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataSet = frxPersonReport03
          DataSetName = 'frxPersonReport03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          Memo.UTF8 = (
            '[frxPersonReport04add."Education"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 748.346940000000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'EddAdd'
          DataSet = frxPersonReport04add
          DataSetName = 'frxPersonReport04add'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          Memo.UTF8 = (
            '[frxPersonReport04add."EddAdd"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 907.087200000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'HoursValue'
          DataSet = frxPersonReport04add
          DataSetName = 'frxPersonReport04add'
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPersonReport04add."HoursValue"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'StaffValue'
          DataSet = frxPersonReport04add
          DataSetName = 'frxPersonReport04add'
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxPersonReport04add."StaffValue"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 351.496290000000000000
        ParentFont = False
        Top = 404.409710000000000000
        Width = 1046.929810000000000000
        object Memo26: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 230.551330000000000000
          Memo.UTF8 = (
            
              '1. '#1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' '#1056#1029#1056#176#1057#1107#1057#8225#1056#1029#1056#1109'-'#1056#1111#1056#181#1056#1169#1056#176#1056#1110#1056#1109#1056#1110#1056#1105 +
              #1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1057#8230' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#1105#1056#1108#1056#1109#1056#1030', '#1057#1026#1056#181#1056#176#1056#187#1056#1105#1056#183#1057#1107#1057#1035#1057#8240#1056#1105#1057#8230' '#1056#1109#1057#1027#1056#1029 +
              #1056#1109#1056#1030#1056#1029#1057#1107#1057#1035' '#1056#1111#1057#1026#1056#1109#1057#8222#1056#181#1057#1027#1057#1027#1056#1105#1056#1109#1056#1029#1056#176#1056#187#1057#1034#1056#1029#1057#1107#1057#1035' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181 +
              #1056#187#1057#1034#1056#1029#1057#1107#1057#1035' '#1056#1111#1057#1026#1056#1109#1056#1110#1057#1026#1056#176#1056#1112#1056#1112#1057#1107', [Line#] '#1057#8225#1056#181#1056#187'.'
            
              '2. '#1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' '#1057#1027#1057#8218#1056#176#1056#1030#1056#1109#1056#1108', '#1056#183#1056#176#1056#1029#1056#1105#1056#1112#1056#176#1056#181#1056 +
              #1112#1057#8249#1057#8230' '#1056#1029#1056#176#1057#1107#1057#8225#1056#1029#1056#1109'-'#1056#1111#1056#181#1056#1169#1056#176#1056#1110#1056#1109#1056#1110#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1056#1112#1056#1105' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#1105 +
              #1056#1108#1056#176#1056#1112#1056#1105', '#1057#1026#1056#181#1056#176#1056#187#1056#1105#1056#183#1057#1107#1057#1035#1057#8240#1056#1105#1056#1112#1056#1105' '#1056#1109#1057#1027#1056#1029#1056#1109#1056#1030#1056#1029#1057#1107#1057#1035' '#1056#1111#1057#1026#1056#1109#1057#8222#1056#181#1057#1027 +
              #1057#1027#1056#1105#1056#1109#1056#1029#1056#176#1056#187#1057#1034#1056#1029#1057#1107#1057#1035' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#1107#1057#1035' '#1056#1111#1057#1026#1056#1109#1056#1110#1057#1026#1056#176 +
              #1056#1112#1056#1112#1057#1107', [Round(<frxPersonRateGroup."RateTotalSum">*100)/100] '#1057#1027#1057 +
              #8218'.'
            
              '3. '#1056#1116#1056#1109#1057#1026#1056#1112#1056#176#1057#8218#1056#1105#1056#1030#1056#1029#1057#8249#1056#8470' '#1056#187#1056#1109#1056#1108#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#8470' '#1056#176#1056#1108#1057#8218' '#1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105 +
              #1056#183#1056#176#1057#8224#1056#1105#1056#1105', '#1057#1026#1056#181#1056#1110#1056#187#1056#176#1056#1112#1056#181#1056#1029#1057#8218#1056#1105#1057#1026#1057#1107#1057#1035#1057#8240#1056#1105#1056#8470' '#1056#1109#1056#177#1057#1033#1056#181#1056#1112' '#1057#1107#1057#8225#1056#181#1056#177 +
              #1056#1029#1056#1109#1056#8470' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#1105' '#1056#1116#1056#1119#1056#160' '#1056#1029#1056#176' '#1057#1027#1057#8218#1056#176#1056#1030#1056#1108#1057#1107' '#1056#1111#1056#1109' '#1056#1109#1056#1111#1057#1026#1056#181#1056#1169 +
              #1056#181#1056#187#1056#181#1056#1029#1056#1029#1056#1109#1056#8470' '#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105' '#1056#1109#1057#8218'______________201_'#1056#1110'. '#1074#8222#8211' ' +
              '________ ('#1056#183#1056#176#1056#1030#1056#181#1057#1026#1056#181#1056#1029#1056#1029#1056#176#1057#1039' '#1057#1027#1056#1108#1056#176#1056#1029'-'#1056#1108#1056#1109#1056#1111#1056#1105#1057#1039' '#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#176' ' +
              #1056#177#1057#8249#1057#8218#1057#1034' '#1056#1111#1057#1026#1056#1105#1056#187#1056#1109#1056#182#1056#181#1056#1029#1056#176' '#1056#1108' '#1057#1027#1056#1111#1057#1026#1056#176#1056#1030#1056#1108#1056#181'). '
            
              '4. '#1056#1116#1056#1109#1057#1026#1056#1112#1056#176#1057#8218#1056#1105#1056#1030#1056#1029#1057#8249#1056#8470' '#1056#187#1056#1109#1056#1108#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#8470' '#1056#176#1056#1108#1057#8218' '#1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105 +
              #1056#183#1056#176#1057#8224#1056#1105#1056#1105' '#1056#1109#1056#177' '#1057#1107#1057#1027#1057#8218#1056#176#1056#1029#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1056#1105' '#1056#1029#1056#1109#1057#1026#1056#1112' '#1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1105 +
              ' '#1056#1111#1056#1109' '#1056#1030#1056#1105#1056#1169#1056#176#1056#1112' '#1056#1108#1056#1109#1056#1029#1057#8218#1056#176#1056#1108#1057#8218#1056#1029#1056#1109#1056#8470' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1057#8249' '#1056#1029#1056#176' '#1056#1109#1056#1169#1056#1029#1056#1109 +
              #1056#1110#1056#1109' '#1056#1109#1056#177#1057#1107#1057#8225#1056#176#1057#1035#1057#8240#1056#181#1056#1110#1056#1109#1057#1027#1057#1039', '#1056#1109#1057#8218'______________201_'#1056#1110'. '#1074#8222#8211' ___' +
              '_____ ('#1056#183#1056#176#1056#1030#1056#181#1057#1026#1056#181#1056#1029#1056#1029#1056#176#1057#1039' '#1057#1027#1056#1108#1056#176#1056#1029'-'#1056#1108#1056#1109#1056#1111#1056#1105#1057#1039' '#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#176' '#1056#177#1057 +
              #8249#1057#8218#1057#1034' '#1056#1111#1057#1026#1056#1105#1056#187#1056#1109#1056#182#1056#181#1056#1029#1056#176' '#1056#1108' '#1057#1027#1056#1111#1057#1026#1056#176#1056#1030#1056#1108#1056#181'). '
            ''
            #1056#160#1057#1107#1056#1108#1056#1109#1056#1030#1056#1109#1056#1169#1056#1105#1057#8218#1056#181#1056#187#1057#1034' '#1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105#1056#183#1056#176#1057#8224#1056#1105#1056#1105','
            
              #1056#1109#1057#1027#1057#1107#1057#8240#1056#181#1057#1027#1057#8218#1056#1030#1056#187#1057#1039#1057#1035#1057#8240#1056#181#1056#8470' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#1107#1057#1035' '#1056#1169#1056#181 +
              #1057#1039#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034'                                            ' +
              '                   ________________________ /___________________' +
              '_ /'
            
              '                                                                ' +
              '                                                                ' +
              '                            '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#164'.'#1056#152'.'#1056#1115'. '#1056#1111#1056#1109#1056#187#1056#1029#1056#1109#1057 +
              #1027#1057#8218#1057#1034#1057#1035
            #1056#1114'.'#1056#1119'.'
            ''
            #1056#1169#1056#176#1057#8218#1056#176' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039' ________________')
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxR01: TfrxDBDataset
    UserName = 'frxR01'
    CloseDataSource = False
    DataSet = tR01
    BCDToCurrency = False
    Left = 352
    Top = 32
  end
  object frxOPOP: TfrxDBDataset
    UserName = 'frxOPOP'
    CloseDataSource = False
    DataSet = tOPOP
    BCDToCurrency = False
    Left = 352
    Top = 80
  end
  object dsAttraction: TDataSource
    DataSet = tAttraction
    Left = 24
    Top = 344
  end
  object tAttraction: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tAttractionAfterInsert
    TableName = 'Attraction'
    Left = 80
    Top = 344
    object tAttractionObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tAttractionObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tAttractionObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tAttractionObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
  end
  object dsStatus: TDataSource
    DataSet = tStatus
    Left = 24
    Top = 400
  end
  object tStatus: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tStatusAfterInsert
    TableName = 'Status'
    Left = 80
    Top = 400
    object tStatusObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tStatusObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tStatusObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tStatusObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
  end
  object dsPost: TDataSource
    DataSet = tPost
    Left = 24
    Top = 456
  end
  object tPost: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tPostAfterInsert
    TableName = 'Post'
    Left = 80
    Top = 456
    object tPostObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tPostObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPostObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tPostObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tPostHoursRate: TIntegerField
      FieldName = 'HoursRate'
    end
  end
  object dsDegree: TDataSource
    DataSet = tDegree
    Left = 24
    Top = 520
  end
  object tDegree: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDegreeAfterInsert
    TableName = 'Degree'
    Left = 80
    Top = 520
    object tDegreeObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tDegreeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDegreeObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tDegreeObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tDegreeIsDegreeExist: TBooleanField
      FieldName = 'IsDegreeExist'
    end
  end
  object dsCathedra: TDataSource
    DataSet = tCathedra
    Left = 24
    Top = 584
  end
  object tCathedra: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tCathedraAfterInsert
    TableName = 'Cathedra'
    Left = 80
    Top = 584
    object tCathedraObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tCathedraObjectIntID: TAutoIncField
      FieldName = 'ObjectIntID'
      ReadOnly = True
    end
    object tCathedraObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tCathedraObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tCathedraContacts: TMemoField
      FieldName = 'Contacts'
      BlobType = ftMemo
    end
    object tCathedraSecondRate: TBooleanField
      FieldName = 'SecondRate'
    end
  end
  object dsPerson: TDataSource
    DataSet = tPerson
    Left = 192
    Top = 520
  end
  object tPerson: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tPersonAfterInsert
    BeforePost = tPersonBeforePost
    OnCalcFields = tPersonCalcFields
    TableName = 'Person'
    Left = 248
    Top = 520
    object tPersonObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tPersonObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPersonCathedraID: TWideStringField
      FieldName = 'CathedraID'
      Size = 50
    end
    object tPersonObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tPersonFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 255
    end
    object tPersonSecondName: TWideStringField
      FieldName = 'SecondName'
      Size = 255
    end
    object tPersonLastName: TWideStringField
      FieldName = 'LastName'
      Size = 255
    end
    object tPersonAttractionId: TWideStringField
      FieldName = 'AttractionId'
      Size = 50
    end
    object tPersonDegreeId: TWideStringField
      FieldName = 'DegreeId'
      Size = 50
    end
    object tPersonPostId: TWideStringField
      FieldName = 'PostId'
      Size = 50
    end
    object tPersonStatusId: TWideStringField
      FieldName = 'StatusId'
      Size = 50
    end
    object tPersonEducation: TWideStringField
      FieldName = 'Education'
      Size = 255
    end
    object tPersonSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 255
    end
    object tPersonQualification: TWideStringField
      FieldName = 'Qualification'
      Size = 255
    end
    object tPersonEducationAdd: TMemoField
      FieldName = 'EducationAdd'
      BlobType = ftMemo
    end
    object tPersonExperiance: TIntegerField
      FieldName = 'Experiance'
    end
    object tPersonExperiancePedagogical: TIntegerField
      FieldName = 'ExperiancePedagogical'
    end
    object tPersonCathedra: TStringField
      FieldKind = fkLookup
      FieldName = 'Cathedra'
      LookupDataSet = tCathedra
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'CathedraID'
      Size = 255
      Lookup = True
    end
    object tPersonAttraction: TStringField
      FieldKind = fkLookup
      FieldName = 'Attraction'
      LookupDataSet = tAttraction
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'AttractionId'
      Size = 255
      Lookup = True
    end
    object tPersonDegree: TStringField
      FieldKind = fkLookup
      FieldName = 'Degree'
      LookupDataSet = tDegree
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'DegreeId'
      Size = 255
      Lookup = True
    end
    object tPersonPost: TStringField
      FieldKind = fkLookup
      FieldName = 'Post'
      LookupDataSet = tPost
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'PostId'
      Size = 255
      Lookup = True
    end
    object tPersonStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = tStatus
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'StatusId'
      Size = 255
      Lookup = True
    end
    object tPersonIsWorker: TBooleanField
      FieldName = 'IsWorker'
    end
    object tPersonObjectState: TBooleanField
      FieldName = 'ObjectState'
    end
    object tPersonWorkDescription: TMemoField
      FieldName = 'WorkDescription'
      BlobType = ftMemo
    end
    object tPersonStageYears: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'StageYears'
      Calculated = True
    end
    object tPersonStagePedYears: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'StagePedYears'
      Calculated = True
    end
    object tPersonStatusName: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusName'
      Size = 50
      Calculated = True
    end
  end
  object dsDisciplinePersons: TDataSource
    DataSet = tDisciplinePersons
    Left = 192
    Top = 576
  end
  object tDisciplinePersons: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDisciplinePersonsAfterInsert
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDiscipline
    TableName = 'DisciplinePersons'
    Left = 248
    Top = 576
    object tDisciplinePersonsDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDisciplinePersonsPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tDisciplinePersonsHours: TBCDField
      FieldName = 'Hours'
      Precision = 19
    end
    object tDisciplinePersonsPerson: TStringField
      FieldKind = fkLookup
      FieldName = 'Person'
      LookupDataSet = tPerson
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'StatusName'
      KeyFields = 'PersonId'
      Size = 255
      Lookup = True
    end
    object tDisciplinePersonsIsBaseProfile: TBooleanField
      FieldName = 'IsBaseProfile'
    end
    object tDisciplinePersonsHoursRate: TIntegerField
      FieldName = 'HoursRate'
    end
    object tDisciplinePersonsRatio: TFloatField
      FieldName = 'Ratio'
      DisplayFormat = '#0.0000'
    end
  end
  object tR02: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReport01'
    Left = 256
    Top = 128
    object tR02OPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tR02FirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 255
    end
    object tR02SecondName: TWideStringField
      FieldName = 'SecondName'
      Size = 255
    end
    object tR02LastName: TWideStringField
      FieldName = 'LastName'
      Size = 255
    end
    object tR02Attraction: TWideStringField
      FieldName = 'Attraction'
      Size = 50
    end
    object tR02Post: TWideStringField
      FieldName = 'Post'
      Size = 255
    end
    object tR02Degree: TWideStringField
      FieldName = 'Degree'
      Size = 255
    end
    object tR02Status: TWideStringField
      FieldName = 'Status'
      Size = 255
    end
    object tR02Discipline: TWideStringField
      FieldName = 'Discipline'
      Size = 255
    end
    object tR02Education: TWideStringField
      FieldName = 'Education'
      Size = 255
    end
    object tR02EducationAdd: TMemoField
      FieldName = 'EducationAdd'
      BlobType = ftMemo
    end
    object tR02Rate: TFloatField
      FieldName = 'Rate'
      ReadOnly = True
    end
  end
  object frR02: TfrxDBDataset
    UserName = 'frxR02'
    CloseDataSource = False
    DataSet = tR02
    BCDToCurrency = False
    Left = 352
    Top = 128
  end
  object qPersonCount: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      
        'select count(disciplineid) as PersonCount from disciplinepersons' +
        ' where personid = '#39'{B41FF83D-AD60-4DA5-A835-AE04ACDA7192}'#39)
    Left = 312
    Top = 520
    object qPersonCountPersonCount: TIntegerField
      FieldName = 'PersonCount'
    end
  end
  object tPersonReport: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReport02'
    Left = 376
    Top = 520
    object tPersonReportOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tPersonReportPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tPersonReportFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 255
    end
    object tPersonReportSecondName: TWideStringField
      FieldName = 'SecondName'
      Size = 255
    end
    object tPersonReportLastName: TWideStringField
      FieldName = 'LastName'
      Size = 255
    end
    object tPersonReportDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tPersonReportRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tPersonReportObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tPersonReportDiscipline: TWideStringField
      FieldName = 'Discipline'
      Size = 255
    end
    object tPersonReportIsBaseProfile: TBooleanField
      FieldName = 'IsBaseProfile'
    end
    object tPersonReportIsDegreeExist: TBooleanField
      FieldName = 'IsDegreeExist'
    end
    object tPersonReportIsWorker: TBooleanField
      FieldName = 'IsWorker'
    end
    object tPersonReportHours: TBCDField
      FieldName = 'Hours'
      Precision = 19
    end
    object tPersonReportHourBase: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HourBase'
      Calculated = True
    end
    object tPersonReportHourDegree: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HourDegree'
      Calculated = True
    end
    object tPersonReportHourWorker: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HourWorker'
      Calculated = True
    end
    object tPersonReportHoursRate: TIntegerField
      FieldName = 'HoursRate'
    end
  end
  object frxPersonReport02: TfrxDBDataset
    UserName = 'frxPersonReport02'
    CloseDataSource = False
    DataSet = tPersonReport
    BCDToCurrency = False
    Left = 352
    Top = 184
  end
  object tPersonReport02Group: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReport02Group'
    Left = 376
    Top = 464
    object tPersonReport02GroupOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tPersonReport02GroupPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tPersonReport02GroupFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 255
    end
    object tPersonReport02GroupSecondName: TWideStringField
      FieldName = 'SecondName'
      Size = 255
    end
    object tPersonReport02GroupLastName: TWideStringField
      FieldName = 'LastName'
      Size = 255
    end
    object tPersonReport02GroupAttractionId: TWideStringField
      FieldName = 'AttractionId'
      Size = 50
    end
    object tPersonReport02GroupAttraction: TWideStringField
      FieldName = 'PersonReport02Group.Attraction.ObjectCode'
      Size = 50
    end
    object tPersonReport02GroupPost: TWideStringField
      FieldName = 'PersonReport02Group.Post.ObjectCode'
      Size = 50
    end
    object tPersonReport02GroupDegree: TWideStringField
      FieldName = 'PersonReport02Group.Degree.ObjectCode'
      Size = 50
    end
    object tPersonReport02GroupStatus: TWideStringField
      FieldName = 'PersonReport02Group.Status.ObjectCode'
      Size = 50
    end
    object tPersonReport02GroupCathedra: TWideStringField
      FieldName = 'Cathedra'
      Size = 50
    end
    object tPersonReport02GroupIsDegreeExist: TBooleanField
      FieldName = 'IsDegreeExist'
    end
    object tPersonReport02GroupIsStatusExist: TBooleanField
      FieldName = 'IsStatusExist'
    end
    object tPersonReport02GroupAddCathedra: TBooleanField
      FieldName = 'AddCathedra'
    end
    object tPersonReport02GroupEducation: TWideStringField
      FieldName = 'Education'
      Size = 255
    end
    object tPersonReport02GroupEducationAdd: TMemoField
      FieldName = 'EducationAdd'
      BlobType = ftMemo
    end
    object tPersonReport02GroupExperiance: TIntegerField
      FieldName = 'Experiance'
    end
  end
  object tPersonReport03: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReport03'
    Left = 376
    Top = 416
    object tPersonReport03PersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tPersonReport03PersonFirstName: TWideStringField
      FieldName = 'PersonFirstName'
      Size = 255
    end
    object tPersonReport03PersonSecondName: TWideStringField
      FieldName = 'PersonSecondName'
      Size = 255
    end
    object tPersonReport03PersonLastName: TWideStringField
      FieldName = 'PersonLastName'
      Size = 255
    end
    object tPersonReport03Attraction: TWideStringField
      FieldName = 'Attraction'
      Size = 255
    end
    object tPersonReport03Post: TWideStringField
      FieldName = 'Post'
      Size = 255
    end
    object tPersonReport03Degree: TWideStringField
      FieldName = 'Degree'
      Size = 255
    end
    object tPersonReport03Status: TWideStringField
      FieldName = 'Status'
      Size = 255
    end
    object tPersonReport03DisciplineList: TMemoField
      FieldName = 'DisciplineList'
      BlobType = ftMemo
    end
    object tPersonReport03Education: TWideStringField
      FieldName = 'Education'
      Size = 255
    end
    object tPersonReport03EducationAdd: TMemoField
      FieldName = 'EducationAdd'
      BlobType = ftMemo
    end
    object tPersonReport03PracticStage: TWideStringField
      FieldName = 'PracticStage'
      Size = 255
    end
    object tPersonReport03PracticDescription: TMemoField
      FieldName = 'PracticDescription'
      BlobType = ftMemo
    end
    object tPersonReport03Stage: TIntegerField
      FieldName = 'Stage'
    end
    object tPersonReport03StaffValue: TMemoField
      FieldName = 'StaffValue'
      BlobType = ftMemo
    end
    object tPersonReport03HoursValue: TMemoField
      FieldName = 'HoursValue'
      BlobType = ftMemo
    end
  end
  object qDeletePersonReport03: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'delete from PersonReport03;')
    Left = 376
    Top = 368
  end
  object tPersonReport02Detail: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'OPOPId;PersonId'
    MasterFields = 'OPOPId;PersonId'
    MasterSource = dsPersonReport02Group
    TableName = 'PersonReport02'
    Left = 376
    Top = 576
    object tPersonReport02DetailOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tPersonReport02DetailPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tPersonReport02DetailFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 255
    end
    object tPersonReport02DetailSecondName: TWideStringField
      FieldName = 'SecondName'
      Size = 255
    end
    object tPersonReport02DetailLastName: TWideStringField
      FieldName = 'LastName'
      Size = 255
    end
    object tPersonReport02DetailDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tPersonReport02DetailRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tPersonReport02DetailObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tPersonReport02DetailDiscipline: TWideStringField
      FieldName = 'Discipline'
      Size = 255
    end
    object tPersonReport02DetailIsBaseProfile: TBooleanField
      FieldName = 'IsBaseProfile'
    end
    object tPersonReport02DetailIsDegreeExist: TBooleanField
      FieldName = 'IsDegreeExist'
    end
    object tPersonReport02DetailIsWorker: TBooleanField
      FieldName = 'IsWorker'
    end
    object tPersonReport02DetailHours: TBCDField
      FieldName = 'Hours'
      Precision = 19
    end
    object tPersonReport02DetailHoursRate: TIntegerField
      FieldName = 'HoursRate'
    end
    object tPersonReport02DetailIsStatusExist: TBooleanField
      FieldName = 'IsStatusExist'
    end
  end
  object dsPersonReport02Group: TDataSource
    DataSet = tPersonReport02Group
    Left = 392
    Top = 456
  end
  object frxPersonReport03: TfrxDBDataset
    UserName = 'frxPersonReport03'
    CloseDataSource = False
    DataSet = tPersonReport03
    BCDToCurrency = False
    Left = 352
    Top = 240
  end
  object dsPersonStage: TDataSource
    DataSet = tPersonStage
    Left = 496
    Top = 368
  end
  object tPersonStage: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tPersonStageAfterInsert
    IndexFieldNames = 'PersonId'
    MasterFields = 'ObjectID'
    MasterSource = dsPerson
    TableName = 'PersonStage'
    Left = 552
    Top = 368
    object tPersonStageObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tPersonStageObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPersonStagePersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 255
    end
    object tPersonStageOrganization: TWideStringField
      FieldName = 'Organization'
      Size = 255
    end
    object tPersonStagePost: TWideStringField
      FieldName = 'Post'
      Size = 50
    end
    object tPersonStagePeriod: TWideStringField
      FieldName = 'Period'
      Size = 50
    end
    object tPersonStageStage: TIntegerField
      FieldName = 'Stage'
    end
    object tPersonStageIsShown: TBooleanField
      FieldName = 'IsShown'
    end
  end
  object frxDiscipline: TfrxDBDataset
    UserName = 'frxDiscipline'
    CloseDataSource = False
    DataSet = tDiscipline
    BCDToCurrency = False
    Left = 512
    Top = 80
  end
  object frxDisciplineBooks: TfrxDBDataset
    UserName = 'frxDisciplineBooks'
    CloseDataSource = False
    DataSet = tBooksReport02
    BCDToCurrency = False
    Left = 584
    Top = 80
  end
  object tBooksReport02: TADOTable
    Connection = Conn
    CursorType = ctStatic
    OnCalcFields = tBooksReport02CalcFields
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDiscipline
    TableName = 'BooksReport02'
    Left = 552
    Top = 416
    object tBooksReport02ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tBooksReport02RowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tBooksReport02DisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tBooksReport02IsBase: TBooleanField
      FieldName = 'IsBase'
    end
    object tBooksReport02BiblioDescription: TMemoField
      FieldName = 'BiblioDescription'
      BlobType = ftMemo
    end
    object tBooksReport02ExistInELibrary: TBooleanField
      FieldName = 'ExistInELibrary'
    end
    object tBooksReport02ELibrary: TWideStringField
      FieldName = 'ELibrary'
      Size = 255
    end
    object tBooksReport02ELibraryURL: TWideStringField
      FieldName = 'ELibraryURL'
      Size = 255
    end
    object tBooksReport02StudentCount: TIntegerField
      FieldName = 'StudentCount'
    end
    object tBooksReport02BooksCount: TIntegerField
      FieldName = 'BooksCount'
    end
    object tBooksReport02Ratio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Ratio'
      Calculated = True
    end
  end
  object dsPersonRateGroup: TDataSource
    DataSet = tPersonRateGroup
    Left = 496
    Top = 488
  end
  object tPersonRateGroup: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReportRateGroup'
    Left = 552
    Top = 488
    object tPersonRateGroupOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tPersonRateGroupRateTotalSum: TFloatField
      FieldName = 'RateTotalSum'
      DisplayFormat = '#0.0000'
    end
    object tPersonRateGroupRateBaseSum: TFloatField
      FieldName = 'RateBaseSum'
      DisplayFormat = '#0.0000'
    end
    object tPersonRateGroupRateDegreeSum: TFloatField
      FieldName = 'RateDegreeSum'
      DisplayFormat = '#0.0000'
    end
    object tPersonRateGroupRateWorkerSum: TFloatField
      FieldName = 'RateWorkerSum'
      DisplayFormat = '#0.0000'
    end
    object tPersonRateGroupBasePercent: TFloatField
      FieldName = 'BasePercent'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
    object tPersonRateGroupDegreePercent: TFloatField
      FieldName = 'DegreePercent'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
    object tPersonRateGroupWorkerPercent: TFloatField
      FieldName = 'WorkerPercent'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
  end
  object dsPersonRateDetail: TDataSource
    DataSet = tPersonRateDetail
    Left = 496
    Top = 536
  end
  object tPersonRateDetail: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReportRateDetail'
    Left = 552
    Top = 536
    object tPersonRateDetailOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tPersonRateDetailRateTotal: TFloatField
      FieldName = 'RateTotal'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
    object tPersonRateDetailRateBase: TFloatField
      FieldName = 'RateBase'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
    object tPersonRateDetailRateDegree: TFloatField
      FieldName = 'RateDegree'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
    object tPersonRateDetailRateWorker: TFloatField
      FieldName = 'RateWorker'
      ReadOnly = True
      DisplayFormat = '#0.0000'
    end
    object tPersonRateDetailIsBaseProfile: TBooleanField
      FieldName = 'IsBaseProfile'
    end
    object tPersonRateDetailIsDegreeExist: TBooleanField
      FieldName = 'IsDegreeExist'
    end
    object tPersonRateDetailIsWorker: TBooleanField
      FieldName = 'IsWorker'
    end
    object tPersonRateDetailPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tPersonRateDetailPerson: TWideStringField
      FieldName = 'Person'
      ReadOnly = True
      Size = 255
    end
    object tPersonRateDetailDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tPersonRateDetailRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tPersonRateDetailObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tPersonRateDetailDiscipline: TWideStringField
      FieldName = 'Discipline'
      Size = 255
    end
    object tPersonRateDetailHours: TBCDField
      FieldName = 'Hours'
      DisplayFormat = '#0'
      Precision = 19
    end
    object tPersonRateDetailHoursRate: TIntegerField
      FieldName = 'HoursRate'
      DisplayFormat = '#0'
    end
    object tPersonRateDetailIsStatusExist: TBooleanField
      FieldName = 'IsStatusExist'
    end
    object tPersonRateDetailPersonStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonStatus'
      LookupDataSet = tPerson
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'StatusName'
      KeyFields = 'PersonId'
      Size = 50
      Lookup = True
    end
  end
  object dsPeriod: TDataSource
    DataSet = tPeriod
    Left = 192
    Top = 8
  end
  object tPeriod: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tPeriodAfterInsert
    OnCalcFields = tPeriodCalcFields
    TableName = 'Period'
    Left = 256
    Top = 8
    object tPeriodObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tPeriodObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPeriodObjectCode: TIntegerField
      FieldName = 'ObjectCode'
    end
    object tPeriodObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ObjectName'
      Size = 50
      Calculated = True
    end
    object tPeriodIsCurrent: TBooleanField
      FieldName = 'IsCurrent'
    end
  end
  object dsPostPeriodRate: TDataSource
    DataSet = tPostPeriodRate
    Left = 144
    Top = 456
  end
  object tPostPeriodRate: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tPostPeriodRateAfterInsert
    IndexFieldNames = 'PostId'
    MasterFields = 'ObjectID'
    MasterSource = dsPost
    TableName = 'PostPeriodRate'
    Left = 200
    Top = 456
    object tPostPeriodRateObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tPostPeriodRateObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPostPeriodRatePostId: TWideStringField
      FieldName = 'PostId'
      Size = 50
    end
    object tPostPeriodRatePeriodId: TWideStringField
      FieldName = 'PeriodId'
      Size = 50
    end
    object tPostPeriodRateHoursRate: TIntegerField
      FieldName = 'HoursRate'
    end
    object tPostPeriodRateHoursRateAdd: TIntegerField
      FieldName = 'HoursRateAdd'
    end
    object tPostPeriodRatePeriod: TStringField
      FieldKind = fkLookup
      FieldName = 'Period'
      LookupDataSet = tPeriod
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'PeriodId'
      Size = 50
      Lookup = True
    end
  end
  object frxPersonRateDetail: TfrxDBDataset
    UserName = 'frxPersonRateDetail'
    CloseDataSource = False
    DataSet = tPersonRateDetail
    BCDToCurrency = False
    Left = 352
    Top = 288
  end
  object frxPersonRateGroup: TfrxDBDataset
    UserName = 'frxPersonRateGroup'
    CloseDataSource = False
    DataSet = tPersonRateGroup
    BCDToCurrency = False
    Left = 440
    Top = 304
  end
  object dsReport08Detail: TDataSource
    DataSet = tReport08Detail
    Left = 520
    Top = 144
  end
  object tReport08Detail: TADOTable
    Connection = Conn
    CursorType = ctStatic
    MasterSource = dsPostPeriodRate
    TableName = 'PersonReport08Detail'
    Left = 576
    Top = 144
    object tReport08DetailPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tReport08DetailOrganization: TWideStringField
      FieldName = 'Organization'
      Size = 255
    end
    object tReport08DetailPost: TWideStringField
      FieldName = 'Post'
      Size = 50
    end
    object tReport08DetailPeriod: TWideStringField
      FieldName = 'Period'
      Size = 50
    end
    object tReport08DetailStage: TIntegerField
      FieldName = 'Stage'
    end
    object tReport08DetailIsShown: TBooleanField
      FieldName = 'IsShown'
    end
    object tReport08DetailOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
  end
  object dsReport08Group: TDataSource
    DataSet = tReport08Group
    Left = 520
    Top = 192
  end
  object tReport08Group: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReport08Group'
    Left = 576
    Top = 192
    object tReport08GroupOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tReport08GroupPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tReport08GroupFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 255
    end
    object tReport08GroupSecondName: TWideStringField
      FieldName = 'SecondName'
      Size = 255
    end
    object tReport08GroupLastName: TWideStringField
      FieldName = 'LastName'
      Size = 255
    end
    object tReport08GroupIsWorker: TBooleanField
      FieldName = 'IsWorker'
    end
    object tReport08GroupHours: TBCDField
      FieldName = 'Hours'
      Precision = 19
    end
    object tReport08GroupHoursRate: TIntegerField
      FieldName = 'HoursRate'
    end
    object tReport08GroupRate: TFloatField
      FieldName = 'Rate'
      ReadOnly = True
    end
  end
  object frxRepor08Detail: TfrxDBDataset
    UserName = 'frxRepor08Detail'
    CloseDataSource = False
    DataSet = tReport08Detail
    BCDToCurrency = False
    Left = 656
    Top = 144
  end
  object frxRepor08Group: TfrxDBDataset
    UserName = 'frxRepor08Group'
    CloseDataSource = False
    DataSet = tReport08Group
    BCDToCurrency = False
    Left = 656
    Top = 192
  end
  object dsAuditoryType: TDataSource
    DataSet = tAuditoryType
    Left = 720
    Top = 72
  end
  object tAuditoryType: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tAuditoryTypeAfterInsert
    IndexFieldNames = 'ObjectIntId'
    TableName = 'AuditoryType'
    Left = 776
    Top = 72
    object tAuditoryTypeObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tAuditoryTypeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tAuditoryTypeObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
  end
  object dsAuditory: TDataSource
    DataSet = tAuditory
    Left = 720
    Top = 128
  end
  object tAuditory: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tAuditoryAfterInsert
    OnCalcFields = tAuditoryCalcFields
    IndexFieldNames = 'ObjectIntId'
    TableName = 'Auditory'
    Left = 776
    Top = 128
    object tAuditoryObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tAuditoryObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tAuditoryObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tAuditoryObjectTechnical: TMemoField
      FieldName = 'ObjectTechnical'
      BlobType = ftMemo
    end
    object tAuditoryObjectSoftware: TMemoField
      FieldName = 'ObjectSoftware'
      BlobType = ftMemo
    end
    object tAuditoryCathedraId: TWideStringField
      FieldName = 'CathedraId'
      Size = 50
    end
    object tAuditoryCathedra: TStringField
      FieldKind = fkLookup
      FieldName = 'Cathedra'
      LookupDataSet = tCathedra
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'ObjectCode'
      KeyFields = 'CathedraId'
      Size = 50
      Lookup = True
    end
    object tAuditoryCathedraCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'CathedraCalc'
      Size = 50
      Calculated = True
    end
    object tAuditoryBuildingId: TGuidField
      FieldName = 'BuildingId'
      FixedChar = True
      Size = 38
    end
    object tAuditoryBuilding: TStringField
      FieldKind = fkLookup
      FieldName = 'Building'
      LookupDataSet = tBuilding
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'BuildingId'
      Size = 255
      Lookup = True
    end
  end
  object dsDisciplineAuditory: TDataSource
    DataSet = tDisciplineAuditory
    Left = 728
    Top = 248
  end
  object tDisciplineAuditory: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDisciplineAuditoryAfterInsert
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDiscipline
    TableName = 'DisciplineAuditory'
    Left = 784
    Top = 248
    object tDisciplineAuditoryObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tDisciplineAuditoryObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDisciplineAuditoryDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDisciplineAuditoryAuditoryTypeId: TWideStringField
      FieldName = 'AuditoryTypeId'
      Size = 50
    end
    object tDisciplineAuditoryAuditoryId: TWideStringField
      FieldName = 'AuditoryId'
      Size = 50
    end
    object tDisciplineAuditoryType: TStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = tAuditoryType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'AuditoryTypeId'
      Size = 255
      Lookup = True
    end
    object tDisciplineAuditoryAuditory: TStringField
      FieldKind = fkLookup
      FieldName = 'Auditory'
      LookupDataSet = tAuditory
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectCode'
      KeyFields = 'AuditoryId'
      Size = 255
      Lookup = True
    end
  end
  object dsLibrary: TDataSource
    DataSet = tLibrary
    Left = 24
    Top = 640
  end
  object tLibrary: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tLibraryAfterInsert
    TableName = 'Library'
    Left = 80
    Top = 640
    object tLibraryObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tLibraryObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tLibraryObjectCode: TWideStringField
      DisplayLabel = #1069#1041#1057
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tLibraryObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tLibraryObjectURL: TWideStringField
      FieldName = 'ObjectURL'
      Size = 255
    end
  end
  object dsReportAuditory01: TDataSource
    DataSet = tReportAuditory01
    Left = 584
    Top = 264
  end
  object tReportAuditory01: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'AuditoryReport01'
    Left = 616
    Top = 304
    object tReportAuditory01ObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tReportAuditory01DisciplineRowNumber: TIntegerField
      FieldName = 'Discipline.RowNumber'
    end
    object tReportAuditory01DisciplineObjectCode: TWideStringField
      FieldName = 'Discipline.ObjectCode'
      Size = 50
    end
    object tReportAuditory01DisciplineObjectName: TWideStringField
      FieldName = 'Discipline.ObjectName'
      Size = 255
    end
    object tReportAuditory01AuditoryTypeRowNumber: TIntegerField
      FieldName = 'AuditoryType.RowNumber'
    end
    object tReportAuditory01AuditoryTypeObjectName: TWideStringField
      FieldName = 'AuditoryType.ObjectName'
      Size = 255
    end
    object tReportAuditory01AuditoryObjectCode: TWideStringField
      FieldName = 'Auditory.ObjectCode'
      Size = 50
    end
    object tReportAuditory01ObjectTechnical: TMemoField
      FieldName = 'ObjectTechnical'
      BlobType = ftMemo
    end
    object tReportAuditory01ObjectSoftware: TMemoField
      FieldName = 'ObjectSoftware'
      BlobType = ftMemo
    end
  end
  object frxReportAuditory: TfrxDBDataset
    UserName = 'frxReportAuditory'
    CloseDataSource = False
    DataSet = tReportAuditory01
    BCDToCurrency = False
    Left = 352
    Top = 336
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 1016
    Top = 608
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    PictureType = gpPNG
    Left = 768
    Top = 544
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43291.444728541670000000
    DataOnly = False
    Compressed = False
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 712
    Top = 600
  end
  object frxRTFExport1: TfrxRTFExport
    FileName = 'C:\==OOP==\Print\3.rtf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43302.910854282410000000
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 824
    Top = 600
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 976
    Top = 560
  end
  object tPersonReport04add: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'PersonReport04add'
    Left = 288
    Top = 416
    object tPersonReport04addPersonId: TWideStringField
      FieldName = 'PersonId'
      Size = 50
    end
    object tPersonReport04addPersonFirstName: TWideStringField
      FieldName = 'PersonFirstName'
      Size = 255
    end
    object tPersonReport04addPersonSecondName: TWideStringField
      FieldName = 'PersonSecondName'
      Size = 255
    end
    object tPersonReport04addPersonLastName: TWideStringField
      FieldName = 'PersonLastName'
      Size = 255
    end
    object tPersonReport04addAttraction: TWideStringField
      FieldName = 'Attraction'
      Size = 255
    end
    object tPersonReport04addPost: TWideStringField
      FieldName = 'Post'
      Size = 255
    end
    object tPersonReport04addDegree: TWideStringField
      FieldName = 'Degree'
      Size = 255
    end
    object tPersonReport04addStatus: TWideStringField
      FieldName = 'Status'
      Size = 255
    end
    object tPersonReport04addDisciplineList: TMemoField
      FieldName = 'DisciplineList'
      BlobType = ftMemo
    end
    object tPersonReport04addEducation: TWideStringField
      FieldName = 'Education'
      Size = 255
    end
    object tPersonReport04addEducationAdd: TMemoField
      FieldName = 'EducationAdd'
      BlobType = ftMemo
    end
    object tPersonReport04addStaffValue: TMemoField
      FieldName = 'StaffValue'
      BlobType = ftMemo
    end
    object tPersonReport04addPracticStage: TWideStringField
      FieldName = 'PracticStage'
      Size = 255
    end
    object tPersonReport04addPracticDescription: TMemoField
      FieldName = 'PracticDescription'
      BlobType = ftMemo
    end
    object tPersonReport04addStage: TIntegerField
      FieldName = 'Stage'
    end
    object tPersonReport04addEddAdd: TMemoField
      FieldName = 'EddAdd'
      BlobType = ftMemo
    end
    object tPersonReport04addHoursValue: TMemoField
      FieldName = 'HoursValue'
      BlobType = ftMemo
    end
  end
  object frxPersonReport04add: TfrxDBDataset
    UserName = 'frxPersonReport04add'
    CloseDataSource = False
    DataSet = tPersonReport04add
    BCDToCurrency = False
    Left = 288
    Top = 240
  end
  object dsCompetentionType: TDataSource
    DataSet = tCompetentionType
    Left = 728
    Top = 304
  end
  object tCompetentionType: TADOTable
    Active = True
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tCompetentionTypeAfterInsert
    TableName = 'CompetentionType'
    Left = 784
    Top = 304
    object tCompetentionTypeObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tCompetentionTypeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tCompetentionTypeObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 3
    end
    object tCompetentionTypeObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
  end
  object dsCompetention: TDataSource
    DataSet = tCompetention
    Left = 728
    Top = 360
  end
  object tCompetention: TADOTable
    Active = True
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tCompetentionAfterInsert
    OnCalcFields = tCompetentionCalcFields
    TableName = 'Competention'
    Left = 784
    Top = 360
    object tCompetentionObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tCompetentionObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tCompetentionRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tCompetentionObjectCode: TWideStringField
      DisplayWidth = 10
      FieldName = 'ObjectCode'
      Size = 10
    end
    object tCompetentionObjectName: TMemoField
      FieldName = 'ObjectName'
      BlobType = ftMemo
    end
    object tCompetentionCompetitionTypeId: TWideStringField
      FieldName = 'CompetitionTypeId'
      Size = 50
    end
    object tCompetentionCompetention: TStringField
      FieldKind = fkLookup
      FieldName = 'CompetentionType'
      LookupDataSet = tCompetentionType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'CompetitionTypeId'
      Size = 50
      Lookup = True
    end
    object tCompetentionCompetentionTypeCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'CompetentionTypeCalc'
      Size = 50
      Calculated = True
    end
    object tCompetentionTypeCode: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeCode'
      LookupDataSet = tCompetentionType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectCode'
      KeyFields = 'CompetitionTypeId'
      Size = 3
      Lookup = True
    end
    object tCompetentionTypeCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeCalc'
      Size = 3
      Calculated = True
    end
  end
  object tGetRowNumber: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tAuditoryAfterInsert
    OnCalcFields = tAuditoryCalcFields
    TableName = 'GetMaxRowNumberFormCompetention'
    Left = 840
    Top = 128
    object tGetRowNumberRowNumberMax: TIntegerField
      FieldName = 'RowNumberMax'
    end
  end
  object qCopyPaste: TADOQuery
    Connection = Conn
    Parameters = <>
    Left = 784
    Top = 416
  end
  object tDestOPOP: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tOPOPAfterInsert
    TableName = 'OPOP'
    Left = 968
    Top = 64
    object tDestOPOPObjectID: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object tDestOPOPObjectIntID: TAutoIncField
      FieldName = 'ObjectIntID'
      ReadOnly = True
    end
    object tDestOPOPObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tDestOPOPObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tDestOPOPYearStart: TIntegerField
      FieldName = 'YearStart'
    end
    object tDestOPOPYearCount: TFloatField
      FieldName = 'YearCount'
    end
    object tDestOPOPStudentCount: TIntegerField
      FieldName = 'StudentCount'
    end
  end
  object dsDestOPOP: TDataSource
    DataSet = tDestOPOP
    Left = 1024
    Top = 64
  end
  object dsDestDiscipline: TDataSource
    DataSet = tDestDiscipline
    Left = 1024
    Top = 136
  end
  object tDestDiscipline: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDisciplineAfterInsert
    OnCalcFields = tDisciplineCalcFields
    IndexFieldNames = 'OPOPId'
    MasterFields = 'ObjectID'
    MasterSource = dsDestOPOP
    TableName = 'Discipline'
    Left = 960
    Top = 112
    object tDestDisciplineObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tDestDisciplineRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tDestDisciplineObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDestDisciplineObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tDestDisciplineObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tDestDisciplineCathedraId: TWideStringField
      FieldName = 'CathedraId'
      Size = 50
    end
    object tDestDisciplineUnitCount: TBCDField
      FieldName = 'UnitCount'
      Precision = 19
    end
    object tDestDisciplineHourTotal: TIntegerField
      FieldName = 'HourTotal'
    end
    object tDestDisciplineCourseExam: TWideStringField
      FieldName = 'CourseExam'
      Size = 50
    end
    object tDestDisciplineCourseValid: TWideStringField
      FieldName = 'CourseValid'
      Size = 50
    end
    object tDestDisciplineCourseProject: TWideStringField
      FieldName = 'CourseProject'
      Size = 50
    end
    object tDestDisciplineCourseWord: TWideStringField
      FieldName = 'CourseWord'
      Size = 50
    end
    object tDestDisciplineHourClass: TIntegerField
      FieldName = 'HourClass'
    end
    object tDestDisciplineHourClassLection: TIntegerField
      FieldName = 'HourClassLection'
    end
    object tDestDisciplineHourClassLaboratory: TIntegerField
      FieldName = 'HourClassLaboratory'
    end
    object tDestDisciplineHourClassPractice: TIntegerField
      FieldName = 'HourClassPractice'
    end
    object tDestDisciplineHourSelf: TIntegerField
      FieldName = 'HourSelf'
    end
    object tDestDisciplineHourSelfCourseProject: TIntegerField
      FieldName = 'HourSelfCourseProject'
    end
    object tDestDisciplineHourSelfCourseWork: TIntegerField
      FieldName = 'HourSelfCourseWork'
    end
    object tDestDisciplineHourSelfExam: TIntegerField
      FieldName = 'HourSelfExam'
    end
    object tDestDisciplineHourSelfConsult: TIntegerField
      FieldName = 'HourSelfConsult'
    end
    object tDestDisciplineHourSelfWork: TIntegerField
      FieldName = 'HourSelfWork'
    end
    object tDestDisciplineA01: TIntegerField
      FieldName = 'A01'
    end
    object tDestDisciplineA02: TIntegerField
      FieldName = 'A02'
    end
    object tDestDisciplineA03: TIntegerField
      FieldName = 'A03'
    end
    object tDestDisciplineA04: TIntegerField
      FieldName = 'A04'
    end
    object tDestDisciplineA05: TIntegerField
      FieldName = 'A05'
    end
    object tDestDisciplineA06: TIntegerField
      FieldName = 'A06'
    end
    object tDestDisciplineA07: TIntegerField
      FieldName = 'A07'
    end
    object tDestDisciplineA08: TIntegerField
      FieldName = 'A08'
    end
    object tDestDisciplineA09: TIntegerField
      FieldName = 'A09'
    end
    object tDestDisciplineA10: TIntegerField
      FieldName = 'A10'
    end
    object tDestDisciplineS01: TIntegerField
      FieldName = 'S01'
    end
    object tDestDisciplineS02: TIntegerField
      FieldName = 'S02'
    end
    object tDestDisciplineS03: TIntegerField
      FieldName = 'S03'
    end
    object tDestDisciplineS04: TIntegerField
      FieldName = 'S04'
    end
    object tDestDisciplineS05: TIntegerField
      FieldName = 'S05'
    end
    object tDestDisciplineS06: TIntegerField
      FieldName = 'S06'
    end
    object tDestDisciplineS07: TIntegerField
      FieldName = 'S07'
    end
    object tDestDisciplineS08: TIntegerField
      FieldName = 'S08'
    end
    object tDestDisciplineS09: TIntegerField
      FieldName = 'S09'
    end
    object tDestDisciplineS10: TIntegerField
      FieldName = 'S10'
    end
    object tDestDisciplineExamCount: TIntegerField
      FieldName = 'ExamCount'
    end
    object tDestDisciplineValidCount: TIntegerField
      FieldName = 'ValidCount'
    end
    object tDestDisciplineCourseProjectCount: TIntegerField
      FieldName = 'CourseProjectCount'
    end
    object tDestDisciplineCourseWorkCount: TIntegerField
      FieldName = 'CourseWorkCount'
    end
    object tDestDisciplineIsPractic: TBooleanField
      FieldName = 'IsPractic'
    end
    object tDestDisciplineHourPractic: TBCDField
      FieldName = 'HourPractic'
      Precision = 19
    end
    object tDestDisciplineOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
  end
  object dsDestDisciplineBooks: TDataSource
    DataSet = tDestDisciplineBooks
    Left = 1024
    Top = 184
  end
  object tDestDisciplineBooks: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDestDiscipline
    TableName = 'DisciplineBooks'
    Left = 952
    Top = 168
    object tDestDisciplineBooksDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDestDisciplineBooksBookId: TWideStringField
      FieldName = 'BookId'
      Size = 50
    end
    object tDestDisciplineBooksRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tDestDisciplineBooksIsBase: TBooleanField
      FieldName = 'IsBase'
    end
    object tDestDisciplineBooksBook: TStringField
      FieldKind = fkLookup
      FieldName = 'Book'
      LookupDataSet = tBooks
      LookupKeyFields = 'ObjectID'
      LookupResultField = 'BiblioDescription'
      KeyFields = 'BookId'
      Size = 255
      Lookup = True
    end
  end
  object tBookReportList: TADOTable
    Connection = Conn
    CursorType = ctStatic
    OnCalcFields = tBooksReport02CalcFields
    IndexFieldNames = 'RowNumber'
    TableName = 'BooksReport02'
    Left = 608
    Top = 416
    object WideStringField1: TWideStringField
      FieldName = 'ObjectID'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'RowNumber'
    end
    object WideStringField2: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'IsBase'
    end
    object MemoField1: TMemoField
      FieldName = 'BiblioDescription'
      BlobType = ftMemo
    end
    object BooleanField2: TBooleanField
      FieldName = 'ExistInELibrary'
    end
    object WideStringField3: TWideStringField
      FieldName = 'ELibrary'
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = 'ELibraryURL'
      Size = 255
    end
    object IntegerField2: TIntegerField
      FieldName = 'StudentCount'
    end
    object IntegerField3: TIntegerField
      FieldName = 'BooksCount'
    end
    object FloatField1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Ratio'
      Calculated = True
    end
  end
  object dsSoftware: TDataSource
    DataSet = tSoftware
    Left = 960
    Top = 336
  end
  object tSoftware: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tSoftwareAfterInsert
    TableName = 'Software'
    Left = 1016
    Top = 336
    object tSoftwareObjectId: TGuidField
      FieldName = 'ObjectId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 38
    end
    object tSoftwareObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tSoftwareObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tSoftwareObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tSoftwareObjectLicense: TWideStringField
      FieldName = 'ObjectLicense'
      Size = 255
    end
    object tSoftwareIsFree: TBooleanField
      FieldName = 'IsFree'
    end
  end
  object dsDisciplineSoftware: TDataSource
    DataSet = tDisciplineSoftware
    Left = 192
    Top = 632
  end
  object tDisciplineSoftware: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'DisciplineId;RowNumber'
    MasterFields = 'ObjectId'
    MasterSource = dsDiscipline
    TableName = 'DisciplineSoftware'
    Left = 248
    Top = 632
    object tDisciplineSoftwareObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tDisciplineSoftwareObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDisciplineSoftwareRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tDisciplineSoftwareDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDisciplineSoftwareSoftwareId: TGuidField
      FieldName = 'SoftwareId'
      FixedChar = True
      Size = 38
    end
    object tDisciplineSoftwareSoftware: TStringField
      FieldKind = fkLookup
      FieldName = 'Software'
      LookupDataSet = tSoftware
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'SoftwareId'
      Size = 255
      Lookup = True
    end
    object tDisciplineSoftwareLicense: TStringField
      FieldKind = fkLookup
      FieldName = 'License'
      LookupDataSet = tSoftware
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectLicense'
      KeyFields = 'SoftwareId'
      Size = 255
      Lookup = True
    end
  end
  object dsReportSoftwareList: TDataSource
    DataSet = tReportSoftwareList
    Left = 960
    Top = 392
  end
  object tReportSoftwareList: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'ReportSoftwareList'
    Left = 1016
    Top = 392
    object tReportSoftwareListOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tReportSoftwareListDRowNumber: TIntegerField
      FieldName = 'DRowNumber'
    end
    object tReportSoftwareListDisciplineCode: TWideStringField
      FieldName = 'DisciplineCode'
      Size = 50
    end
    object tReportSoftwareListDisciplineName: TWideStringField
      FieldName = 'DisciplineName'
      Size = 255
    end
    object tReportSoftwareListSoftware: TWideStringField
      FieldName = 'Software'
      Size = 255
    end
    object tReportSoftwareListLicense: TWideStringField
      FieldName = 'License'
      Size = 255
    end
    object tReportSoftwareListIsFree: TBooleanField
      FieldName = 'IsFree'
    end
    object tReportSoftwareListSRowNumber: TIntegerField
      FieldName = 'SRowNumber'
    end
  end
  object dsReportSoftwareDist: TDataSource
    DataSet = tReportSoftwareDist
    Left = 960
    Top = 440
  end
  object tReportSoftwareDist: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'IsFree;Software'
    TableName = 'ReportSoftwareDistinct'
    Left = 1016
    Top = 440
    object tReportSoftwareDistOPOPId: TWideStringField
      FieldName = 'OPOPId'
      Size = 50
    end
    object tReportSoftwareDistSoftware: TWideStringField
      FieldName = 'Software'
      Size = 255
    end
    object tReportSoftwareDistLicense: TWideStringField
      FieldName = 'License'
      Size = 255
    end
    object tReportSoftwareDistIsFree: TBooleanField
      FieldName = 'IsFree'
    end
  end
  object frxRSoftDist: TfrxDBDataset
    UserName = 'frxRSoftDist'
    CloseDataSource = False
    DataSet = tReportSoftwareDist
    BCDToCurrency = False
    Left = 960
    Top = 496
  end
  object frxRSoftList: TfrxDBDataset
    UserName = 'frxRSoftList'
    CloseDataSource = False
    DataSet = tReportSoftwareList
    BCDToCurrency = False
    Left = 1016
    Top = 488
  end
  object frxDisciplineSoftware: TfrxDBDataset
    UserName = 'frxDisciplineSoftware'
    CloseDataSource = False
    DataSet = tDisciplineSoftware
    BCDToCurrency = False
    Left = 904
    Top = 488
  end
  object tDestDisciplineSoftware: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDestDiscipline
    TableName = 'DisciplineSoftware'
    Left = 944
    Top = 216
    object tDestDisciplineSoftwareObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tDestDisciplineSoftwareObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDestDisciplineSoftwareRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tDestDisciplineSoftwareDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDestDisciplineSoftwareSoftwareId: TGuidField
      FieldName = 'SoftwareId'
      FixedChar = True
      Size = 38
    end
    object tDestDisciplineSoftwareSoftware: TStringField
      FieldKind = fkLookup
      FieldName = 'Software'
      LookupDataSet = tSoftware
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'SoftwareId'
      Size = 255
      Lookup = True
    end
  end
  object dsDestDisciplineSoftware: TDataSource
    DataSet = tDestDisciplineSoftware
    Left = 1024
    Top = 232
  end
  object tAuditorySoftware: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tAuditorySoftwareAfterInsert
    IndexFieldNames = 'AuditoryId'
    MasterFields = 'ObjectId'
    MasterSource = dsAuditory
    TableName = 'AuditorySoftware'
    Left = 376
    Top = 632
    object tAuditorySoftwareObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tAuditorySoftwareObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tAuditorySoftwareAuditoryId: TWideStringField
      FieldName = 'AuditoryId'
      Size = 50
    end
    object tAuditorySoftwareRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object tAuditorySoftwareSoftwareId: TGuidField
      FieldName = 'SoftwareId'
      FixedChar = True
      Size = 38
    end
    object tAuditorySoftwareSoftware: TStringField
      FieldKind = fkLookup
      FieldName = 'Software'
      LookupDataSet = tSoftware
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'SoftwareId'
      Size = 255
      Lookup = True
    end
    object tAuditorySoftwareLicense: TStringField
      FieldKind = fkLookup
      FieldName = 'License'
      LookupDataSet = tSoftware
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectLicense'
      KeyFields = 'SoftwareId'
      Size = 255
      Lookup = True
    end
  end
  object dsBuilding: TDataSource
    DataSet = tBuilding
    Left = 496
    Top = 592
  end
  object tBuilding: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tBuildingAfterInsert
    TableName = 'Building'
    Left = 552
    Top = 592
    object tBuildingObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tBuildingObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tBuildingObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 10
    end
    object tBuildingObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 888
    Top = 544
  end
  object dsDisciplineCompetention: TDataSource
    DataSet = tDisciplineCompetention
    Left = 728
    Top = 472
  end
  object tDisciplineCompetention: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'ObjectId'
    MasterSource = dsDiscipline
    TableName = 'DisciplineCompetention'
    Left = 784
    Top = 472
    object tDisciplineCompetentionDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tDisciplineCompetentionCompetentionId: TWideStringField
      FieldName = 'CompetentionId'
      Size = 50
    end
    object tDisciplineCompetentionCompetention: TStringField
      FieldKind = fkLookup
      FieldName = 'Competention'
      LookupDataSet = tCompetention
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectCode'
      KeyFields = 'CompetentionId'
      Size = 50
      Lookup = True
    end
    object tDisciplineCompetentionDescription: TStringField
      FieldKind = fkLookup
      FieldName = 'Description'
      LookupDataSet = tCompetention
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'CompetentionId'
      Size = 255
      Lookup = True
    end
  end
  object dsCompetentionSkill: TDataSource
    DataSet = tCompetentionSkill
    Left = 192
    Top = 704
  end
  object tCompetentionSkill: TADOTable
    Connection = Conn
    CursorType = ctStatic
    IndexFieldNames = 'CompetentionId'
    MasterFields = 'ObjectId'
    MasterSource = dsCompetention
    TableName = 'CompetentionSkill'
    Left = 232
    Top = 720
    object tCompetentionSkillCompetentionId: TWideStringField
      FieldName = 'CompetentionId'
      Size = 50
    end
    object tCompetentionSkillSkillTypeId: TGuidField
      FieldName = 'SkillTypeId'
      FixedChar = True
      Size = 38
    end
    object tCompetentionSkillLevelMin: TWideStringField
      FieldName = 'LevelMin'
      Size = 255
    end
    object tCompetentionSkillLevelMid: TWideStringField
      FieldName = 'LevelMid'
      Size = 255
    end
    object tCompetentionSkillLevelMax: TWideStringField
      FieldName = 'LevelMax'
      Size = 255
    end
    object tCompetentionSkillSkillType: TStringField
      FieldKind = fkLookup
      FieldName = 'SkillType'
      LookupDataSet = tSkillType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'SkillTypeId'
      Size = 50
      Lookup = True
    end
    object tCompetentionSkillSkillText: TWideStringField
      FieldName = 'SkillText'
      Size = 255
    end
  end
  object dsSkillType: TDataSource
    DataSet = tSkillType
    Left = 376
    Top = 696
  end
  object tSkillType: TADOTable
    Active = True
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tSkillTypeAfterInsert
    TableName = 'SkillType'
    Left = 440
    Top = 696
    object tSkillTypeObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tSkillTypeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tSkillTypeObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 3
    end
    object tSkillTypeObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
  end
  object dsSkill: TDataSource
    DataSet = tSkill
    Left = 496
    Top = 648
  end
  object tSkill: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tSkillAfterInsert
    IndexFieldNames = 'DisciplineId;CompetentionId'
    MasterFields = 'DisciplineId;CompetentionId'
    MasterSource = dsDisciplineCompetention
    TableName = 'Skill'
    Left = 552
    Top = 648
    object tSkillObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tSkillDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tSkillCompetentionId: TWideStringField
      FieldName = 'CompetentionId'
      Size = 50
    end
    object tSkillSkillTypeId: TGuidField
      FieldName = 'SkillTypeId'
      FixedChar = True
      Size = 38
    end
    object tSkillSkillText: TWideStringField
      FieldName = 'SkillText'
      Size = 255
    end
    object tSkillLevelMin: TWideStringField
      FieldName = 'LevelMin'
      Size = 255
    end
    object tSkillLevelMid: TWideStringField
      FieldName = 'LevelMid'
      Size = 255
    end
    object tSkillLevelMax: TWideStringField
      FieldName = 'LevelMax'
      Size = 255
    end
    object tSkillSkillType: TStringField
      FieldKind = fkLookup
      FieldName = 'SkillType'
      LookupDataSet = tSkillType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'SkillTypeId'
      Size = 50
      Lookup = True
    end
    object tSkillCode: TIntegerField
      FieldName = 'Code'
    end
  end
  object tSkillList: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tSkillAfterInsert
    IndexFieldNames = 'DisciplineId'
    MasterFields = 'DisciplineId'
    MasterSource = dsDisciplineCompetention
    TableName = 'Skill'
    Left = 600
    Top = 648
    object tSkillListObjectId: TGuidField
      FieldName = 'ObjectId'
      FixedChar = True
      Size = 38
    end
    object tSkillListDisciplineId: TWideStringField
      FieldName = 'DisciplineId'
      Size = 50
    end
    object tSkillListCompetentionId: TWideStringField
      FieldName = 'CompetentionId'
      Size = 50
    end
    object tSkillListSkillTypeId: TGuidField
      FieldName = 'SkillTypeId'
      FixedChar = True
      Size = 38
    end
    object tSkillListCode: TIntegerField
      FieldName = 'Code'
    end
    object tSkillListSkillText: TWideStringField
      FieldName = 'SkillText'
      Size = 255
    end
    object tSkillListLevelMin: TWideStringField
      FieldName = 'LevelMin'
      Size = 255
    end
    object tSkillListLevelMid: TWideStringField
      FieldName = 'LevelMid'
      Size = 255
    end
    object tSkillListLevelMax: TWideStringField
      FieldName = 'LevelMax'
      Size = 255
    end
  end
end
