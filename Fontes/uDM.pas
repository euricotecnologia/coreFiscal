unit uDM;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, ACBrBase, ACBrValidador;


type
  PtrData = ^TDatainfo;
  TDatainfo = record
    xdatalancs: TDate;
    xcod_empresa: integer;
    xUsuario: string;
    xPass: string;
    xnomeempsel: string;
    ip: string;
    navegador: string;
    os: string;
  end;

type
  TDM = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qEmitente: TFDQuery;
    qEmitenteIDEMITENTE: TIntegerField;
    qEmitenteRAZAOSOCIAL: TStringField;
    qEmitenteFANTASIA: TStringField;
    qEmitenteENDERECO: TStringField;
    qEmitenteNUMERO: TIntegerField;
    qEmitenteCOMPLEMENTO: TStringField;
    qEmitenteBAIRRO: TStringField;
    qEmitenteCIDADE: TStringField;
    qEmitenteCODCIDADE: TStringField;
    qEmitenteUF: TStringField;
    qEmitenteCNPJ: TStringField;
    qEmitenteIE: TStringField;
    qEmitenteFONE: TStringField;
    qEmitenteCEP: TStringField;
    qEmitenteCRT: TIntegerField;
    qEmitenteALIQUOTAICMS: TBCDField;
    qEmitenteCERT_CAMINHO: TStringField;
    qEmitenteCERT_SENHA: TStringField;
    qEmitenteCERT_NUMSERIE: TStringField;
    qEmitenteGERAL_DANFE: TIntegerField;
    qEmitenteGERAL_FORMAEMISSAO: TIntegerField;
    qEmitenteGERAL_LOGOMARCA: TStringField;
    qEmitenteGERAL_SALVAR: TIntegerField;
    qEmitenteGERAL_PATHSALVAR: TStringField;
    qEmitenteGERAL_SERIE: TIntegerField;
    qEmitenteGERAL_SERIEPRODUCAO: TIntegerField;
    qEmitenteGERAL_SERIEHOMOLOG: TIntegerField;
    qEmitenteGERAL_SERIESCAN: TIntegerField;
    qEmitenteGERAL_NNFEPRODUCAO: TIntegerField;
    qEmitenteGERAL_NNFEHOMOLOG: TIntegerField;
    qEmitenteGERAL_NNFESCAN: TIntegerField;
    qEmitenteGERAL_USARDESCCOMPLETA: TIntegerField;
    qEmitenteWEBSERVICE_UF: TStringField;
    qEmitenteWEBSERVICE_AMBIENTE: TIntegerField;
    qEmitenteWEBSERVICE_VISUALIZAR: TIntegerField;
    qEmitentePROXY_HOST: TStringField;
    qEmitentePROXY_PORTA: TIntegerField;
    qEmitentePROXY_USER: TStringField;
    qEmitentePROXY_PASS: TStringField;
    qEmitenteEMAIL_HOST: TStringField;
    qEmitenteEMAIL_PORT: TIntegerField;
    qEmitenteEMAIL_USER: TStringField;
    qEmitenteEMAIL_PASS: TStringField;
    qEmitenteEMAIL_ASSUNTO: TStringField;
    qEmitenteEMAIL_SSL: TIntegerField;
    qEmitenteEMAIL_MENSAGEM: TMemoField;
    qEmitenteCELULAR: TStringField;
    qEmitenteEMAIL: TStringField;
    qEmitenteCHAVELIGACAO: TStringField;
    qEmitenteFLAG_IBPT: TIntegerField;
    qEmitenteIDTOKEN: TStringField;
    qEmitenteTOKEN: TStringField;
    qEmitenteDATAVENCIMENTOCERTIFICADO: TStringField;
    qEmitenteGERAL_NNFCEPRODUCAO: TIntegerField;
    qEmitenteGERAL_NNFCEHOMOLOG: TIntegerField;
    qEmitenteIMPRESSORANFE: TStringField;
    qEmitenteIMPRESSORANFCE: TStringField;
    qEmitentePREVIEWNFE: TStringField;
    qEmitentePREVIEWNFCE: TStringField;
    dsEmitente: TDataSource;
    Banco: TFDConnection;
    qGeral: TFDQuery;
    qIbge: TFDQuery;
    qIbgeID: TStringField;
    qIbgeIDUF: TStringField;
    qIbgeNOME: TStringField;
    qIbgeCod: TFDQuery;
    qIbgeCodID: TStringField;
    qIbgeCodIDUF: TStringField;
    qIbgeCodNOME: TStringField;
    qTES: TFDQuery;
    qTESID: TIntegerField;
    qTESDESCRICAO: TStringField;
    qTESCFOP: TStringField;
    qTESALIQICMS: TCurrencyField;
    qTESREDBCICMS: TCurrencyField;
    qTESALIQICMSST: TCurrencyField;
    qTESREDBCICMSST: TCurrencyField;
    qTESMVAICMSST: TCurrencyField;
    qTESCSTIPI: TStringField;
    qTESALIQIPI: TCurrencyField;
    qTESCSTPIS: TStringField;
    qTESALIQPIS: TCurrencyField;
    qTESALIQPISST: TCurrencyField;
    qTESCSTCOFINS: TStringField;
    qTESALIQCOFINS: TCurrencyField;
    qTESALIQCOFINSST: TCurrencyField;
    qTESDESTACA_ICMS: TIntegerField;
    qTESDESTACA_IPI: TIntegerField;
    qTESDESTACA_PIS: TIntegerField;
    qTESDESTACA_COFINS: TIntegerField;
    qTESCST: TStringField;
    qTESCSOSN: TStringField;
    qCFOP: TFDQuery;
    qCFOPID: TIntegerField;
    qCFOPCFOP: TIntegerField;
    qCFOPNATUREZA: TStringField;
    qCFOPTIPO: TIntegerField;
    qCFOPOBS1: TStringField;
    qCFOPOBS2: TStringField;
    qProdutos: TFDQuery;
    qProdutosIDPRODUTO: TIntegerField;
    qProdutosCODIGO: TStringField;
    qProdutosEAN: TStringField;
    qProdutosDESCRICAO: TStringField;
    qProdutosDESCRICAO_COMPLETA: TStringField;
    qProdutosNCM: TStringField;
    qProdutosCEST: TStringField;
    qProdutosCUSTO: TBCDField;
    qProdutosPRECO: TBCDField;
    qProdutosUN: TStringField;
    qProdutosCST: TStringField;
    qProdutosICMS: TBCDField;
    qProdutosIPI: TBCDField;
    qProdutosPESOBRUTO: TBCDField;
    qProdutosPESOLIQ: TBCDField;
    qProdutosCFOP: TStringField;
    qProdutosCSOSN: TStringField;
    qProdutosMVA: TBCDField;
    qProdutosPREDICMS: TBCDField;
    qProdutosORIGEM: TIntegerField;
    qProdutosCSTIPI: TStringField;
    qProdutosCSTPIS: TStringField;
    qProdutosCSTCOFINS: TStringField;
    qProdutosALIQPIS: TCurrencyField;
    qProdutosALIQCOFINS: TCurrencyField;
    qProdutosOPER_ENTRADA_DENTRO: TIntegerField;
    qProdutosOPER_ENTRADA_FORA: TIntegerField;
    qProdutosOPER_SAIDA_DENTRO: TIntegerField;
    qProdutosOPER_SAIDA_FORA: TIntegerField;
    qProdutosIDEMITENTE: TSmallintField;
    qProdutosOPER_DEVOLUCAO_DENTRO: TIntegerField;
    qProdutosOPER_DEVOLUCAO_FORA: TIntegerField;
    qProdutosCODIGO_ANP: TStringField;
    dsTes: TDataSource;
    dsCFOP: TDataSource;
    dsProduto: TDataSource;
    FDTransaction1: TFDTransaction;
    docValido: TACBrValidador;
    qEmitenteLOGIN: TStringField;
    qEmitenteSENHA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TRdata  : PtrData;
    CodigoEmitente, AUserName, usuario2, sLogin, sSenha, sEmail, Resultado : string;
    usuario : Integer;

    function soNumero(Texto:String):String;
    function GerarCodigo(gen:string):integer;
    function Login (login, senha : String) : Boolean;
    function VerificaEmail(email : String) : Boolean;

    procedure ExtAlerta(Titulo, Mensagem: string);

    function Mensagem (Texto, tipo : String) : Boolean;
    function MensagemJs (Titulo,Texto,Tipo : String) : Boolean;
  end;

function DM: TDM;



implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule, uniGUIApplication, uMensagem;

function DM: TDM;
begin
  Result := TDM(UniMainModule.GetModuleInstance(TDM));
end;

{ TDM }

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  TRdata  := New(PtrData);
end;

procedure TDM.ExtAlerta(Titulo, Mensagem: string);
begin
  UniSession.AddJS('Ext.example.msg('+
                   quotedstr(Titulo) + ',' +
                   quotedstr(Mensagem)+');');
end;

function TDM.GerarCodigo(gen: string): integer;
begin
      qGeral.Close;
      qGeral.sql.clear;
      qGeral.sql.Add('SELECT GEN_ID(' + Gen + ', 1) AS CODIGO FROM RDB$DATABASE;');
      qGeral.Open;

      Result :=  qGeral.FieldByName('CODIGO').Value;
end;

function TDM.Login(login, senha: String): Boolean;
begin
      qGeral.Close;
      qGeral.SQL.Clear;
      qGeral.SQL.Add('Select idEmitente, Fantasia from Emitente '+
      ' where Login = :login and senha = :senha');
      qGeral.ParamByName('login').Value := UpperCase(login);
      qGeral.ParamByName('senha').Value := UpperCase(senha);
      qGeral.Prepare;
      qGeral.Open();

      if qGeral.RecordCount > 0 then
      begin
         dm.qEmitente.Close;
         dm.qEmitente.ParamByName('idEmitente').Value := qGeral.FieldByName('idEmitente').value;
         dm.qEmitente.Open();

         dm.CodigoEmitente := dm.qEmitenteIDEMITENTE.AsString;

         Usuario := qGeral.FieldByName('idEmitente').AsInteger;
         Result  := true;
      end
      else
         Result := false;
end;


function TDM.Mensagem(Texto, tipo: String): Boolean;
begin
     fMensagem.lblMensagem.Caption := Texto;

     if tipo = 'I' then // 'I' Informação
     begin
         fMensagem.BtnOK.Visible      := True;
         fMensagem.btnSim.Visible     := False;
         fMensagem.BtnNao.Visible     := False;
         fMensagem.btnIcone.Caption   := '<i class="fa fa-info-circle fa-spin fa-30x"  style="color:blue"></i>';
     end
     else if tipo = 'D' then  // 'D':  Deletar
     begin
         fMensagem.btnSim.Visible     := True;
         fMensagem.BtnNao.Visible     := True;
         fMensagem.BtnOK.Visible      := False;
         fMensagem.btnIcone.Caption   := '<i class="fa fa-trash-o fa-30x"  style="color:red"></i>';
     end
     else if tipo = 'Q' then  // 'Q': Questão
     begin
         fMensagem.btnSim.Visible     := True;
         fMensagem.BtnNao.Visible     := True;
         fMensagem.BtnOK.Visible      := False;
         fMensagem.btnIcone.Caption   := '<i class="fa fa-question-circle-o fa-30x"  style="color:gray"></i>';
     end
     else if tipo = 'C' then  // 'C': Cuidado
     begin
         fMensagem.BtnOK.Visible      := True;
         fMensagem.btnSim.Visible     := False;
         fMensagem.BtnNao.Visible     := False;
         fMensagem.btnIcone.Caption   := '<i class="fa fa-exclamation-triangle fa-30x"  style="color:orange"></i>';
     end
     else if tipo = 'E' then  // 'E': Erro
     begin
         fMensagem.BtnOK.Visible      := True;
         fMensagem.btnSim.Visible     := False;
         fMensagem.BtnNao.Visible     := False;
         fMensagem.btnIcone.Caption   := '<i class="fa fa-times-circle-o fa-30x"  style="color:red"></i>';
     end
     else if tipo = 'S' then
     begin
         fMensagem.BtnOK.Visible      := True;
         fMensagem.btnSim.Visible     := False;
         fMensagem.BtnNao.Visible     := False;
         fMensagem.btnIcone.Caption   := '<i class="fa fa-check-square-o fa-spin fa-30x"  style="color:green"></i>';
     end;

     fMensagem.ShowModal();

     if Resultado = 'S' then
        Result := true
     else
        Result := False;
end;

function TDM.MensagemJs(Titulo, Texto, Tipo: String): Boolean;
begin
  UniSession.AddJS(' swal( '+
  ' '''+Titulo+''', '+
  ' '''+Texto+''' , '+
  ' '''+Tipo+''') ');
end;

function TDM.soNumero(Texto: String): String;
var
     I: integer;
     S: string;
begin
         S := '';
         for I := 1 To Length(Texto) Do
         begin
              if (Texto[I] in ['0'..'9']) then
              begin
                  S := S + Copy(Texto, I, 1);
              end;
         end;
         result := S;
end;


function TDM.VerificaEmail(email: String): Boolean;
begin
      qGeral.Close;
      qGeral.SQL.Clear;
      qGeral.SQL.Add('Select Fantasia, Login, email, senha from Emitente '+
      ' where email = :email');
      qGeral.ParamByName('email').Value := trim( LowerCase(email ));
      qGeral.Prepare;
      qGeral.Open();

      if qGeral.RecordCount > 0 then
      begin
         sEmail   := qGeral.FieldByName('email').AsString;
         sLogin   := qGeral.FieldByName('login').AsString;
         sSenha   := qGeral.FieldByName('senha').AsString;
         Usuario2 := qGeral.FieldByName('fantasia').AsString;
         Result   := true;
      end
      else
         Result := false;
end;

initialization
  RegisterModuleClass(TDM);

end.
