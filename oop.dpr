program oop;

uses
  ShareMem,
  Forms,
  DataModuleUnit in 'DataModuleUnit.pas' {dmPublic: TDataModule},
  FormAbsUnit in 'FormAbsUnit.pas' {FormListAbs},
  FormEditAbsUnit in 'FormEditAbsUnit.pas' {FormEditAbs},
  MAIN in 'Main.pas' {MainForm},
  FormReportAbsUnit in 'FormReportAbsUnit.pas' {FormReportAbs},
  ProcessMessage in 'ProcessMessage.pas' {fmProcessMsg},
  ConstantUnit in 'ConstantUnit.pas' {Constant},
  ConstantEditUnit in 'ConstantEditUnit.pas' {ConstantEdit},
  LogUnit in 'LogUnit.pas' {Log},
  Localization in 'Localization.pas',
  Books in 'Books.pas' {fmBooks},
  DisciplineBooksEdit in 'DisciplineBooksEdit.pas' {fmDisciplineBooksEdit},
  DisciplinesImport in 'DisciplinesImport.pas' {fmDisciplinesImport},
  OPOP in 'OPOP.pas' {fmOPOP},
  OPOPEdit in 'OPOPEdit.pas' {fmOPOPEdit},
  Discipline in 'Discipline.pas' {fmDiscipline},
  PersonsImport in 'PersonsImport.pas' {fmPersonImport},
  DisciplineEdit in 'DisciplineEdit.pas' {fmDisciplineEdit},
  BooksSelect in 'BooksSelect.pas' {fmBooksSelect},
  Degree in 'Degree.pas' {fmDegree},
  Attraction in 'Attraction.pas' {fmAttraction},
  Post in 'Post.pas' {fmPost},
  Status in 'Status.pas' {fmStatus},
  PostEdit in 'PostEdit.pas' {fmPostEdit},
  AttractionEdit in 'AttractionEdit.pas' {fmAttractionEdit},
  DegreeEdit in 'DegreeEdit.pas' {fmDegreeEdit},
  CathedraEdit in 'CathedraEdit.pas' {fmCathedraEdit},
  Person in 'Person.pas' {fmPerson},
  StatusEdit in 'StatusEdit.pas' {fmStatusEdit},
  Cathedra in 'Cathedra.pas' {fmCathedra},
  BooksImport in 'BooksImport.pas' {fmBooksImport},
  PersonEdit in 'PersonEdit.pas' {fmPersonEdit},
  DisciplinePersonEdit in 'DisciplinePersonEdit.pas' {fmDisciplinePersonEdit},
  BooksEdit in 'BooksEdit.pas' {fmBooksEdit},
  PersonRate in 'PersonRate.pas' {fmPersonRate},
  Period in 'Period.pas' {fmPeriod},
  PeriodEdit in 'PeriodEdit.pas' {fmPeriodEdit},
  PersonWorker in 'PersonWorker.pas' {fmPersonWorker},
  AuditoryType in 'AuditoryType.pas' {fmAuditoryType},
  AuditoryTypeEdit in 'AuditoryTypeEdit.pas' {fmAuditoryTypeEdit},
  Auditory in 'Auditory.pas' {fmAuditory},
  AuditoryEdit in 'AuditoryEdit.pas' {fmAuditoryEdit},
  DisciplineAuditoryEdit in 'DisciplineAuditoryEdit.pas' {fmDisciplineAuditoryEdit},
  ELibrary in 'ELibrary.pas' {fmLibrary},
  ELibraryEdit in 'ELibraryEdit.pas' {fmLibraryEdit},
  CompetentionType in 'CompetentionType.pas' {fmCompetentionType},
  CompetentionTypeEdit in 'CompetentionTypeEdit.pas' {fmCompetentionTypeEdit},
  Competention in 'Competention.pas' {fmCompetention},
  CompetentionEdit in 'CompetentionEdit.pas' {fmCompetentionEdit},
  DisciplineDetailTransfer in 'DisciplineDetailTransfer.pas' {fmDisciplineTransfer},
  Software in 'Software.pas' {fmSoftware},
  SoftwareEdit in 'SoftwareEdit.pas' {fmSoftwareEdit},
  DisciplineSoftwareEdit in 'DisciplineSoftwareEdit.pas' {fmDisciplineSoftwareEdit},
  Building in 'Building.pas' {fmBuilding},
  BuildingEdit in 'BuildingEdit.pas' {fmBuildingEdit},
  DisciplineCompetentionSelect in 'DisciplineCompetentionSelect.pas' {fmDisciplineCompetentionSelect},
  AuditorySoftwareSelect in 'AuditorySoftwareSelect.pas' {fmAuditorySoftwareSelect},
  DisciplineSkillEdit in 'DisciplineSkillEdit.pas' {fmDisciplineSkillEdit},
  CompetentionSkillEdit in 'CompetentionSkillEdit.pas' {fmCompetentionSkillEdit},
  SkillDetailEdit in 'SkillDetailEdit.pas' {fmSkillDetailEdit};

{$R *.res}

begin
  Application.Initialize;

  Application.Title := '»“√ƒ';

  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TdmPublic, dmPublic);
  Application.CreateForm(TfmProcessMsg, fmProcessMsg);
  Application.CreateForm(TfmOPOPEdit, fmOPOPEdit);
  Application.CreateForm(TfmPersonWorker, fmPersonWorker);
  Application.CreateForm(TfmDisciplineSkillEdit, fmDisciplineSkillEdit);
  Application.CreateForm(TfmCompetentionSkillEdit, fmCompetentionSkillEdit);
  Application.CreateForm(TfmSkillDetailEdit, fmSkillDetailEdit);  
  Application.CreateForm(TfmDisciplineEdit, fmDisciplineEdit);
  Application.CreateForm(TfmPostEdit, fmPostEdit);
  Application.CreateForm(TfmAttractionEdit, fmAttractionEdit);
  Application.CreateForm(TfmDegreeEdit, fmDegreeEdit);
  Application.CreateForm(TfmCathedraEdit, fmCathedraEdit);
  Application.CreateForm(TfmStatusEdit, fmStatusEdit);
  Application.CreateForm(TfmPersonEdit, fmPersonEdit);
  Application.CreateForm(TfmDisciplinePersonEdit, fmDisciplinePersonEdit);
  Application.CreateForm(TfmDisciplineBooksEdit, fmDisciplineBooksEdit);
  Application.CreateForm(TfmBooksEdit, fmBooksEdit);
  Application.CreateForm(TfmPeriodEdit, fmPeriodEdit);
  Application.CreateForm(TfmAuditoryTypeEdit, fmAuditoryTypeEdit);
  Application.CreateForm(TfmAuditoryEdit, fmAuditoryEdit);
  Application.CreateForm(TfmDisciplineAuditoryEdit, fmDisciplineAuditoryEdit);
  Application.CreateForm(TfmLibraryEdit, fmLibraryEdit);
  Application.CreateForm(TfmCompetentionTypeEdit, fmCompetentionTypeEdit);
  Application.CreateForm(TfmCompetentionEdit, fmCompetentionEdit);
  Application.CreateForm(TfmSoftwareEdit, fmSoftwareEdit);
  Application.CreateForm(TfmDisciplineSoftwareEdit, fmDisciplineSoftwareEdit);
  Application.CreateForm(TfmBuildingEdit, fmBuildingEdit);
  Application.CreateForm(TfmDisciplineCompetentionSelect, fmDisciplineCompetentionSelect);
  Application.CreateForm(TfmAuditorySoftwareSelect, fmAuditorySoftwareSelect);
  Application.Run;
end.
