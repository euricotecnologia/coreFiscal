unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes,shellapi,dialogs;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;
Procedure ExploreWeb(page:PChar);

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIConst;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure ExploreWeb(page:PChar);
var Returnvalue: integer;
begin
    ReturnValue := ShellExecute(0, 'open', page, nil, nil, 1);
    if ReturnValue <= 32 then
    begin
        case Returnvalue of
            0 : Showmessage('Erro: Sem memória');
            2 : Showmessage('Erro: Arquivo não achado');
            3 : Showmessage('Erro: Diretório não achado');
            11: Showmessage('Erro: Arquivo corrompido ou inválido');
        else
            Showmessage(PChar('Erro Nr: '+IntToStr(Returnvalue)+' Na execução do aplicativo servidor.'))
        end;
    end;
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
//  _OutS := 'ail=x' + #13#10#13#10#9 + 'dW5pU3luY09iai5zZXRUaW1lSW50KDB4MDA3NTc1MEYpOw==';//uniSyncObj.setTimeInt(0x0075750F);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
      //Somente para
      ExploreWeb('http://localhost:8181'); //Inicia o browser na porta padrão UniGui, mude para a que desejar.
      // remova este código em sua versão final.

      MimeTable.AddMimeType('woff', 'application/font', False);
      MimeTable.AddMimeType('woff2', 'application/font', False);
      MimeTable.AddMimeType('ttf', 'application/font', False);
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
