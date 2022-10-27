object frmprodutos: Tfrmprodutos
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object BtnNovo: TIWButton
    Left = 24
    Top = 152
    Width = 120
    Height = 30
    Css = 'btn btn-success'
    Caption = 'Novo'
    Color = clBtnFace
    FriendlyName = 'BtnNovo'
  end
  object txtbuscar: TIWEdit
    Left = 72
    Top = 296
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'txtbuscar'
    SubmitOnAsyncEvent = True
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    OnUnknownTag = IWTemplateProcessorHTML1UnknownTag
    RenderStyles = False
    Left = 232
    Top = 144
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=web'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 72
    Top = 232
  end
  object driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ds\sistemadeclientes353\lib\libmySQL.dll'
    Left = 152
    Top = 232
  end
  object query_pro: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 232
  end
  object ds_query_pro: TDataSource
    DataSet = query_pro
    Left = 352
    Top = 232
  end
end
