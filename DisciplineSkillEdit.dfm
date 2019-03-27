inherited fmDisciplineSkillEdit: TfmDisciplineSkillEdit
  Left = 380
  Top = 165
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1074#1099#1082#1072
  ClientHeight = 543
  ClientWidth = 692
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 177
    Width = 692
    Height = 340
    ClientRectBottom = 336
    ClientRectRight = 688
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 684
      end
      inherited Grid: TcxGrid
        Width = 684
        Height = 286
        inherited tvMain: TcxGridDBTableView
          object tvMainSkillType: TcxGridDBColumn
            Caption = #1053#1072#1074#1099#1082
            DataBinding.FieldName = 'SkillType'
            Width = 105
          end
          object tvMainCode: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'Code'
          end
          object tvMainSkillText: TcxGridDBColumn
            Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1072#1074#1099#1082#1072
            DataBinding.FieldName = 'SkillText'
            Width = 465
          end
        end
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 692
    Height = 177
    object cxCode: TcxDBTextEdit [0]
      Left = 106
      Top = 85
      DataBinding.DataField = 'Competention'
      DataBinding.DataSource = dmPublic.dsDisciplineCompetention
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxName: TcxDBTextEdit [1]
      Left = 106
      Top = 112
      DataBinding.DataField = 'Description'
      DataBinding.DataSource = dmPublic.dsDisciplineCompetention
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDisciplineName: TcxDBTextEdit [2]
      Left = 106
      Top = 28
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = dmPublic.dsDiscipline
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutGroup2: TdxLayoutGroup
        CaptionOptions.Text = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
        ButtonOptions.Buttons = <>
        object dxLayoutItem1: TdxLayoutItem
          CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          Control = cxDisciplineName
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutGroup1: TdxLayoutGroup
        CaptionOptions.Text = #1050#1086#1084#1087#1077#1090#1077#1085#1094#1080#1103
        ButtonOptions.Buttons = <>
        object dxLayoutItem7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1050#1086#1076':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem8: TdxLayoutItem
          CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          Control = cxName
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tSkill
    Left = 424
    Top = 32
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDisciplineCompetention
    Left = 456
    Top = 32
  end
  inherited ActionList: TActionList
    Left = 488
    Top = 32
  end
  inherited ImageList: TImageList
    Left = 392
    Top = 34
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 520
    Top = 32
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
    Left = 552
    Top = 32
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 300
    end
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarCopy'
        end>
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 592
    Top = 33
  end
end
