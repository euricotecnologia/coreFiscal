unit clsClientes;

interface

uses
  System.Generics.Collections;

type
  TCliente = class
  private
    Ffone           : string;
    Ftipopessoa     : string;
    FtipoRegime     : String;
    Fobservacao     : string;
    Fcpf_cnpj       : string;
    Fbairro         : string;
    Ffax            : string;
    Frg_ie          : string;
    Fuf             : string;
    Fcodmunicipio   : string;
    Fcep            : string;
    Frazaosocial    : string;
    Fconsumidorfinal: string;
    Fcomplemento    : string;
    Fidcliente      : integer;
    Fcidade         : string;
    Fendereco       : string;
    Fidemitente     : integer;
    Fnro            : string;
    Fnomefantasia   : string;
    { private declarations }
  public
    { public declarations }
    property idcliente      : integer read Fidcliente write Fidcliente;
    property tipopessoa     : string read Ftipopessoa write Ftipopessoa;
    property tipoRegime     : string read FtipoRegime write FtipoRegime;
    property razaosocial    : string read Frazaosocial write Frazaosocial;
    property nomefantasia   : string read Fnomefantasia write Fnomefantasia;
    property rg_ie          : string read Frg_ie write Frg_ie;
    property cpf_cnpj       : string read Fcpf_cnpj write Fcpf_cnpj;
    property fone           : string read Ffone write Ffone;
    property fax            : string read Ffax write Ffax;
    property endereco       : string read Fendereco write Fendereco;
    property nro            : string read Fnro write Fnro;
    property complemento    : string read Fcomplemento write Fcomplemento;
    property bairro         : string read Fbairro write Fbairro;
    property cidade         : string read Fcidade write Fcidade;
    property codmunicipio   : string read Fcodmunicipio write Fcodmunicipio;
    property uf             : string read Fuf write Fuf;
    property cep            : string read Fcep write Fcep;
    property observacao     : string read Fobservacao write Fobservacao;
    property consumidorfinal: string read Fconsumidorfinal write Fconsumidorfinal;
    property idemitente     : integer read Fidemitente write Fidemitente;
  end;

  TlistaClientes = class(TList<TCliente>)
    public
      function Pesquisar(const aValor: string): TList<TCliente>;
  end;

implementation

uses
  System.Classes,system.SysUtils;

{ TCliente }

{ TlistaClientes }

function TlistaClientes.Pesquisar(const aValor: string): TList<TCliente>;
var
    vItem: Tcliente;
begin
    result := TList<Tcliente>.Create;
    for vItem in self.List  do
    begin
        if vItem = nil then
          Continue;
        if (vItem.nomefantasia.Contains(aValor.ToUpper)) or  (vItem.razaosocial.Contains(aValor.ToUpper)) then
            result.Add(vItem);
    end;
end;

end.
