inherited fmPersonEdit: TfmPersonEdit
  Left = 322
  Top = 115
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  ClientHeight = 658
  ClientWidth = 813
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 433
    Width = 813
    Height = 199
    ClientRectBottom = 195
    ClientRectRight = 809
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 805
      end
      inherited Grid: TcxGrid
        Width = 805
        Height = 145
        inherited tvMain: TcxGridDBTableView
          object tvMainOrganization: TcxGridDBColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'Organization'
            Width = 129
          end
          object tvMainPost: TcxGridDBColumn
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'Post'
            Width = 143
          end
          object tvMainPeriod: TcxGridDBColumn
            Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099
            DataBinding.FieldName = 'Period'
            Width = 154
          end
          object tvMainStage: TcxGridDBColumn
            Caption = #1057#1090#1072#1078
            DataBinding.FieldName = 'Stage'
          end
          object tvMainIsShown: TcxGridDBColumn
            Caption = #1042#1099#1074#1086#1076#1080#1090#1100' '#1074' '#1089#1087#1088#1072#1074#1082#1091
            DataBinding.FieldName = 'IsShown'
            Width = 127
          end
        end
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 813
    Height = 433
    object cxFirstName: TcxDBTextEdit [0]
      Left = 135
      Top = 55
      DataBinding.DataField = 'FirstName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxSecondName: TcxDBTextEdit [1]
      Left = 135
      Top = 82
      DataBinding.DataField = 'SecondName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxLastName: TcxDBTextEdit [2]
      Left = 135
      Top = 109
      DataBinding.DataField = 'LastName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Width = 186
    end
    object cxCathedra: TcxDBButtonEdit [3]
      Left = 135
      Top = 277
      DataBinding.DataField = 'Cathedra'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.OnButtonClick = cxCathedraPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxAttraction: TcxDBButtonEdit [4]
      Left = 135
      Top = 331
      DataBinding.DataField = 'Attraction'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxAttractionPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDegree: TcxDBButtonEdit [5]
      Left = 135
      Top = 193
      DataBinding.DataField = 'Degree'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDegreePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxStatus: TcxDBButtonEdit [6]
      Left = 135
      Top = 220
      DataBinding.DataField = 'Status'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxStatusPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxEducation: TcxDBMemo [7]
      Left = 438
      Top = 73
      DataBinding.DataField = 'Education'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 15
      Height = 89
      Width = 185
    end
    object cxEduactionAdd: TcxDBMemo [8]
      Left = 438
      Top = 186
      DataBinding.DataField = 'EducationAdd'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 16
      Height = 89
      Width = 185
    end
    object cxStage: TcxDBCalcEdit [9]
      Left = 135
      Top = 358
      DataBinding.DataField = 'Experiance'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxStagePed: TcxDBCalcEdit [10]
      Left = 135
      Top = 385
      DataBinding.DataField = 'ExperiancePedagogical'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxCode: TcxDBTextEdit [11]
      Left = 135
      Top = 136
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Enabled = False
      Properties.ReadOnly = True
      Style.Color = clScrollBar
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxPost: TcxDBButtonEdit [12]
      Left = 135
      Top = 304
      DataBinding.DataField = 'Post'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxPostPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [13]
      Left = 438
      Top = 28
      Caption = #1088#1072#1073#1086#1090#1072#1077#1090' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' '#1073#1086#1083#1077#1077' '#1090#1088#1077#1093' '#1083#1077#1090' '#1074' '#1089#1090#1086#1088#1086#1085#1085#1077#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      DataBinding.DataField = 'IsWorker'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxWorker: TcxDBMemo [14]
      Left = 438
      Top = 299
      DataBinding.DataField = 'WorkDescription'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 17
      Height = 89
      Width = 185
    end
    object cxDBCheckBox2: TcxDBCheckBox [15]
      Left = 22
      Top = 28
      Caption = #1047#1072#1087#1080#1089#1100' '#1072#1082#1090#1091#1072#1083#1100#1085#1072#1103
      DataBinding.DataField = 'ObjectState'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [16]
      Left = 287
      Top = 358
      DataBinding.DataField = 'StageYears'
      DataBinding.DataSource = DSMaster
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [17]
      Left = 287
      Top = 385
      DataBinding.DataField = 'StagePedYears'
      DataBinding.DataSource = DSMaster
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      object dxLayoutGroup5: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxLayoutGroup1: TdxLayoutGroup
          CaptionOptions.Text = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086
          ButtonOptions.Buttons = <>
          object dxLayoutItem16: TdxLayoutItem
            CaptionOptions.Text = 'cxDBCheckBox2'
            CaptionOptions.Visible = False
            Control = cxDBCheckBox2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem1: TdxLayoutItem
            CaptionOptions.Text = #1060#1072#1084#1080#1083#1080#1103':'
            Control = cxFirstName
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            CaptionOptions.Text = #1048#1084#1103':'
            Control = cxSecondName
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem3: TdxLayoutItem
            CaptionOptions.Text = #1054#1090#1095#1077#1089#1090#1074#1086
            Control = cxLastName
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem12: TdxLayoutItem
            CaptionOptions.Text = #1057#1086#1082#1088'. '#1060#1048#1054
            Enabled = False
            Control = cxCode
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup3: TdxLayoutGroup
          CaptionOptions.Text = #1059#1095#1077#1085#1099#1077' '#1089#1090#1077#1087#1077#1085#1100' '#1080' '#1079#1074#1072#1085#1080#1077
          ButtonOptions.Buttons = <>
          object dxLayoutItem6: TdxLayoutItem
            CaptionOptions.Text = #1059#1095'. '#1089#1090#1077#1087#1077#1085#1100':'
            Control = cxDegree
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem7: TdxLayoutItem
            CaptionOptions.Text = #1059#1095'. '#1079#1074#1072#1085#1080#1077':'
            Control = cxStatus
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup2: TdxLayoutGroup
          CaptionOptions.Text = #1056#1072#1073#1086#1090#1072':'
          ButtonOptions.Buttons = <>
          object dxLayoutItem4: TdxLayoutItem
            CaptionOptions.Text = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
            Control = cxCathedra
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem13: TdxLayoutItem
            CaptionOptions.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
            Control = cxPost
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem5: TdxLayoutItem
            CaptionOptions.Text = #1057#1087#1086#1089#1086#1073' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1080#1103':'
            Control = cxAttraction
            ControlOptions.ShowBorder = False
          end
          object dxLayoutGroup6: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem10: TdxLayoutItem
              CaptionOptions.Text = #1057#1090#1072#1078' '#1086#1073#1097#1080#1081', '#1084#1077#1089'.:'
              Control = cxStage
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem17: TdxLayoutItem
              CaptionOptions.Text = #1083#1077#1090':'
              Control = cxDBTextEdit1
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup7: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutItem11: TdxLayoutItem
              CaptionOptions.Text = #1057#1090#1072#1078' '#1087#1077#1076'., '#1084#1077#1089'.:'
              Control = cxStagePed
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem18: TdxLayoutItem
              CaptionOptions.Text = #1083#1077#1090':'
              Control = cxDBTextEdit2
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutGroup4: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = #1056#1072#1073#1086#1090#1072' '#1080' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        ButtonOptions.Buttons = <>
        object dxLayoutItem14: TdxLayoutItem
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem8: TdxLayoutItem
          CaptionOptions.Text = #1041#1072#1079#1086#1074#1086#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077':'
          CaptionOptions.Layout = clTop
          Control = cxEducation
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem9: TdxLayoutItem
          CaptionOptions.Text = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077':'
          CaptionOptions.Layout = clTop
          Control = cxEduactionAdd
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem15: TdxLayoutItem
          AlignVert = avClient
          CaptionOptions.Text = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1087#1088#1086#1092#1080#1083#1102' '#1054#1055#1054#1055
          CaptionOptions.Layout = clTop
          Control = cxWorker
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPersonStage
    Left = 80
    Top = 400
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPerson
    Left = 112
    Top = 400
  end
  inherited ActionList: TActionList
    Left = 144
    Top = 400
  end
  inherited ImageList: TImageList
    Left = 48
    Top = 402
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 176
    Top = 400
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    Left = 208
    Top = 400
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 486
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 248
    Top = 401
  end
end
