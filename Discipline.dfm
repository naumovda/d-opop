inherited fmDiscipline: TfmDiscipline
  Left = 24
  Top = 131
  Width = 1397
  Height = 636
  Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1087#1083#1072#1085#1072' '#1054#1055#1054#1055
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 1073
    Height = 571
    inherited tvMain: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourTotal
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourStaff
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourClass
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourClassLection
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourClassLaboratory
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourClassPractice
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourSelf
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourSelfCourseProject
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourSelfCourseWork
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourSelfExam
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourSelfConsult
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainHourSelfWork
        end>
      OptionsView.Footer = True
      object tvMainOPOP: TcxGridDBColumn
        Caption = #1054#1055#1054#1055
        DataBinding.FieldName = 'OPOP'
        Width = 98
      end
      object tvMainRowNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'RowNumber'
        Width = 42
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
        Width = 62
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
        DataBinding.FieldName = 'ObjectName'
        Width = 209
      end
      object tvMainCathedraId: TcxGridDBColumn
        DataBinding.FieldName = 'CathedraId'
        Visible = False
      end
      object tvMainUnitCount: TcxGridDBColumn
        Caption = #1047#1045
        DataBinding.FieldName = 'UnitCount'
        Width = 48
      end
      object tvMainHourTotal: TcxGridDBColumn
        Caption = #1042#1089#1077#1075#1086', '#1095#1072#1089'.'
        DataBinding.FieldName = 'HourTotal'
      end
      object tvMainHourStaff: TcxGridDBColumn
        Caption = #1053#1072#1075#1088#1091#1079#1082#1072', '#1095#1072#1089
        DataBinding.FieldName = 'HourStaff'
      end
      object tvMainCourseExam: TcxGridDBColumn
        Caption = #1069#1050#1047
        DataBinding.FieldName = 'CourseExam'
        Width = 53
      end
      object tvMainCourseValid: TcxGridDBColumn
        Caption = #1047#1040#1063
        DataBinding.FieldName = 'CourseValid'
        Width = 60
      end
      object tvMainCourseProject: TcxGridDBColumn
        Caption = #1050#1055
        DataBinding.FieldName = 'CourseProject'
        Width = 41
      end
      object tvMainCourseWord: TcxGridDBColumn
        Caption = #1050#1056
        DataBinding.FieldName = 'CourseWord'
        Width = 42
      end
      object tvMainHourClass: TcxGridDBColumn
        Caption = #1040#1059#1044
        DataBinding.FieldName = 'HourClass'
        Width = 30
      end
      object tvMainHourClassLection: TcxGridDBColumn
        Caption = #1051#1045#1050
        DataBinding.FieldName = 'HourClassLection'
        Width = 28
      end
      object tvMainHourClassLaboratory: TcxGridDBColumn
        Caption = #1051#1040#1041
        DataBinding.FieldName = 'HourClassLaboratory'
        Width = 31
      end
      object tvMainHourClassPractice: TcxGridDBColumn
        Caption = #1055#1047
        DataBinding.FieldName = 'HourClassPractice'
        Width = 40
      end
      object tvMainHourSelf: TcxGridDBColumn
        Caption = #1057#1056' '#1074#1089#1077#1075#1086
        DataBinding.FieldName = 'HourSelf'
      end
      object tvMainHourSelfCourseProject: TcxGridDBColumn
        Caption = #1057#1056' '#1050#1055
        DataBinding.FieldName = 'HourSelfCourseProject'
      end
      object tvMainHourSelfCourseWork: TcxGridDBColumn
        Caption = #1057#1056' '#1050#1056
        DataBinding.FieldName = 'HourSelfCourseWork'
      end
      object tvMainHourSelfExam: TcxGridDBColumn
        Caption = #1057#1056' '#1069#1050#1047
        DataBinding.FieldName = 'HourSelfExam'
      end
      object tvMainHourSelfConsult: TcxGridDBColumn
        Caption = #1057#1056' '#1050#1054#1053#1057
        DataBinding.FieldName = 'HourSelfConsult'
      end
      object tvMainHourSelfWork: TcxGridDBColumn
        Caption = #1057#1056
        DataBinding.FieldName = 'HourSelfWork'
      end
      object tvMainA01: TcxGridDBColumn
        DataBinding.FieldName = 'A01'
        Visible = False
      end
      object tvMainA02: TcxGridDBColumn
        DataBinding.FieldName = 'A02'
        Visible = False
      end
      object tvMainA03: TcxGridDBColumn
        DataBinding.FieldName = 'A03'
        Visible = False
      end
      object tvMainA04: TcxGridDBColumn
        DataBinding.FieldName = 'A04'
        Visible = False
      end
      object tvMainA05: TcxGridDBColumn
        DataBinding.FieldName = 'A05'
        Visible = False
      end
      object tvMainA06: TcxGridDBColumn
        DataBinding.FieldName = 'A06'
        Visible = False
      end
      object tvMainA07: TcxGridDBColumn
        DataBinding.FieldName = 'A07'
        Visible = False
      end
      object tvMainA08: TcxGridDBColumn
        DataBinding.FieldName = 'A08'
        Visible = False
      end
      object tvMainA09: TcxGridDBColumn
        DataBinding.FieldName = 'A09'
        Visible = False
      end
      object tvMainA10: TcxGridDBColumn
        DataBinding.FieldName = 'A10'
        Visible = False
      end
      object tvMainS01: TcxGridDBColumn
        DataBinding.FieldName = 'S01'
        Visible = False
      end
      object tvMainS02: TcxGridDBColumn
        DataBinding.FieldName = 'S02'
        Visible = False
      end
      object tvMainS03: TcxGridDBColumn
        DataBinding.FieldName = 'S03'
        Visible = False
      end
      object tvMainS04: TcxGridDBColumn
        DataBinding.FieldName = 'S04'
        Visible = False
      end
      object tvMainS05: TcxGridDBColumn
        DataBinding.FieldName = 'S05'
        Visible = False
      end
      object tvMainS06: TcxGridDBColumn
        DataBinding.FieldName = 'S06'
        Visible = False
      end
      object tvMainS07: TcxGridDBColumn
        DataBinding.FieldName = 'S07'
        Visible = False
      end
      object tvMainS08: TcxGridDBColumn
        DataBinding.FieldName = 'S08'
        Visible = False
      end
      object tvMainS09: TcxGridDBColumn
        DataBinding.FieldName = 'S09'
        Visible = False
      end
      object tvMainS10: TcxGridDBColumn
        DataBinding.FieldName = 'S10'
        Visible = False
      end
      object tvMainExamCount: TcxGridDBColumn
        DataBinding.FieldName = 'ExamCount'
        Visible = False
      end
      object tvMainValidCount: TcxGridDBColumn
        DataBinding.FieldName = 'ValidCount'
        Visible = False
      end
      object tvMainCourseProjectCount: TcxGridDBColumn
        DataBinding.FieldName = 'CourseProjectCount'
        Visible = False
      end
      object tvMainCourseWorkCount: TcxGridDBColumn
        DataBinding.FieldName = 'CourseWorkCount'
        Visible = False
      end
      object tvMainIsPractic: TcxGridDBColumn
        DataBinding.FieldName = 'IsPractic'
        Visible = False
      end
      object tvMainOPOPId: TcxGridDBColumn
        DataBinding.FieldName = 'OPOPId'
        Visible = False
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    Height = 571
    inherited cxSearch: TcxButton
      Top = 67
      TabOrder = 1
    end
    inherited cxClear: TcxButton
      Top = 67
      TabOrder = 2
    end
    object cxOPOP: TcxButtonEdit [2]
      Left = 98
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxOPOPPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dxNavBar: TdxNavBar [3]
      Left = 11
      Top = 111
      Width = 278
      Height = 354
      Align = alClient
      ActiveGroupIndex = 0
      TabOrder = 3
      View = 8
      OptionsImage.SmallImages = ImageList
      object dxNavBarGroup1: TdxNavBarGroup
        Caption = #1054#1073#1077#1089#1087#1077#1095#1077#1085#1085#1086#1089#1090#1100' '#1073#1080#1073#1083#1080#1086#1075#1088#1072#1092#1080#1077#1081
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxR01
          end
          item
            Item = dxR05
          end>
      end
      object dxNavBarGroup2: TdxNavBarGroup
        Caption = #1050#1072#1076#1088#1086#1074#1099#1077' '#1089#1087#1088#1072#1074#1082#1080
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxRPersonRate
          end
          item
            Item = dxR03
          end
          item
            Item = dxR02
          end
          item
            Item = dxR08
          end
          item
            Item = dxR08discipline
          end>
      end
      object dxNavBarGroup3: TdxNavBarGroup
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1100#1085#1086'-'#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1086#1089#1085#1072#1097#1077#1085#1080#1077
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxR11
          end
          item
            Item = dxR10
          end
          item
            Item = dxNavBarItem1
          end>
      end
      object dxNavBarGroup4: TdxNavBarGroup
        Caption = #1056#1072#1073#1086#1095#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxR12
          end>
      end
      object dxR01: TdxNavBarItem
        Action = acR01
      end
      object dxR02: TdxNavBarItem
        Action = acR02
      end
      object dxR05: TdxNavBarItem
        Action = acR05
      end
      object dxRPersonRate: TdxNavBarItem
        Action = acRPersonRate
      end
      object dxR03: TdxNavBarItem
        Action = acRPersonListV02
      end
      object dxR08: TdxNavBarItem
        Action = acR08
      end
      object dxR08discipline: TdxNavBarItem
        Action = acR08discipline
      end
      object dxNavBarItem1: TdxNavBarItem
        Action = acR09Auditory
      end
      object dxR10: TdxNavBarItem
        Action = acR10
      end
      object dxR11: TdxNavBarItem
        Action = acR11
      end
      object dxR12: TdxNavBarItem
        Action = acR12
      end
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      AlignVert = avClient
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftOPOP: TdxLayoutItem
          CaptionOptions.Text = #1042#1099#1073#1086#1088' '#1054#1055#1054#1055':'
          Control = cxOPOP
          ControlOptions.ShowBorder = False
        end
      end
      object dxLeftSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLeftItem1: TdxLayoutItem
        AlignVert = avClient
        CaptionOptions.Text = 'dxNavBar1'
        CaptionOptions.Visible = False
        Control = dxNavBar
        ControlOptions.AutoColor = True
      end
    end
    object dxLeftGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
    end
  end
  inherited cxSplitterMain: TcxSplitter
    Height = 571
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tDiscipline
    Left = 432
    Top = 170
  end
  inherited ImageList: TImageList
    Left = 400
    Top = 170
  end
  inherited Actions: TActionList
    Left = 367
    Top = 170
    inherited acImport: TAction
      OnExecute = acImportExecute
    end
    object acR01: TAction [12]
      Caption = #1054#1073#1097#1072#1103' '#1089#1074#1086#1076#1082#1072' '#1076#1083#1103' '#1089#1087#1088#1072#1074#1082#1080
      ImageIndex = 10
      OnExecute = acR01Execute
    end
    object acR02: TAction [13]
      Caption = #1050#1072#1076#1088#1086#1074#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' (v2)'
      ImageIndex = 10
      OnExecute = acR02Execute
    end
    object acR05: TAction [14]
      Caption = #1050#1072#1088#1090#1072' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1085#1086#1089#1090#1080' '#1087#1086' '#1076#1080#1089#1094#1087#1083#1080#1085#1072#1084
      ImageIndex = 10
      OnExecute = acR05Execute
    end
    object acRPersonRate: TAction [15]
      Caption = #1054#1073#1097#1072#1103' '#1089#1074#1086#1076#1082#1072' '#1076#1083#1103' '#1089#1087#1088#1072#1074#1082#1080
      ImageIndex = 10
      OnExecute = acRPersonRateExecute
    end
    object acRPersonListV02: TAction [16]
      Caption = #1050#1072#1076#1088#1086#1074#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' (v1)'
      ImageIndex = 10
      OnExecute = acRPersonListV02Execute
    end
    object acR08: TAction [17]
      Caption = #1056#1072#1073#1086#1090#1072#1102#1090' '#1087#1086' '#1087#1088#1086#1092#1080#1083#1102
      ImageIndex = 10
      OnExecute = acR08Execute
    end
    object acR08discipline: TAction
      Caption = #1058#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1080' '#1076#1080#1089#1094#1080#1087#1083#1080#1085
      ImageIndex = 10
      OnExecute = acR08disciplineExecute
    end
    object acR09Auditory: TAction
      Caption = #1052#1058#1054' '#1076#1080#1089#1094#1080#1087#1083#1080#1085
      ImageIndex = 10
      OnExecute = acR09AuditoryExecute
    end
    object acR10: TAction
      Caption = #1057#1074#1086#1076#1085#1072#1103' '#1090#1072#1073#1083#1080#1094#1072' '#1076#1083#1103' '#1055#1054
      ImageIndex = 10
      OnExecute = acR10Execute
    end
    object acR11: TAction
      Caption = #1056#1077#1077#1089#1090#1088' '#1055#1054' '#1087#1086' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072#1084
      ImageIndex = 10
      OnExecute = acR11Execute
    end
    object acR12: TAction
      Caption = #1040#1085#1085#1086#1090#1072#1094#1080#1080' '#1082' '#1056#1055
      ImageIndex = 10
      OnExecute = acR12Execute
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 470
    Top = 170
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 507
    Top = 169
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarImport'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxNew'
        end
        item
          Visible = True
          ItemName = 'dxEdit'
        end
        item
          Visible = True
          ItemName = 'dxDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDeleteAll'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarGroup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarPrint'
        end>
    end
    object dxBarDeleteAll: TdxBarButton
      Action = acDeleteAll
      Category = 0
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Left = 544
    Top = 168
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = Grid
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43366.728089976850000000
      BuiltInReportLink = True
    end
  end
  inherited OpenDialog: TOpenDialog
    Left = 584
    Top = 168
  end
end
