inherited Constant: TConstant
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1088#1072#1089#1095#1077#1090#1072
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainCode: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
        DataBinding.FieldName = 'Code'
        Styles.Content = cxStyleEven
        Width = 128
      end
      object tvMainName: TcxGridDBColumn
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
        DataBinding.FieldName = 'Name'
        Styles.Content = cxStyleEven
        Width = 151
      end
      object tvMainValue: TcxGridDBColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'Value'
        Visible = False
      end
      object tvMainValueDouble: TcxGridDBColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'ValueDouble'
        Width = 139
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tConstant
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
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxEdit'
        end>
    end
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxEdit'
        end>
    end
  end
end
