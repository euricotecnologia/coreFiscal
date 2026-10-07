unit clsVendedor;

interface

uses
  System.Generics.Collections;

type
  TVendedor = class
  private
    Fidemitente     : integer;
    Fid             : integer;
    FCodigo         : integer;
    fNome           : string;
    fLogin          : string;
    fSenha          : string;
    fNome_Venda      : string;
    fComissao       : double;

    { private declarations }
  public
    { public declarations }
    property idemitente     : integer read Fidemitente write Fidemitente;
    property id             : integer read Fid write Fid;
    property codigo         : integer read FCodigo write FCodigo;
    property Nome           : string read fNome write fNome;
    property Login          : string read fLogin write fLogin;
    property Senha          : string read fSenha write fSenha;
    property Nome_Venda     : string read fNome_Venda write fNome_Venda;
    property Comissao       : double read fComissao write fComissao;

  end;

  TlistaVendedores = class(TList<TVendedor>)

  public
      function Pesquisar(const aValor: string): TList<TVendedor>;
  end;

implementation

uses
  System.Classes,system.SysUtils;

{ TVendedor }

{ TlistaVendedores }

function TlistaVendedores.Pesquisar(const aValor: string): TList<TVendedor>;
var
    vItem: TVendedor;
begin
    result := TList<TVendedor>.Create;
    for vItem in self.List  do
    begin
        if vItem = nil then
          Continue;
        if (vItem.Nome_Venda.Contains(aValor.ToUpper)) or  (vItem.Login.Contains(aValor.ToUpper)) then
            result.Add(vItem);
    end;
end;

end.
