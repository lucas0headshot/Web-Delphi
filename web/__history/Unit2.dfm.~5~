object frmprodutos: Tfrmprodutos
  Left = 0
  Top = 0
  Width = 802
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
    Left = 545
    Top = 76
    Width = 120
    Height = 30
    Css = 'btn btn-success'
    Caption = 'Novo'
    Color = clBtnFace
    FriendlyName = 'btnNovo'
    OnAsyncClick = BtnNovoAsyncClick
  end
  object txtbuscar: TIWEdit
    Left = 385
    Top = 176
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'txtbuscar'
    SubmitOnAsyncEvent = True
  end
  object BtnSalvar: TIWButton
    Left = 545
    Top = 40
    Width = 120
    Height = 30
    Caption = 'Salvar'
    Color = clBtnFace
    FriendlyName = 'btnSalvar'
  end
  object btnBuscar: TIWButton
    Left = 671
    Top = 40
    Width = 120
    Height = 30
    Caption = 'Buscar'
    Color = clBtnFace
    FriendlyName = 'BtnSalvar'
  end
  object btnCancelar: TIWButton
    Left = 671
    Top = 76
    Width = 120
    Height = 30
    Caption = 'Cancelar'
    Color = clBtnFace
    FriendlyName = 'BtnSalvar'
  end
  object btnExcluir: TIWButton
    Left = 671
    Top = 112
    Width = 120
    Height = 30
    Caption = 'Excluir'
    Color = clBtnFace
    FriendlyName = 'BtnSalvar'
  end
  object btnEditar: TIWButton
    Left = 545
    Top = 112
    Width = 120
    Height = 30
    Caption = 'Editar'
    Color = clBtnFace
    FriendlyName = 'BtnSalvar'
  end
  object txtProduto: TIWEdit
    Left = 591
    Top = 176
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'txtbuscar'
    SubmitOnAsyncEvent = True
    Text = 'Produto'
  end
  object txtValor: TIWEdit
    Left = 591
    Top = 252
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'txtbuscar'
    SubmitOnAsyncEvent = True
    Text = 'Valor'
  end
  object txtId: TIWEdit
    Left = 591
    Top = 214
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'txtbuscar'
    SubmitOnAsyncEvent = True
    Text = 'Id'
  end
  object txtQuantidade: TIWEdit
    Left = 385
    Top = 214
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'txtbuscar'
    SubmitOnAsyncEvent = True
    Text = 'Quantidade'
  end
  object CBFORNECEDOR: TIWComboBox
    Left = 385
    Top = 252
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    ItemIndex = -1
    FriendlyName = 'CBFORNECEDOR'
    NoSelectionText = '-- No Selection --'
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    OnUnknownTag = IWTemplateProcessorHTML1UnknownTag
    RenderStyles = False
    Left = 56
    Top = 16
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=web_352'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 16
    Top = 264
  end
  object driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\3-52\Marcos e Lucas Ronchi\IntraWeb\Web-Delphi\web\libmySQL.d' +
      'll'
    Left = 96
    Top = 264
  end
  object query_pro: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produtos')
    Left = 120
    Top = 320
  end
  object ds_query_pro: TDataSource
    DataSet = query_pro
    Left = 32
    Top = 328
  end
  object query_forn: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from fornecedores')
    Left = 208
    Top = 320
  end
end
