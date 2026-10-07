unit clsFormasNotas;

interface

type

  TFormasNF = class

  private
    Fid: integer;
    Fserie: integer;
    Fmodelo: integer;
    Fcod_emitente: integer;
    Fparcela: integer;
    Femissao: TDateTime;
    Fvencimento: TDateTime;
    Fvalor: extended;
    Ftipo_fatura: string;
    Ffatura: integer;

    FNSU: String;
    FnParcelas : String;
    fBandeira  : String;

    Ftoken : String;
    FidIntencao : String;
    FnomeIntencaoStatus : String;
    FidIntencaoStatus   : String;
    FidTerminal         : String;
    FComprovanteEstab   : String;

     { private declarations }

  protected

    { protected declarations }

  public

    { public declarations }
    property id: integer read Fid write Fid;
    property serie: integer read Fserie write Fserie;
    property modelo: integer read Fmodelo write Fmodelo;
    property cod_emitente: integer read Fcod_emitente write Fcod_emitente;
    property parcela: integer read Fparcela write Fparcela;
    property emissao: TDateTime read Femissao write Femissao;
    property vencimento: TDateTime read Fvencimento write Fvencimento;
    property valor: extended read Fvalor write Fvalor;
    property tipo_fatura: string read Ftipo_fatura write Ftipo_fatura;
    property fatura: integer read Ffatura write Ffatura;

    property NSU: string read FNSU write FNSU;
    property nParcelas: string read FnParcelas write FnParcelas;
    property Bandeira: string read fBandeira write fBandeira;

    // campos para o cartão TEF e Venda Digitada //

    property token: string read Ftoken write Ftoken;
    property idIntencao: string read FidIntencao write FidIntencao;
    property nomeIntencaoStatus: string read FnomeIntencaoStatus write FnomeIntencaoStatus;
    property idIntencaoStatus: string read FidIntencaoStatus write FidIntencaoStatus;
    property idTerminal: string read FidTerminal write FidTerminal;
    property ComprovanteEstab: string read FComprovanteEstab write FComprovanteEstab;

  published
    { published declarations }
  end;

implementation

end.
