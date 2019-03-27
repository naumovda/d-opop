inherited fmPersonRate: TfmPersonRate
  Left = 450
  Top = 239
  Width = 877
  Height = 571
  Caption = #1050#1072#1076#1088#1086#1074#1099#1077' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Top = 233
    Width = 861
    Height = 299
    inherited tvMain: TcxGridDBTableView
      DataController.DataSource = dmPublic.dsPersonRateDetail
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainRateTotal
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainRateBase
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainRateDegree
        end
        item
          Format = '#0.00'
          Kind = skSum
          Column = tvMainRateWorker
        end>
      OptionsView.Footer = True
      object tvMainRowNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'RowNumber'
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
        Width = 93
      end
      object tvMainDiscipline: TcxGridDBColumn
        Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
        DataBinding.FieldName = 'Discipline'
        Width = 51
      end
      object tvMainPerson: TcxGridDBColumn
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        DataBinding.FieldName = 'PersonStatus'
        Width = 39
      end
      object tvMainIsBaseProfile: TcxGridDBColumn
        Caption = #1055#1088#1086#1092#1080#1083#1100'?'
        DataBinding.FieldName = 'IsBaseProfile'
      end
      object tvMainIsDegreeExist: TcxGridDBColumn
        Caption = #1057#1090#1077#1087#1077#1085#1100'?'
        DataBinding.FieldName = 'IsDegreeExist'
      end
      object tvMainIsStatusExist: TcxGridDBColumn
        Caption = #1047#1074#1072#1085#1080#1077'?'
        DataBinding.FieldName = 'IsStatusExist'
      end
      object tvMainIsWorker: TcxGridDBColumn
        Caption = #1056#1072#1073#1086#1090#1072'?'
        DataBinding.FieldName = 'IsWorker'
      end
      object tvMainHours: TcxGridDBColumn
        Caption = #1042#1089#1077#1075#1086', '#1095#1072#1089'.'
        DataBinding.FieldName = 'Hours'
        Width = 78
      end
      object tvMainHoursRate: TcxGridDBColumn
        Caption = #1053#1086#1088#1084#1072', '#1095#1072#1089'.'
        DataBinding.FieldName = 'HoursRate'
      end
      object tvMainRateTotal: TcxGridDBColumn
        Caption = #1042#1089#1077#1075#1086', '#1089#1090'.'
        DataBinding.FieldName = 'RateTotal'
      end
      object tvMainRateBase: TcxGridDBColumn
        Caption = #1055#1086' '#1087#1088#1086#1092#1080#1083#1102', '#1095#1072#1089
        DataBinding.FieldName = 'RateBase'
      end
      object tvMainRateDegree: TcxGridDBColumn
        Caption = #1055#1086' '#1089#1090#1077#1087#1077#1085#1080', '#1095#1072#1089
        DataBinding.FieldName = 'RateDegree'
      end
      object tvMainRateWorker: TcxGridDBColumn
        Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077', '#1095#1072#1089
        DataBinding.FieldName = 'RateWorker'
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 861
    Height = 199
    object cxName: TcxButtonEdit [0]
      Left = 281
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxNamePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxName'
      Width = 336
    end
    object cxDBCalcEdit1: TcxDBCalcEdit [1]
      Left = 281
      Top = 85
      DataBinding.DataField = 'BasePercent'
      DataBinding.DataSource = dmPublic.dsPersonRateGroup
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCalcEdit2: TcxDBCalcEdit [2]
      Left = 281
      Top = 112
      DataBinding.DataField = 'DegreePercent'
      DataBinding.DataSource = dmPublic.dsPersonRateGroup
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBCalcEdit3: TcxDBCalcEdit [3]
      Left = 281
      Top = 139
      DataBinding.DataField = 'WorkerPercent'
      DataBinding.DataSource = dmPublic.dsPersonRateGroup
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      object dxLayoutGroup4: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxLayoutGroup2: TdxLayoutGroup
          CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1077#1090#1072':'
          ButtonOptions.Buttons = <>
          object dxOPOP: TdxLayoutItem
            CaptionOptions.Text = #1042#1099#1073#1086#1088' '#1054#1055#1054#1055':'
            Control = cxName
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup3: TdxLayoutGroup
          CaptionOptions.Text = #1056#1072#1089#1095#1077#1090
          ButtonOptions.Buttons = <>
          object dxLayoutItem1: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = #1041#1072#1079#1086#1074#1086#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1087#1088#1086#1092#1080#1083#1102', %:'
            Control = cxDBCalcEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = #1048#1084#1077#1077#1090' '#1091#1095#1077#1085#1091#1102' '#1089#1090#1077#1087#1077#1085#1100'/'#1079#1074#1072#1085#1080#1077', %:'
            Control = cxDBCalcEdit2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem3: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = #1056#1072#1073#1086#1090#1072#1077#1090' '#1074' '#1089#1090#1086#1088#1086#1085#1085#1080#1093' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1093', %:'
            Control = cxDBCalcEdit3
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited cxSplitter: TcxSplitter
    Top = 225
    Width = 861
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 200
    inherited acPrint: TAction
      ImageIndex = 10
      OnExecute = acPrintExecute
    end
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 400
    Top = 200
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxActions: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    inherited dxBarSubItem1: TdxBarSubItem
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
          ItemName = 'dxBarButton4'
        end>
    end
  end
  inherited ImageList: TImageList
    Left = 464
    Top = 200
  end
end
