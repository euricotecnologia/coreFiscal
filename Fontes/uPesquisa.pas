unit uPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn,
  uniEdit, uniLabel, uniRadioGroup, uniGUIBaseClasses, uniPanel, Data.DB;

type
  TfPesquisa = class(TUniForm)
    UniPanel1: TUniPanel;
    Filtro: TUniRadioGroup;
    UniLabel1: TUniLabel;
    ePesq: TUniEdit;
    bPesq: TUniBitBtn;
    DBGrid1: TUniDBGrid;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    dsGeral: TDataSource;
    filtro2: TUniRadioGroup;
    UniPanel2: TUniPanel;
    lTitulo: TUniLabel;
    procedure bPesqClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FiltroClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure ePesqKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

  var
    tabela, CampoCodigo, wCodigo,wCodigo2,wCodigo3,
    wCodigo4,wCodigo5,CampoPesquisa,parametro1: String;
    procedure Localizar(const psql : string);
  end;

function fPesquisa: TfPesquisa;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.StrUtils;

function fPesquisa: TfPesquisa;
begin
      Result := TfPesquisa(UniMainModule.GetFormInstance(TfPesquisa));
end;

{ TfPesquisa }

procedure TfPesquisa.bPesqClick(Sender: TObject);
var
  tipo, tipo2: String;
begin
      DBGrid1.Columns[0].FieldName := CampoCodigo;
      DBGrid1.Columns[1].FieldName := CampoPesquisa;

      if Filtro.ItemIndex = 0 then
        tipo := ePesq.text + '%'
      else
        tipo := '%' + ePesq.text + '%';

      tipo2 := '%' + parametro1;

      if tag = 1 then        // Veio do frame PRODUTOS busca NCM
      begin
          Localizar(ifthen(
          ePesq.Text<>'','Select * From '+tabela+' where '+
          ifthen(filtro2.ItemIndex = 0,CampoCodigo,CampoPesquisa)+
          ' like '+QuotedStr(tipo),
          'Select * From '+tabela
          ))
      end
      else if tag = 2 then   // Veio do frame PRODUTOS busca CEST
      begin
          Localizar('Select * From '+tabela+' where NCM LIKE '+QuotedStr(tipo2)+
          ' and '+ifThen(filtro2.ItemIndex = 0,CampoCodigo,'UPPER('+CampoPesquisa)+')'+
          ' like '+QuotedStr(tipo))
      end
      else if tag = 3 then  // Veio do frame Cliente busca Cidade
      begin
          Localizar('Select * From '+tabela+' where IDUF like '+QuotedStr(tipo2)+
          ' and '+CampoPesquisa+' like '+QuotedStr(tipo))
      end
      else if tag = 4 then  // Veio do frame TES busca CFOP
      begin
          Localizar('Select * From '+tabela+' where '+CampoCodigo+' like '+QuotedStr(tipo))
      end
      else if tag = 5 then // Veio do frame MDFE busca Cidades Caregamento
      begin
          Localizar('Select * From '+Tabela+' where '+CampoPesquisa+' like '+QuotedStr(tipo))
      end
      else if tag = 6 then // Veio do frame MDFE busca Cidades Caregamento
      begin
          Localizar('Select * From '+Tabela+' where '+CampoPesquisa+' like '+QuotedStr(tipo))
      end
      else if tag = 7 then  // Veio do frame MDFE busca CONDUTORES
      begin
          Localizar('Select * From ' + Tabela + ' where ' + CampoPesquisa +
          ' like ' + QuotedStr(tipo) + ' and ID_EMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente)) //  mdfe buscar condutor
      end
      else if tag = 8 then // Veio do frame MDFE buscar Veiculos
      begin
          Localizar('Select * From '+Tabela+' where '+CampoPesquisa+' like '
          +QuotedStr(tipo) + ' and ID_EMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente))
      end
      else if tag = 9 then // Veio do Compra buscar Produtos
      begin
          Localizar('Select * From '+tabela+' where '+CampoPesquisa+' like '
          +QuotedStr(tipo) + ' and IDEMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente))
      end
      else if tag = 10 then // Veio do Otica buscar Clientes
      begin
          Localizar('Select * From '+tabela+' where '+CampoPesquisa+' like '
          +QuotedStr(tipo) + ' and IDEMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente))
      end
      else if tag = 11 then // Veio do frame MDFEop busca Cidades entrega
      begin
          Localizar('Select * From '+Tabela+' where '+CampoPesquisa+' like '+QuotedStr(tipo))
      end
      else if tag = 12 then // Veio do OS buscar Clientes
      begin
          Localizar('Select * From '+tabela+' where '+CampoPesquisa+' like '
          +QuotedStr(tipo) + ' and IDEMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente))
      end
      else
         Localizar('Select * From '+tabela+' where '+CampoPesquisa+' like '+QuotedStr(tipo));
end;

procedure TfPesquisa.DBGrid1DblClick(Sender: TObject);
begin
      try
          close;
      except
          ShowMessage('Ocorreu um erro ao selecionar o item!');
          close;
      end;
end;

procedure TfPesquisa.ePesqKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
      begin
          Key := #0;
          bPesq.SetFocus;
          bPesq.Click;
      end;
end;

procedure TfPesquisa.FiltroClick(Sender: TObject);
begin
      ePesq.SetFocus;
end;

procedure TfPesquisa.Localizar(const psql : string);
begin
      with UniMainModule.QGeral do
      begin
          close;
          sql.Clear;
          sql.Add(psql);
          open;
      end;
end;

procedure TfPesquisa.UniBitBtn1Click(Sender: TObject);
begin
      try
          close;
      except
          ShowMessage('Ocorreu um erro ao selecionar o item!');
          close;
      end;
end;

procedure TfPesquisa.UniBitBtn2Click(Sender: TObject);
begin
      tag := 0;
      close;
end;

procedure TfPesquisa.UniFormClose(Sender: TObject; var Action: TCloseAction);
var
  pesq: String;
begin
      try
           if tag = 5 then      // Veio do frame MDFE busca Cidades Caregamento
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('id').Value;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('iduf').Value;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('nome').AsString;
           end
           else if tag = 6 then // Veio do frame MDFE busca Cidades Caregamento
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('id').Value;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('iduf').Value;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('nome').AsString;
           end
           else if tag = 7 then // Veio do frame MDFE busca CONDUTORES
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('codigo').AsString;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('nome').AsString;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('cpf').AsString;
           end
           else if tag = 8 then  // Veio do frame MDFE buscar Veiculos
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('codigo').AsString;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('carro').AsString;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('placa').AsString;
               wCodigo4 := UniMainModule.QGeral.fieldbyname('uf').AsString;
               wCodigo5 := UniMainModule.QGeral.fieldbyname('tara').AsString;
           end
           else if tag = 9 then // Veio do Compra buscar Produtos
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('CODIGO').AsString;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('DESCRICAO').AsString;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('EAN').AsString;
           end
           else if tag = 10 then // Veio do Otica buscar Clientes
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('IDCLIENTE').AsString;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('NomeFantasia').AsString;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('RazaoSocial').AsString;
           end
           else if tag = 11 then      // Veio do frame MDFEop busca Cidades Caregamento
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('id').Value;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('iduf').Value;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('nome').AsString;
           end
           else if tag = 10 then // Veio do OS buscar Clientes
           begin
               wCodigo  := UniMainModule.QGeral.fieldbyname('IDCLIENTE').AsString;
               wCodigo2 := UniMainModule.QGeral.fieldbyname('NomeFantasia').AsString;
               wCodigo3 := UniMainModule.QGeral.fieldbyname('RazaoSocial').AsString;
           end
           else if tag <> 0 then
           begin
               pesq    := UniMainModule.QGeral.fieldbyname(CampoCodigo).AsString;
               wCodigo := UniMainModule.QGeral.fieldbyname(CampoCodigo).Value;
           end
      except
           close;
      end;
end;

procedure TfPesquisa.UniFormShow(Sender: TObject);
begin
      UniMainModule.QGeral.close;
      ePesq.Clear;
      Filtro.ItemIndex := 0;

      if Self.tag = 1 then // Veio do frame PRODUTOS busca NCM
      begin
        tabela          := 'TBNCM';
        CampoCodigo     := 'Codigo';
        CampoPesquisa   := 'Descricao';
        lTitulo.Caption := 'Formulario para Consultas - PRODUTOS';
      end
      else if Self.tag = 2 then // Veio do frame PRODUTOS busca CEST
      begin
        tabela          := 'TBCEST';
        CampoCodigo     := 'cest';
        CampoPesquisa   := 'Descricao';
        lTitulo.Caption := 'Formulario para Consultas - CEST';

      end
      else if Self.tag = 3 then // Veio do frame Cliente busca Cidade
      begin
        tabela          := 'MUNICIPIOS';
        CampoCodigo     := 'ID';
        CampoPesquisa   := 'NOME';
        lTitulo.Caption := 'Formulario para Consultas - CIDADES';
      end
      else if Self.tag = 4 then // Veio do frame TES busca CFOP
      begin
        tabela          := 'CFOP';
        CampoCodigo     := 'CFOP';
        CampoPesquisa   := 'NATUREZA';
        lTitulo.Caption := 'Formulario para Consultas - CFOP';
      end
      else if tag = 5 then     // Veio do frame MDFE busca Cidades Caregamento
      begin
        tabela          := 'MUNICIPIOS';
        CampoCodigo     := 'ID';
        CampoPesquisa   := 'NOME';
        lTitulo.Caption := 'Formulario para Consultas - CIDADES';
      end
      else if tag = 6 then      // Veio do frame MDFE busca Cidades Caregamento
      begin
        tabela          := 'MUNICIPIOS';
        CampoCodigo     := 'ID';
        CampoPesquisa   := 'NOME';
        lTitulo.Caption := 'Formulario para Consultas - CIDADES';
      end
      else if tag = 7 then      // Veio do frame MDFE busca CONDUTORES
      begin
        tabela          := 'CONDUTORES';
        CampoCodigo     := 'CODIGO';
        CampoPesquisa   := 'NOME';
        lTitulo.Caption := 'Formulario para Consultas - CONDUTORES';
      end
      else if tag = 8 then      // Veio do frame MDFE buscar Veiculos
      begin
        tabela          := 'VEICULOS';
        CampoCodigo     := 'CODIGO';
        CampoPesquisa   := 'CARRO';
        lTitulo.Caption := 'Formulario para Consultas - VEICULOS';
      end
      else if tag = 9 then      // Veio do Compra buscar Produtos
      begin
        tabela          := 'PRODUTOS';
        CampoCodigo     := 'CODIGO';
        CampoPesquisa   := 'DESCRICAO';
        lTitulo.Caption := 'Formulario para Consultas - PRODUTOS';
      end
      else if tag = 10 then      // Veio do Otica buscar Clientes
      begin
        tabela          := 'CLIENTES';
        CampoCodigo     := 'IDCLIENTE';
        CampoPesquisa   := 'RAZAOSOCIAL';
        lTitulo.Caption := 'Formulario para Consultas - CLIENTES';
      end
      else if tag = 11 then     // Veio do frame MDFEop busca Cidades Entrega
      begin
        tabela          := 'MUNICIPIOS';
        CampoCodigo     := 'ID';
        CampoPesquisa   := 'NOME';
        lTitulo.Caption := 'Formulario para Consultas - CIDADES';
      end
      else if tag = 12 then      // Veio do OS buscar Clientes
      begin
        tabela          := 'CLIENTES';
        CampoCodigo     := 'IDCLIENTE';
        CampoPesquisa   := 'RAZAOSOCIAL';
        lTitulo.Caption := 'Formulario para Consultas - CLIENTES';
      end;

      ePesq.SetFocus;
end;

end.
