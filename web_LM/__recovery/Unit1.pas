unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, IWCompGrids, IWDBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmprodutos = class(TIWAppForm)
    btn_salvar: TIWButton;
    IWTemplateProcessorHTML: TIWTemplateProcessorHTML;
    grid: TIWDBGrid;
    FDConnection: TFDConnection;
    Consulta: TFDQuery;
    Ds_Consulta: TDataSource;
    Driver: TFDPhysMySQLDriverLink;
  public
  end;

implementation

{$R *.dfm}

initialization
  Tfrmprodutos.SetAsMainForm;

end.
