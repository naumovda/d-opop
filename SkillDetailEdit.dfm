inherited fmSkillDetailEdit: TfmSkillDetailEdit
  Left = 395
  Top = 175
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1074#1099#1082#1072' '
  ClientHeight = 522
  ClientWidth = 590
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 489
    Width = 590
    Height = 7
    ClientRectBottom = 10
    ClientRectRight = 586
    ClientRectTop = 10
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 582
      end
      inherited Grid: TcxGrid
        Width = 582
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 590
    Height = 489
    object cxCode: TcxDBSpinEdit [0]
      Left = 152
      Top = 121
      DataBinding.DataField = 'Code'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxSkill: TcxDBMemo [1]
      Left = 10
      Top = 170
      DataBinding.DataField = 'SkillText'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 3
      Height = 54
      Width = 185
    end
    object cxMin: TcxDBMemo [2]
      Left = 10
      Top = 260
      DataBinding.DataField = 'LevelMin'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 4
      Height = 54
      Width = 185
    end
    object cxMid: TcxDBMemo [3]
      Left = 10
      Top = 338
      DataBinding.DataField = 'LevelMid'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 5
      Height = 58
      Width = 185
    end
    object cxMax: TcxDBMemo [4]
      Left = 10
      Top = 420
      DataBinding.DataField = 'LevelMax'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 6
      Height = 58
      Width = 185
    end
    object cxType: TcxDBRadioGroup [5]
      Left = 10
      Top = 10
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
      TabOrder = 0
      OnClick = cxTypeClick
      Height = 105
      Width = 663
    end
    object cxSetCode: TcxButton [6]
      Left = 10
      Top = 121
      Width = 109
      Height = 25
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1086#1076
      TabOrder = 1
      OnClick = cxSetCodeClick
    end
    inherited dxLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutItem6: TdxLayoutItem
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = cxType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem7: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxSetCode
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1050#1086#1076':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1074#1099#1082':'
        CaptionOptions.Layout = clTop
        Control = cxSkill
        ControlOptions.ShowBorder = False
      end
      object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutItem3: TdxLayoutItem
        CaptionOptions.Text = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081' '#1091#1088#1086#1074#1077#1085#1100':'
        CaptionOptions.Layout = clTop
        Control = cxMin
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem4: TdxLayoutItem
        CaptionOptions.Text = #1041#1072#1079#1086#1074#1099#1081' '#1091#1088#1086#1074#1077#1085#1100':'
        CaptionOptions.Layout = clTop
        Control = cxMid
        ControlOptions.ShowBorder = False
      end
      object dxLayoutItem5: TdxLayoutItem
        CaptionOptions.Text = #1055#1088#1086#1076#1074#1080#1085#1091#1090#1099#1081' '#1091#1088#1086#1074#1077#1085#1100':'
        CaptionOptions.Layout = clTop
        Control = cxMax
        ControlOptions.ShowBorder = False
      end
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
    end
  end
  inherited DS: TDataSource
    Left = 384
    Top = 360
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tSkill
    Left = 416
    Top = 360
  end
  inherited ActionList: TActionList
    Left = 448
    Top = 360
  end
  inherited ImageList: TImageList
    Left = 352
    Top = 362
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 480
    Top = 360
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
    Left = 512
    Top = 360
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 207
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 552
    Top = 361
  end
end
