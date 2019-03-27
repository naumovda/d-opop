inherited Log: TLog
  Left = 333
  Top = 253
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1088#1072#1089#1095#1077#1090#1072
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLog: TcxMemo [0]
    Left = 0
    Top = 42
    Align = alClient
    Lines.Strings = (
      'cxLog')
    ParentFont = False
    Properties.ScrollBars = ssVertical
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Courier'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Height = 293
    Width = 716
  end
  inherited ActionList: TActionList
    inherited acPrint: TAction
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
    DockControlHeights = (
      0
      0
      42
      0)
    inherited dxActions: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cxLogSelect'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
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
    inherited dxBarButton2: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
    end
    object cxLogSelect: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Columns = 2
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1088#1072#1089#1095#1077#1090' '#1077#1089#1090#1077#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1080#1079#1083#1091#1095#1077#1085#1080#1103
          Value = 0
        end
        item
          Caption = #1088#1072#1089#1095#1077#1090' '#1088#1072#1089#1089#1077#1103#1085#1085#1086#1075#1086' '#1080#1079#1083#1091#1095#1077#1085#1080#1103
          Value = 1
        end
        item
          Caption = #1088#1072#1089#1095#1077#1090' '#1087#1086#1083#1103#1088#1080#1079#1072#1094#1080#1080
          Value = 2
        end
        item
          Caption = #1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
          Value = 3
        end>
      Properties.OnEditValueChanged = cxLogSelectPropertiesEditValueChanged
      InternalEditValue = -1
    end
  end
end
