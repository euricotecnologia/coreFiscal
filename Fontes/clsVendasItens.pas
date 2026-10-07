unit clsVendasItens;

interface


uses
  System.Classes,System.Generics.Collections,clsProdutos;

type
  TStatusItem = (siBrowse, siEdit, siInsert, siDelete);
  TVendasitens = class
 private
    Fid_item: integer;
    Fdescricao: string;
    Fqtd: extended;
    Funidade: string;
    Fpreco_unit: extended;
    Ftotal: extended;
    Fncm: string;

    Fcfop: string;
    Fcest: string;
    Fdesconto: extended;
    Facrescimo: extended;
    Ffrete: extended;
    Fseguro: extended;
    Foutros: extended;
    Fserie: integer;
    Fmodelo: integer;

    FCST                  : String;   // 1
    FCSOSN                : String;   // 2
    FALIQICMS             : extended; // 3
    FPREDICMS             : extended; // 4
    FALIQICMSST           : extended; // 5
    FPREDICMSST           : extended; // 6
    FMVA                  : extended; // 7

    FVALOR_ICMS           : extended;

    Fseq_item: integer;
    Fbase_ipi: extended;
    Fvalor_ipi: extended;
    Faliq_ipi: extended;
    Forigem: integer;
    Fstatus: TStatusItem;
    FVALOR_TOTAL: extended;
    FEAN: STRING;
    FCODIGO_ANP: string;
    function getVALOR_TOTAL: extended;
  public
    property id_item: integer read Fid_item write Fid_item;
    property descricao: string read Fdescricao write Fdescricao;
    property qtd: extended read Fqtd write Fqtd;
    property unidade: string read Funidade write Funidade;
    property preco_unit: extended read Fpreco_unit write Fpreco_unit;
    property total: extended read Ftotal write Ftotal;
    property ncm: string read Fncm write Fncm;
    property cst: string read Fcst write Fcst;
    property cfop: string read Fcfop write Fcfop;
    property csosn: string read Fcsosn write Fcsosn;
    property cest: string read Fcest write Fcest;
    property desconto: extended read Fdesconto write Fdesconto;
    property acrescimo: extended read Facrescimo write Facrescimo;
    property frete: extended read Ffrete write Ffrete;
    property seguro: extended read Fseguro write Fseguro;
    property outros: extended read Foutros write Foutros;
    property serie: integer read Fserie write Fserie;
    property modelo: integer read Fmodelo write Fmodelo;
    property PREDICMS: extended read FPREDICMS write FPREDICMS;
    property PREDICMSST: extended read FPREDICMSST write FPREDICMSST;
    property ALIQICMS: extended read FALIQICMS write FALIQICMS;
    property ALIQICMSST: extended read FALIQICMSST write FALIQICMSST;

    property VALOR_ICMS: extended read FVALOR_ICMS write FVALOR_ICMS;
    property valor_ipi: extended read Fvalor_ipi write Fvalor_ipi;
    property VALOR_TOTAL: extended read getVALOR_TOTAL write FVALOR_TOTAL;

    property mva: extended read Fmva write Fmva;
    property seq_item: integer read Fseq_item write Fseq_item;
    property base_ipi: extended read Fbase_ipi write Fbase_ipi;
    property aliq_ipi: extended read Faliq_ipi write Faliq_ipi;
    property origem: integer read Forigem write Forigem;
    property status: TStatusItem read Fstatus write Fstatus;
    property EAN: STRING read FEAN write FEAN;
    property CODIGO_ANP: string read FCODIGO_ANP write FCODIGO_ANP;
  end;

implementation

{ TVendasitens }

function TVendasitens.getVALOR_TOTAL: extended;
begin
  if FVALOR_TOTAL = 0 then
    Result :=(Self.QTD * Self.preco_unit)-Self.desconto+Self.acrescimo+Self.frete+Self.seguro+Self.outros
  else
    Result := FVALOR_TOTAL;
end;

end.
