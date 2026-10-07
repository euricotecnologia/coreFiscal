unit clsProdutos;

interface

uses
  System.Generics.Collections;

type
  TProdutos = class
  private
    FOPER_ENTRADA_FORA    : Integer;
    FPESOBRUTO            : Double;
    FUN                   : String;
    FDESCRICAO_COMPLETA   : String;
    FPESOLIQ              : Double;
    FCODIGO_ANP           : String;
    FOPER_ENTRADA_DENTRO  : Integer;
    FPRECO                : Double;
    FDESCRICAO            : String;
    FCEST                 : String;
    FCODIGO               : String;
    FOPER_DEVOLUCAO_FORA  : Integer;
    FIDPRODUTO            : Integer;
    FNCM                  : String;
    FOPER_DEVOLUCAO_DENTRO: Integer;
    FOPER_SAIDA_FORA      : Integer;
    FOPER_SAIDA_DENTRO    : Integer;
    FEAN                  : String;
    FIDEMITENTE           : Integer;
    FCUSTO                : Double;

    FORIGEM               : Integer; //
    FCFOP                 : String;  //

    FCST                  : String;  // 1
    FCSOSN                : String;  // 2
    FALIQICMS             : Double;  // 3
    FPREDICMS             : Double;  // 4
    FALIQICMSST           : Double;  // 5
    FPREDICMSST           : Double;  // 6
    FMVA                  : Double;  // 7

    FIPI                  : Double;
    FCSTIPI               : String;
    FCSTPIS               : String;
    FALIQPIS              : Currency;
    FCSTCOFINS            : String;
    FALIQCOFINS           : Currency;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property IDPRODUTO            : Integer read FIDPRODUTO write FIDPRODUTO;
    property CODIGO               : String read FCODIGO write FCODIGO;
    property EAN                  : String read FEAN write FEAN;
    property DESCRICAO            : String read FDESCRICAO write FDESCRICAO;
    property DESCRICAO_COMPLETA   : String read FDESCRICAO_COMPLETA write FDESCRICAO_COMPLETA;
    property NCM                  : String read FNCM write FNCM;
    property CEST                 : String read FCEST write FCEST;
    property CUSTO                : Double read FCUSTO write FCUSTO;
    property PRECO                : Double read FPRECO write FPRECO;
    property UN                   : String read FUN write FUN;
    property CST                  : String read FCST write FCST;
    property IPI                  : Double read FIPI write FIPI;
    property PESOBRUTO            : Double read FPESOBRUTO write FPESOBRUTO;
    property PESOLIQ              : Double read FPESOLIQ write FPESOLIQ;
    property CFOP                 : String read FCFOP write FCFOP;
    property CSOSN                : String read FCSOSN write FCSOSN;
    property MVA                  : Double read FMVA write FMVA;
    property PREDICMS             : Double read FPREDICMS write FPREDICMS;
    property PREDICMSST           : Double read FPREDICMSST write FPREDICMSST;
    property ALIQICMS             : Double read FALIQICMS write FALIQICMS;
    property ALIQICMSST           : Double read FALIQICMSST write FALIQICMSST;
    property ORIGEM               : Integer read FORIGEM write FORIGEM;
    property CSTIPI               : String read FCSTIPI write FCSTIPI;
    property CSTPIS               : String read FCSTPIS write FCSTPIS;
    property CSTCOFINS            : String read FCSTCOFINS write FCSTCOFINS;
    property ALIQPIS              : Currency read FALIQPIS write FALIQPIS;
    property ALIQCOFINS           : Currency read FALIQCOFINS write FALIQCOFINS;
    property OPER_ENTRADA_DENTRO  : Integer read FOPER_ENTRADA_DENTRO write FOPER_ENTRADA_DENTRO;
    property OPER_ENTRADA_FORA    : Integer read FOPER_ENTRADA_FORA write FOPER_ENTRADA_FORA;
    property OPER_SAIDA_DENTRO    : Integer read FOPER_SAIDA_DENTRO write FOPER_SAIDA_DENTRO;
    property OPER_SAIDA_FORA      : Integer read FOPER_SAIDA_FORA write FOPER_SAIDA_FORA;
    property IDEMITENTE           : Integer read FIDEMITENTE write FIDEMITENTE;
    property OPER_DEVOLUCAO_DENTRO: Integer read FOPER_DEVOLUCAO_DENTRO write FOPER_DEVOLUCAO_DENTRO;
    property OPER_DEVOLUCAO_FORA  : Integer read FOPER_DEVOLUCAO_FORA write FOPER_DEVOLUCAO_FORA;
    property CODIGO_ANP           : String read FCODIGO_ANP write FCODIGO_ANP;
  end;

  TlistaProdutos = class(TList<TProdutos>)
  public
    function Pesquisar(const aValor, ptipo: String): TList<TProdutos>;
  end;

implementation

uses
  System.Classes, System.SysUtils;

  { TlistaProdutos }

function TlistaProdutos.Pesquisar(const aValor, ptipo: String): TList<TProdutos>;
var
  vItem: TProdutos;
begin
    result := TList<TProdutos>.Create;
    for vItem in self.List do
    begin
        if vItem = nil then
           Continue;

        if ptipo = 'C' then
        begin
            if vItem.CODIGO.Contains(aValor.ToUpper) then
            begin
                result.Add(vItem);
                Break;
            end;
        end;

        if ptipo = 'D' then
        begin
            if vItem.DESCRICAO.Contains(aValor.ToUpper) then
            begin
                result.Add(vItem);
                Break;
            end;
        end;

        if ptipo = 'B' then
        begin
            if vItem.EAN.Contains(aValor.ToUpper) then
            begin
                result.Add(vItem);
                Break;
            end;
        end;
    end;
end;

end.
