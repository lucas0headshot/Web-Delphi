object frmprodutos: Tfrmprodutos
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object btn_salvar: TIWButton
    Left = 408
    Top = 256
    Width = 120
    Height = 30
    Css = 'btn btn-danger'
    Caption = 'Salvar'
    Color = clBtnFace
    FriendlyName = 'btn_salvar'
  end
  object grid: TIWDBGrid
    Left = 40
    Top = 200
    Width = 300
    Height = 150
    Css = 'table table-striped'
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'Pesquisa de produtos'
    CellPadding = 0
    CellSpacing = 0
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = Ds_Consulta
    FooterRowCount = 0
    FriendlyName = 'grid'
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clNone
    RowCurrentColor = clNone
  end
  object IWTemplateProcessorHTML: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    RenderStyles = False
    Left = 456
    Top = 304
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=web_Delphi'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 408
    Top = 16
  end
  object Consulta: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from Produto')
    Left = 488
    Top = 16
  end
  object Ds_Consulta: TDataSource
    DataSet = Consulta
    Left = 488
    Top = 64
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\3-52\Marcos e Lucas Ronchi\IntraWeb\Web-Delphi\web_LM\libmySQ' +
      'L.dll'
    Left = 440
    Top = 160
  end
end
