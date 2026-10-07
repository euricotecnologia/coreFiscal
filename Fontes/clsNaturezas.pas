unit clsNaturezas;

interface

uses
  System.Generics.Collections, Data.DB;

type
  TNaturezas = class
  private
    FDESTACA_ICMS  : Integer;
    FALIQIPI       : Currency;
    FMVAICMSST     : Currency;
    FALIQICMSST    : Currency;
    FREDBCICMS     : Currency;
    FDESCRICAO     : String;
    FID            : Integer;
    FCSTPIS        : String;
    FCFOP          : String;
    FCSTCOFINS     : String;
    FDESTACA_PIS   : Integer;
    FALIQPISST     : Currency;
    FALIQICMS      : Currency;
    FDESTACA_COFINS: Integer;
    FALIQCOFINSST  : Currency;
    FCSTIPI        : String;
    FCST           : String;
    FDESTACA_IPI   : Integer;
    FIDEMITENTE    : Integer;
    FALIQPIS       : Currency;
    FREDBCICMSST   : Currency;
    FCSOSN         : String;
    FALIQCOFINS    : Currency;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property ID            : Integer read FID write FID;
    property DESCRICAO     : String read FDESCRICAO write FDESCRICAO;
    property CFOP          : String read FCFOP write FCFOP;
    property ALIQICMS      : Currency read FALIQICMS write FALIQICMS;
    property REDBCICMS     : Currency read FREDBCICMS write FREDBCICMS;
    property ALIQICMSST    : Currency read FALIQICMSST write FALIQICMSST;
    property REDBCICMSST   : Currency read FREDBCICMSST write FREDBCICMSST;
    property MVAICMSST     : Currency read FMVAICMSST write FMVAICMSST;
    property CSTIPI        : String read FCSTIPI write FCSTIPI;
    property ALIQIPI       : Currency read FALIQIPI write FALIQIPI;
    property CSTPIS        : String read FCSTPIS write FCSTPIS;
    property ALIQPIS       : Currency read FALIQPIS write FALIQPIS;
    property ALIQPISST     : Currency read FALIQPISST write FALIQPISST;
    property CSTCOFINS     : String read FCSTCOFINS write FCSTCOFINS;
    property ALIQCOFINS    : Currency read FALIQCOFINS write FALIQCOFINS;
    property ALIQCOFINSST  : Currency read FALIQCOFINSST write FALIQCOFINSST;
    property DESTACA_ICMS  : Integer read FDESTACA_ICMS write FDESTACA_ICMS;
    property DESTACA_IPI   : Integer read FDESTACA_IPI write FDESTACA_IPI;
    property DESTACA_PIS   : Integer read FDESTACA_PIS write FDESTACA_PIS;
    property DESTACA_COFINS: Integer read FDESTACA_COFINS write FDESTACA_COFINS;
    property CST           : String read FCST write FCST;
    property CSOSN         : String read FCSOSN write FCSOSN;
    property IDEMITENTE    : Integer read FIDEMITENTE write FIDEMITENTE;
    function pesquisanat(const aemitente,aid : string) : tDataset;
  published
    { published declarations }
  end;

 TlistaNat = class(TList<TNaturezas>)
  public
    function Pesquisar(const aValor: integer): TList<TNaturezas>;
  end;
  

implementation

uses
   System.Classes, System.StrUtils, MainModule;

{ TlistaNat }


{ TNaturezas }

function TNaturezas.pesquisanat(const aemitente, aid: string): tDataset;
var
  vdataset : tDataset;
begin
  with UniMainModule do
  begin
    Banco.ExecSQL('select ID,DESCRICAO,CFOP,ALIQICMS,REDBCICMS,ALIQICMSST,REDBCICMSST,MVAICMSST,CSTIPI '+
                  ' ,ALIQIPI,CSTPIS,ALIQPIS,ALIQPISST,CSTCOFINS,ALIQCOFINS,ALIQCOFINSST,DESTACA_ICMS  '+
                  ' ,DESTACA_IPI,DESTACA_PIS,DESTACA_COFINS,CST,CSOSN,IDEMITENTE from TBTES  '+
                  ' where ID='+aid+' and idemitente = '+aemitente,vdataset);
    Result := vdataset;
  end;
end;

{ TlistaNat }

function TlistaNat.Pesquisar(const aValor: integer): TList<TNaturezas>;
var
  vItem: TNaturezas;
begin
  result := TList<TNaturezas>.Create;
  for vItem in self.List do
  begin
    if vItem = nil then
      Continue;
    if vItem.ID = aValor then
    begin
      result.Add(vItem);
      Break;
    end;
  end;
end;

end.
