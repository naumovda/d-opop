unit DataModuleUnit;

interface

uses
  Forms, frxExportRTF, frxExportXLS, frxClass, frxExportPDF, DB, ADODB,
  frxDBSet, Classes, frxExportXLSX, frxExportDOCX, frxRich;

type
  TdmPublic = class(TDataModule)
    Conn: TADOConnection;
    dsConstant: TDataSource;
    tConstant: TADOTable;
    tConstantCode: TWideStringField;
    tConstantName: TWideStringField;
    tConstantValue: TWideStringField;
    tConstantValueDouble: TFloatField;
    dsBooks: TDataSource;
    tBooks: TADOTable;
    tBooksObjectID: TWideStringField;
    tBooksObjectIntID: TAutoIncField;
    tBooksBooksCount: TIntegerField;
    tBooksExistInELibrary: TBooleanField;
    dsOPOP: TDataSource;
    tOPOP: TADOTable;
    tOPOPObjectID: TWideStringField;
    tOPOPObjectIntID: TAutoIncField;
    tOPOPObjectCode: TWideStringField;
    tOPOPObjectName: TWideStringField;
    tOPOPYearStart: TIntegerField;
    tOPOPYearCount: TFloatField;
    dsDiscipline: TDataSource;
    tDiscipline: TADOTable;
    tDisciplineObjectId: TWideStringField;
    tDisciplineObjectIntId: TAutoIncField;
    tDisciplineObjectCode: TWideStringField;
    tDisciplineObjectName: TWideStringField;
    tDisciplineCathedraId: TWideStringField;
    tDisciplineUnitCount: TBCDField;
    tDisciplineHourTotal: TIntegerField;
    tDisciplineCourseExam: TWideStringField;
    tDisciplineCourseValid: TWideStringField;
    tDisciplineCourseProject: TWideStringField;
    tDisciplineCourseWord: TWideStringField;
    tDisciplineHourClass: TIntegerField;
    tDisciplineHourClassLection: TIntegerField;
    tDisciplineHourClassLaboratory: TIntegerField;
    tDisciplineHourClassPractice: TIntegerField;
    tDisciplineHourSelf: TIntegerField;
    tDisciplineHourSelfCourseProject: TIntegerField;
    tDisciplineHourSelfCourseWork: TIntegerField;
    tDisciplineHourSelfExam: TIntegerField;
    tDisciplineHourSelfConsult: TIntegerField;
    tDisciplineHourSelfWork: TIntegerField;
    tDisciplineA01: TIntegerField;
    tDisciplineA02: TIntegerField;
    tDisciplineA03: TIntegerField;
    tDisciplineA04: TIntegerField;
    tDisciplineA05: TIntegerField;
    tDisciplineA06: TIntegerField;
    tDisciplineA07: TIntegerField;
    tDisciplineA08: TIntegerField;
    tDisciplineA09: TIntegerField;
    tDisciplineA10: TIntegerField;
    tDisciplineS01: TIntegerField;
    tDisciplineS02: TIntegerField;
    tDisciplineS03: TIntegerField;
    tDisciplineS04: TIntegerField;
    tDisciplineS05: TIntegerField;
    tDisciplineS06: TIntegerField;
    tDisciplineS07: TIntegerField;
    tDisciplineS08: TIntegerField;
    tDisciplineS09: TIntegerField;
    tDisciplineS10: TIntegerField;
    tDisciplineExamCount: TIntegerField;
    tDisciplineValidCount: TIntegerField;
    tDisciplineCourseProjectCount: TIntegerField;
    tDisciplineCourseWorkCount: TIntegerField;
    tDisciplineIsPractic: TBooleanField;
    tDisciplineOPOPId: TWideStringField;
    tDisciplineRowNumber: TIntegerField;
    tDisciplineOPOP: TStringField;
    dsDisciplineBooks: TDataSource;
    tDisciplineBooks: TADOTable;
    tDisciplineBooksBookId: TWideStringField;
    tDisciplineBooksDisciplineId: TWideStringField;
    tDisciplineBooksIsBase: TBooleanField;
    tDisciplineBooksBook: TStringField;
    tR01Q01: TADOTable;
    tR01Q01ObjectID: TWideStringField;
    tR01Q01ParamValue: TIntegerField;
    tR01Q02: TADOTable;
    tR01Q03: TADOTable;
    tR01Q04: TADOTable;
    tR01Q05: TADOTable;
    tR01Q06: TADOTable;
    tR01Q02ObjectID: TWideStringField;
    tR01Q02ParamValue: TIntegerField;
    tR01Q03ObjectID: TWideStringField;
    tR01Q03ParamValue: TFloatField;
    tR01Q05ObjectID: TWideStringField;
    tR01Q05ParamValue: TFloatField;
    tR01Q06ObjectID: TWideStringField;
    tR01Q06ParamValue: TIntegerField;
    tR01Q04ObjectID: TWideStringField;
    tR01Q04ParamValue: TIntegerField;
    tR01: TADOTable;
    tR01ObjectID: TWideStringField;
    tR01ObjectIntId: TAutoIncField;
    tR01RowNumber: TIntegerField;
    tR01ObjectName: TWideStringField;
    tR01UnitName: TWideStringField;
    tR01ParamValue: TWideStringField;
    frxReport: TfrxReport;
    frxR01: TfrxDBDataset;
    frxOPOP: TfrxDBDataset;
    dsAttraction: TDataSource;
    tAttraction: TADOTable;
    tAttractionObjectID: TWideStringField;
    tAttractionObjectIntId: TAutoIncField;
    tAttractionObjectCode: TWideStringField;
    tAttractionObjectName: TWideStringField;
    dsStatus: TDataSource;
    tStatus: TADOTable;
    dsPost: TDataSource;
    tPost: TADOTable;
    dsDegree: TDataSource;
    tDegree: TADOTable;
    tStatusObjectID: TWideStringField;
    tStatusObjectIntId: TAutoIncField;
    tStatusObjectCode: TWideStringField;
    tStatusObjectName: TWideStringField;
    tPostObjectID: TWideStringField;
    tPostObjectIntId: TAutoIncField;
    tPostObjectCode: TWideStringField;
    tPostObjectName: TWideStringField;
    tDegreeObjectID: TWideStringField;
    tDegreeObjectIntId: TAutoIncField;
    tDegreeObjectCode: TWideStringField;
    tDegreeObjectName: TWideStringField;
    dsCathedra: TDataSource;
    tCathedra: TADOTable;
    tCathedraObjectID: TWideStringField;
    tCathedraObjectIntID: TAutoIncField;
    tCathedraObjectCode: TWideStringField;
    tCathedraObjectName: TWideStringField;
    tCathedraContacts: TMemoField;
    dsPerson: TDataSource;
    tPerson: TADOTable;
    tPersonObjectID: TWideStringField;
    tPersonObjectIntId: TAutoIncField;
    tPersonCathedraID: TWideStringField;
    tPersonObjectCode: TWideStringField;
    tPersonFirstName: TWideStringField;
    tPersonSecondName: TWideStringField;
    tPersonLastName: TWideStringField;
    tPersonAttractionId: TWideStringField;
    tPersonDegreeId: TWideStringField;
    tPersonPostId: TWideStringField;
    tPersonStatusId: TWideStringField;
    tPersonEducation: TWideStringField;
    tPersonSpeciality: TWideStringField;
    tPersonQualification: TWideStringField;
    tPersonEducationAdd: TMemoField;
    tPersonExperiance: TIntegerField;
    tPersonExperiancePedagogical: TIntegerField;
    tPersonCathedra: TStringField;
    tPersonAttraction: TStringField;
    tPersonDegree: TStringField;
    tPersonPost: TStringField;
    tPersonStatus: TStringField;
    dsDisciplinePersons: TDataSource;
    tDisciplinePersons: TADOTable;
    tDisciplinePersonsDisciplineId: TWideStringField;
    tDisciplinePersonsPersonId: TWideStringField;
    tDisciplinePersonsHours: TBCDField;
    tDisciplinePersonsPerson: TStringField;
    tDegreeIsDegreeExist: TBooleanField;
    tPersonIsWorker: TBooleanField;
    tDisciplinePersonsIsBaseProfile: TBooleanField;
    tDisciplineHourRest: TFloatField;
    tPostHoursRate: TIntegerField;
    tR02: TADOTable;
    tR02OPOPId: TWideStringField;
    tR02FirstName: TWideStringField;
    tR02SecondName: TWideStringField;
    tR02LastName: TWideStringField;
    tR02Attraction: TWideStringField;
    tR02Post: TWideStringField;
    tR02Degree: TWideStringField;
    tR02Status: TWideStringField;
    tR02Discipline: TWideStringField;
    tR02Education: TWideStringField;
    tR02EducationAdd: TMemoField;
    tR02Rate: TFloatField;
    frR02: TfrxDBDataset;
    tPersonObjectState: TBooleanField;
    qPersonCount: TADOQuery;
    qPersonCountPersonCount: TIntegerField;
    tDisciplineHourStaff: TFloatField;
    tDisciplineHourPractic: TBCDField;
    tBooksBiblioDescription: TMemoField;
    tBooksBiblioShortDescription: TWideStringField;
    tPersonReport: TADOTable;
    tPersonReportOPOPId: TWideStringField;
    tPersonReportPersonId: TWideStringField;
    tPersonReportFirstName: TWideStringField;
    tPersonReportSecondName: TWideStringField;
    tPersonReportLastName: TWideStringField;
    tPersonReportDisciplineId: TWideStringField;
    tPersonReportRowNumber: TIntegerField;
    tPersonReportObjectCode: TWideStringField;
    tPersonReportDiscipline: TWideStringField;
    tPersonReportIsBaseProfile: TBooleanField;
    tPersonReportIsDegreeExist: TBooleanField;
    tPersonReportIsWorker: TBooleanField;
    tPersonReportHours: TBCDField;
    tPersonReportHourBase: TFloatField;
    tPersonReportHourDegree: TFloatField;
    tPersonReportHourWorker: TFloatField;
    tPersonReportHoursRate: TIntegerField;
    frxPersonReport02: TfrxDBDataset;
    tPersonReport02Group: TADOTable;
    tPersonReport02GroupOPOPId: TWideStringField;
    tPersonReport02GroupPersonId: TWideStringField;
    tPersonReport02GroupFirstName: TWideStringField;
    tPersonReport02GroupSecondName: TWideStringField;
    tPersonReport02GroupLastName: TWideStringField;
    tPersonReport03: TADOTable;
    tPersonReport03PersonId: TWideStringField;
    tPersonReport03PersonFirstName: TWideStringField;
    tPersonReport03PersonSecondName: TWideStringField;
    tPersonReport03PersonLastName: TWideStringField;
    tPersonReport03Attraction: TWideStringField;
    tPersonReport03Post: TWideStringField;
    tPersonReport03Degree: TWideStringField;
    tPersonReport03Status: TWideStringField;
    tPersonReport03DisciplineList: TMemoField;
    tPersonReport03Education: TWideStringField;
    tPersonReport03EducationAdd: TMemoField;
    tPersonReport03PracticStage: TWideStringField;
    tPersonReport03PracticDescription: TMemoField;
    tPersonReport03Stage: TIntegerField;
    qDeletePersonReport03: TADOQuery;
    tPersonReport02Detail: TADOTable;
    tPersonReport02DetailOPOPId: TWideStringField;
    tPersonReport02DetailPersonId: TWideStringField;
    tPersonReport02DetailFirstName: TWideStringField;
    tPersonReport02DetailSecondName: TWideStringField;
    tPersonReport02DetailLastName: TWideStringField;
    tPersonReport02DetailDisciplineId: TWideStringField;
    tPersonReport02DetailRowNumber: TIntegerField;
    tPersonReport02DetailObjectCode: TWideStringField;
    tPersonReport02DetailDiscipline: TWideStringField;
    tPersonReport02DetailIsBaseProfile: TBooleanField;
    tPersonReport02DetailIsDegreeExist: TBooleanField;
    tPersonReport02DetailIsWorker: TBooleanField;
    tPersonReport02DetailHours: TBCDField;
    tPersonReport02DetailHoursRate: TIntegerField;
    dsPersonReport02Group: TDataSource;
    tPersonReport02GroupAttractionId: TWideStringField;
    tPersonReport02GroupAttraction: TWideStringField;
    tPersonReport02GroupPost: TWideStringField;
    tPersonReport02GroupDegree: TWideStringField;
    tPersonReport02GroupStatus: TWideStringField;
    tPersonReport02GroupCathedra: TWideStringField;
    tPersonReport02GroupIsDegreeExist: TBooleanField;
    tPersonReport02GroupIsStatusExist: TBooleanField;
    tPersonReport02GroupAddCathedra: TBooleanField;
    tPersonReport02GroupEducation: TWideStringField;
    tPersonReport02GroupEducationAdd: TMemoField;
    tPersonReport03StaffValue: TMemoField;
    tPersonReport02GroupExperiance: TIntegerField;
    frxPersonReport03: TfrxDBDataset;
    dsPersonStage: TDataSource;
    tPersonStage: TADOTable;
    tPersonStageObjectId: TWideStringField;
    tPersonStageObjectIntId: TAutoIncField;
    tPersonStagePersonId: TWideStringField;
    tPersonStageOrganization: TWideStringField;
    tPersonStagePost: TWideStringField;
    tPersonStagePeriod: TWideStringField;
    tPersonStageStage: TIntegerField;
    tPersonStageIsShown: TBooleanField;
    tPersonWorkDescription: TMemoField;
    tPersonStageYears: TIntegerField;
    tPersonStagePedYears: TIntegerField;
    frxDiscipline: TfrxDBDataset;
    frxDisciplineBooks: TfrxDBDataset;
    tBooksReport02: TADOTable;
    tBooksReport02ObjectID: TWideStringField;
    tBooksReport02RowNumber: TIntegerField;
    tBooksReport02DisciplineId: TWideStringField;
    tBooksReport02IsBase: TBooleanField;
    tBooksReport02BiblioDescription: TMemoField;
    tBooksReport02ExistInELibrary: TBooleanField;
    tBooksReport02ELibrary: TWideStringField;
    tBooksReport02StudentCount: TIntegerField;
    tBooksReport02BooksCount: TIntegerField;
    tBooksReport02Ratio: TFloatField;
    dsPersonRateGroup: TDataSource;
    tPersonRateGroup: TADOTable;
    tPersonRateGroupOPOPId: TWideStringField;
    tPersonRateGroupRateTotalSum: TFloatField;
    tPersonRateGroupRateBaseSum: TFloatField;
    tPersonRateGroupRateDegreeSum: TFloatField;
    tPersonRateGroupRateWorkerSum: TFloatField;
    tPersonRateGroupBasePercent: TFloatField;
    tPersonRateGroupDegreePercent: TFloatField;
    tPersonRateGroupWorkerPercent: TFloatField;
    dsPersonRateDetail: TDataSource;
    tPersonRateDetail: TADOTable;
    tPersonRateDetailOPOPId: TWideStringField;
    tPersonRateDetailRateTotal: TFloatField;
    tPersonRateDetailRateBase: TFloatField;
    tPersonRateDetailRateDegree: TFloatField;
    tPersonRateDetailRateWorker: TFloatField;
    tPersonRateDetailIsBaseProfile: TBooleanField;
    tPersonRateDetailIsDegreeExist: TBooleanField;
    tPersonRateDetailIsWorker: TBooleanField;
    tPersonRateDetailPersonId: TWideStringField;
    tPersonRateDetailPerson: TWideStringField;
    tPersonRateDetailDisciplineId: TWideStringField;
    tPersonRateDetailRowNumber: TIntegerField;
    tPersonRateDetailObjectCode: TWideStringField;
    tPersonRateDetailDiscipline: TWideStringField;
    tPersonRateDetailHours: TBCDField;
    tPersonRateDetailHoursRate: TIntegerField;
    dsPeriod: TDataSource;
    tPeriod: TADOTable;
    tPeriodObjectId: TWideStringField;
    tPeriodObjectIntId: TAutoIncField;
    tPeriodObjectCode: TIntegerField;
    tPeriodObjectName: TStringField;
    dsPostPeriodRate: TDataSource;
    tPostPeriodRate: TADOTable;
    tPostPeriodRateObjectId: TWideStringField;
    tPostPeriodRateObjectIntId: TAutoIncField;
    tPostPeriodRatePostId: TWideStringField;
    tPostPeriodRatePeriodId: TWideStringField;
    tPostPeriodRateHoursRate: TIntegerField;
    tPostPeriodRatePeriod: TStringField;
    tPeriodIsCurrent: TBooleanField;
    tDisciplinePersonsHoursRate: TIntegerField;
    tPostPeriodRateHoursRateAdd: TIntegerField;
    tCathedraSecondRate: TBooleanField;
    tDisciplineCathedra: TStringField;
    tPersonReport02DetailIsStatusExist: TBooleanField;
    tPersonRateDetailIsStatusExist: TBooleanField;
    frxPersonRateDetail: TfrxDBDataset;
    frxPersonRateGroup: TfrxDBDataset;
    dsReport08Detail: TDataSource;
    tReport08Detail: TADOTable;
    dsReport08Group: TDataSource;
    tReport08Group: TADOTable;
    tReport08GroupOPOPId: TWideStringField;
    tReport08GroupPersonId: TWideStringField;
    tReport08GroupFirstName: TWideStringField;
    tReport08GroupSecondName: TWideStringField;
    tReport08GroupLastName: TWideStringField;
    tReport08GroupIsWorker: TBooleanField;
    tReport08GroupHours: TBCDField;
    tReport08GroupHoursRate: TIntegerField;
    tReport08GroupRate: TFloatField;
    tReport08DetailPersonId: TWideStringField;
    tReport08DetailOrganization: TWideStringField;
    tReport08DetailPost: TWideStringField;
    tReport08DetailPeriod: TWideStringField;
    tReport08DetailStage: TIntegerField;
    tReport08DetailIsShown: TBooleanField;
    frxRepor08Detail: TfrxDBDataset;
    frxRepor08Group: TfrxDBDataset;
    dsAuditoryType: TDataSource;
    tAuditoryType: TADOTable;
    tAuditoryTypeObjectId: TWideStringField;
    tAuditoryTypeObjectIntId: TAutoIncField;
    tAuditoryTypeObjectName: TWideStringField;
    dsAuditory: TDataSource;
    tAuditory: TADOTable;
    tAuditoryObjectId: TWideStringField;
    tAuditoryObjectIntId: TAutoIncField;
    tAuditoryObjectCode: TWideStringField;
    tAuditoryObjectTechnical: TMemoField;
    tAuditoryObjectSoftware: TMemoField;
    dsDisciplineAuditory: TDataSource;
    tDisciplineAuditory: TADOTable;
    tDisciplineAuditoryObjectIntId: TAutoIncField;
    tDisciplineAuditoryDisciplineId: TWideStringField;
    tDisciplineAuditoryAuditoryTypeId: TWideStringField;
    tDisciplineAuditoryAuditoryId: TWideStringField;
    tDisciplineAuditoryType: TStringField;
    tDisciplineAuditoryAuditory: TStringField;
    tPersonStatusName: TStringField;
    tPersonRateDetailPersonStatus: TStringField;
    tDisciplinePersonsRatio: TFloatField;
    tReport08DetailOPOPId: TWideStringField;
    dsLibrary: TDataSource;
    tLibrary: TADOTable;
    tLibraryObjectId: TWideStringField;
    tLibraryObjectIntId: TAutoIncField;
    tLibraryObjectCode: TWideStringField;
    tLibraryObjectName: TWideStringField;
    tLibraryObjectURL: TWideStringField;
    tBooksELibraryId: TWideStringField;
    tBooksELibrary: TStringField;
    tBooksReport02ELibraryURL: TWideStringField;
    dsReportAuditory01: TDataSource;
    tReportAuditory01: TADOTable;
    tReportAuditory01ObjectID: TWideStringField;
    tReportAuditory01DisciplineRowNumber: TIntegerField;
    tReportAuditory01DisciplineObjectCode: TWideStringField;
    tReportAuditory01DisciplineObjectName: TWideStringField;
    tReportAuditory01AuditoryTypeRowNumber: TIntegerField;
    tReportAuditory01AuditoryTypeObjectName: TWideStringField;
    tReportAuditory01AuditoryObjectCode: TWideStringField;
    tReportAuditory01ObjectTechnical: TMemoField;
    tReportAuditory01ObjectSoftware: TMemoField;
    frxReportAuditory: TfrxDBDataset;
    frxDOCXExport1: TfrxDOCXExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    tPersonReport04add: TADOTable;
    frxPersonReport04add: TfrxDBDataset;
    tPersonReport04addPersonId: TWideStringField;
    tPersonReport04addPersonFirstName: TWideStringField;
    tPersonReport04addPersonSecondName: TWideStringField;
    tPersonReport04addPersonLastName: TWideStringField;
    tPersonReport04addAttraction: TWideStringField;
    tPersonReport04addPost: TWideStringField;
    tPersonReport04addDegree: TWideStringField;
    tPersonReport04addStatus: TWideStringField;
    tPersonReport04addDisciplineList: TMemoField;
    tPersonReport04addEducation: TWideStringField;
    tPersonReport04addEducationAdd: TMemoField;
    tPersonReport04addStaffValue: TMemoField;
    tPersonReport04addPracticStage: TWideStringField;
    tPersonReport04addPracticDescription: TMemoField;
    tPersonReport04addStage: TIntegerField;
    tPersonReport04addEddAdd: TMemoField;
    tAuditoryCathedraId: TWideStringField;
    tAuditoryCathedra: TStringField;
    tAuditoryCathedraCalc: TStringField;
    dsCompetentionType: TDataSource;
    tCompetentionType: TADOTable;
    tCompetentionTypeObjectId: TWideStringField;
    tCompetentionTypeObjectIntId: TAutoIncField;
    tCompetentionTypeObjectCode: TWideStringField;
    tCompetentionTypeObjectName: TWideStringField;
    dsCompetention: TDataSource;
    tCompetention: TADOTable;
    tCompetentionObjectId: TWideStringField;
    tCompetentionObjectIntId: TAutoIncField;
    tCompetentionRowNumber: TIntegerField;
    tCompetentionObjectCode: TWideStringField;
    tCompetentionObjectName: TMemoField;
    tCompetentionCompetitionTypeId: TWideStringField;
    tCompetentionCompetention: TStringField;
    tGetRowNumber: TADOTable;
    tGetRowNumberRowNumberMax: TIntegerField;
    tCompetentionCompetentionTypeCalc: TStringField;
    tCompetentionTypeCode: TStringField;
    tCompetentionTypeCalc: TStringField;
    qCopyPaste: TADOQuery;
    tDisciplineAuditoryObjectId: TGuidField;
    tDestOPOP: TADOTable;
    tDestOPOPObjectID: TWideStringField;
    tDestOPOPObjectIntID: TAutoIncField;
    tDestOPOPObjectCode: TWideStringField;
    tDestOPOPObjectName: TWideStringField;
    tDestOPOPYearStart: TIntegerField;
    tDestOPOPYearCount: TFloatField;
    tDestOPOPStudentCount: TIntegerField;
    dsDestOPOP: TDataSource;
    dsDestDiscipline: TDataSource;
    tDestDiscipline: TADOTable;
    tDestDisciplineObjectId: TWideStringField;
    tDestDisciplineRowNumber: TIntegerField;
    tDestDisciplineObjectIntId: TAutoIncField;
    tDestDisciplineObjectCode: TWideStringField;
    tDestDisciplineObjectName: TWideStringField;
    tDestDisciplineCathedraId: TWideStringField;
    tDestDisciplineUnitCount: TBCDField;
    tDestDisciplineHourTotal: TIntegerField;
    tDestDisciplineCourseExam: TWideStringField;
    tDestDisciplineCourseValid: TWideStringField;
    tDestDisciplineCourseProject: TWideStringField;
    tDestDisciplineCourseWord: TWideStringField;
    tDestDisciplineHourClass: TIntegerField;
    tDestDisciplineHourClassLection: TIntegerField;
    tDestDisciplineHourClassLaboratory: TIntegerField;
    tDestDisciplineHourClassPractice: TIntegerField;
    tDestDisciplineHourSelf: TIntegerField;
    tDestDisciplineHourSelfCourseProject: TIntegerField;
    tDestDisciplineHourSelfCourseWork: TIntegerField;
    tDestDisciplineHourSelfExam: TIntegerField;
    tDestDisciplineHourSelfConsult: TIntegerField;
    tDestDisciplineHourSelfWork: TIntegerField;
    tDestDisciplineA01: TIntegerField;
    tDestDisciplineA02: TIntegerField;
    tDestDisciplineA03: TIntegerField;
    tDestDisciplineA04: TIntegerField;
    tDestDisciplineA05: TIntegerField;
    tDestDisciplineA06: TIntegerField;
    tDestDisciplineA07: TIntegerField;
    tDestDisciplineA08: TIntegerField;
    tDestDisciplineA09: TIntegerField;
    tDestDisciplineA10: TIntegerField;
    tDestDisciplineS01: TIntegerField;
    tDestDisciplineS02: TIntegerField;
    tDestDisciplineS03: TIntegerField;
    tDestDisciplineS04: TIntegerField;
    tDestDisciplineS05: TIntegerField;
    tDestDisciplineS06: TIntegerField;
    tDestDisciplineS07: TIntegerField;
    tDestDisciplineS08: TIntegerField;
    tDestDisciplineS09: TIntegerField;
    tDestDisciplineS10: TIntegerField;
    tDestDisciplineExamCount: TIntegerField;
    tDestDisciplineValidCount: TIntegerField;
    tDestDisciplineCourseProjectCount: TIntegerField;
    tDestDisciplineCourseWorkCount: TIntegerField;
    tDestDisciplineIsPractic: TBooleanField;
    tDestDisciplineHourPractic: TBCDField;
    tDestDisciplineOPOPId: TWideStringField;
    dsDestDisciplineBooks: TDataSource;
    tDestDisciplineBooks: TADOTable;
    tDestDisciplineBooksDisciplineId: TWideStringField;
    tDestDisciplineBooksBookId: TWideStringField;
    tDestDisciplineBooksRowNumber: TIntegerField;
    tDestDisciplineBooksIsBase: TBooleanField;
    tDestDisciplineBooksBook: TStringField;
    tBookReportList: TADOTable;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    WideStringField2: TWideStringField;
    BooleanField1: TBooleanField;
    MemoField1: TMemoField;
    BooleanField2: TBooleanField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    dsSoftware: TDataSource;
    tSoftware: TADOTable;
    tSoftwareObjectId: TGuidField;
    tSoftwareObjectIntId: TAutoIncField;
    tSoftwareObjectCode: TWideStringField;
    tSoftwareObjectName: TWideStringField;
    tSoftwareObjectLicense: TWideStringField;
    tSoftwareIsFree: TBooleanField;
    dsDisciplineSoftware: TDataSource;
    tDisciplineSoftware: TADOTable;
    tDisciplineSoftwareObjectId: TGuidField;
    tDisciplineSoftwareObjectIntId: TAutoIncField;
    tDisciplineSoftwareRowNumber: TIntegerField;
    tDisciplineSoftwareDisciplineId: TWideStringField;
    tDisciplineSoftwareSoftwareId: TGuidField;
    tDisciplineSoftwareSoftware: TStringField;
    dsReportSoftwareList: TDataSource;
    tReportSoftwareList: TADOTable;
    dsReportSoftwareDist: TDataSource;
    tReportSoftwareDist: TADOTable;
    tReportSoftwareListOPOPId: TWideStringField;
    tReportSoftwareListDRowNumber: TIntegerField;
    tReportSoftwareListDisciplineCode: TWideStringField;
    tReportSoftwareListDisciplineName: TWideStringField;
    tReportSoftwareListSoftware: TWideStringField;
    tReportSoftwareListLicense: TWideStringField;
    tReportSoftwareListIsFree: TBooleanField;
    tReportSoftwareListSRowNumber: TIntegerField;
    tReportSoftwareDistOPOPId: TWideStringField;
    tReportSoftwareDistSoftware: TWideStringField;
    tReportSoftwareDistLicense: TWideStringField;
    tReportSoftwareDistIsFree: TBooleanField;
    frxRSoftDist: TfrxDBDataset;
    frxRSoftList: TfrxDBDataset;
    frxDisciplineSoftware: TfrxDBDataset;
    tDisciplineSoftwareLicense: TStringField;
    tDestDisciplineSoftware: TADOTable;
    tDestDisciplineSoftwareObjectId: TGuidField;
    tDestDisciplineSoftwareObjectIntId: TAutoIncField;
    tDestDisciplineSoftwareRowNumber: TIntegerField;
    tDestDisciplineSoftwareDisciplineId: TWideStringField;
    tDestDisciplineSoftwareSoftwareId: TGuidField;
    tDestDisciplineSoftwareSoftware: TStringField;
    dsDestDisciplineSoftware: TDataSource;
    tAuditorySoftware: TADOTable;
    tAuditorySoftwareObjectId: TGuidField;
    tAuditorySoftwareObjectIntId: TAutoIncField;
    tAuditorySoftwareAuditoryId: TWideStringField;
    tAuditorySoftwareRowNumber: TIntegerField;
    tAuditorySoftwareSoftwareId: TGuidField;
    tAuditorySoftwareSoftware: TStringField;
    tAuditoryBuildingId: TGuidField;
    dsBuilding: TDataSource;
    tBuilding: TADOTable;
    tBuildingObjectId: TGuidField;
    tBuildingObjectIntId: TAutoIncField;
    tBuildingObjectCode: TWideStringField;
    tBuildingObjectName: TWideStringField;
    tAuditoryBuilding: TStringField;
    tAuditorySoftwareLicense: TStringField;
    tDisciplineGoalText: TMemoField;
    tDisciplineTaskText: TMemoField;
    tDisciplineContentText: TMemoField;
    tDisciplineKnowText: TMemoField;
    tDisciplineCanDoText: TMemoField;
    tDisciplineSkillText: TMemoField;
    tDisciplineCompetentions: TWideStringField;
    frxRichObject1: TfrxRichObject;
    tDisciplineLessonKinds: TStringField;
    tDisciplineValidKinds: TStringField;
    dsDisciplineCompetention: TDataSource;
    tDisciplineCompetention: TADOTable;
    tDisciplineCompetentionDisciplineId: TWideStringField;
    tDisciplineCompetentionCompetentionId: TWideStringField;
    tDisciplineCompetentionCompetention: TStringField;
    tDisciplineCompetentionDescription: TStringField;
    tPersonReport03HoursValue: TMemoField;
    tPersonReport04addHoursValue: TMemoField;
    dsCompetentionSkill: TDataSource;
    tCompetentionSkill: TADOTable;
    tCompetentionSkillCompetentionId: TWideStringField;
    tCompetentionSkillSkillTypeId: TGuidField;
    tCompetentionSkillLevelMin: TWideStringField;
    tCompetentionSkillLevelMid: TWideStringField;
    tCompetentionSkillLevelMax: TWideStringField;
    dsSkillType: TDataSource;
    tSkillType: TADOTable;
    tSkillTypeObjectId: TGuidField;
    tSkillTypeObjectIntId: TAutoIncField;
    tSkillTypeObjectCode: TWideStringField;
    tSkillTypeObjectName: TWideStringField;
    tCompetentionSkillSkillType: TStringField;
    tCompetentionSkillSkillText: TWideStringField;
    dsSkill: TDataSource;
    tSkill: TADOTable;
    tSkillDisciplineId: TWideStringField;
    tSkillCompetentionId: TWideStringField;
    tSkillSkillTypeId: TGuidField;
    tSkillSkillText: TWideStringField;
    tSkillLevelMin: TWideStringField;
    tSkillLevelMid: TWideStringField;
    tSkillLevelMax: TWideStringField;
    tSkillSkillType: TStringField;
    tSkillCode: TIntegerField;
    tSkillObjectId: TGuidField;
    tSkillList: TADOTable;
    tSkillListObjectId: TGuidField;
    tSkillListDisciplineId: TWideStringField;
    tSkillListCompetentionId: TWideStringField;
    tSkillListSkillTypeId: TGuidField;
    tSkillListCode: TIntegerField;
    tSkillListSkillText: TWideStringField;
    tSkillListLevelMin: TWideStringField;
    tSkillListLevelMid: TWideStringField;
    tSkillListLevelMax: TWideStringField;
    procedure tBooksAfterInsert(DataSet: TDataSet);
    procedure tOPOPAfterInsert(DataSet: TDataSet);
    procedure tDisciplineAfterInsert(DataSet: TDataSet);
    procedure tR01AfterInsert(DataSet: TDataSet);
    procedure tAttractionAfterInsert(DataSet: TDataSet);
    procedure tStatusAfterInsert(DataSet: TDataSet);
    procedure tPostAfterInsert(DataSet: TDataSet);
    procedure tDegreeAfterInsert(DataSet: TDataSet);
    procedure tCathedraAfterInsert(DataSet: TDataSet);
    procedure tPersonAfterInsert(DataSet: TDataSet);
    procedure tPersonBeforePost(DataSet: TDataSet);
    procedure tDisciplinePersonsAfterInsert(DataSet: TDataSet);
    procedure tBooksPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure tBooksBeforePost(DataSet: TDataSet);
    procedure tPersonStageAfterInsert(DataSet: TDataSet);
    procedure tPersonCalcFields(DataSet: TDataSet);
    procedure tBooksReport02CalcFields(DataSet: TDataSet);
    procedure tPeriodAfterInsert(DataSet: TDataSet);
    procedure tPeriodCalcFields(DataSet: TDataSet);
    procedure tPostPeriodRateAfterInsert(DataSet: TDataSet);
    procedure tAuditoryTypeAfterInsert(DataSet: TDataSet);
    procedure tAuditoryAfterInsert(DataSet: TDataSet);
    procedure tDisciplineAuditoryAfterInsert(DataSet: TDataSet);
    procedure tDisciplineCalcFields(DataSet: TDataSet);
    procedure tLibraryAfterInsert(DataSet: TDataSet);
    procedure tAuditoryCalcFields(DataSet: TDataSet);
    procedure tCompetentionTypeAfterInsert(DataSet: TDataSet);
    procedure tCompetentionAfterInsert(DataSet: TDataSet);
    procedure tCompetentionCalcFields(DataSet: TDataSet);
    procedure tSoftwareAfterInsert(DataSet: TDataSet);
    procedure tAuditorySoftwareAfterInsert(DataSet: TDataSet);
    procedure tBuildingAfterInsert(DataSet: TDataSet);
    procedure tSkillTypeAfterInsert(DataSet: TDataSet);
    procedure tSkillAfterInsert(DataSet: TDataSet);

  public
    LogValue: integer;

    AppPath: string;

    function GetOnline(): boolean;

    function SetOnline(const Value, Open, Save: boolean): boolean;

    function CalcStaff(): real;

    function AddComma(Source, Item: string): string;
  end;

var
  dmPublic: TdmPublic;

function NewGUID(): string;

function IsSpace(s: string):string;

function V2S(V: Variant):string;

implementation
  uses
    IniFiles
    ,SysUtils
    ,StrUtils
    ,Controls
    ,Variants
    ,Dialogs
    ,DateUtils
    ;

{$R *.dfm}

function V2S(V: Variant):string;
begin
  if V = NULL then
    Result := ''
  else
    Result := V;
end;

function IsSpace(s: string):string;
begin
  if s = '' then
    Result := '0'
  else
    Result := s;
end;

function NewGUID(): string;
var
  guid: TGUID;
begin
  CreateGUID(guid);

  result := GUIDToString(guid);
end;

function TdmPublic.GetOnline(): boolean;
begin
  result := self.Conn.Connected;
end;

function TdmPublic.SetOnline(const Value, Open, Save: boolean): boolean;
begin
  tConstant.Open;

  tCompetentionType.Open;

  tCompetention.Open;  

  tBuilding.Open;

  tAuditoryType.Open;

  tAuditory.Open;

  tAuditorySoftware.Open;  

  tSoftware.Open;

  tPeriod.Open;

  tAttraction.Open;

  tPost.Open;

  tPostPeriodRate.Open;

  tDegree.Open;

  tStatus.Open;

  tBooks.Open;

  tOPOP.Open;

  tDiscipline.Open;  

  tDisciplineAuditory.Open;

  tDisciplineBooks.Open;

  tDisciplineCompetention.Open;  

  tDisciplinePersons.Open;

  tDisciplineSoftware.Open;  

  tCathedra.Open;

  tLibrary.Open;

  tSkillType.Open;

  tCompetentionSkill.Open;

  tSkill.Open;  
  
  dmPublic.tPerson.Filter := 'ObjectState = true';

  dmPublic.tPerson.Filtered := true;

  tPerson.Open;

  tPersonStage.Open;

  AppPath := Copy(Application.ExeName, 1, LastDelimiter('\',
    Application.ExeName));

  Result := true;
end;

procedure TdmPublic.tBooksAfterInsert(DataSet: TDataSet);
begin
  tBooksObjectID.Value := NewGUID;

  tBooksBooksCount.Value := 0;

  tBooksExistInELibrary.Value := false;
end;

procedure TdmPublic.tOPOPAfterInsert(DataSet: TDataSet);
begin
  tOPOPObjectID.Value := NewGUID;
end;

procedure TdmPublic.tDisciplineAfterInsert(DataSet: TDataSet);
begin
  tDisciplineObjectID.Value := NewGUID;

  tDisciplineOPOPId.Value := dmPublic.tOPOPObjectID.Value;
end;

procedure TdmPublic.tR01AfterInsert(DataSet: TDataSet);
begin
  tR01ObjectID.Value := NewGUID;
end;

procedure TdmPublic.tAttractionAfterInsert(DataSet: TDataSet);
begin
  tAttractionObjectID.Value := NewGUID;
end;

procedure TdmPublic.tStatusAfterInsert(DataSet: TDataSet);
begin
  tStatusObjectID.Value := NewGUID;
end;

procedure TdmPublic.tPostAfterInsert(DataSet: TDataSet);
begin
  tPostObjectID.Value := NewGUID;
end;

procedure TdmPublic.tDegreeAfterInsert(DataSet: TDataSet);
begin
  tDegreeObjectID.Value := NewGUID;
end;

procedure TdmPublic.tCathedraAfterInsert(DataSet: TDataSet);
begin
  tCathedraObjectID.Value := NewGUID;
end;

procedure TdmPublic.tPersonAfterInsert(DataSet: TDataSet);
begin
  tPersonObjectID.Value := NewGUID;
end;

procedure TdmPublic.tPersonBeforePost(DataSet: TDataSet);
begin
  tPersonObjectCode.Value := Copy(tPersonFirstName.Value, 1, 1)
    + Copy(tPersonSecondName.Value, 1, 1)
    + Copy(tPersonLastName.Value, 1, 1);
end;

procedure TdmPublic.tDisciplinePersonsAfterInsert(DataSet: TDataSet);
begin
  tDisciplinePersonsHours.Value := 0;
  tDisciplinePersonsRatio.Value := 0;
  tDisciplinePersonsIsBaseProfile.Value := false;
end;

procedure TdmPublic.tBooksPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('Книга с таким описанием уже внесена!');

  Action := daAbort;
end;

procedure TdmPublic.tBooksBeforePost(DataSet: TDataSet);
begin
  tBooksBiblioShortDescription.Value :=
    tBooksBiblioDescription.Value;
end;

procedure TdmPublic.tPersonStageAfterInsert(DataSet: TDataSet);
begin
  tPersonStageObjectId.Value := NewGUID;
end;

procedure TdmPublic.tPersonCalcFields(DataSet: TDataSet);
begin
  tPersonStageYears.Value := tPersonExperiance.Value div 12;

  tPersonStagePedYears.Value := tPersonExperiancePedagogical.Value div 12;

  tPersonStatusName.Value := tPersonPost.Value + ' ' + tPersonFirstName.Value
    + ' ' + Copy(tPersonSecondName.Value, 1, 1) +  ' '
    + Copy(tPersonLastName.Value, 1, 1);
end;

procedure TdmPublic.tBooksReport02CalcFields(DataSet: TDataSet);
var
  r: real;
begin
  if tBooksReport02StudentCount.Value <> 0 then
    r := tBooksReport02BooksCount.Value / tBooksReport02StudentCount.Value
  else
    r := 0;

  if tBooksReport02ExistInELibrary.Value then
    r := r + 1;

  tBooksReport02Ratio.Value := r;
end;

procedure TdmPublic.tPeriodAfterInsert(DataSet: TDataSet);
begin
  tPeriodObjectId.Value := NewGUID;

  tPeriodObjectCode.Value := YearOf(Now);
end;

procedure TdmPublic.tPeriodCalcFields(DataSet: TDataSet);
begin
  tPeriodObjectName.Value := IntToStr(tPeriodObjectCode.Value) + '/'
    + IntToStr(tPeriodObjectCode.Value + 1);
end;

procedure TdmPublic.tPostPeriodRateAfterInsert(DataSet: TDataSet);
begin
  tPostPeriodRateObjectId.Value := NewGUID;
end;

procedure TdmPublic.tAuditoryTypeAfterInsert(DataSet: TDataSet);
begin
  tAuditoryTypeObjectId.Value := NewGUID;
end;

procedure TdmPublic.tAuditoryAfterInsert(DataSet: TDataSet);
begin
  tAuditoryObjectId.Value := NewGUID;
end;

procedure TdmPublic.tDisciplineAuditoryAfterInsert(DataSet: TDataSet);
begin
  tDisciplineAuditoryObjectId.Value := NewGUID;
end;

function TdmPublic.CalcStaff(): real;
var
  f: real;
begin
  if tDisciplineIsPractic.Value then
    f := tDisciplineHourPractic.Value
  else
    f := tDisciplineHourClassLection.Value * 0.05 //консультации в семестре
      + tDisciplineCourseProjectCount.Value * 3   //курсовой проект
      + tDisciplineCourseWorkCount.Value * 2   //курсовая работа
      + tDisciplineExamCount.Value * 2            //консультации к экзамену
      + tDisciplineHourClass.Value * 0.1          //индивидуальные занятия
      + tDisciplineExamCount.Value * 0.35         //экзамены
      + tDisciplineValidCount.Value * 0.25        //зачеты
      + tDisciplineHourClass.Value;               //практика

  Result := f;
end;

function TdmPublic.AddComma(Source, Item: string): string;
begin
  if Source = '' then
    Result := Item
  else
    Result := Source + ', ' + Item; 
end;

procedure TdmPublic.tDisciplineCalcFields(DataSet: TDataSet);

var
  strLesson, strValid: string;
begin
  tDisciplineHourStaff.Value := CalcStaff();

  strLesson := '';

  if tDisciplineHourClassLection.Value > 0 then
    strLesson := AddComma(strLesson, 'лекции');

  if tDisciplineHourClassLaboratory.Value > 0 then
    strLesson := AddComma(strLesson, 'лабораторные работы');

  if tDisciplineHourClassPractice.Value > 0 then
    strLesson := AddComma(strLesson, 'практические занятия');

  if tDisciplineHourSelf.Value > 0 then
    strLesson := AddComma(strLesson, 'самостоятельная работа');

  strValid := '';

  if tDisciplineCourseExam.Value <> '' then
    strValid := AddComma(strValid, 'экзамен');

  if tDisciplineCourseValid.Value <> '' then
    strValid := AddComma(strValid, 'зачет');

  if tDisciplineCourseProject.Value <> '' then
    strValid := AddComma(strValid, 'курсовой проект');

  if tDisciplineCourseWord.Value <> '' then
    strValid := AddComma(strValid, 'курсовая работа');

  tDisciplineLessonKinds.Value := strLesson;

  tDisciplineValidKinds.Value := strValid;      
end;

procedure TdmPublic.tLibraryAfterInsert(DataSet: TDataSet);
begin
  tLibraryObjectId.Value := NewGUID;
end;

procedure TdmPublic.tAuditoryCalcFields(DataSet: TDataSet);
begin
  tAuditoryCathedraCalc.Value := tAuditoryCathedra.Value;
end;

procedure TdmPublic.tCompetentionTypeAfterInsert(DataSet: TDataSet);
begin
  tCompetentionTypeObjectId.Value := NewGUID;
end;

procedure TdmPublic.tCompetentionAfterInsert(DataSet: TDataSet);
var
  num: integer;
begin
  tCompetentionObjectId.Value := NewGUID;

  tGetRowNumber.Close;

  tGetRowNumber.Open;

  tGetRowNumber.First;

  if tGetRowNumber.Eof then
    num := 1
  else
    num := tGetRowNumberRowNumberMax.Value + 1;

  tCompetentionRowNumber.Value := num;

  tCompetentionCompetitionTypeId.Value :=
    tCompetentionTypeObjectId.Value;

  tCompetentionObjectCode.Value := tCompetentionTypeObjectCode.Value + '-';
end;

procedure TdmPublic.tCompetentionCalcFields(DataSet: TDataSet);
begin
  tCompetentionCompetentionTypeCalc.Value := tCompetentionCompetention.Value;

  tCompetentionTypeCalc.Value := tCompetentionTypeCode.Value;  
end;

procedure TdmPublic.tSoftwareAfterInsert(DataSet: TDataSet);
begin
  tSoftwareObjectId.Value := NewGUID;
end;

procedure TdmPublic.tAuditorySoftwareAfterInsert(DataSet: TDataSet);
begin
  tAuditorySoftwareObjectId.Value := NewGUID;
end;

procedure TdmPublic.tBuildingAfterInsert(DataSet: TDataSet);
begin
  tBuildingObjectId.Value := NewGUID;
end;

procedure TdmPublic.tSkillTypeAfterInsert(DataSet: TDataSet);
begin
  tSkillTypeObjectId.Value := NewGUID;
end;

procedure TdmPublic.tSkillAfterInsert(DataSet: TDataSet);
begin
  tSkillObjectId.Value := NewGUID;
end;

end.

