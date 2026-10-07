unit SPEDTabelas;

interface
   uses Classes, SysUtils, CtrlFirebirdQuery, Controls, pcnConversao, pcnConversaoNFE, ACBrSpedFiscal;

 Type
   TAoBuscarDados = procedure(const Msg:String) of object;
   TOnProgresso = procedure(ATotal,AProgresso:Integer) of object;
   TSPEDParcicipante = Class(TCollectionItem)
   private
    FCNPJ: String;
    FCOD_PART: String;
    FBAIRRO: String;
    FNUM: String;
    FCOD_PAIS: String;
    FCOMPL: String;
    FIE: String;
    FSUFRAMA: String;
    FCOD_MUN: String;
    FENDR: String;
    FNOME: String;
    FCPF: String;
   public
     constructor Create(ACollection:TCollection);override;
     property COD_PART:String read FCOD_PART write FCOD_PART;
     property NOME:String read FNOME write FNOME;
     property COD_PAIS:String read FCOD_PAIS write FCOD_PAIS;
     property CNPJ:String read FCNPJ write FCNPJ;
     property CPF:String read FCPF write FCPF;
     property IE:String read FIE write FIE;
     property COD_MUN:String read FCOD_MUN write FCOD_MUN;
     property SUFRAMA:String read FSUFRAMA write FSUFRAMA;
     property ENDR:String read FENDR write FENDR;
     property NUM:String read FNUM write FNUM;
     property COMPL:String read FCOMPL write FCOMPL;
     property BAIRRO:String read FBAIRRO write FBAIRRO;
   End;

   TSPEDParcicipantes = Class(TCollection)
   private
    FQuery: TFirebirdQuery;
    FAoBuscarDados: TAoBuscarDados;
    function GetQuery: TFirebirdQuery;
   protected
     function GetItem(Index:Integer):TSPEDParcicipante;
     property Query:TFirebirdQuery read GetQuery write FQuery;
     procedure DoaoBuscarDados(msg:String);
   published{$IFNDEF DEBUG} inline; {$ENDIF}
   public
     function Add:TSPEDParcicipante;
     constructor Create;
     destructor Destroy;override;
     procedure GetAll(Tipo:String);
     function GetByCPFCNPJ(ACPFCNPJ:String):TSPEDParcicipante;
     function GetByCodigo(ACodigo:String):TSPEDParcicipante;
     property Items[Index: Integer]: TSPEDParcicipante read GetItem; default;
     property AoBuscarDados:TAoBuscarDados read FAoBuscarDados write FAoBuscarDados;
   End;

   TSPEDOperacao = Class(TCollectionItem)
   private
    FDescricao: String;
    FId: Integer;
    FCFOP: String;
   public
     Constructor Create(ACollection:TCollection);override;
     property Id:Integer read FId write FId;
     property Descricao:String read FDescricao write FDescricao;
     property CFOP:String read FCFOP write FCFOP;
   End;

   TSPEDOperacoes = Class(TCollection)
   private
    FQuery: TFirebirdQuery;
    FAoBuscarDados: TAoBuscarDados;
    function GetQuery: TFirebirdQuery;
   protected
     function GetItem(Index:Integer):TSPEDOperacao;
     property Query:TFirebirdQuery read GetQuery write FQuery;
     procedure DoAoBuscarDados(msg:String);
   published{$IFNDEF DEBUG} inline; {$ENDIF}
   public
     function Add:TSPEDOperacao;
     constructor Create;
     destructor Destroy;override;
     procedure GetAll;
     function GetByCFOP(ACFOP:String):TSPEDOperacao;
     property Items[Index: Integer]: TSPEDOperacao read GetItem; default;
     property AoBuscarDados:TAoBuscarDados read FAoBuscarDados write FAoBuscarDados;
   End;

   TSPEDNotaFiscal = Class(TCollectionItem)
   private
    FVL_ABAT_NT: Currency;
    FCOD_SIT: Integer;
    FCOD_MOD: String;
    FCOD_PART: String;
    FVL_ICMS_ST: Currency;
    FIND_FRT: Integer;
    FVL_SEG: Currency;
    FVL_PIS: Currency;
    FVL_MERC: Currency;
    FVL_COFINS: Currency;
    FVL_BC_ICMS_ST: Currency;
    FIND_OPER: Integer;
    FVLR_FRT: Currency;
    FIND_PGTO: Integer;
    FVL_DOC: Currency;
    FVL_DESC: Currency;
    FVL_PIS_ST: Currency;
    FVL_COFINS_ST: Currency;
    FVL_IPI: Currency;
    FCHV_NFE: String;
    FNUM_DOC: String;
    FDT_DOC: TDate;
    FDT_E_S: TDate;
    FIND_EMIT: Integer;
    FVL_ICMS: Currency;
    FSER: String;
    FVL_OUT_DA: Currency;
    FVL_BC_ICMS: Currency;
    FIdEmpresa: Integer;
    FIdNota: Integer;
    FStatus: Integer;
   public
     constructor Create(ACollection:TCollection);override;
     property IdEmpresa:Integer read FIdEmpresa write FIdEmpresa;
     property IdNota:Integer read FIdNota write FIdNota;
     property Status:Integer read FStatus write FStatus;
     property IND_OPER:Integer read FIND_OPER write FIND_OPER;
     property IND_EMIT:Integer read FIND_EMIT write FIND_EMIT;
     property COD_PART:String read FCOD_PART write FCOD_PART;
     property COD_MOD:String read FCOD_MOD write FCOD_MOD;
     property COD_SIT:Integer read FCOD_SIT write FCOD_SIT;
     property SER:String read FSER write FSER;
     property NUM_DOC:String read FNUM_DOC write FNUM_DOC;
     property CHV_NFE:String read FCHV_NFE write FCHV_NFE;
     property DT_DOC:TDate read FDT_DOC write FDT_DOC;
     property DT_E_S:TDate read FDT_E_S write FDT_E_S;
     property VL_DOC:Currency read FVL_DOC write FVL_DOC;
     property IND_PGTO:Integer read FIND_PGTO write FIND_PGTO;
     property VL_DESC:Currency read FVL_DESC write FVL_DESC;
     property VL_ABAT_NT:Currency read FVL_ABAT_NT write FVL_ABAT_NT;
     property VL_MERC:Currency read FVL_MERC write FVL_MERC;
     property IND_FRT:Integer read FIND_FRT write FIND_FRT;
     property VLR_FRT:Currency read FVLR_FRT write FVLR_FRT;
     property VL_SEG:Currency read FVL_SEG write FVL_SEG;
     property VL_OUT_DA:Currency read FVL_OUT_DA write FVL_OUT_DA;
     property VL_BC_ICMS:Currency read FVL_BC_ICMS write FVL_BC_ICMS;
     property VL_ICMS:Currency read FVL_ICMS write FVL_ICMS;
     property VL_BC_ICMS_ST:Currency read FVL_BC_ICMS_ST write FVL_BC_ICMS_ST;
     property VL_ICMS_ST:Currency read FVL_ICMS_ST write FVL_ICMS_ST;
     property VL_IPI:Currency read FVL_IPI write FVL_IPI;
     property VL_PIS:Currency read FVL_PIS write FVL_PIS;
     property VL_COFINS:Currency read FVL_COFINS write FVL_COFINS;
     property VL_PIS_ST:Currency read FVL_PIS_ST write FVL_PIS_ST;
     property VL_COFINS_ST:Currency read FVL_COFINS_ST write FVL_COFINS_ST;
   End;

   TSPEDNotasFiscais = Class(TCollection)
   private
    FQuery: TFirebirdQuery;
    FAoBuscarDados: TAoBuscarDados;
    FAoProcessar: TOnProgresso;
    function GetQuery: TFirebirdQuery;
   protected
     function GetItem(Index:Integer):TSPEDNotaFiscal;
     property Query:TFirebirdQuery read GetQuery write FQuery;
     procedure DoAoBuscarDados(msg:String);
     procedure DoAoprocessar(ATotal,AProgresso:Integer);
   published{$IFNDEF DEBUG} inline; {$ENDIF}
   public
     function Add:TSPEDNotaFiscal;
     constructor Create;
     destructor Destroy;override;
     procedure GetAll(pDataInicio,pDataFim:TDate;TipoNota:String;NotaEspecifica:String='');
     property Items[Index: Integer]: TSPEDNotaFiscal read GetItem; default;
     property AoBuscarDados:TAoBuscarDados read FAoBuscarDados write FAoBuscarDados;
     property AoProcessar:TOnProgresso read FAoProcessar write FAoProcessar;
   End;

   TSPEDProdutoNota = Class(TCollectionItem)
   private
    FCOD_ITEM: String;
    FQTD: Currency;
    FVL_PIS: Currency;
    FALIQ_ICMS: Currency;
    FVL_ITEM: Currency;
    FVL_COFINS: Currency;
    FVL_BC_PIS: Currency;
    FVL_BC_COFINS: Currency;
    FIND_MOV: Integer;
    FQUANT_BC_PIS: Currency;
    FQUANT_BC_COFINS: Currency;
    FCST_IPI: String;
    FNUM_ITEM: String;
    FVL_DESC: Currency;
    FCFOP: String;
    FUNID: String;
    FVL_IPI: Currency;
    FALIQ_PIS: Currency;
    FALIQ_COFINS: Currency;
    FVL_BC_IPI: Currency;
    FALIQ_ST: Currency;
    FDESCR_COMPL: String;
    FCOD_NAT: String;
    FCST_ICMS: String;
    FCOD_CTA: String;
    FALIQ_IPI: Currency;
    FIND_APUR: Integer;
    FVL_BC_ICMS: Currency;
    FCST_PIS: String;
    FCST_COFINS: String;
    FVL_ICMS_ST: Currency;
    FVL_ICMS: Currency;
    FCOD_ENQ: String;
    FTIPO_NOTA: String;
    FCOD_GEN: String;
    FCEST: String;
    FTipoItem: Integer;
    FCOD_NCM: String;
    FCODIGO_BARRAS: String;
    FVL_BC_ICMS_ST: Currency;
    FVL_RED_BC_ICMS: Currency;
    FPERC_RED_BC_ICMS: Currency;
    FV_OUTROS: Currency;
    FVL_FRETE: Currency;
   public
     constructor Create(ACollection:TCollection);override;
     property TIPO_NOTA:String read FTIPO_NOTA write FTIPO_NOTA;
     property NUM_ITEM:String read FNUM_ITEM write FNUM_ITEM;
     property COD_ITEM:String read FCOD_ITEM write FCOD_ITEM;
     property DESCR_COMPL:String read FDESCR_COMPL write FDESCR_COMPL;
     property QTD:Currency read FQTD write FQTD;
     property UNID:String read FUNID write FUNID;
     property VL_ITEM:Currency read FVL_ITEM write FVL_ITEM;
     property VL_DESC:Currency read FVL_DESC write FVL_DESC;
     property VL_FRETE:Currency read FVL_FRETE write FVL_FRETE;
     property IND_MOV:Integer read FIND_MOV write FIND_MOV;
     property CST_ICMS:String read FCST_ICMS write FCST_ICMS;
     property CFOP:String read FCFOP write FCFOP;
     property COD_NAT:String read FCOD_NAT write FCOD_NAT;
     property VL_BC_ICMS:Currency read FVL_BC_ICMS write FVL_BC_ICMS;
     property VL_RED_BC_ICMS:Currency read FVL_RED_BC_ICMS write FVL_RED_BC_ICMS;
     property PERC_RED_BC_ICMS:Currency read FPERC_RED_BC_ICMS write FPERC_RED_BC_ICMS;
     property ALIQ_ICMS:Currency read FALIQ_ICMS write FALIQ_ICMS;
     property VL_ICMS:Currency read FVL_ICMS write FVL_ICMS;
     property VL_BC_ICMS_ST:Currency read FVL_BC_ICMS_ST write FVL_BC_ICMS_ST;
     property ALIQ_ST:Currency read FALIQ_ST write FALIQ_ST;
     property VL_ICMS_ST:Currency read FVL_ICMS_ST write FVL_ICMS_ST;
     property IND_APUR:Integer read FIND_APUR write FIND_APUR;
     property CST_IPI:String read FCST_IPI write FCST_IPI;
     property COD_ENQ:String read FCOD_ENQ write FCOD_ENQ;
     property VL_BC_IPI:Currency read FVL_BC_IPI write FVL_BC_IPI;
     property ALIQ_IPI:Currency read FALIQ_IPI write FALIQ_IPI;
     property VL_IPI:Currency read FVL_IPI write FVL_IPI;
     property V_OUTROS:Currency read FV_OUTROS write FV_OUTROS;
     property CST_PIS:String read FCST_PIS write FCST_PIS;
     property VL_BC_PIS:Currency read FVL_BC_PIS write FVL_BC_PIS;
     property ALIQ_PIS:Currency read FALIQ_PIS write FALIQ_PIS;
     property QUANT_BC_PIS:Currency read FQUANT_BC_PIS write FQUANT_BC_PIS;
     property VL_PIS:Currency read FVL_PIS write FVL_PIS;
     property CST_COFINS:String read FCST_COFINS write FCST_COFINS;
     property VL_BC_COFINS:Currency read FVL_BC_COFINS write FVL_BC_COFINS;
     property ALIQ_COFINS:Currency read FALIQ_COFINS write FALIQ_COFINS;
     property QUANT_BC_COFINS:Currency read FQUANT_BC_COFINS write FQUANT_BC_COFINS;
     property VL_COFINS:Currency read FVL_COFINS write FVL_COFINS;
     property COD_CTA:String read FCOD_CTA write FCOD_CTA;

     {Dados do produto para registro 0200}
     property TipoItem:Integer read FTipoItem write FTipoItem;
     property COD_NCM:String read FCOD_NCM write FCOD_NCM;
     property COD_GEN:String read FCOD_GEN write FCOD_GEN;
     property CEST:String read FCEST write FCEST;
     property CODIGO_BARRAS:String read FCODIGO_BARRAS write FCODIGO_BARRAS;
   End;

   TSPEDProdutosNota = Class(TCollection)
   private
    FQuery: TFirebirdQuery;
    FAoBuscarDados: TAoBuscarDados;
    function GetQuery: TFirebirdQuery;
   protected
     function GetItem(Index:Integer):TSPEDProdutoNota;
     property Query:TFirebirdQuery read GetQuery write FQuery;
     procedure DoAoBuscarDados(msg:String);
   published{$IFNDEF DEBUG} inline; {$ENDIF}
   public
     function Add:TSPEDProdutoNota;
     constructor Create;
     destructor Destroy;override;
     procedure GetFromNota(pIdEmpresa,pIdNotaFiscal:Integer;Tipo:String);
     property Items[Index: Integer]: TSPEDProdutoNota read GetItem; default;
     property AoBuscarDados:TAoBuscarDados read FAoBuscarDados write FAoBuscarDados;
   End;

   TSPED190 = Class(TCollectionItem)
   private
    FVL_ICMS_ST: Currency;
    FALIQ_ICMS: Currency;
    FVL_BC_ICMS_ST: Currency;
    FVL_OPR: Currency;
    FVL_RED_BC: Currency;
    FCOD_OBS: String;
    FCST_ICMS: String;
    FVL_IPI: Currency;
    FVL_ICMS: Currency;
    FVL_BC_ICMS: Currency;
    FCFOP: String;
   public
     constructor Create(ACollection:TCollection);override;
     property CST_ICMS:String read FCST_ICMS write FCST_ICMS;
     property CFOP:String read FCFOP write FCFOP;
     property ALIQ_ICMS:Currency read FALIQ_ICMS write FALIQ_ICMS;
     property VL_OPR:Currency read FVL_OPR write FVL_OPR;
     property VL_BC_ICMS:Currency read FVL_BC_ICMS write FVL_BC_ICMS;
     property VL_ICMS:Currency read FVL_ICMS write FVL_ICMS;
     property VL_BC_ICMS_ST:Currency read FVL_BC_ICMS_ST write FVL_BC_ICMS_ST;
     property VL_ICMS_ST:Currency read FVL_ICMS_ST write FVL_ICMS_ST;
     property VL_RED_BC:Currency read FVL_RED_BC write FVL_RED_BC;
     property VL_IPI:Currency read FVL_IPI write FVL_IPI;
     property COD_OBS:String read FCOD_OBS write FCOD_OBS;
   End;

   TSPED190List = Class(TCollection)
   private
   protected
     function GetItem(Index:Integer):TSPED190;
   published{$IFNDEF DEBUG} inline; {$ENDIF}
   public
     function Add:TSPED190;
     function Locate(CST,CFOP:String;ALIQ_ICMS:Currency):TSPED190;
     constructor Create;
     property Items[Index: Integer]: TSPED190 read GetItem; default;
   End;

   TSPEDInventarioItem = Class(TCollectionItem)
   private
    FCOD_ITEM: String;
    FCOD_PART: String;
    FQTDE: Currency;
    FVL_ITEM: Currency;
    FTXT_COMPL: String;
    FUNID: String;
    FIND_PROP: Integer;
    FVL_UNIT: Currency;
    FQTD: Currency;
    FDESCR_COMPLETA: String;
    FCOD_BARRAS: String;
    FNCM: String;
   public
     constructor Create(ACollection:TCollection);override;
     property COD_ITEM:String read FCOD_ITEM write FCOD_ITEM;
     property UNID:String read FUNID write FUNID;
     property QTD:Currency read FQTD write FQTD;
     property VL_UNIT:Currency read FVL_UNIT write FVL_UNIT;
     property VL_ITEM:Currency read FVL_ITEM write FVL_ITEM;
     property IND_PROP:Integer read FIND_PROP write FIND_PROP;
     property COD_PART:String read FCOD_PART write FCOD_PART;
     property TXT_COMPL:String read FTXT_COMPL write FTXT_COMPL;
     property COD_CTA:String read FTXT_COMPL write FTXT_COMPL;

     property COD_BARRAS:String read FCOD_BARRAS write FCOD_BARRAS;
     property NCM:String read FNCM write FNCM;
     property DESCR_COMPLETA:String read FDESCR_COMPLETA write FDESCR_COMPLETA;
   End;

   TSPEDInventarioItems = Class(TCollection)
   private
    FQuery: TFirebirdQuery;
    FTotalInventario: Currency;
    FAoProgresso: TOnProgresso;
    FAoBuscarDados: TAoBuscarDados;
    function GetQuery: TFirebirdQuery;
   protected
     function GetItem(Index:Integer):TSPEDInventarioItem;
     property Query:TFirebirdQuery read GetQuery write FQuery;
     procedure DoAoBuscarDados(Msg:String);
     procedure DoAoProgresso(ATotal,AProgresso:Integer);
   published{$IFNDEF DEBUG} inline; {$ENDIF}
   public
     function Add:TSPEDInventarioItem;
     constructor Create;
     destructor Destroy;override;
     procedure GetAll(AData:TDate);
     property TotalInventario:Currency read FTotalInventario write FTotalInventario;
     property Items[Index: Integer]: TSPEDInventarioItem read GetItem; default;
     property AoBuscarDados:TAoBuscarDados read FAoBuscarDados write FAoBuscarDados;
     property AoProgresso:TOnProgresso read FAoProgresso write FAoProgresso;
   End;

   TTabelasSPED = Class
   private
    FParticipantes: TSPEDParcicipantes;
    FOperacoes: TSPEDOperacoes;
    FNotasFiscais: TSPEDNotasFiscais;
    FAoBuscarDados: TAoBuscarDados;
    FProdutosNotas: TSPEDProdutosNota;
    FRegistroC190: TSPED190List;
    FAoProcessar: TOnProgresso;
    FRegistroInventario: TSPEDInventarioItems;
    function GetOperacoes: TSPEDOperacoes;
    function GetParticipantes: TSPEDParcicipantes;
    function GetNotasFiscais: TSPEDNotasFiscais;
    procedure DoAoBuscarDados(msg:String);
    procedure DoAoProcessar(ATotal,AProgresso:Integer);
    function GetProdutosNotas: TSPEDProdutosNota;
    function GetRegistroC190: TSPED190List;
    function GetRegistroInventario: TSPEDInventarioItems;
   public
     destructor Destroy;override;
     procedure GetAll;
     property Participantes:TSPEDParcicipantes read GetParticipantes write FParticipantes;
     property Operacoes:TSPEDOperacoes read GetOperacoes write FOperacoes;
     property NotasFiscais:TSPEDNotasFiscais read GetNotasFiscais write FNotasFiscais;
     property ProdutosNotas:TSPEDProdutosNota read GetProdutosNotas write FProdutosNotas;
     property RegistroC190:TSPED190List read GetRegistroC190 write FRegistroC190;
     property RegistroInventario:TSPEDInventarioItems read GetRegistroInventario write FRegistroInventario;
     property AoBuscarDados:TAoBuscarDados read FAoBuscarDados write FAoBuscarDados;
     property AoProcessar:TOnProgresso read FAoProcessar write FAoProcessar;
   End;

implementation

uses CtrlUtils, SingleDesktop;

{ TPartFornecedor }

constructor TSPEDParcicipante.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);
end;

{ TSPEDParcicipantes }

function TSPEDParcicipantes.Add: TSPEDParcicipante;
begin
   Result := TSPEDParcicipante.Create(Self);
end;

constructor TSPEDParcicipantes.Create;
begin
   inherited Create(TSPEDParcicipante);
end;

destructor TSPEDParcicipantes.Destroy;
begin
  if (Assigned(FQuery)) then
     FreeAndNil(FQuery);
  inherited;
end;

procedure TSPEDParcicipantes.DoaoBuscarDados(msg: String);
begin
  if (Assigned(FAoBuscarDados)) then
     FAoBuscarDados(msg);
end;

procedure TSPEDParcicipantes.GetAll(Tipo:String);
begin
   Self.Clear;
   if (Tipo='F') then
   begin
      {Cadastro de forneceddores}
      DoaoBuscarDados('Buscando fornecedores...');     //  PAGFORNECEDOR   - FORNECEDOR
      if (Query.OpenSQLQuery(' SELECT                             '+
                             '  ''F''||FRN.idcliente AS COD_PART, '+
                             '  Upper(FRN.razaosocial) AS NOME,   '+
                             '  1058 AS COD_PAIS,                 '+
                             '  FRN.cpf_cnpj,                     '+
                             '  IIF(FRN.tipopessoa=''FISICA'',''F'',''J'') AS PESSOA, '+
                             '  FRN.rg_ie AS IE,                  '+
                             '  CID.id AS COD_MUN,                '+
                             '  '' AS SUFRAMA,                    '+
                             '  Upper(FRN.endereco) AS ENDR,      '+
                             '  FRN.nro AS NUM,                   '+
                             '  Upper(FRN.complemento) AS COMPL,  '+
                             '  FRN.bairro                        '+
                             'FROM                                '+
                             '  clientes FRN INNER JOIN municipios CID ON (CID.id=FRN.codmunicipio) '+
                             'WHERE  ' +
                             '  FRN.TIPO <> ''C''  '+
                             'ORDER BY                            '+
                             '  FRN.idcliente ')) then
      begin
         DoaoBuscarDados('Montando lista de fornecedores...');
         while not Query.Eof do
         begin
            With Self.Add do
            begin
               COD_PART := Query.FieldString('COD_PART');
               NOME     := Query.FieldString('NOME');
               COD_PAIS := Query.FieldString('COD_PAIS');
               CNPJ     := iif(Query.FieldString('PESSOA')='F','',Query.FieldString('CPFCNPJ'));
               CPF      := iif(Query.FieldString('PESSOA')='J','',Query.FieldString('CPFCNPJ'));
               IE       := Query.FieldString('IE');
               COD_MUN  := Query.FieldString('COD_MUN');
               SUFRAMA  := '';
               ENDR     := Query.FieldString('ENDR');
               NUM      := Query.FieldString('NUM');
               COMPL    := Query.FieldString('COMPL');
               BAIRRO   := Query.FieldString('Bairro');
            end;
            Query.Next;
         end;
      end;
   end;
   if (Tipo='C') then
   begin
      {Cadastro de clientes}
      DoaoBuscarDados('Buscando clientes....');
      if (Query.OpenSQLQuery('SELECT '+
                             '  ''C''||CLI.idcliente AS COD_PART,'+
                             '  Upper(CLI.nomefantasia) AS NOME,'+
                             '  1058 AS COD_PAIS,               '+
                             '  CLI.cpf_cnpj,                   '+
                             '  IIF(CLI.tipopessoa=''FISICA'',''F'',''J'') AS PESSOA,'+
                             '  CLI.rg_ie AS IE,                '+
                             '  CID.id AS COD_MUN,              '+
                             '  '' AS SUFRAMA,                  '+
                             '  Upper(CLI.endereco) AS ENDR,    '+
                             '  CLI.nro AS NUM,                 '+
                             '  Upper(CLI.bairro) as Bairro     '+
                             'FROM                              '+
                             '  clientes CLI INNER JOIN municipios CID ON (CID.id = CLI.codmunicipio)'+
                             'WHERE  ' +
                             '  CLI.TIPO <> ''F''  '+
                             'ORDER BY             '+
                             '  CLI.idcliente')) then
      begin
         DoaoBuscarDados('Montando lista de clientes...');
         while not Query.Eof do
         begin
            With Self.Add do
            begin
               COD_PART := Query.FieldString('COD_PART');
               NOME     := Query.FieldString('NOME');
               COD_PAIS := Query.FieldString('COD_PAIS');
               CNPJ     := iif(Query.FieldString('PESSOA')='F','',Query.FieldString('CPFCNPJ'));
               CPF      := iif(Query.FieldString('PESSOA')='J','',Query.FieldString('CPFCNPJ'));
               IE       := Query.FieldString('IE');
               COD_MUN  := Query.FieldString('COD_MUN');
               SUFRAMA  := '';
               ENDR     := Query.FieldString('ENDR');
               NUM      := ApenasNumeros(Query.FieldString('NUM'));
               COMPL    := '';
               BAIRRO   := Query.FieldString('Bairro');
            end;
            Query.Next;
         end;
      end;
   end;
end;

function TSPEDParcicipantes.GetByCodigo(ACodigo: String): TSPEDParcicipante;
var Loop:Integer;
begin
  Result := nil;
  for Loop := 0 to Self.Count - 1 do
  begin
     if (Trim(ACodigo)<>'') then
     begin
        if (TSPEDParcicipante(Self.Items[Loop]).COD_PART=ACodigo) then
        begin
           Result := TSPEDParcicipante(Self.Items[Loop]);
           Break;
        end;
     end;
  end;
end;

function TSPEDParcicipantes.GetByCPFCNPJ(ACPFCNPJ: String): TSPEDParcicipante;
var Loop:Integer;
begin
  Result := nil;
  for Loop := 0 to Self.Count - 1 do
  begin
     if (Trim(ACPFCNPJ)<>'') then
     begin
        if ((TSPEDParcicipante(Self.Items[Loop]).CPF=ACPFCNPJ) or (TSPEDParcicipante(Self.Items[Loop]).CNPJ=ACPFCNPJ)) then
        begin
           Result := TSPEDParcicipante(Self.Items[Loop]);
           Break;
        end;
     end;
  end;
end;

function TSPEDParcicipantes.GetItem(Index: Integer): TSPEDParcicipante;
begin
   Result := TSPEDParcicipante(inherited GetItem(Index));
end;

function TSPEDParcicipantes.GetQuery: TFirebirdQuery;
begin
   if (Not Assigned(FQuery)) then
      FQuery := TFirebirdQuery.Create;
   Result := FQuery;   
end;

{ TSPEDOperacoes }

constructor TSPEDOperacao.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);

end;

{ TSPEDOperacoes }

function TSPEDOperacoes.Add: TSPEDOperacao;
begin
  Result := TSPEDOperacao.Create(Self);
end;

constructor TSPEDOperacoes.Create;
begin
  inherited Create(TSPEDOperacao);
end;

destructor TSPEDOperacoes.Destroy;
begin
  if (Assigned(FQuery)) then
     FreeAndNil(FQuery);
  inherited;
end;

procedure TSPEDOperacoes.DoAoBuscarDados(msg: String);
begin
   if (Assigned(FAoBuscarDados)) then
      FAoBuscarDados(msg);
end;

procedure TSPEDOperacoes.GetAll;
begin
   Self.Clear;
   DoAoBuscarDados('Buscando operações...');  //   VENOPERACAO     - CFOP
   if (Query.OpenSQLQuery('SELECT                      '+
                          '  OPE.id,                   '+
                          '  OPE.cfop AS CFOP,         '+
                          '  OPE.natureza as DESCRICAO '+
                          'FROM                        '+
                          '  CFOP OPE ')) then
   begin
      DoAoBuscarDados('Montando lista de operações...');
      While not Query.Eof do
      begin
         With Self.Add do
         begin
            Id        := Query.FieldInteger('Id');
            CFOP      := Query.Fieldstring('CFOP');
            Descricao := Query.FieldString('Descricao');
         end;
         Query.Next;
      end;
   end;
end;

function TSPEDOperacoes.GetByCFOP(ACFOP: String): TSPEDOperacao;
var Loop:Integer;
begin
   Result := nil;
   for Loop := 0 to Self.Count - 1 do
   begin
      if (TSPEDOperacao(Self.Items[Loop]).CFOP=ACFOP) then
      begin
         Result := TSPEDOperacao(Self.Items[Loop]);
         Break;
      end;
   end;
end;

function TSPEDOperacoes.GetItem(Index: Integer): TSPEDOperacao;
begin
  Result := TSPEDOperacao(inherited GetItem(Index));
end;

function TSPEDOperacoes.GetQuery: TFirebirdQuery;
begin
  if (not Assigned(FQuery)) then
     FQuery := TFirebirdQuery.Create;
  Result := FQuery;
end;

{ TTabelasSPED }

destructor TTabelasSPED.Destroy;
begin
  if (Assigned(FParticipantes)) then
     FreeAndNil(FParticipantes);
  if (Assigned(FOperacoes)) then
     FreeAndNil(FOperacoes);
  if (Assigned(FNotasFiscais)) then
     FreeAndNil(FNotasFiscais);
  if (Assigned(FProdutosNotas)) then
     FreeAndNil(FProdutosNotas);
  if (Assigned(FRegistroC190)) then
     FreeAndNil(FRegistroC190);
  if (Assigned(FRegistroInventario)) then
     FreeAndNil(FRegistroInventario);
  inherited;
end;

procedure TTabelasSPED.DoAoBuscarDados(msg: String);
begin
   if (Assigned(FAoBuscarDados)) then
      FAoBuscarDados(msg);
end;

procedure TTabelasSPED.DoAoProcessar(ATotal, AProgresso: Integer);
begin
  if (Assigned(FAoProcessar)) then
     FAoProcessar(ATotal,AProgresso);
end;

procedure TTabelasSPED.GetAll;
begin
   Operacoes.GetAll;
end;

function TTabelasSPED.GetNotasFiscais: TSPEDNotasFiscais;
begin
  if (not Assigned(FNotasFiscais)) then
     FNotasFiscais := TSPEDNotasFiscais.Create;
  Result := FNotasFiscais;
  Result.AoBuscarDados := AoBuscarDados;
  Result.AoProcessar := AoProcessar;
end;

function TTabelasSPED.GetOperacoes: TSPEDOperacoes;
begin
  if (not Assigned(FOperacoes)) then
     FOperacoes := TSPEDOperacoes.Create;
  Result := FOperacoes;
  Result.AoBuscarDados := AoBuscarDados;
end;

function TTabelasSPED.GetParticipantes: TSPEDParcicipantes;
begin
  if (not Assigned(FParticipantes)) then
     FParticipantes := TSPEDParcicipantes.Create;
  Result := FParticipantes;
  Result.AoBuscarDados := AoBuscarDados;
end;

function TTabelasSPED.GetProdutosNotas: TSPEDProdutosNota;
begin
  if (not Assigned(FProdutosNotas)) then
     FProdutosNotas := TSPEDProdutosNota.Create;
  Result := FProdutosNotas;
  Result.AoBuscarDados := AoBuscarDados;
end;

function TTabelasSPED.GetRegistroC190: TSPED190List;
begin
   if (not Assigned(FRegistroC190)) then
      FRegistroC190 := TSPED190List.Create;
   Result := FRegistroC190;   
end;

function TTabelasSPED.GetRegistroInventario: TSPEDInventarioItems;
begin
  if (not Assigned(FRegistroInventario)) then
     FRegistroInventario := TSPEDInventarioItems.Create;
  Result := FRegistroInventario;
  Result.AoBuscarDados := AoBuscarDados;
  Result.AoProgresso := AoProcessar;
end;

{ TSPEDNotasFiscais }

constructor TSPEDNotaFiscal.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);
end;

{ TSPEDNotasFiscais }

function TSPEDNotasFiscais.Add: TSPEDNotaFiscal;
begin
   Result := TSPEDNotaFiscal.Create(Self);
end;

constructor TSPEDNotasFiscais.Create;
begin
   inherited Create(TSPEDNotaFiscal);
end;

destructor TSPEDNotasFiscais.Destroy;
begin
  if (Assigned(FQuery)) then
     FreeAndNil(FQuery);
  inherited;
end;

procedure TSPEDNotasFiscais.DoAoBuscarDados(msg: String);
begin
   if (Assigned(FAoBuscarDados)) then
      FAoBuscarDados(msg);
end;

procedure TSPEDNotasFiscais.DoAoprocessar(ATotal, AProgresso: Integer);
begin
   if (Assigned(FAoProcessar)) then
      FAoProcessar(ATotal,AProgresso);
end;

procedure TSPEDNotasFiscais.GetAll(pDataInicio,pDataFim:TDate;TipoNota:String;NotaEspecifica:String='');
var sNota, sSQL:String;
begin
   Self.Clear;
   if (TipoNota='C') then
   begin
      sNota := iif(NotaEspecifica='','',Format(' AND NFE.ID=%s ',[NotaEspecifica]));
      DoAoBuscarDados('Buscando notas fiscais de compra...');
      sSQL := Format('SELECT                               '+
                     '  NFE.cod_emitente,                   '+
                     '  NFE.id AS IDNota,                   '+
                     '  NFE.status_nota,                    '+
                     '  1 AS IND_OPER,                      '+
                     '  0 AS IND_EMIT,                      '+
                     '  ''F''||NFE.idfornecedor AS COD_PART,'+
                     '  NFE.modelo AS COD_MOD,              '+
                     '  0 AS COD_SIT,                       '+
                     '  NFE.serie AS SER,                   '+
                     '  NFE.id AS NUM_DOC,                  '+
                     '  NFE.chave_acesso AS CHV_NFE,        '+
                     '  NFE.dtemissao AS DT_DOC,            '+
                     '  NFE.dtemissao AS DT_E_S,            '+
                     '  NFE.total_nota AS VL_DOC,           '+
                     '  NFE.forma_pgto AS IND_PGTO,         '+
                     '  NFE.valor_desconto AS VL_DESC,      '+
                     '  0 AS VL_ABAT_NT,                    '+
                     '  NFE.total_produtos AS VL_MERC,      '+
                     '  0  AS IND_FRT,                      '+
                     '  NFE.valor_frete AS VL_FRT,          '+
                     '  NFE.valor_seguro AS VL_SEG,         '+
                     '  NFE.valor_outras_desp AS VL_OUT_DA, '+
                     '  NFE.base_icms AS VL_BC_ICMS,        '+
                     '  NFE.valor_icms AS VL_ICMS,          '+
                     '  NFE.base_icms_st AS VL_BC_ICMS_ST,  '+
                     '  NFE.valor_icms_st AS VL_ICMS_ST,    '+
                     '  NFE.valor_ipi AS VL_IPI,            '+
                     '  NFE.valor_pis AS VL_PIS,            '+
                     '  NFE.valor_cofins AS VL_COFINS,      '+
                     '  0 AS VL_PIS_ST,                     '+
                     '  0 AS VL_COFINS_ST                   '+
                     'FROM                                  '+
                     '  entrada_cab NFE INNER JOIN clientes CLI ON (CLI.idcliente=NFE.idfornecedor)'+
                     'WHERE                                 '+
                     '  NFE.serie < 4 AND                   '+  /// pq serie < 4
                     '  NFE.tiponota < 2  AND               '+  /// o que é esse tipo < 2
                     '  NFE.DATAENTRADA BETWEEN %s AND %s AND'+
                     '  NFE.chave_acesso <> '''' %s ',
                     [DataSQL(pDataInicio),DataSQL(pDataFim),sNota]);
   end
   else
   begin
      DoAoBuscarDados('Buscando notas fiscais de venda...');
      sNota := iif(NotaEspecifica='','',Format(' AND NFE.id=%s ',[NotaEspecifica]));
      sSQL := Format(' SELECT                              '+
                     '  NFE.id,                            '+
                     '  NFE.id AS IDNota,                  '+
                     '  NFE.status_nota,                   '+
                     '  1 AS IND_OPER,                     '+
                     '  0 AS IND_EMIT,                     '+
                     '  ''C''||NFE.idcliente AS COD_PART,  '+
                     '  NFE.modelo AS COD_MOD,             '+
                     '  0 AS COD_SIT,                      '+
                     '  NFE.serie AS SER,                  '+
                     '  NFE.id AS NUM_DOC,                 '+
                     '  NFE.chave_acesso AS CHV_NFE,       '+
                     '  NFE.dtemissao AS DT_DOC,           '+
                     '  NFE.dtemissao AS DT_E_S,           '+
                     '  NFE.total_nota AS VL_DOC,          '+
                     '  NFE.forma_pgto AS IND_PGTO,        '+
                     '  NFE.valor_desconto AS VL_DESC,     '+
                     '  0 AS VL_ABAT_NT,                   '+
                     '  NFE.total_produtos AS VL_MERC,     '+
                     '  0  AS IND_FRT,                     '+
                     '  NFE.valor_frete AS VL_FRT,         '+
                     '  NFE.valor_seguro AS VL_SEG,        '+
                     '  NFE.valor_outras_desp AS VL_OUT_DA,'+
                     '  NFE.base_icms AS VL_BC_ICMS,       '+
                     '  NFE.valor_icms AS VL_ICMS,         '+
                     '  NFE.base_icms_st AS VL_BC_ICMS_ST, '+
                     '  NFE.valor_icms_st AS VL_ICMS_ST,   '+
                     '  NFE.valor_ipi AS VL_IPI,           '+
                     '  0 NFE.vpis AS VL_PIS,              '+
                     '  0 AS VL_COFINS,                    '+
                     '  0 AS VL_PIS_ST,                    '+
                     '  0 AS VL_COFINS_ST                  '+
                     'FROM                                 '+
                     '  notas_cab NFE INNER JOIN clientes CLI ON (CLI.idcliente=NFE.idcliente)'+
                     'WHERE                                '+
                     '  NFE.status_nota IN(3,4,5)          '+   // o que é isso
                     'AND  NFE.cod_emitente= %d AND        '+
                     '  NFE.dtemissao BETWEEN %s AND %s %s',
                     [TDesktop.DadosEmpresa.Id,DataSQL(pDataInicio),DataSQL(pDataFim), sNota]);
   end;
   if (Query.OpenSQLQuery(sSQL)) then
   begin
      Self.Clear;
      DoAoBuscarDados('Montando lista de notas fiscais...');
      while not Query.Eof do
      begin
         With Self.Add do
         begin
            IdEmpresa     := Query.FieldInteger('IdEmpresa');
            IdNota        := Query.FieldInteger('IdNota');
            Status        := Query.FieldInteger('Status');
            IND_OPER      := Query.FieldInteger('IND_OPER');
            IND_EMIT      := Query.FieldInteger('IND_EMIT');
            COD_PART      := Query.FieldString('COD_PART');
            COD_MOD       := Query.FieldString('COD_MOD');
            COD_SIT       := Query.FieldInteger('COD_SIT');
            SER           := Query.FieldString('SER');
            NUM_DOC       := Query.FieldString('NUM_DOC');
            CHV_NFE       := Query.FieldString('CHV_NFE');
            DT_DOC        := Query.FieldDateTime('DT_DOC');
            DT_E_S        := Query.FieldDateTime('DT_E_S');
            VL_DOC        := Query.FieldCurrency('VL_DOC');
            IND_PGTO      := Query.FieldInteger('IND_PGTO');
            VL_DESC       := Query.FieldCurrency('VL_DESC');
            VL_ABAT_NT    := Query.FieldCurrency('VL_ABAT_NT');
            VL_MERC       := Query.FieldCurrency('VL_MERC');
            IND_FRT       := Query.FieldInteger('IND_FRT');
            VLR_FRT       := Query.FieldCurrency('VL_FRT');
            VL_SEG        := Query.FieldCurrency('VL_SEG');
            VL_OUT_DA     := Query.FieldCurrency('VL_OUT_DA');
            VL_BC_ICMS    := Query.FieldCurrency('VL_BC_ICMS');
            VL_ICMS       := Query.FieldCurrency('VL_ICMS');
            VL_BC_ICMS_ST := Query.FieldCurrency('VL_BC_ICMS_ST');
            VL_ICMS_ST    := Query.FieldCurrency('VL_ICMS_ST');
            VL_IPI        := Query.FieldCurrency('VL_IPI');
            VL_PIS        := Query.FieldCurrency('VL_PIS');
            VL_COFINS     := Query.FieldCurrency('VL_COFINS');
            VL_PIS_ST     := Query.FieldCurrency('VL_PIS_ST');
            VL_COFINS_ST  := Query.FieldCurrency('VL_COFINS_ST');
         end;
         Query.Next;
      end;
   end;
end;

function TSPEDNotasFiscais.GetItem(Index: Integer): TSPEDNotaFiscal;
begin
   Result := TSPEDNotaFiscal(inherited GetItem(Index));
end;

function TSPEDNotasFiscais.GetQuery: TFirebirdQuery;
begin
   if (not Assigned(FQuery)) then
      FQuery := TFirebirdQuery.Create;
   Result := FQuery;
end;

{ TSPEDProdutoNota }

constructor TSPEDProdutoNota.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);

end;

{ TSPEDProdutosNota }

function TSPEDProdutosNota.Add: TSPEDProdutoNota;
begin
   Result := TSPEDProdutoNota.Create(Self);
end;

constructor TSPEDProdutosNota.Create;
begin
  inherited Create(TSPEDProdutoNota);
end;

destructor TSPEDProdutosNota.Destroy;
begin
  if (Assigned(FQuery)) then
    FreeAndNil(FQuery);
  inherited;
end;

procedure TSPEDProdutosNota.DoAoBuscarDados(msg: String);
begin
   if (Assigned(FAoBuscarDados)) then
      FAoBuscarDados(msg);
end;

procedure TSPEDProdutosNota.GetFromNota(pIdEmpresa, pIdNotaFiscal: Integer;Tipo:String);
var InternalProd:TSPEDProdutoNota;
    Aux:Currency;
    sSQL:String;
begin
   Self.Clear;
   DoAoBuscarDados(Format('Buscando produtos da nota fiscal %d ...',[pIdNotaFiscal]));

   if (Tipo='E') then
   begin
      sSQL := Format('SELECT ' +
                     '  ''E'' AS TIPO_NOTA, ' +
                     '  NFP.IdNotaFiscal, ' +
                     '  NFP.ID AS NUM_ITEM, ' +
                     '  NFP.IDPRODUTO AS COD_ITEM, ' +
                     '  Upper(NFP.DESCRICAO) AS DESCR_COMPL, ' +
                     '  NFP.QUANTIDADE AS QTD, ' +
                     '  Upper(NFP.EMBALAGEM) AS UNID, ' +
                     '  NFP.VALORTOTAL AS VL_ITEM, ' +
                     '  NFP.VALORDESCONTO AS VL_DESC, ' +
                     '  NFP.VALORFRETE AS VL_FRETE, '  +
                     '  NFP.VALOROUTROS AS V_OUTROS, ' +
                     '  0 AS IND_MOV, ' +
                     '  NFP.CST AS CST_ICMS, ' +
                     '  NFP.CFOP, ' +
                     '  NFP.CFOP COD_NAT, ' +
                     '  NFP.BASECALCULOICMS AS VL_BC_ICMS, ' +
                     '  NFP.PERCREDBCICMS AS PERC_RED_BC_ICMS,  ' +
                     '  NFP.PERCICMS AS ALIQ_ICMS, ' +
                     '  NFP.VALORICMS AS VL_ICMS, ' +
                     '  NFP.basecalculoicmsst AS VL_BC_ICMS_ST, ' +
                     '  NFP.PERCICMSST AS ALIQ_ST, ' +
                     '  NFP.VALORICMSST AS VL_ICMS_ST, ' +
                     '  0 AS IND_APUR, ' +
                     '                   ' +
                     '  NFP.IPICST AS CST_IPI, ' +
                     '  NFP.ipiclenq AS COD_ENQ, ' +
                     '  NFP.IPIBASECALCULO AS VL_BC_IPI, ' +
                     '  NFP.IPIPERCIPI AS ALIQ_IPI, ' +
                     '  NFP.ipivaloripi AS VL_IPI, ' +
                     '                         ' +
                     '  NFP.PISCST AS CST_PIS, ' +
                     '  NFP.pisvbc AS VL_BC_PIS, ' +
                     '  NFP.pisperc AS ALIQ_PIS, ' +
                     '  NFP.pisaliqprod AS QUANT_BC_PIS, ' +
                     '  NFP.pisvalor AS VL_PIS, ' +
                     '                             ' +
                     '  NFP.cofinscst AS CST_COFINS, ' +
                     '  NFP.cofinsbasecalculo AS VL_BC_COFINS, ' +
                     '  NFP.cofinsperc AS ALIQ_COFINS, ' +
                     '  NFP.cofinsaliqprod AS QUANT_BC_COFINS, ' +
                     '  NFP.cofinsvalor AS VL_COFINS, ' +
                     '                         ' +
                     '  '''' AS COD_CTA, ' +
                     '  PRO.TIPOITEM, ' +
                     '  PRO.IDGENERO AS COD_GEN, ' +
                     '  PRO.NCM AS COD_NCM, ' +
                     '  PRO.CEST, ' +
                     '  NFP.CODIGOBARRAS '  +
                     'FROM ' +
                     '  ESTNFEPRODUTOS NFP LEFT OUTER JOIN ESTPRODUTOS PRO ON (PRO.ID=NFP.IDPRODUTO) ' +
                     '                     INNER JOIN ESTNFE NFE ON (NFE.IDEMPRESA=NFP.IDEMPRESA AND ' +
                     '                                               NFE.ID=NFP.IDNOTAFISCAL) ' +
                     '                     INNER JOIN VENOPERACAO OPE ON (OPE.IDEMPRESA=NFE.IDEMPRESA AND ' +
                     '                                                    OPE.ID=NFE.IDOPERACAO) ' +
                     'WHERE ' +
                     '  NFP.IDEMPRESA=%d AND  ' +
                     '  NFP.IDNOTAFISCAL = %d AND  ' +
                     '  NFE.STATUS=3 ' +
                     'ORDER BY           ' +
                     '  NFE.IDEMPRESA,NFE.ID,NFP.ID ',
                     [pIdEmpresa,pIdNotaFiscal]);
   end
   else
   begin
      sSQL := Format('SELECT  ' +
                     '  ''S'' AS TIPO_NOTA,  ' +
                     '  NFP.IdNfce As IdNotaFiscal,  ' +
                     '  NFP.ID AS NUM_ITEM,  ' +
                     '  NFP.Codigo AS COD_ITEM,  ' +
                     '  Upper(NFP.DESCRICAO) AS DESCR_COMPL,  ' +
                     '  NFP.qtrib AS QTD,  ' +
                     '  Upper(NFP.untrib) AS UNID,  ' +
                     '  NFP.totaltrib AS VL_ITEM,  ' +
                     '  NFP.valordesconto AS VL_DESC,  ' +
                     '  NFP.valorfrete AS VL_FRETE,  ' +
                     '  NFP.VALOROUTRO AS V_OUTROS, ' +                     
                     '  0 AS IND_MOV,  ' +
                     '  NFP.CST AS CST_ICMS,  ' +
                     '  NFP.CFOP,  ' +
                     '  NFP.CFOP COD_NAT,  ' +
                     '  NFP.vbc AS VL_BC_ICMS,  ' +
                     '  NFP.predbc AS PERC_RED_BC_ICMS,  ' +
                     '  NFP.picms AS ALIQ_ICMS,  ' +
                     '  NFP.vicms AS VL_ICMS,  ' +
                     '  NFP.vbcst AS VL_BC_ICMS_ST,  ' +
                     '  NFP.picmsst AS ALIQ_ST,  ' +
                     '  NFP.vicmsst AS VL_ICMS_ST,  ' +
                     '  0 AS IND_APUR,  ' +
                     '  0 AS VL_BC_IPI,  ' +
                     '  0 AS ALIQ_IPI,  ' +
                     '  0 AS VL_IPI,  ' +
                     '  NFP.cstpis AS CST_PIS,  ' +
                     '  0 AS VL_BC_PIS,  ' +
                     '  0 AS ALIQ_PIS,  ' +
                     '  0 AS QUANT_BC_PIS,  ' +
                     '  0 AS VL_PIS,  ' +
                     '  nfp.cstcofins AS CST_COFINS,  ' +
                     '  0 AS VL_BC_COFINS,  ' +
                     '  0 AS ALIQ_COFINS,  ' +
                     '  0 AS QUANT_BC_COFINS,  ' +
                     '  0 AS VL_COFINS,  ' +
                     '  PRO.TIPOITEM,  ' +
                     '  PRO.IDGENERO AS COD_GEN,  ' +
                     '  PRO.NCM AS COD_NCM,  ' +
                     '  PRO.CEST,  ' +
                     '  NFP.EAntrib as CODIGOBARRAS  ' +
                     'FROM    ' +
                     '  VENNFCEPRODUTOS NFP LEFT OUTER JOIN ESTPRODUTOS PRO ON (PRO.ID=NFP.CODIGO)  ' +
                     '                          INNER JOIN VENNFCE NFE ON (NFE.IDEMPRESA=NFP.IDEMPRESA AND  ' +
                     '                                                    NFE.IDNFE=NFP.IDNFCE)  ' +
                     '                          INNER JOIN VENOPERACAO OPE ON (OPE.IDEMPRESA=NFE.IDEMPRESA AND  ' +
                     '                                                         OPE.ID=NFE.IDOPERACAO)  ' +
                     'WHERE  ' +
                     '   NFP.IDEMPRESA=%d AND   ' +
                     '   NFP.idnfce = %d AND  ' +
                     '   NFE.STATUS=3  ' +
                     'ORDER BY  ' +
                     '   NFE.IDEMPRESA,NFE.idnfe,NFP.ID ',
                     [TDesktop.DadosEmpresa.Id,pIdNotaFiscal]);

   end;
   if (Query.OpenSQLQuery(sSQL)) then
   begin
      DoAoBuscarDados(Format('Listando produtos da nota %d... ',[pIdNotaFiscal]));
      while not Query.eof do
      begin
         InternalProd := Self.Add;
         InternalProd.TIPO_NOTA     := Query.FieldString('Tipo_nota');
         InternalProd.NUM_ITEM      := Query.FieldString('NUM_ITEM');
         InternalProd.COD_ITEM      := Query.FieldString('COD_ITEM');
         InternalProd.DESCR_COMPL   := Query.FieldString('DESCR_COMPL');
         InternalProd.QTD           := Query.FieldCurrency('QTD');
         InternalProd.UNID          := Query.FieldString('UNID');
         InternalProd.VL_ITEM       := Query.FieldCurrency('VL_ITEM');
         InternalProd.VL_DESC       := Query.FieldCurrency('VL_DESC');
         InternalProd.VL_FRETE      := Query.FieldCurrency('VL_FRETE');
         InternalProd.V_OUTROS      := Query.FieldCurrency('V_OUTROS');
         InternalProd.IND_MOV       := Query.FieldInteger('IND_MOV');
         InternalProd.CST_ICMS      := Query.FieldString('CST_ICMS');
         InternalProd.CFOP          := Query.FieldString('CFOP');
         InternalProd.COD_NAT       := Query.FieldString('COD_NAT');
         InternalProd.VL_BC_ICMS    := Query.FieldCurrency('VL_BC_ICMS');
         InternalProd.PERC_RED_BC_ICMS := Query.FieldCurrency('PERC_RED_BC_ICMS');
         InternalProd.ALIQ_ICMS     := Query.FieldCurrency('ALIQ_ICMS');
         InternalProd.VL_ICMS       := Query.FieldCurrency('VL_ICMS');
         InternalProd.VL_BC_ICMS_ST := Query.FieldCurrency('VL_BC_ICMS_ST');
         InternalProd.ALIQ_ST       := Query.FieldCurrency('ALIQ_ST');
         InternalProd.VL_ICMS_ST    := Query.FieldCurrency('VL_ICMS_ST');
         InternalProd.IND_APUR      := Query.FieldInteger('IND_APUR');
         InternalProd.CST_IPI       := '99';
         InternalProd.COD_ENQ       := '';
         InternalProd.VL_BC_IPI     := Query.FieldCurrency('VL_BC_IPI');
         InternalProd.ALIQ_IPI      := Query.FieldCurrency('ALIQ_IPI');
         InternalProd.VL_IPI        := Query.FieldCurrency('VL_IPI');
         InternalProd.CST_PIS       := '99';
         InternalProd.VL_BC_PIS     := Query.FieldCurrency('VL_BC_PIS');
         InternalProd.ALIQ_PIS      := Query.FieldCurrency('ALIQ_PIS');
         InternalProd.QUANT_BC_PIS  := Query.FieldCurrency('QUANT_BC_PIS');
         InternalProd.VL_PIS        := Query.FieldCurrency('VL_PIS');
         InternalProd.CST_COFINS    := '99';
         InternalProd.VL_BC_COFINS  := Query.FieldCurrency('VL_BC_COFINS');
         InternalProd.ALIQ_COFINS   := Query.FieldCurrency('ALIQ_COFINS');
         InternalProd.QUANT_BC_COFINS := Query.FieldCurrency('QUANT_BC_COFINS');
         InternalProd.ALIQ_COFINS   := Query.FieldCurrency('ALIQ_COFINS');
         InternalProd.VL_COFINS     := Query.FieldCurrency('VL_COFINS');
         InternalProd.COD_CTA       := '';
         {Dados especificos para o registro 0200}
         InternalProd.TipoItem      := Query.FieldInteger('TIPOITEM');
         InternalProd.COD_GEN       := Query.FieldString('COD_GEN');
         InternalProd.COD_NCM       := Query.FieldString('COD_NCM');
         InternalProd.CEST          := Query.FieldString('CEST');
         InternalProd.CODIGO_BARRAS := Query.FieldString('CODIGOBARRAS');
         if (StrToint(CSTICMSToStr(TpcnCSTIcms(StrToInt(InternalProd.CST_ICMS)))) in [20,70]) then
         begin
            {Em algumas notas fiscais o Percentual de Reducao da Base de Calculo do ICMS vem zerado (Putz!), dai eu tenho que arrumar aqui :( }
            if (InternalProd.PERC_RED_BC_ICMS=0) then
            begin
               Aux := InternalProd.VL_ITEM - InternalProd.VL_BC_ICMS;
               if (Aux>0) then
                  InternalProd.PERC_RED_BC_ICMS := ((Aux / InternalProd.VL_BC_ICMS)*100);
            end;
            InternalProd.VL_RED_BC_ICMS := (InternalProd.VL_ITEM-InternalProd.VL_BC_ICMS);
         end;
         Query.Next;
      end;
   end;
end;

function TSPEDProdutosNota.GetItem(Index: Integer): TSPEDProdutoNota;
begin
   Result := TSPEDProdutoNota(inherited GetItem(Index));
end;

function TSPEDProdutosNota.GetQuery: TFirebirdQuery;
begin
   if (not Assigned(FQuery)) then
     FQuery := TFirebirdQuery.Create;
   Result := FQuery;
end;

{ TSPED190 }

constructor TSPED190.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);
end;

{ TSPED190List }

function TSPED190List.Add: TSPED190;
begin
   Result := TSPED190.Create(Self);
end;

constructor TSPED190List.Create;
begin
   inherited Create(TSPED190);
end;

function TSPED190List.GetItem(Index: Integer): TSPED190;
begin
   Result := TSPED190(inherited GetItem(Index));
end;

function TSPED190List.Locate(CST, CFOP: String; ALIQ_ICMS: Currency): TSPED190;
var Loop:Integer;
    AIte:TSPED190;
begin
   Result := nil;
   for Loop := 0 to Self.Count - 1 do
   begin
      AIte := TSPED190(Self.Items[Loop]);
      if ((AIte.CST_ICMS=CST) and (AIte.CFOP=CFOP) and (AIte.ALIQ_ICMS=ALIQ_ICMS)) then
      begin
         Result := AIte;
         Break;
      end;
   end;
end;

{ TSPEDInventarioItem }

constructor TSPEDInventarioItem.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);

end;

{ TSPEDInventarioItems }

function TSPEDInventarioItems.Add: TSPEDInventarioItem;
begin
  Result := TSPEDInventarioItem.Create(Self);
end;

constructor TSPEDInventarioItems.Create;
begin
  inherited Create(TSPEDInventarioItem);
end;

destructor TSPEDInventarioItems.Destroy;
begin
  if (Assigned(FQuery)) then
     FreeAndNil(FQuery);
  inherited;
end;

procedure TSPEDInventarioItems.DoAoBuscarDados(Msg: String);
begin
   if (Assigned(FAoBuscarDados)) then
     FAoBuscarDados(Msg);
end;

procedure TSPEDInventarioItems.DoAoProgresso(ATotal, AProgresso: Integer);
begin
  if (Assigned(FAoProgresso)) then
     FAoProgresso(ATotal,AProgresso);
end;

procedure TSPEDInventarioItems.GetAll(AData: TDate);
var Reg:TSPEDInventarioItem;
begin
   Self.Clear;
   Self.TotalInventario := 0;
   DoAoBuscarDados('Buscando registro de inventário...');
   if (Query.OpenSQLQuery(Format('SELECT * FROM InventarioPorData(%s)',[DataSQL(AData)]))) then
   begin
      while not Query.eof do
      begin
         DoAoBuscarDados('Processando inventário...');
         Reg := Self.Add;
         Reg.COD_ITEM       := ZerosLeft(Query.FieldInteger('Idproduto'),6);
         Reg.DESCR_COMPLETA := Query.FieldString('Descricao');
         Reg.UNID           := Query.FieldString('Un');
         Reg.QTD            := Query.FieldCurrency('QtdeEstoque');
         Reg.VL_UNIT        := Query.FieldCurrency('ValorUnitario');
         Reg.VL_ITEM        := Query.FieldCurrency('ValorTotal');
         Reg.IND_PROP       := 0;
         Reg.COD_PART       := '';
         Reg.TXT_COMPL      := '';
         Reg.COD_CTA        := '';
         TotalInventario    := TotalInventario + Reg.VL_ITEM;
         Query.Next;
      end;
   end;
   
end;

function TSPEDInventarioItems.GetItem(Index: Integer): TSPEDInventarioItem;
begin
  Result := TSPEDInventarioItem(inherited GetItem(Index));
end;

function TSPEDInventarioItems.GetQuery: TFirebirdQuery;
begin
  if (not Assigned(FQuery)) then
     FQuery := TFirebirdQuery.Create;
  Result := FQuery;
end;

end.

