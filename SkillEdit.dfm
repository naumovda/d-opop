inherited fmSkillEdit: TfmSkillEdit
  Left = 363
  Top = 166
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1074#1099#1082#1072
  ClientHeight = 543
  ClientWidth = 683
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 513
    Width = 683
    Height = 4
    ClientRectBottom = 7
    ClientRectRight = 679
    ClientRectTop = 7
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 675
      end
      inherited Grid: TcxGrid
        Width = 675
        Height = 38
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 683
    Height = 513
    object cxType: TcxDBRadioGroup [0]
      Left = 10
      Top = 94
      Caption = #1042#1099#1073#1086#1088' '#1090#1080#1087#1072' '#1085#1072#1074#1099#1082#1072
      DataBinding.DataField = 'SkillTypeId'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1079#1085#1072#1090#1100
          Value = '{9672E457-4395-4AB9-B623-E4A45FEAFCD7}'
        end
        item
          Caption = #1091#1084#1077#1090#1100
          Value = '{502AF05A-6286-4CE0-BA4A-F57702D3B002}'
        end
        item
          Caption = #1074#1083#1072#1076#1077#1090#1100
          Value = '{3F17E62C-EF84-4C9D-BFD2-25B6EFCA624E}'
        end>
      TabOrder = 2
      Height = 105
      Width = 359
    end
    object cxSkill: TcxDBMemo [1]
      Left = 10
      Top = 250
      DataBinding.DataField = 'SkillText'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 4
      Height = 43
      Width = 185
    end
    object cxMin: TcxDBMemo [2]
      Left = 10
      Top = 329
      DataBinding.DataField = 'LevelMin'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 5
      Height = 42
      Width = 185
    end
    object cxMid: TcxDBMemo [3]
      Left = 10
      Top = 395
      DataBinding.DataField = 'LevelMid'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 6
      Height = 40
      Width = 185
    end
    object cxMax: TcxDBMemo [4]
      Left = 10
      Top = 459
      DataBinding.DataField = 'LevelMax'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 7
      Height = 40
      Width = 185
    end
    object cxDBSpinEdit1: TcxDBSpinEdit [5]
      Left = 46
      Top = 205
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxCode: TcxDBTextEdit [6]
      Left = 106
      Top = 28
      DataBinding.DataField = 'Competention'
      DataBinding.DataSource = dmPublic.dsDisciplineCompetention
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxName: TcxDBTextEdit [7]
      Left = 106
      Top = 55
      DataBinding.DataField = 'Description'
      DataBinding.DataSource = dmPublic.dsDisciplineCompetention
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
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
      object dxLayoutItem1: TdxLayoutItem
        CaptionOptions.Text = 'cxDBRadioGroup1'
        CaptionOptions.Visible = False
        Control = cxType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem6: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #8470' '#1087'/'#1087
        Control = cxDBSpinEdit1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1074#1099#1082
        CaptionOptions.Layout = clTop
        Control = cxSkill
        ControlOptions.ShowBorder = False
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutItem3: TdxLayoutItem
        CaptionOptions.Text = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081
        CaptionOptions.Layout = clTop
        Control = cxMin
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem4: TdxLayoutItem
        CaptionOptions.Text = #1041#1072#1079#1086#1074#1099#1081
        CaptionOptions.Layout = clTop
        Control = cxMid
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem5: TdxLayoutItem
        CaptionOptions.Text = #1055#1088#1086#1076#1074#1080#1085#1091#1090#1099#1081
        CaptionOptions.Layout = clTop
        Control = cxMax
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    Left = 424
    Top = 32
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tSkill
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
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 592
    Top = 33
  end
end
