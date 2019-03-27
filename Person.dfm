inherited fmPerson: TfmPerson
  Left = 184
  Top = 239
  Width = 1317
  Height = 442
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 993
    Height = 377
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectState: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectState'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList
        Properties.Items = <
          item
            Description = #1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103
            ImageIndex = 0
            Value = True
          end
          item
            Description = #1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103
            ImageIndex = 1
            Value = False
          end>
        Properties.ShowDescriptions = False
        Width = 50
      end
      object tvMainObjectCode: TcxGridDBColumn
        DataBinding.FieldName = 'ObjectCode'
        Width = 62
      end
      object tvMainFirstName: TcxGridDBColumn
        DataBinding.FieldName = 'FirstName'
        Visible = False
      end
      object tvMainSecondName: TcxGridDBColumn
        DataBinding.FieldName = 'SecondName'
        Visible = False
      end
      object tvMainLastName: TcxGridDBColumn
        DataBinding.FieldName = 'LastName'
        Visible = False
      end
      object tvMainCathedra: TcxGridDBColumn
        DataBinding.FieldName = 'Cathedra'
        Width = 66
      end
      object tvMainAttraction: TcxGridDBColumn
        DataBinding.FieldName = 'Attraction'
        Width = 51
      end
      object tvMainDegree: TcxGridDBColumn
        DataBinding.FieldName = 'Degree'
        Width = 41
      end
      object tvMainPost: TcxGridDBColumn
        DataBinding.FieldName = 'Post'
        Width = 27
      end
      object tvMainStatus: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Width = 53
      end
      object tvMainEducation: TcxGridDBColumn
        DataBinding.FieldName = 'Education'
        Width = 71
      end
      object tvMainEducationAdd: TcxGridDBColumn
        DataBinding.FieldName = 'EducationAdd'
      end
      object tvMainExperiance: TcxGridDBColumn
        DataBinding.FieldName = 'Experiance'
      end
      object tvMainExperiancePedagogical: TcxGridDBColumn
        DataBinding.FieldName = 'ExperiancePedagogical'
        Width = 80
      end
      object tvMainIsWorker: TcxGridDBColumn
        DataBinding.FieldName = 'IsWorker'
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    Height = 377
    inherited cxSearch: TcxButton
      Top = 232
      TabOrder = 4
    end
    inherited cxClear: TcxButton
      Top = 232
      TabOrder = 5
    end
    object cxCode: TcxTextEdit [2]
      Left = 88
      Top = 28
      Properties.OnChange = cxCodePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxCode'
      Width = 121
    end
    object cxName: TcxTextEdit [3]
      Left = 88
      Top = 55
      Properties.OnChange = cxNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxName'
      Width = 121
    end
    object cxCathedra: TcxButtonEdit [4]
      Left = 88
      Top = 82
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
      TabOrder = 2
      Text = 'cxCathedra'
      Width = 121
    end
    object cxObjectState: TcxRadioGroup [5]
      Left = 10
      Top = 121
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = #1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077
          Value = 0
        end
        item
          Caption = #1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077
          Value = 1
        end
        item
          Caption = #1074#1089#1077
          Value = 2
        end>
      Properties.OnChange = cxObjectStatePropertiesChange
      ItemIndex = 0
      TabOrder = 3
      Height = 105
      Width = 185
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = #1057#1086#1082#1088'. '#1060#1048#1054':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem2: TdxLayoutItem
          CaptionOptions.Text = #1060#1072#1084#1080#1083#1080#1103':'
          Control = cxName
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem4: TdxLayoutItem
          CaptionOptions.Text = #1050#1072#1092#1077#1076#1088#1072':'
          Control = cxCathedra
          ControlOptions.ShowBorder = False
        end
      end
      object dxLeftItem3: TdxLayoutItem [1]
        CaptionOptions.Text = 'cxRadioGroup1'
        CaptionOptions.Visible = False
        Control = cxObjectState
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited cxSplitterMain: TcxSplitter
    Height = 377
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPerson
  end
  inherited Actions: TActionList
    inherited acSearch: TAction
      OnExecute = acSearchExecute
    end
    inherited acImport: TAction
      OnExecute = acImportExecute
    end
    object acSetObjectState: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1090#1072#1090#1091#1089
      OnExecute = acSetObjectStateExecute
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
      26
      0)
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarImport'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
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
          ItemName = 'dxBarGroup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarPrint'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = acSetObjectState
      Category = 0
    end
  end
end
