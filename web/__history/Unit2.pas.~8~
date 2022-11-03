unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IWCompEdit, IWCompListbox;

type
  Tfrmprodutos = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    BtnNovo: TIWButton;
    FDConnection1: TFDConnection;
    driver: TFDPhysMySQLDriverLink;
    query_pro: TFDQuery;
    ds_query_pro: TDataSource;
    txtbuscar: TIWEdit;
    BtnSalvar: TIWButton;
    btnBuscar: TIWButton;
    btnCancelar: TIWButton;
    btnExcluir: TIWButton;
    btnEditar: TIWButton;
    txtProduto: TIWEdit;
    txtValor: TIWEdit;
    txtId: TIWEdit;
    txtQuantidade: TIWEdit;
    CBFORNECEDOR: TIWComboBox;
    query_forn: TFDQuery;
    procedure IWTemplateProcessorHTML1UnknownTag(const AName: string;
      var VValue: string);
    procedure  AssociarCampos;
    procedure carregarCombobox;
    procedure BtnNovoAsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure Tfrmprodutos.AssociarCampos;
  begin
    query_pro.fieldByName('nome').Value:= txtProduto.Text;
    query_pro.fieldByName('quantidade').Value:= txtQuantidade.Text;
    query_pro.fieldByName('valor').Value:= txtValor.Text;
    query_pro.fieldByName('id_fornecedor').Value:= integer(CBFORNECEDOR.Items.Objects[CBFORNECEDOR.ItemIndex]);
  end;

procedure Tfrmprodutos.BtnNovoAsyncClick(Sender: TObject;
  EventParams: TStringList);
  begin
    carregarCombobox;
    query_pro.Insert;
    webapplication.CallBackResponse.AddJavaScriptToExecute('$ (''#EditaDados'').modal(''show'');');

  end;

procedure Tfrmprodutos.carregarCombobox;
  begin
    query_forn.Close;
    query_forn.Active;
    CBFORNECEDOR.Items.Clear;

    while not query_forn.Eof do
      Begin
        CBFORNECEDOR.Items.AddObject(query_forn.FieldByName('nome').AsString,tobject(query_forn.FieldByName('id').asInteger));
        query_forn.Next;
      End;
      CBFORNECEDOR.ItemIndex:= 0;
  end;

procedure Tfrmprodutos.IWTemplateProcessorHTML1UnknownTag(const AName: string;
  var VValue: string);
begin
 if AName = 'gridprodutos' then
  begin

    query_pro.Active := true;
    query_pro.Close;
    query_pro.SQL.Clear;
    query_pro.SQL.Add('SELECT p.id, p.nome, p.valor, p.quantidade, p.id_fornecedor, f.nome as id_fornecedor FROM produtos as p INNER JOIN fornecedores as f on p.id_fornecedor = f.id where p.nome LIKE :nome order by p.nome asc');
    query_pro.ParamByName('nome').Value := txtBuscar.Text + '%';
    query_pro.Open();



    while not query_pro.Eof do
    begin
      VValue := VValue + '<tr><td>' + query_pro.FieldByName('id').AsString + '</td>' +sLineBreak+
      '<td>' + query_pro.FieldByName('nome').AsString + '</td>' +sLineBreak+
       '<td>' + FormatFloat('R$ #,,,,0.00', query_pro.FieldByName('valor').Value) + '</td>' +sLineBreak+
      '<td>' + query_pro.FieldByName('quantidade').AsString + '</td>' +sLineBreak+
      '<td>' + query_pro.FieldByName('id_fornecedor').AsString + '</td>' +sLineBreak+
      '<td>' + '<button type="button" class="btn btn-info mr-2" onclick="return pegarPosicao('+query_pro.FieldByName('id').AsString+', ''alterar'')">Editar</button>' +
      '<button type="button" class="btn btn-danger" onclick="return pegarPosicao('+query_pro.FieldByName('id').AsString+', ''excluir'')">Excluir</button>' +
      '</td>' +sLineBreak+ '</tr>';

      query_pro.Next;

    end;

  end;



end;

initialization
  Tfrmprodutos.SetAsMainForm;

end.
