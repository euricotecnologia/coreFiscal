unit clsVendas;

interface

uses
  System.Generics.Collections, clsFormasNotas, clsVendasItens,

  ACBrUtil,ACBrDFeUtil,


  Messages, vcl.forms, uniScreenMask,uniGUIForm, NFeCalculoController;

type
  TStatusVenda = (spBrowse, spInsert, spEdit);
  TNotasCab = class

  private

    FPESOBRUTO            : double;
    FVALOR_ICMS           : Extended;
    FIDTRANSP             : Integer;
    fVENDEDOR             : integer;
    FDADOS_ADICIONAIS     : string;
    FCFOPVENDA            : String;
    FQUANT                : double;
    FUFVEICULO            : string;
    FALIQ_SIMPLES         : double;
    FCHAVE_ACESSO         : string;
    FCSTAT                : Integer;
    FVALOR_SEGURO         : double;
    FNOME_CONSUMIDOR      : string;
    FESPECIE              : string;
    FDTSAIDA              : TDateTime;
    FBASE_IPI             : double;
    FPROTOCOLO            : string;
    FVALOR_ICMS_ST        : double;
    FTIPONOTA             : Integer;
    FXML_ORIGINAL         : string;
    FXSTAT                : string;
    FSERIE                : Integer;
    FMODELO               : Integer;
    FTOTAL_NOTA           : double;
    FID                   : Integer;
    FTIPOEMISSAO          : Integer;
    FFORMA_PGTO           : string;
    FNUMERO               : string;
    FVALOR_OUTRAS_DESP    : double;
    FDATA_HORARECIBO      : TDateTime;
    FFINALIDADE           : Integer;
    FBASE_ICMS            : double;
    FSTATUS_NOTA          : string;
    FVALOR_FRETE          : double;
    FCOD_ANTT             : string;
    FPLACAVEICULO         : string;
    FCHAVE_ACESSO_ORIGINAL: string;
    FAMBIENTE             : Integer;
    FPESOLIQUIDO          : double;
    FCPF_CONSUMIDOR       : string;
    FVALOR_IPI            : double;
    FTIPOFRETE            : Integer;
    FMARCA                : string;
    FTOTAL_PRODUTOS       : double;
    FIDCLIENTE            : Integer;
    FVALOR_ACRESCIMO      : double;
    FVALOR_DESCONTO       : double;
    FTROCO                : double;
    FBASE_ICMS_ST         : double;
    FCRT                  : string;
    FNATUREZA_OPER        : string;
    FCOD_EMITENTE         : Integer;
    FXML_NOTA             : string;
    FDTEMISSAO            : TDateTime;
    FItensNota            : TList<TVendasitens>;
    Fstatus               : TStatusVenda;
    FVALOR_FINAL          : Extended;
    FformasNF             : TList<TFormasNF>;
    FCONSUMIDORFINAL      : string;
    FTRANSPNOME           : string;
    FTRANSPcnpj           : string;
    FTRANSPIE             : string;
    FTRANSPender          : string;
    FTRANSPibge           : string;
    FTRANSPUF             : string;
    XmlAssinado           : String;

    function GetVALOR_FINAL: Extended;
    function GetVALOR_ICMS: Extended;

    procedure gavamsg(const id, serie, modelo, codemitente: integer;
      msg: string);
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure gravainfo(pchave, pxml: string);

    var CalculoImposto : TCalculoNFE;

  public
    property ID                   : Integer read FID write FID;
    property SERIE                : Integer read FSERIE write FSERIE;
    property MODELO               : Integer read FMODELO write FMODELO;
    property COD_EMITENTE         : Integer read FCOD_EMITENTE write FCOD_EMITENTE;
    property VENDEDOR             : Integer read FVENDEDOR write FVENDEDOR;
    property NATUREZA_OPER        : string read FNATUREZA_OPER write FNATUREZA_OPER;
    property CFOPVENDA            : string read FCFOPVENDA write FCFOPVENDA;
    property CRT                  : string read FCRT write FCRT;
    property ALIQ_SIMPLES         : double read FALIQ_SIMPLES write FALIQ_SIMPLES;
    property TIPONOTA             : Integer read FTIPONOTA write FTIPONOTA;
    property DTEMISSAO            : TDateTime read FDTEMISSAO write FDTEMISSAO;
    property DTSAIDA              : TDateTime read FDTSAIDA write FDTSAIDA;
    property IDCLIENTE            : Integer read FIDCLIENTE write FIDCLIENTE;
    property CONSUMIDORFINAL      : string read FCONSUMIDORFINAL write FCONSUMIDORFINAL;
    property CPF_CONSUMIDOR       : string read FCPF_CONSUMIDOR write FCPF_CONSUMIDOR;
    property NOME_CONSUMIDOR      : string read FNOME_CONSUMIDOR write FNOME_CONSUMIDOR;
    property IDTRANSP             : Integer read FIDTRANSP write FIDTRANSP;
    property TIPOFRETE            : Integer read FTIPOFRETE write FTIPOFRETE;
    property PLACAVEICULO         : string read FPLACAVEICULO write FPLACAVEICULO;
    property UFVEICULO            : string read FUFVEICULO write FUFVEICULO;
    property COD_ANTT             : string read FCOD_ANTT write FCOD_ANTT;

    property BASE_ICMS            : double read FBASE_ICMS write FBASE_ICMS;
    property VALOR_ICMS           : Extended read GetVALOR_ICMS write FVALOR_ICMS;// double read GetVALOR_ICMS write FVALOR_ICMS;

    property BASE_ICMS_ST         : double read FBASE_ICMS_ST write FBASE_ICMS_ST;
    property VALOR_ICMS_ST        : double read FVALOR_ICMS_ST write FVALOR_ICMS_ST;
    property VALOR_FRETE          : double read FVALOR_FRETE write FVALOR_FRETE;
    property VALOR_DESCONTO       : double read FVALOR_DESCONTO write FVALOR_DESCONTO;
    property TROCO                : double read FTROCO write FTROCO;
    property VALOR_ACRESCIMO      : double read FVALOR_ACRESCIMO write FVALOR_ACRESCIMO;
    property VALOR_SEGURO         : double read FVALOR_SEGURO write FVALOR_SEGURO;
    property VALOR_OUTRAS_DESP    : double read FVALOR_OUTRAS_DESP write FVALOR_OUTRAS_DESP;
    property VALOR_IPI            : double read FVALOR_IPI write FVALOR_IPI;
    property BASE_IPI             : double read FBASE_IPI write FBASE_IPI;
    property TOTAL_PRODUTOS       : double read FTOTAL_PRODUTOS write FTOTAL_PRODUTOS;
    property TOTAL_NOTA           : double read FTOTAL_NOTA write FTOTAL_NOTA;
    property QUANT                : double read FQUANT write FQUANT;
    property ESPECIE              : string read FESPECIE write FESPECIE;
    property MARCA                : string read FMARCA write FMARCA;
    property NUMERO               : string read FNUMERO write FNUMERO;
    property PESOBRUTO            : double read FPESOBRUTO write FPESOBRUTO;
    property PESOLIQUIDO          : double read FPESOLIQUIDO write FPESOLIQUIDO;
    property STATUS_NOTA          : string read FSTATUS_NOTA write FSTATUS_NOTA;
    property DADOS_ADICIONAIS     : string read FDADOS_ADICIONAIS write FDADOS_ADICIONAIS;
    property FORMA_PGTO           : string read FFORMA_PGTO write FFORMA_PGTO;
    property XML_NOTA             : string read FXML_NOTA write FXML_NOTA;
    property CSTAT                : Integer read FCSTAT write FCSTAT;
    property XSTAT                : string read FXSTAT write FXSTAT;
    property AMBIENTE             : Integer read FAMBIENTE write FAMBIENTE;
    property TIPOEMISSAO          : Integer read FTIPOEMISSAO write FTIPOEMISSAO;
    property PROTOCOLO            : string read FPROTOCOLO write FPROTOCOLO;
    property DATA_HORARECIBO      : TDateTime read FDATA_HORARECIBO write FDATA_HORARECIBO;
    property CHAVE_ACESSO         : string read FCHAVE_ACESSO write FCHAVE_ACESSO;
    property FINALIDADE           : Integer read FFINALIDADE write FFINALIDADE;
    property XML_ORIGINAL         : string read FXML_ORIGINAL write FXML_ORIGINAL;
    property CHAVE_ACESSO_ORIGINAL: string read FCHAVE_ACESSO_ORIGINAL write FCHAVE_ACESSO_ORIGINAL;
    property ItensNota            : TList<TVendasitens> read FItensNota write FItensNota;
    property formasNF             : TList<TFormasNF> read FformasNF write FformasNF;
    property status               : TStatusVenda read Fstatus write Fstatus;
    property VALOR_FINAL          : Extended read GetVALOR_FINAL write FVALOR_FINAL;
    property TRANSPNOME           : string read FTRANSPNOME write FTRANSPNOME;
    property TRANSPcnpj           : string read FTRANSPcnpj write FTRANSPcnpj;
    property TRANSPIE             : string read FTRANSPIE write FTRANSPIE;
    property TRANSPender          : string read FTRANSPender write FTRANSPender;
    property TRANSPibge           : string read FTRANSPibge write FTRANSPibge;
    property TRANSPUF             : string read FTRANSPUF write FTRANSPUF;


    procedure AdicionaNotaNoComponente;
    procedure Salvar;
    procedure pegadadostransp;
    procedure calcdescacres;
    procedure AguardaAssinatura;
    constructor create; overload;
    destructor destroy;
  end;

implementation

{ TNotasCab }

uses MainModule, System.SysUtils, System.Math, pcnConversao, pcnConversaoNFe,
  Data.DB, ServerModule, uniGUIDialogs, uniGUITypes, uPDF, uClsBase, uPrincipal,
  uNfceM, uPdfM, uniGUIApplication;

Procedure FcpIcms(ComBase: boolean = true);
begin
//     if qNotaFiscalItem.FieldByName('PC_FCP_ICMS').AsFloat > ZeroValue then
//     begin
//         Imposto.ICMS.pFCP    := qNotaFiscalItem.FieldByName('PC_FCP_ICMS').AsFloat;
//         Imposto.ICMS.vFCP    := qNotaFiscalItem.FieldByName('VL_FCP_ICMS').AsFloat;
//         if ComBase then
//           Imposto.ICMS.vBCFCP  := qNotaFiscalItem.FieldByName('VL_BASE_FCP_ICMS').AsFloat;
//     end;
end;

Procedure FcpIcmsSt;
begin
//     if qNotaFiscalItem.FieldByName('PC_FCP_ICMS_ST').AsFloat > ZeroValue then
//     begin
//         Imposto.ICMS.pFCPST    := qNotaFiscalItem.FieldByName('PC_FCP_ICMS_ST').AsFloat;
//         Imposto.ICMS.vFCPST    := qNotaFiscalItem.FieldByName('VL_FCP_ICMS_ST').AsFloat;
//         Imposto.ICMS.vBCFCPST  := qNotaFiscalItem.FieldByName('VL_BASE_FCP_ICMS_ST').AsFloat;
//     end;
end;

Procedure FcpIcmsStRet;
begin
//     if qNotaFiscalItem.FieldByName('PC_FCP_ICMS_RETIDO').AsFloat > ZeroValue then
//     begin
//         Imposto.ICMS.pFCPSTRet    := qNotaFiscalItem.FieldByName('PC_FCP_ICMS_RETIDO').AsFloat;
//         Imposto.ICMS.vFCPSTRet    := qNotaFiscalItem.FieldByName('VL_FCP_ICMS_RETIDO').AsFloat;
//         Imposto.ICMS.vBCFCPSTRet  := qNotaFiscalItem.FieldByName('VL_BASE_FCP_ICMS_RETIDO').AsFloat;
//     end;
end;

function MontaTextoFCOPItem: String;
var vTexto: String;
begin
//    vTexto := '';
//    if qNotaFiscalItem.FieldByName('VL_FCP_ICMS').AsFloat > ZeroValue then
//      vTexto := vTexto + 'FECOP: R$ '+ TrimLeft(FormatFloat('###,###,##0.00', qNotaFiscalItem.FieldByName('VL_FCP_ICMS').AsFloat));
//    if qNotaFiscalItem.FieldByName('VL_FCP_ICMS_ST').AsFloat > ZeroValue then
//      vTexto := vTexto + 'FECOP ST: R$ '+ TrimLeft(FormatFloat('###,###,##0.00', qNotaFiscalItem.FieldByName('VL_FCP_ICMS_ST').AsFloat));
//    if qNotaFiscalItem.FieldByName('VL_FCP_ICMS_RETIDO').AsFloat > ZeroValue then
//      vTexto := vTexto + 'FECOP Retido: R$ '+ TrimLeft(FormatFloat('###,###,##0.00', qNotaFiscalItem.FieldByName('VL_FCP_ICMS_RETIDO').AsFloat));
//    result := vTexto;
end;


{$REGION 'AGUARDA ASSINATURA A3'}
procedure TNotasCab.AguardaAssinatura;
var  contador : integer;
begin
     contador := 0;

     UniMainModule.tExecuta.StartTransaction;
     UniMainModule.Executa.Close;
     UniMainModule.Executa.SQL.Clear;
     UniMainModule.Executa.SQL.Add('update notas_cab set A3TIPO = ''EN'' ASSINADO = ''N'',XML_NOTA = :xml '+
     '  where ID = :ID and SERIE = :SE  and modelo = :MO and COD_EMITENTE = :e  ');
     UniMainModule.Executa.ParamByName('xml').AsString := UniMainModule.NFE.NotasFiscais.Items[0].XML;
     UniMainModule.Executa.ParamByName('ID').AsString  := self.ID.ToString;
     UniMainModule.Executa.ParamByName('SE').AsString  := Self.SERIE.ToString;
     UniMainModule.Executa.ParamByName('MO').AsString  := Self.MODELO.ToString;
     UniMainModule.Executa.ParamByName('E').AsString   := unimainmodule.CodigoEmitente;
     UniMainModule.Executa.ExecSQL;
     UniMainModule.tExecuta.Commit;

     while contador < 10 do
     begin
           with UniMainModule do
           begin
               qGeral.Close;
               qGeral.SQL.Clear;
               qGeral.SQL.Add('Select ID, COD_EMITENTE, XML_NOTA, ASSINADO FROM '+
               ' NOTAS_CAB where COD_EMITENTE = :e and ASSINADO = ''S'' '+
               ' and ID = :ID and SERIE  = :SE  and modelo = :MO ');
               qGeral.ParamByName('e').AsString  := unimainmodule.CodigoEmitente;
               qGeral.ParamByName('ID').AsString := self.ID.ToString;
               qgeral.ParamByName('SE').AsString := Self.SERIE.ToString;
               qgeral.ParamByName('MO').AsString := Self.MODELO.ToString;
               qGeral.Prepare;
               qGeral.Open;
               qGeral.FetchAll;

               if not qGeral.IsEmpty then
               begin
                   contador    := 20;
                   XmlAssinado := qgeral.FieldByName('XML_NOTA').AsString;

                   UniMainModule.NFE.NotasFiscais.Clear;
                   UniMainModule.NFE.NotasFiscais.LoadFromString(XmlAssinado,false);
               end
               else
               begin
                   contador := 1;
                   Sleep(1000);
               end;
               UniSession.Synchronize;
           end;
     end;
end;
{$endREGION'}

procedure TNotasCab.calcdescacres;
var
  vItem               : TVendasitens;
  nSomaDesc           : Currency;
  lcalculo            : Currency;
  nDescLib            : Currency;
begin
    if self.VALOR_ACRESCIMO > 0 then
    begin
        for vItem in self.ItensNota.List do
        begin
            if vItem <> nil then
            begin
                lcalculo := RoundTo((((vItem.qtd * vItem.preco_unit) * self.VALOR_ACRESCIMO) / self.TOTAL_PRODUTOS), -2);
                vItem.acrescimo := lcalculo;
            end;
        end;
    end;

    if self.VALOR_DESCONTO > 0 then
    begin
        nSomaDesc := self.VALOR_DESCONTO;
        nDescLib  := (nSomaDesc / self.TOTAL_PRODUTOS) * 100;
        for vItem in self.ItensNota.List do
        begin
            if vItem <> nil then
            begin
                lcalculo       := RoundTo((nDescLib * (((vItem.qtd * vItem.preco_unit) + vItem.acrescimo) / 100)), -2);
                vItem.desconto := lcalculo;
            end;
        end;
    end;

    if self.VALOR_FRETE > 0 then
    begin
        for vItem in self.ItensNota.List do
        begin
            if vItem <> nil then
            begin
                lcalculo := RoundTo((((vItem.qtd * vItem.preco_unit) * self.VALOR_FRETE) / self.TOTAL_PRODUTOS), -2);
                vItem.frete := lcalculo;
            end;
        end;
    end;

    if self.VALOR_SEGURO > 0 then
    begin
        for vItem in self.ItensNota.List do
        begin
            if vItem <> nil then
            begin
                lcalculo := RoundTo((((vItem.qtd * vItem.preco_unit) * self.VALOR_SEGURO) / self.TOTAL_PRODUTOS), -2);
                vItem.seguro := lcalculo;
            end;
        end;
    end;

    if self.VALOR_OUTRAS_DESP > 0 then
    begin
        for vItem in self.ItensNota.List do
        begin
            if vItem <> nil then
            begin
                lcalculo := RoundTo((((vItem.qtd * vItem.preco_unit) * self.VALOR_OUTRAS_DESP) / self.TOTAL_PRODUTOS), -2);
                vItem.outros := lcalculo;
            end;
        end;
    end;
end;

constructor TNotasCab.create;
begin
    ItensNota := TList<TVendasitens>.create;
    formasNF  := TList<TFormasNF>.create;
end;

destructor TNotasCab.destroy;
begin
    FreeAndNil(fItensNota);
    FreeAndNil(fformasNF);
    inherited;
end;

function TNotasCab.GetVALOR_FINAL: Extended;
var
  vItem: TVendasitens;
begin
    Result := 0;

    if ItensNota.Count = 0 then
       Result := FVALOR_FINAL
    else
    begin
        for vItem in ItensNota.List do
        begin
            if vItem = nil then
               Continue;
            Result := vItem.VALOR_TOTAL + Result;
        end;
    end;
end;

function TNotasCab.GetVALOR_ICMS: Extended;
var
  vItem: TVendasitens;
begin
    Result := 0;

    if ItensNota.Count = 0 then
       Result := FVALOR_ICMS_ST
    else
    begin
        for vItem in ItensNota.List do
        begin
            if vItem = nil then
               Continue;
            Result := vItem.VALOR_ICMS + Result;
        end;
    end;
end;

procedure TNotasCab.gavamsg(const id,serie,modelo,codemitente : integer;msg : string);
var
  vdataset : TDataSet;
  lseqmsg : integer;
begin
    UniMainModule.Banco.ExecSQL('select max(SEQ_MSG) codigo from NOTAS_MSG '+
               ' where ID='+Self.ID.ToString+' and SERIE='+Self.SERIE.ToString+' and MODELO='+
               Self.MODELO.ToString+' and COD_EMITENTE='+Self.COD_EMITENTE.ToString,vdataset);
    if not vdataset.Eof then
    begin
      if vdataset.FieldByName('codigo').AsString <> '' then
        lseqmsg := vdataset.FieldByName('codigo').AsInteger + 1
      else
        lseqmsg := 1;
    end else
      lseqmsg := 1;
    UniMainModule.Banco.StartTransaction;
    UniMainModule.Banco.ExecSQL('insert into NOTAS_MSG (ID,SERIE,MODELO,COD_EMITENTE,SEQ_MSG,MENSAGEM) '+
         ' values (:ID, :SERIE, :MODELO, :COD_EMITENTE, :SEQ_MSG, :MENSAGEM)',[self.ID,self.SERIE,self.MODELO,self.COD_EMITENTE,lseqmsg.ToString,QuotedStr(msg)]);
    UniMainModule.Banco.Commit;
end;


function TNotasCab.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
    if Expressao then
      Result := ParteTRUE
    else
      Result := ParteFALSE;
end;


procedure TNotasCab.pegadadostransp;
var
  vdataset : tDataset;
begin
    UniMainModule.Banco.ExecSQL('select IDTRANSP,NOME,CPF_CNPJ,IE,ENDERECO,'+
    'NUMERO,BAIRRO,MUNICIPIO,UF FROM TRANSPORTADOR where IDTRANSP='+Self.IDTRANSP.ToString,vdataset);
    if not vdataset.Eof then
    begin
          TRANSPNOME   := vdataset.FieldByName('NOME').AsString;
          TRANSPcnpj   := UniMainModule.soNumero( vdataset.FieldByName('CPF_CNPJ').AsString );
          TRANSPIE     := vdataset.FieldByName('IE').AsString;
          TRANSPender  := vdataset.FieldByName('ENDERECO').AsString;
          TRANSPibge   := vdataset.FieldByName('MUNICIPIO').AsString;
          TRANSPUF     := vdataset.FieldByName('UF').AsString;
    end;
end;

procedure TNotasCab.gravainfo(pchave,pxml:string);
begin
    UniMainModule.Banco.StartTransaction;
    UniMainModule.Banco.ExecSQL('update notas_cab set XML_NOTA = '+pxml.QuotedString+
    ',CHAVE_ACESSO = '+pchave.QuotedString+' where ID = '+Self.ID.ToString+' AND SERIE = '+
    Self.SERIE.ToString+' AND MODELO = '+Self.MODELO.ToString+' and COD_EMITENTE = '+Self.COD_EMITENTE.ToString);
    UniMainModule.Banco.Commit;
end;

procedure TNotasCab.AdicionaNotaNoComponente;
var
  Contador                                       : Integer;
  Vcst                                           : TpcnCSTIcms;
  Ok, sincrono                                   : Boolean;
  vTribFed, vTribEst, vTribMun,SvBCST,SvICMSST   : double;
  vItem                                          : TVendasitens;
  vformas                                        : TFormasNF;
  vdataset                                       : tDataset;
  AliqSN,vPagamento                              : double;
  NomeXML, NomePDF, ArquivoPDF, FFolder, FUrl    : string;
  RetornoWS, PROTOCOLO,pessoaCliente,vtipoRegime, Temp, msgCartao  : string;
  vTipoRegimeCliente                             : Extended;
  ErrosRegraNegocio: String;
begin
    svBCST    := 0;
    SvICMSST  := 0;
    msgCartao := '';

    UniMainModule.NFE.NotasFiscais.Clear;
    if UniMainModule.TRdata^.xmodelo = 65 then
    begin
        UniMainModule.NFE.Configuracoes.Geral.IdCSC    := UniMainModule.qEmitenteIDTOKEN.AsString.Trim;
        UniMainModule.NFE.Configuracoes.Geral.CSC      := UniMainModule.qEmitenteTOKEN.AsString.Trim;
        UniMainModule.NFE.Configuracoes.Geral.ModeloDF := moNFCe;
    end
    else if UniMainModule.TRdata^.xmodelo = 55 then
    begin
        UniMainModule.NFE.Configuracoes.Geral.IdCSC    := '';
        UniMainModule.NFE.Configuracoes.Geral.CSC      := '';
        UniMainModule.NFE.Configuracoes.Geral.ModeloDF := moNFe;
    end;

    with UniMainModule.NFE.Configuracoes.Arquivos do
    begin
        if UniMainModule.TRdata^.xmodelo = 65 then
        begin
          PathSalvar         := UniMainModule.caminhoArqs+'NFce\Resp';
          PathNFe            := UniMainModule.caminhoArqs+'NFce\XML';
          PathEvento         := UniMainModule.caminhoArqs+'Nfce\Eventos';
          PathInu            := UniMainModule.caminhoArqs+'Nfce\Inutilizadas';
        end
        else
        begin
          PathSalvar         := UniMainModule.caminhoArqs+'NFe\Resp';
          PathNFe            := UniMainModule.caminhoArqs+'NFe\XML';
          PathEvento         := UniMainModule.caminhoArqs+'Nfe\Eventos';
          PathInu            := UniMainModule.caminhoArqs+'Nfe\Inutilizadas';
        end;
    end;


    UniMainModule.NFE.Configuracoes.Geral.VersaoDF      := ve400;
    UniMainModule.NFE.Configuracoes.WebServices.TimeOut := 60000;

    vTribFed                                            := 0.0;
    vTribEst                                            := 0.0;
    vTribMun                                            := 0.0;

    with UniMainModule.NFE.NotasFiscais.Add.NFE do
    begin
      Ide.tpImp   := tiRetrato;
      Ide.nNF     := self.ID;
      Ide.cNF     := GerarCodigoDFe(self.ID); // self.ID;
      Ide.MODELO  := self.MODELO;
      Ide.SERIE   := self.SERIE;
      Ide.indPag  := ipVista;
      Ide.cUF     := UFToCUF(UniMainModule.qEmitenteUF.Text);
      Ide.cMunFG  := UniMainModule.qEmitenteCODCIDADE.AsInteger;
      Ide.natOp   := self.NATUREZA_OPER;

      Ide.indPres := pcPresencial;

      if self.MODELO = 65 then
      begin
          UniMainModule.NFE.Configuracoes.Geral.VersaoQRCode  := veqr200;

          Ide.dEmi     := strtodatetime(formatdatetime('dd/mm/yyyy', Date) + copy(timetoStr(time), 1, 8));
          Ide.dSaiEnt  := Ide.dEmi;
          ide.hSaiEnt  := now;
          Ide.finNFe   := fnNormal; // 0 normal 1 complementar 2 ajuste 3 devolucao
          Ide.tpImp    := tiNFCe;
          Ide.indFinal := cfConsumidorFinal;
          Ide.tpNF     := tnSaida;
      end
      else
      begin
          Ide.dEmi    := strtodatetime(formatdatetime('dd/mm/yyyy', Self.DTEMISSAO) + copy(timetoStr(time), 1, 8));// Self.DTEMISSAO;
          ide.hSaiEnt := now;
          Ide.dSaiEnt := strtodatetime(formatdatetime('dd/mm/yyyy', Self.DTSAIDA) + copy(timetoStr(time), 1, 8));// Self.DTSAIDA;

          if Self.TIPONOTA = 1 then
            Ide.tpNF  := tnSaida
          else if self.TIPONOTA = 0 then
            ide.tpNF  := tnEntrada
          else
            ide.tpNF  := tnSaida;

          Ide.finNFe  := TpcnFinalidadeNFe(Self.FINALIDADE);

          if self.CONSUMIDORFINAL.ToUpper = 'SIM' then
            Ide.indFinal := cfConsumidorFinal
          else
            Ide.indFinal := cfNao;

          if (not UniMainModule.TRdata^.xchavecomplementar.IsEmpty) and
             (UniMainModule.TRdata^.xfinalidade <> 0)  then
          begin
          //  ide.NFref.Add;
            Ide.NFref.Add.refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar);
          //  ide.NFref.Items[0].refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar);
          end;

          if (not UniMainModule.TRdata^.xchavecomplementar2.IsEmpty) and
             (UniMainModule.TRdata^.xfinalidade <> 0)  then
          begin
          //  ide.NFref.Add;
            Ide.NFref.Add.refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar2);
          //  ide.NFref.Items[0].refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar2);
          end;

          if (not UniMainModule.TRdata^.xchavecomplementar3.IsEmpty) and
             (UniMainModule.TRdata^.xfinalidade <> 0)  then
          begin
         //   ide.NFref.Add;
            Ide.NFref.Add.refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar3);
         //   ide.NFref.Items[0].refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar3);
          end;

          if (not UniMainModule.TRdata^.xchavecomplementar4.IsEmpty) and
             (UniMainModule.TRdata^.xfinalidade <> 0)  then
          begin
          //  ide.NFref.Add;
              Ide.NFref.Add.refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar4);
          //  ide.NFref.Items[0].refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar4);
          end;

          if (not UniMainModule.TRdata^.xchavecomplementar5.IsEmpty) and
             (UniMainModule.TRdata^.xfinalidade <> 0)  then
          begin
          //  ide.NFref.Add;
            Ide.NFref.Add.refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar5);
          //  ide.NFref.Items[0].refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar5);
          end;

          if (not UniMainModule.TRdata^.xchavecomplementar6.IsEmpty) and
             (UniMainModule.TRdata^.xfinalidade <> 0)  then
          begin
          //  ide.NFref.Add;
            Ide.NFref.Add.refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar6);
          //  ide.NFref.Items[0].refNFe := UniMainModule.TirarEspacos(UniMainModule.TRdata^.xchavecomplementar6);
          end;
      end;


      Ide.tpAmb   := UniMainModule.NFE.Configuracoes.WebServices.AMBIENTE;// TpcnTipoAmbiente.taHomologacao;
      Ide.verProc := '4.0';

      if UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger = 0 then
      begin
          Ide.tpEmis  := teNormal;
          TIPOEMISSAO := 1;
      end
      else if UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger = 1 then
      begin
          UniMainModule.NFE.Configuracoes.Geral.FormaEmissao := teOffLine;
          Ide.tpEmis                                         := teOffLine;
          TIPOEMISSAO                                        := 2;
          Ide.xJust                                          := 'Problemas técnicos no envio do Documento fiscal';
          Ide.dhCont                                         := now;
      end;

      if UniMainModule.qEmitenteCODCIDADE.AsString <> '' then // edtEmitCodCidade.Text <> '' Then
      begin
          try
              Ide.cMunFG := StrToInt(UniMainModule.qEmitenteCODCIDADE.AsString);
          except
              Showmessage( 'Código do município emitente não foi preenchido');
              abort;
          end;
      end;

      Emit.CNPJCPF        := UniMainModule.soNumero(UniMainModule.qEmitenteCNPJ.Text);
      Emit.xNome          := UniMainModule.qEmitenteRAZAOSOCIAL.Text;
      Emit.IE             := UniMainModule.soNumero(UniMainModule.qEmitenteIE.Text);
      Emit.xFant          := UniMainModule.qEmitenteFANTASIA.Text;
      Emit.EnderEmit.fone := UniMainModule.soNumero(UniMainModule.qEmitenteFONE.Text);

      if not(UniMainModule.qEmitenteCEP.Text = '') then
      begin
          try
            Emit.EnderEmit.CEP := StrToInt(UniMainModule.soNumero(UniMainModule.qEmitenteCEP.Text));
          except
          begin
            Showmessage( 'O Cep do Emitente não está correto!');
            abort;
          end;
          end;
      end;

      Emit.EnderEmit.xLgr    := UniMainModule.qEmitenteENDERECO.Text;
      Emit.EnderEmit.nro     := UniMainModule.qEmitenteNUMERO.Text;
      Emit.EnderEmit.xCpl    := UniMainModule.qEmitenteCOMPLEMENTO.Text;
      Emit.EnderEmit.xBairro := UniMainModule.qEmitenteBAIRRO.Text;

      try
           Emit.EnderEmit.cMun := StrToInt(UniMainModule.qEmitenteCODCIDADE.Text);
      except
      begin
          Showmessage( 'Código município do Emitente inválido');
          abort;
      end;
      end;

      Emit.EnderEmit.xMun  := UniMainModule.qEmitenteCIDADE.Text; // cbMunicipio.Text;
      Emit.EnderEmit.UF    := UniMainModule.qEmitenteUF.Text;
      Emit.EnderEmit.cPais := 1058;
      Emit.EnderEmit.xPais := 'BRASIL';
      Emit.IEST            := '';
      Emit.IM              := '';
      Emit.CNAE            := '';

      if UniMainModule.qEmitenteCRT.AsString = '1' then
          Emit.CRT := crtSimplesNacional
      else if UniMainModule.qEmitenteCRT.AsString = '2' then
          Emit.CRT := crtSimplesExcessoReceita
      else
          Emit.CRT := crtRegimeNormal;

      // sql ali de baixo, agora ta aki pra usar nos 2 ifs

      UniMainModule.Banco.ExecSQL
      ('select IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,' +
      ' COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,IDEMITENTE,REGIMECLIENTE ' +
      ' from CLIENTES where IDEMITENTE = ' + QuotedStr(self.COD_EMITENTE.ToString) + '  AND IDCLIENTE = ' +
      QuotedStr(self.IDCLIENTE.ToString), vdataset);
      vtipoRegime := vdataset.FieldByName('REGIMECLIENTE').AsString;

      if UniMainModule.TRdata^.xmodelo = 65 then
      begin
          if self.CPF_CONSUMIDOR <> '' then
          begin
              Dest.CNPJCPF   := UniMainModule.soNumero( self.CPF_CONSUMIDOR );
              Dest.indIEDest := inNaoContribuinte;
              ide.indFinal   := cfConsumidorFinal;
          end
          else
              Dest.CNPJCPF := '';

          if self.NOME_CONSUMIDOR <> '' then
              Dest.xNome := self.NOME_CONSUMIDOR
          else
              Dest.xNome := 'CONSUMIDOR FINAL';

          Dest.ISUF              := '';
          Dest.EnderDest.fone    := '';
          Dest.EnderDest.CEP     := 0;
          Dest.EnderDest.xLgr    := '';
          Dest.EnderDest.nro     := '';
          Dest.EnderDest.xCpl    := '';
          Dest.EnderDest.xBairro := '';
          Dest.EnderDest.cMun    := Emit.EnderEmit.cMun;
          Dest.EnderDest.xMun    := Emit.EnderEmit.xMun;
          Dest.EnderDest.UF      := Emit.EnderEmit.UF;
          IDE.idDest             := doInterna;
      end
      else if UniMainModule.TRdata^.xmodelo = 55 then
      begin
           Dest.CNPJCPF           := UniMainModule.soNumero(vdataset.FieldByName('CPF_CNPJ').AsString);
          Dest.ISUF              := '';
          Dest.xNome             := vdataset.FieldByName('RAZAOSOCIAL').AsString;
          Dest.EnderDest.fone    := vdataset.FieldByName('FONE').AsString;
          Dest.EnderDest.CEP     := StrToInt(UniMainModule.soNumero(vdataset.FieldByName('CEP').AsString));
          Dest.EnderDest.xLgr    := vdataset.FieldByName('ENDERECO').AsString;

          if vdataset.FieldByName('NRO').AsString = '' then
              Dest.EnderDest.nro := '0'
          else
              Dest.EnderDest.nro := vdataset.FieldByName('NRO').AsString;
          if vdataset.FieldByName('COMPLEMENTO').AsString = '' then
             Dest.EnderDest.xCpl    := 'TERREO'
          else
             Dest.EnderDest.xCpl    := vdataset.FieldByName('COMPLEMENTO').AsString;
          if vdataset.FieldByName('BAIRRO').AsString = '' then
             Dest.EnderDest.xBairro := 'CENTRO'
          else
             Dest.EnderDest.xBairro := vdataset.FieldByName('BAIRRO').AsString;
          Dest.EnderDest.cMun    := vdataset.FieldByName('CODMUNICIPIO').AsInteger;
          Dest.EnderDest.xMun    := vdataset.FieldByName('CIDADE').AsString;
          Dest.EnderDest.UF      := vdataset.FieldByName('UF').AsString;

          iF (vdataset.FieldByName('UF').AsString) <> (UniMainModule.qEmitenteUF.Text) then
          begin
              IDE.idDest  := doInterestadual   // fora do estado
          end
          else
          begin
              if self.CFOPVENDA = '6904' then
                  IDE.idDest  := doInterestadual
              else
                  IDE.idDest  := doInterna;    // dentro do estado
          end;

          if UniMainModule.qEmitenteUF.AsString = 'BA' then
             autXML.Add.CNPJCPF :=  UniMainModule.qEmitenteCNPJOPERADORA.AsString;

          if (vdataset.FieldByName('CONSUMIDORFINAL').AsString.ToUpper <> 'SIM') and
             (vdataset.FieldByName('RG_IE').AsString <> '') then
              Dest.IE := vdataset.FieldByName('RG_IE').AsString
          else
              Dest.IE := '';

          if (vdataset.FieldByName('TIPOPESSOA').AsString = 'FISICA') then
          begin
               Dest.indIEDest  := inNaoContribuinte;
               ide.indFinal    := cfConsumidorFinal;
          end
          else
          begin
               if ((Trim(vdataset.FieldByName('RG_IE').AsString) = '') or (Trim(vdataset.FieldByName('RG_IE').AsString) = 'ISENTO')) then
               begin
                   Dest.indIEDest := inIsento
               end
               else
               begin
                   Dest.IE        := UniMainModule.soNumero(vdataset.FieldByName('RG_IE').AsString);
                   Dest.indIEDest := inContribuinte;
               end;
          end;
      end;

      Dest.EnderDest.cPais := 1058;
      Dest.EnderDest.xPais := 'BRASIL';
      Contador             := 0;
      pessoaCliente        := vdataset.FieldByName('TIPOPESSOA').AsString;

      CalculoImposto := TCalculoNFE.Create;

      for vItem in self.ItensNota.List do
      begin
        if vItem <> nil then
        begin
          Contador := Contador + 1;
          if (vItem.cst = '00') or (vItem.cst = '000') then
            Vcst := cst00
          else if (vItem.cst = '10') or (vItem.cst = '010') then
            Vcst := cst10
          else if (vItem.cst = '20') or (vItem.cst = '020') then
            Vcst := cst20
          else if (vItem.cst = '40') or (vItem.cst = '040') then
            Vcst := cst40
          else if (vItem.cst = '41') or (vItem.cst = '041') then
            Vcst := cst41
          else if (vItem.cst = '50') or (vItem.cst = '050') then
            Vcst := cst50
          else if (vItem.cst = '60') or (vItem.cst = '060') then
            Vcst := cst60
          else if (vItem.cst = '70') or (vItem.cst = '070') then
            Vcst := cst70
          else if (vItem.cst = '90') or (vItem.cst = '090') then
            Vcst := cst90;

          if vItem.descricao <> '' then
          begin
            with Det.Add do
            begin
              Prod.nItem := Contador;
              Prod.cProd := vItem.id_item.ToString;

              if ((vItem.EAN = '') or (vItem.EAN = 'SEM GTIN')) then
              begin
                   if UniMainModule.NFE.Configuracoes.Geral.VersaoDF = ve400 then
                   begin
                        if EAN13Valido(vItem.EAN) then
                        begin
                             Prod.cEAN     := vItem.EAN;
                             Prod.cEANTrib := vItem.EAN;
                        end
                        else
                        begin
                             Prod.cEAN     := 'SEM GTIN';
                             Prod.cEANTrib := 'SEM GTIN';
                        end;
                   end;
              end
              else
              begin
                  if EAN13Valido(vItem.EAN) then
                  begin
                       Prod.cEAN     := vItem.EAN;
                       Prod.cEANTrib := vItem.EAN;
                  end
                  else
                  begin
                       Prod.cEAN     := 'SEM GTIN';
                       Prod.cEANTrib := 'SEM GTIN';
                  end;
              end;

              if Ide.tpAmb = StrToTpAmb(Ok, '2') then
                  Prod.xProd := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
              else
                  Prod.xProd := vItem.descricao;

              Prod.NCM     := vItem.NCM;
              Prod.CEST    := vItem.CEST;
              Prod.EXTIPI  := '';
              Prod.CFOP    := vItem.CFOP;
              Prod.uCom    := vItem.unidade;
              Prod.qCom    := vItem.qtd;
              Prod.vUnCom  := vItem.preco_unit;
              Prod.vProd   := RoundTo(vitem.qtd * vitem.preco_unit,-2) + vitem.acrescimo;// vItem.VALOR_TOTAL;
              Prod.IndTot  := StrToindTot(Ok, intTOStr(1));

              UniMainModule.Banco.ExecSQL('select ALIQ_NACIONAL,ALIQ_ESTADUAL,ALIQ_MUNICIPAL from TBIBPT where NCM=' +
                vItem.NCM, vdataset);

              try
                if vdataset.RecordCount > 0 then
                begin
                  case Emit.CRT of
                      crtRegimeNormal, crtSimplesExcessoReceita:
                      begin
                          vTribFed := vTribFed + (vItem.PREDICMS * (vdataset.FieldByName('ALIQ_NACIONAL').AsFloat / 100));
                          vTribEst := vTribEst + (vItem.PREDICMS * (vdataset.FieldByName('ALIQ_ESTADUAL').AsFloat / 100));
                          vTribMun := vTribMun + (vItem.PREDICMS * (vdataset.FieldByName('ALIQ_MUNICIPAL').AsFloat / 100));
                      end;
                      crtSimplesNacional:
                      begin
                          vTribFed := vTribFed + (vItem.VALOR_TOTAL * (vdataset.FieldByName('ALIQ_NACIONAL').AsFloat / 100));
                          vTribEst := vTribEst + (vItem.VALOR_TOTAL * (vdataset.FieldByName('ALIQ_ESTADUAL').AsFloat / 100));
                          vTribMun := vTribMun + (vItem.VALOR_TOTAL * (vdataset.FieldByName('ALIQ_MUNICIPAL').AsFloat / 100));
                      end;
                  end;
                end
                else
                begin
                     Showmessage( 'Esse NCM não consta na tabela IBPT!');
                     abort;
                end;
              except
              end;

              Prod.uTrib    := vItem.unidade;
              Prod.qTrib    := vItem.qtd;
              Prod.vUnTrib  := vItem.preco_unit;
              Prod.vFrete   := vitem.frete;
              Prod.vSeg     := vitem.seguro;
              prod.vOutro   := vItem.outros;
              Prod.vDesc    := vItem.desconto;
              Prod.vOutro   := vItem.acrescimo;

              if unimainModule.NFe.Configuracoes.Geral.VersaoDF = ve400 then
                 infAdProd := MontaTextoFCOPItem
              else
                 infAdProd     := '';

              Prod.xPed     := '';
              Prod.nItemPed := Contador.ToString;

              if vItem.CODIGO_ANP <> '' then
              begin
                   UniMainModule.Banco.ExecSQL
                   (' select CODIGO_ANP,DESC_ANP,PGPL_ANP,PGNN_ANP,PGNI_ANP,VPART_ANP'+
                   '  from PRODUTOS where IDEMITENTE = '+QuotedStr(self.COD_EMITENTE.ToString)+
                   '  AND IDPRODUTO = '+QuotedStr( vItem.id_item.ToString ), vdataset);

                   Prod.comb.cProdANP := vdataset.FieldByName('CODIGO_ANP').AsInteger;// vItem.CODIGO_ANP.ToInteger;
                   Prod.comb.UFcons   := UniMainModule.qEmitenteUF.asstring;          // 'PR';
                   prod.comb.descANP  := vdataset.FieldByName('DESC_ANP').AsString;   // 'GLP';
                   Prod.comb.pGLP     := vdataset.FieldByName('PGPL_ANP').AsFloat;    // 60.00;
                   Prod.comb.pGNn     := vdataset.FieldByName('PGNN_ANP').AsFloat;    // 40.00;
                   prod.comb.pGNi     := vdataset.FieldByName('PGNI_ANP').AsFloat;    // 40.00;
                   Prod.comb.vPart    := vItem.preco_unit / vdataset.FieldByName('VPART_ANP').AsFloat;// 25; // qProdTmpVLUNIT.Value / 25;
              end;

              with imposto do
              begin
                with ICMS do
                begin
                    case Emit.CRT of
                        crtRegimeNormal, crtSimplesExcessoReceita:
                        begin
                            orig := StrToOrig(Ok, vItem.origem.ToString);
                            if (vItem.cst = '00') or (vItem.cst = '000') then
                            begin
                                cst   := cst00; // ICMS - CST – 00 – Tributada integralmente
                                modBC := StrTomodBC(Ok, '3');
                                vBC   := vItem.VALOR_TOTAL;
                                pICMS := vItem.ALIQICMS;
                                vICMS := vItem.VALOR_ICMS;
                            end
                            else if (vItem.cst = '20') or (vItem.cst = '020') then
                            begin
                                cst    := cst20;
                                modBC  := StrTomodBC(Ok, '3');
                                pRedBC := 0; // qProdTmpPREDICMS.Value;
                                vBC    := vItem.PREDICMS;
                                pICMS  := vItem.ALIQICMS;
                                vICMS  := vItem.VALOR_ICMS;
                            end
                            else if (vItem.cst = '40') or (vItem.cst = '040') or (vItem.cst = '41') or (vItem.cst = '041') or
                              (vItem.cst = '50') or (vItem.cst = '050') then
                            begin
                                cst := cst40;
                            end
                            else if (vItem.cst = '51') or (vItem.cst = '051') then
                            begin
                                cst := cst51;
                            end
                            else if (vItem.cst = '90') or (vItem.cst = '090') then
                            begin
                                cst := cst90;
                            end;

                            if (vItem.cst = '00') then
                               FcpIcms(false);

                            if (vItem.cst = '10') then
                               FcpIcms;

                            FcpIcmsSt;

                            if (vItem.cst = '20') then
                               FcpIcms;

                            if (vItem.cst = '30') then
                               FcpIcmsSt;

                            if (vItem.cst = '51') then
                            FcpIcms;

                            FcpIcmsStRet;

                            if (vItem.cst = '70') then
                               FcpIcms;

                            FcpIcmsSt;

                            if (vItem.cst = '90') then
                               FcpIcms;

                            FcpIcmsSt;
                        end;

                        crtSimplesNacional:
                        begin
                            orig  := StrToOrig(Ok, vItem.origem.ToString);
                            CSOSN := StrToCSOSNIcms(Ok, vItem.CSOSN);

                            if (vItem.CSOSN = '101') then   //// validar pelo CFOP só para caso de industrialização, passa o credito
                            begin
                                pCredSN     := AliqSN;
                                vCredICMSSN := vItem.VALOR_TOTAL * AliqSN / 100;
                            end;

                            if (vItem.CSOSN = '102') then   //// validar pelo CFOP só para caso de industrialização, passa o credito
                            begin
                                vBC        := vItem.VALOR_TOTAL;
                                pICMS      := vItem.ALIQICMS;
                                vICMS      := ((vItem.VALOR_TOTAL * vItem.ALIQICMS) / 100);
                            end;

                            // Partilha de ICMS e Fundo de Pobreza NFe 4.0
                            With ICMSUFDest do
                            begin
                                vBCUFDest      := 0.00;
                                pFCPUFDest     := 0.00;
                                pICMSUFDest    := 0.00;
                                pICMSInter     := 0.00;
                                pICMSInterPart := 0.00;
                                vFCPUFDest     := 0.00;
                                vICMSUFDest    := 0.00;
                                vICMSUFRemet   := 0.00;
                            end;

                            if (vItem.CSOSN = '201') then
                            begin
                                vTipoRegimeCliente := 17;

                                modBCST     := StrTomodBCST(ok, '4' );

                                pMVAST      := 45.52;
                                pRedBCST    := 41.17;
                                pICMSST     := 17;

                                vBCST       := ((Prod.vProd*prod.qCom) * 41.17) / 100;
                                vICMSST     := (vBCST * 17) / 100;
                                svBCST      := SvBCST + vBCST;
                                SvICMSST    := SvICMSST + vICMSST;

                                vBC        := vItem.PREDICMS;
                                pICMS      := vItem.ALIQICMS;
                                vICMS      := vItem.VALOR_ICMS;
                            end;

                            if (vItem.CSOSN = '500') then
                            begin
                                vBCSTRet   := 0.0;
                                vICMSSTRet := 0.0;
                                vBC        := vItem.PREDICMS;
                                pICMS      := vItem.ALIQICMS;
                                vICMS      := vItem.VALOR_ICMS;
                            end;

                            if UniMainModule.NFe.Configuracoes.Geral.VersaoDF = ve400 then
                            begin
                                if (vItem.csosn = '201') or (vItem.CSOSN = '202') or (vItem.CSOSN = '203') then
                                    FcpIcmsSt;

                                if (vItem.CSOSN = '900') then
                                   FcpIcmsSt;
                            end;
                        end;
                    end;
                  {$REGION 'IPI, PIS, COFINS'}
                  with IPI do
                  begin
                      cst      := ipi99;
                      clEnq    := '';
                      CNPJProd := '';
                      cSelo    := '';
                      qSelo    := 0;
                      cEnq     := '';
                      vBC      := 0.0;
                      qUnid    := 0.0;
                      vUnid    := 0.0;
                      pIPI     := 0.0;
                      vIPI     := 0.0;
                  end;

                  with PIS do
                  begin
                      cst      := pis07;
                      PIS.vBC  := 0.0;
                      PIS.pPIS := 0.0;
                      PIS.vPIS := 0.0;
                  end;

                  with PISST do
                  begin
                      PISST.vBC       := 0.0;
                      PISST.pPIS      := 0.0;
                      PISST.qBCProd   := 0.0;
                      PISST.vAliqProd := 0.0;
                      PISST.vPIS      := 0.0;
                  end;

                  with COFINS do
                  begin
                      cst            := cof07;
                      COFINS.vBC     := 0.0;
                      COFINS.pCOFINS := 0.0;
                      COFINS.vCOFINS := 0.0;
                  end;

                  with COFINSST do
                  begin
                      COFINSST.vBC       := 0.0;
                      COFINSST.pCOFINS   := 0.0;
                      COFINSST.qBCProd   := 0.0;
                      COFINSST.vAliqProd := 0.0;
                      COFINSST.vCOFINS   := 0.0;
                  end;
                  {$ENDREGION}
                end;
              end;
            end;
          end;
        end;
        {$REGION 'Calculos Daniel'}

//        try
//            CalculoImposto.CrtEmissor   := UniMainModule.qEmitenteCRT.AsInteger; // Ord(TDesktop.DadosEmpresa.CRT);
//            CalculoImposto.UFemissor    := UniMainModule.UFToInt(UniMainModule.qEmitenteUF.AsString);
//            CalculoImposto.TipoCliente  := pessoaCliente; // iif(Cmd.Cliente.Pessoa=tcFisica,'F','J');
//            CalculoImposto.UFCliente    := Dest.EnderDest.UF; // Cmd.Cliente.Cidade.Estado;
//            CalculoImposto.UFClienteCod := UniMainModule.UFToInt( Dest.EnderDest.UF {TDesktop.DadosEmpresa.Cidade.Estado});
//
//            CalculoImposto.ValorBrutoProdutos  := self.TOTAL_PRODUTOS;   // Cmd.TotalDosProdutos;
//            CalculoImposto.ValorDesconto       := self.VALOR_DESCONTO;   // Cmd.ValorDesconto;
//            CalculoImposto.ValorOutrasDespesas := self.VALOR_OUTRAS_DESP;// Cmd.ValorAcrescimo;
//            CalculoImposto.CstIcms             := CSTICMSToStr( vItem.cst {AProd.Trib.ICMS.CST} );
//            CalculoImposto.ModalidadeBcIcms    := modBCToStr( '4'  {AProd.Trib.ICMS.ModBC}  );
//            CalculoImposto.BaseCalculoIcms     := ((AProd.ValorTotal * AProd.Trib.ICMS.PercBC)/100);
//            CalculoImposto.TaxaReducaoBcIcms   := AProd.trib.ICMS.PercRed;
//            CalculoImposto.AliquotaIcms        := vItem.aliq_icms; // AProd.Trib.ICMS.Aliquota;
//
//            CalculoImposto.ModalidadeBcIcmsSt  := modBCSTToStr(AProd.Trib.ICMSST.ModBC);
//            CalculoImposto.PercentualMvaIcmsSt := vitem.mva; // AProd.Trib.ICMSST.MVA;
//
//            CalculoImposto.Csosn                 := CSOSNIcmsToStr( vItem.CSOSN {AProd.Trib.ICMS.CSOSN});
//            CalculoImposto.AliquotaCreditoIcmsSn := AliqSN; // AProd.Trib.ICMS.AliqCredSN;
//
//            TNFeCalculoController.Calculo(CalculoImposto);
//
//            if UniMainModule.qEmitenteCRT.AsString <> '1' {(TDesktop.DadosEmpresa.CRT = crtRegimeNormal^} then
//            begin
//               AIte.CST        := tpcnCSTICMS(AProd.Trib.ICMS.CST);
//               AIte.ICMSOrigem := tpcnOrigemMercadoria(AProd.Trib.ICMS.Origem);
//               AIte.ModBC      := tpcnDeterminacaoBaseICMS(AProd.Trib.ICMS.ModBC);
//               AIte.vBC        := CalculoImposto.BaseCalculoIcms;
//               AIte.pIcms      := AProd.Trib.ICMS.Aliquota;
//               AIte.vICMS      := CalculoImposto.ValorIcms;
//            end
//            else
//            begin
//              AIte.CSOSN       := tpcnCSOSNIcms(AProd.Trib.ICMS.CSOSN);
//              AIte.pCredSN     := AProd.Trib.ICMS.AliqCredSN;
//              AIte.ICMSOrigem  := tpcnOrigemMercadoria(AProd.Trib.ICMS.Origem);
//              AIte.ModBC       := tpcnDeterminacaoBaseICMS(AProd.Trib.ICMS.ModBC);
//              AIte.vCredICMSSN := CalculoImposto.ValorCreditoIcmsSn;
//            end;
//
//        finally
//            Result.vBCICMS    := Result.vBCICMS + AIte.vBC;
//            Result.vICMS      := Result.vICMS  + AIte.vICMS;
//            Result.vBCST      := Result.vBCST + AIte.vBCST;
//            Result.vST        := Result.vST + AIte.vICMSST;
//        end;
      {$ENDREGION}
      end;

      if UniMainModule.qEmitenteCRT.AsInteger = 1 then
      begin
           Total.ICMSTot.vBC    := self.BASE_ICMS; // 0.0;
           Total.ICMSTot.vICMS  := self.VALOR_ICMS;// 0.0;
           Total.ICMSTot.vBCST  := svBCST;   // 0.0;
           Total.ICMSTot.vST    := SvICMSST; // 0.0;
      end
      else
      begin
           Total.ICMSTot.vBC    := self.BASE_ICMS;
           Total.ICMSTot.vICMS  := self.VALOR_ICMS;
           Total.ICMSTot.vBCST  := 0.0;
           Total.ICMSTot.vST    := 0.0;
      end;

      Total.ICMSTot.vProd       := self.TOTAL_PRODUTOS;
      Total.ICMSTot.vFrete      := self.VALOR_FRETE;
      Total.ICMSTot.vSeg        := self.VALOR_SEGURO;
      Total.ICMSTot.vDesc       := self.VALOR_DESCONTO;
      Total.ICMSTot.vOutro      := self.VALOR_DESCONTO;

      Total.ICMSTot.vFCP         := 0;  // arrumar esses com o FCP
      Total.ICMSTot.vFCPST       := 0;  // arrumar esses com o FCP
      Total.ICMSTot.vFCPSTRet    := 0;  // arrumar esses com o FCP
      Total.ICMSTot.vICMSUFDest  := 0.00;
      Total.ICMSTot.vICMSUFRemet := 0.00;

      Total.ICMSTot.vII        := 0.0;
      Total.ICMSTot.vIPI       := 0.0;
      Total.ICMSTot.vPIS       := 0.0;
      Total.ICMSTot.vCOFINS    := 0.0;
      Total.ICMSTot.vOutro     := self.VALOR_OUTRAS_DESP;
      Total.ICMSTot.vNF        := self.TOTAL_NOTA;

      Total.ISSQNtot.vServ     := 0.0;
      Total.ISSQNtot.vBC       := 0.0;
      Total.ISSQNtot.vISS      := 0.0;
      Total.ISSQNtot.vPIS      := 0.0;
      Total.ISSQNtot.vCOFINS   := 0.0;

      Total.retTrib.vRetPIS    := 0.0;
      Total.retTrib.vRetCOFINS := 0.0;
      Total.retTrib.vRetCSLL   := 0.0;
      Total.retTrib.vBCIRRF    := 0.0;
      Total.retTrib.vIRRF      := 0.0;
      Total.retTrib.vBCRetPrev := 0.0;
      Total.retTrib.vRetPrev   := 0.0;

      if UniMainModule.TRdata^.xmodelo = 55 then
      begin
          if SELF.TIPOFRETE = 0 then
             Transp.modFrete          := mfSemFrete
          else if self.TIPOFRETE = 1 then
             Transp.modFrete          := mfContaEmitente
          else if self.TIPOFRETE = 2 then
             Transp.modFrete          := mfContaDestinatario;

          if self.IDTRANSP > 0 then
            pegadadostransp;

          if (self.TIPOFRETE = 1) or (Self.TIPOFRETE = 2) then
          begin
              Transp.Transporta.xNome    := Self.TRANSPNOME;
              Transp.Transporta.CNPJCPF  := UniMainModule.soNumero( Self.TRANSPcnpj );
              transp.Transporta.IE       := Self.TRANSPIE;
              transp.Transporta.xEnder   := Self.TRANSPender;
              transp.Transporta.xMun     := Self.TRANSPibge;
              transp.Transporta.UF       := self.TRANSPUF;

              if not self.PLACAVEICULO.IsEmpty then
                transp.veicTransp.placa  := self.PLACAVEICULO.Trim;
              if not self.UFVEICULO.IsEmpty then
                Transp.veicTransp.UF     := self.UFVEICULO;
              if not self.COD_ANTT.IsEmpty then
                transp.veicTransp.RNTC   := self.COD_ANTT.Trim;

              if self.QUANT > 0 then
              begin
                  with Transp.Vol.Add do
                  begin
                      qVol   := strToint(Self.QUANT.ToString.Trim);
                      esp    := Self.ESPECIE;
                      marca  := Self.MARCA;
                      if not Self.NUMERO.IsEmpty then
                        nVol := self.NUMERO
                      else if (Self.PESOLIQUIDO > 0) and (Self.NUMERO.IsEmpty) then
                        nvol := 'SN';
                      if self.PESOBRUTO > 0 then
                        pesoB := Self.PESOBRUTO;
                      if self.PESOLIQUIDO > 0 then
                        pesoL := self.PESOLIQUIDO;
                  end;
              end;
          end;
      end
      else
          Transp.modFrete := mfSemFrete;

      vPagamento := ZeroValue;

      for vformas in self.formasNF.List do
      begin
          if vformas <> nil then
          begin
              if UniMainModule.NFE.Configuracoes.Geral.VersaoDF = ve400 then
              begin
                  if  vformas <> nil then
                  begin
                       with pag.add do
                       begin
                           if vformas.tipo_fatura = '01' then
                           begin
                               tPag      := fpDinheiro;
                               tpIntegra := tiPagNaoIntegrado;           // StrTotpIntegra(ok, qNotaFiscalFormaPgto.FieldByName('TP_INTEGRACAO_PGTO').AsString);
                               vPag      := vformas.valor + self.FTROCO; // qNotaFiscalFormaPgto.FieldByName('SUM_VL_PARCELA').AsFloat;
                           end
                           else if vformas.tipo_fatura = '02' then
                           begin
                               tPag      := fpCheque;
                               tpIntegra := tiPagNaoIntegrado;
                               vPag      := vformas.valor + self.FTROCO;
                           end
                           else if vformas.tipo_fatura = '03' then
                           begin
                               tPag := fpCartaoCredito;

                               if vformas.NSU <> '' then
                               begin
                                    msgCartao  := msgCartao + 'Pagamento Cartão '+vformas.nParcelas+' Parcela(s)'+#13#10+
                                    'Código NSU: '+vformas.NSU+' - Bandeira: '+vformas.Bandeira;
                                    vPag       := vformas.valor;
                                    tpIntegra  := tiPagIntegrado;
                                    if 'VISA' = UpperCase(vformas.Bandeira) then
                                        tBand := bcVisa
                                    else
                                    if UpperCase('MASTERCARD') = UpperCase(vformas.Bandeira) then
                                       tBand := bcMasterCard
                                    else
                                    if UpperCase('AMERICAN EXPRESS') = UpperCase(vformas.Bandeira) then
                                       tBand := bcAmericanExpress
                                    else
                                    if UpperCase('SOROCRED') = UpperCase(vformas.Bandeira) then
                                        tBand := bcSorocred
                                    else
                                        tBand := bcOutros;
                                    cAut       := vformas.NSU;
                                    CNPJ       := UniMainModule.qEmitenteCNPJOPERADORA.AsString; // CNPJOperadora;
                               end
                               else
                               begin
                                   tpIntegra := tiPagNaoIntegrado;
                                   vPag      := vformas.valor;
                               end;
                           end
                           else if vformas.tipo_fatura = '04' then
                           begin
                               tPag := fpCartaoDebito;

                               if vformas.NSU <> '' then
                               begin
                                    msgCartao := msgCartao + 'Pagamento Cartão '+vformas.nParcelas+' Parcela(s)'+#13#10+
                                    'Código NSU: '+vformas.NSU+' - Bandeira: '+vformas.Bandeira;
                                    vPag       := vformas.valor;
                                    tpIntegra  := tiPagIntegrado;
                                    if 'VISA' = UpperCase(vformas.Bandeira) then
                                        tBand := bcVisa
                                    else
                                    if UpperCase('MASTERCARD') = UpperCase(vformas.Bandeira) then
                                       tBand := bcMasterCard
                                    else
                                    if UpperCase('AMERICAN EXPRESS') = UpperCase(vformas.Bandeira) then
                                       tBand := bcAmericanExpress
                                    else
                                    if UpperCase('SOROCRED') = UpperCase(vformas.Bandeira) then
                                        tBand := bcSorocred
                                    else
                                        tBand := bcOutros;
                                    cAut       := vformas.NSU;
                                    CNPJ       := UniMainModule.qEmitenteCNPJOPERADORA.AsString; // CNPJOperadora;
                               end
                               else
                               begin
                                   tpIntegra := tiPagNaoIntegrado;
                                   vPag      := vformas.valor;
                               end;
                           end
                           else if vformas.tipo_fatura = '05' then
                           begin
                               tPag      := fpCreditoLoja;
                               tpIntegra := tiPagNaoIntegrado;
                               vPag      := vformas.valor + self.FTROCO;
                           end
                           else if vformas.tipo_fatura = '06' then
                           begin
                               tPag      := fpValeRefeicao;
                               tpIntegra := tiPagNaoIntegrado;
                               vPag      := vformas.valor + self.FTROCO;
                           end
                           else if vformas.tipo_fatura = '07' then   // para devolução
                           begin
                               tPag      := fpSemPagamento;
                               tpIntegra := tiPagNaoIntegrado;
                               vPag      := 0;
                           end
                           else
                           begin
                               tPag      := fpOutro;
                               tpIntegra := tiPagNaoIntegrado;
                               vPag      := vformas.valor + self.FTROCO;
                           end;
                       end;
                       vPagamento := vPagamento + vformas.valor;// qNotaFiscalFormaPgto.FieldByName('SUM_VL_PARCELA').AsFloat;
                  end
                  else
                  begin
                      with pag.add do
                      begin
                          tPag      := fpSemPagamento;
                          tpIntegra := tiNaoInformado;
                          vPag      := Total.ICMSTot.vNF;
                      end;
                  end;
                  pag.vTroco := self.FTROCO;
              end
              else
              begin
                  with pag.Add do
                  begin
                      if vformas.tipo_fatura = '01' then
                          tPag := fpDinheiro
                      else if vformas.tipo_fatura = '02' then
                          tPag := fpCheque
                      else if vformas.tipo_fatura = '04' then
                      begin
                          tPag      := fpCartaoCredito;
                          tpIntegra := tiPagNaoIntegrado;
                      end
                      else if vformas.tipo_fatura = '03' then
                      begin
                          tPag      := fpCartaoDebito;
                          tpIntegra := tiPagNaoIntegrado;
                      end
                      else if vformas.tipo_fatura = '05' then
                          tPag := fpCreditoLoja
                      else if vformas.tipo_fatura = '06' then
                          tPag := fpValeRefeicao
                      else
                          tPag := fpOutro;

                      vPag   := vformas.valor;
                  end;
              end;
          end;
      end;

      InfAdic.infAdFisco := self.DADOS_ADICIONAIS;

      // Dados do Responsável Técnico
      //infRespTec.CNPJ     := '23711050000182';           // xCNPJ_RespTec;
      //infRespTec.xContato := 'AFONSO FOLETTO NETO';      // xContato_RespTec; // Nome do responsável técnico
      //infRespTec.email    := 'afonsofoletto@hotmail.com';// xEmail_RespTec;
      //infRespTec.fone     := '44999500184';              // xFone_RespTec;
      //infRespTec.idCSRT   := 0;
      //infRespTec.hashCSRT := '';
      if (vTribFed + vTribEst + vTribMun) > 0 then
      begin
          InfAdic.infCpl := InfAdic.infCpl + #13 + #10;
          InfAdic.infCpl := InfAdic.infCpl + UniMainModule.qEmitenteMENSAGEMPROCOM.AsString;
          InfAdic.infCpl := InfAdic.infCpl + 'Valor Estimado dos Impostos Federais :R$ ' + FormatFloat('0.00', vTribFed) +
          ' Estadual :R$ ' + FormatFloat('0.00', vTribEst) + ' Municipal: R$ ' + FormatFloat('0.00', vTribMun) +
          ' FONTE: IBPT';

          InfAdic.infCpl := InfAdic.infCpl + #13 + #10;

          if vformas <> nil then
          begin
             if vformas.NSU <> '' then
                InfAdic.infCpl := InfAdic.infCpl + #13 + #10 + msgCartao;
          end;

          InfAdic.infCpl := InfAdic.infCpl + UniMainModule.qEmitenteMENSAGEMPROCOM.AsString;
      end;
    end;

  ////////////////////    Gera a Nota e o XML

  UniMainModule.NFE.NotasFiscais.GerarNFe;
  UniMainModule.NFE.NotasFiscais.Items[0].NFe.ide.cNF := GerarCodigoDFe(self.ID); // self.ID;

  if UniMainModule.qEmitenteTIPOCERTIFICADO.AsString = 'A3' then
      AguardaAssinatura
  else
      UniMainModule.NFE.NotasFiscais.Assinar;

  try
      if UniMainModule.qEmitenteTIPOCERTIFICADO.AsString = 'A3' then
          // Certificado A3 faz pelo EXE local
      else
      begin
          UniMainModule.NFE.NotasFiscais.Validar;
      end;

      gravainfo(UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID,UniMainModule.NFE.NotasFiscais.Items[0].XML);
      gavamsg(self.ID,self.SERIE,self.MODELO,self.COD_EMITENTE,UniMainModule.NFE.NotasFiscais.Items[0].XML);
  except
      on e: Exception do
      begin
          showmessage('Erro'+e.Message + ' A NF-e nº '+self.ID.ToString+' não é uma nota válida.');
          abort;
      end;
  end;

  NomePDF := UniMainModule.soNumero(UniMainModule.NFE.NotasFiscais.Items[0].NFe.infNFe.ID);
  NomeXML := UniMainModule.NFE.Configuracoes.Arquivos.PathNFe + '\' + NomePDF + '-nfe.xml';
  FFolder := UniServerModule.LocalCachePath;
  FUrl    := UniServerModule.LocalCacheURL + ExtractFileName(NomePDF)+'-nfe.pdf';

  if UniMainModule.qEmitenteLOGO.AsString <> '' then
     UniMainModule.aDanfe.Logo := UniMainModule.qEmitenteLOGO.AsString;


  ////  FAST REPORT
  if UniMainModule.TRdata^.xmodelo = 65 then
  begin
      UniMainModule.NFE.DANFE.TipoDANFE        := tiNFCe;
      UniMainModule.aDanfe.FastFile            := ExtractFilePath(ParamStr(0)) + 'DANFeNFCe[Reduzida].fr3'; // 'DanfeNFCe.fr3'; //

      UniMainModule.aDanfe.PathPDF             := FFolder;
      UniMainModule.aDanfe.Sistema             := 'Brti Sistemas';
      UniMainModule.aDanfe.ImprimeTotalLiquido := true;
      UniMainModule.adanfe.PathPDF             := UniServerModule.LocalCachePath;

      UniMainModule.aDanfe.MargemDireita     := 0.6;
      UniMainModule.aDanfe.MargemEsquerda    := 0.6;
      UniMainModule.aDanfe.MargemDireita     := 0.8;
      UniMainModule.aDanfe.MargemDireita     := 0.8;
  end
  else if UniMainModule.TRdata^.xmodelo = 55 then
  begin
      UniMainModule.NFE.DANFE.TipoDANFE      := tiRetrato;                                             // fazer parametro para mobile
      UniMainModule.aDanfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DANFeRetratoNovo.fr3'; //'DANFeSimplificado.fr3';//
      UniMainModule.aDanfe.PathPDF           := FFolder;
      UniMainModule.aDanfe.Sistema           := 'Brti Sistemas';
      UniMainModule.adanfe.PathPDF           := UniServerModule.LocalCachePath;


      UniMainModule.aDanfe.MargemDireita     := 6;
      UniMainModule.aDanfe.MargemEsquerda    := 6;
      UniMainModule.aDanfe.MargemDireita     := 8;
      UniMainModule.aDanfe.MargemDireita     := 8;
  end;
  // FIM FAST REPORT

  try
    if TIPOEMISSAO = 1 then
    begin
      if UniMainModule.qEmitenteTIPOCERTIFICADO.AsString = 'A3' then

      else
      begin
          if UniMainModule.qEmitenteUF.AsString <> 'BA' then
          begin
               UniMainModule.NFE.Enviar(0, false, true);
               sincrono := true;
          end
          else if ((UniMainModule.qEmitenteUF.AsString = 'BA') and (UniMainModule.TRdata^.xmodelo = 65)) then
          begin
               UniMainModule.NFE.Enviar(0, false, true);
               sincrono := true;
          end
          else
          begin
               UniMainModule.NFE.Enviar(0, false, false);
               sincrono := false;
          end;
      end;

      self.CHAVE_ACESSO     := UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID;

      if not Sincrono then  // assincrono
      begin
        self.CSTAT            := UniMainModule.NFE.WebServices.Retorno.cStat;
        RetornoWS             := UTF8Encode(UniMainModule.NFE.WebServices.Retorno.RetornoWS);
        self.XML_NOTA         := UniMainModule.NFE.NotasFiscais.Items[0].XML;
        self.PROTOCOLO        := UniMainModule.NFE.NotasFiscais.Items[0].NFE.procNFe.nProt;
        self.DATA_HORARECIBO  := UniMainModule.NFE.NotasFiscais.Items[0].NFE.procNFe.dhRecbto;
      end
      else
      begin
        self.CSTAT            := UniMainModule.NFE.WebServices.Enviar.cStat;
        RetornoWS             := UTF8Encode(UniMainModule.NFE.WebServices.Enviar.RetornoWS);
        self.XML_NOTA         := UniMainModule.NFE.NotasFiscais.Items[0].XML;
        self.PROTOCOLO        := UniMainModule.NFE.NotasFiscais.Items[0].NFE.procNFe.nProt;
        self.DATA_HORARECIBO  := UniMainModule.NFE.NotasFiscais.Items[0].NFE.procNFe.dhRecbto;
      end;

      if (self.CSTAT = 100) or (self.CSTAT = 150) then // autorizada e autorizada fora do prazo
      begin
        UniMainModule.Banco.StartTransaction;
        UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''A'', protocolo = :p1, '+
        ' XML_NOTA = :p2, CHAVE_ACESSO = :p3, DATA_HORARECIBO = :p4, CSTAT = :p5 where ID = :p7'+
        ' and SERIE = :p8 and modelo = :p9 and cod_emitente = :p10 ',[QuotedStr(self.PROTOCOLO),
        QuotedStr(self.XML_NOTA),self.CHAVE_ACESSO,FormatDateTime('YYYY/MM/DD hh:nn:ss',
        Self.DATA_HORARECIBO),Self.CSTAT.ToString,self.ID.ToString,Self.SERIE.ToString,
        Self.MODELO.ToString,self.COD_EMITENTE.ToString]);
        UniMainModule.Banco.Commit;
        gavamsg(self.ID,self.SERIE,self.MODELO,self.COD_EMITENTE,RetornoWS);

        UniMainModule.NFE.DANFE.ImprimirDANFEPDF();

        if UniMainModule.mobile = 'S' then
        begin
            UniMainModule.pdfNfeInterna := 'S';
            fPdfM.Caption               := 'Danfe NFCe';
            fPdfM.UnimPDFFrame1.PdfURL  := FUrl;
            fPdfM.ShowModal;
        end
        else
        begin
            UniMainModule.mostrarBotoesRelatorioEmail := true;
            fPDF.Caption          := NomePDF;
            fPDF.UniURLFrame1.URL := FUrl;
            fPDF.ShowModal;
        end;
      end;
    end
    else if TIPOEMISSAO = 2 then
    begin
        UniMainModule.Banco.StartTransaction;
        UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''N'', '+
        ' DATA_HORARECIBO = :p4 where ID = :p7'+
        ' and SERIE = :p8 and modelo = :p9 and cod_emitente = :p10 ',[
        FormatDateTime('YYYY/MM/DD hh:nn:ss',Self.DATA_HORARECIBO),
        self.ID.ToString,Self.SERIE.ToString,Self.MODELO.ToString,self.COD_EMITENTE.ToString]);
        UniMainModule.Banco.Commit;

        UniMainModule.NFE.DANFE.ImprimirDANFEPDF();

        if UniMainModule.mobile = 'S' then
        begin
            UniMainModule.pdfNfeInterna := 'S';
            fPdfM.Caption               := 'Danfe NFCe';
            fPdfM.UnimPDFFrame1.PdfURL  := FUrl;
            fPdfM.ShowModal;
        end
        else
        begin
            UniMainModule.mostrarBotoesRelatorioEmail := true;
            fPDF.Caption          := NomePDF;
            fPDF.UniURLFrame1.URL := FUrl;
            fPDF.ShowModal;
        end;
    end;

    if UniMainModule.Tela = 'OTICA' then
    begin
        UniMainModule.Banco.StartTransaction;
        UniMainModule.Banco.ExecSQL('update OTICACAB set SITUACAO = ''Faturado'', '+
        ' DATASAIDA = :p0, HORASAIDA = :p1  where CODIGO = :p2 and cod_emitente = :p3 '
        ,[FormatDateTime('YYYY/MM/DD',date),FormatDateTime('hh:nn:ss',time),
        UniMainModule.CodigoTela, self.COD_EMITENTE.ToString]);
        UniMainModule.Banco.Commit;
    end;

    if UniMainModule.Tela = 'OS' then
    begin
        UniMainModule.Banco.StartTransaction;
        UniMainModule.Banco.ExecSQL('update OSCAB set SITUACAO = ''Faturado'', '+
        ' DATAHORASAIDA = :p0  where CODIGO = :p2 and cod_emitente = :p3 '
        ,[FormatDateTime('YYYY/MM/DD hh:nn:ss',now), //FormatDateTime('hh:nn:ss',time),
        UniMainModule.CodigoTela, self.COD_EMITENTE.ToString]);
        UniMainModule.Banco.Commit;
    end;

  except
    on e: Exception do
    begin
        //////////////    arrumar aki depois para o certificado A3

        self.CHAVE_ACESSO    := UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID;

        if self.CSTAT <= 0 then
          self.CSTAT           := UniMainModule.NFE.WebServices.Enviar.cStat;
        if (self.CSTAT <= 0) and (UniMainModule.NFE.WebServices.Retorno.cStat > 0) then
          self.CSTAT   := UniMainModule.NFE.WebServices.Retorno.cStat;

        RetornoWS      := UTF8Encode(UniMainModule.NFE.WebServices.Retorno.RetornoWS);
        gavamsg(self.ID,self.SERIE,self.MODELO,self.COD_EMITENTE,'Mensagem '+e.Message);

        if (self.CSTAT = 301) or (self.CSTAT = 302) then    // denegada
        begin
            UniMainModule.Banco.StartTransaction;
            UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''D'', CHAVE_ACESSO = '+
            self.CHAVE_ACESSO.QuotedString+', CSTAT = '+Self.CSTAT.ToString+' where ID = '+self.ID.ToString+
            ' and SERIE = '+Self.SERIE.ToString+' and modelo = '+
            Self.MODELO.ToString+' and cod_emitente = '+Self.COD_EMITENTE.ToString);
            UniMainModule.Banco.Commit;
        end
        else if (self.CSTAT = 204) then
        begin
            UniMainModule.Banco.StartTransaction;
            UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA =''R''  ,CHAVE_ACESSO = '+
            self.CHAVE_ACESSO.QuotedString+
             ', CSTAT = '+Self.CSTAT.ToString+' where ID = '+self.ID.ToString+
             ' and SERIE = '+Self.SERIE.ToString+' and modelo = '+
             Self.MODELO.ToString+' and cod_emitente = '+Self.COD_EMITENTE.ToString);
            UniMainModule.Banco.Commit;
        end
        ELSE if (self.CSTAT = 206) THEN    // inutilizada
        BEGIN
            UniMainModule.Banco.StartTransaction;
            UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''I'', CHAVE_ACESSO = '+
            self.CHAVE_ACESSO.QuotedString+
             ', CSTAT = '+QuotedStr(Self.CSTAT.ToString)+' where ID = '+self.ID.ToString+
             ' and SERIE = '+Self.SERIE.ToString+' and modelo = '+
             Self.MODELO.ToString+' and cod_emitente = '+Self.COD_EMITENTE.ToString);
            UniMainModule.Banco.Commit;
        END
        else if (self.CSTAT <> 100) and (self.CSTAT <> 150)  and (self.CSTAT > 0)  then   // rejeitada
        begin
            UniMainModule.Banco.StartTransaction;
            UniMainModule.Banco.ExecSQL('update notas_cab set STATUS_NOTA = ''R'', CHAVE_ACESSO = '+
            self.CHAVE_ACESSO.QuotedString+
             ', CSTAT = '+QuotedStr(Self.CSTAT.ToString)+' where ID = '+self.ID.ToString+
             ' and SERIE = '+Self.SERIE.ToString+' and modelo = '+
             Self.MODELO.ToString+' and cod_emitente = '+Self.COD_EMITENTE.ToString);
            UniMainModule.Banco.Commit;
        end;
        showmessage('Erro'+e.Message + #13 + #10 +RetornoWS+'Houve um erro ao transmitir a NF-e. Tente novamente.');
    end;
  end;
end;

procedure TNotasCab.Salvar;
var
  vItem  : TVendasitens;
  vformas: TFormasNF;
  lnrnota, idReceberCab, codigoReceberCab: Integer;
  lbase  : TBase;
begin
    calcdescacres;

    with UniMainModule.Banco do
    begin
        StartTransaction;

        //gera código da Nota Fiscal
        if UniMainModule.TRdata^.xmodelo = 65 then
          lnrnota := ExecSQLScalar('select coalesce(GERAL_NNFCEPRODUCAO,0) + 1 from emitente where idemitente=' +
            UniMainModule.CodigoEmitente)
        else
          lnrnota := ExecSQLScalar('select coalesce(GERAL_NNFEPRODUCAO,0) + 1 from emitente where idemitente=' +
            UniMainModule.CodigoEmitente);

        self.ID               := lnrnota;
        UniMainModule.notaw   := self.ID;
        UniMainModule.Modelow := self.MODELO;
        UniMainModule.Seriew  := self.SERIE;
        UniMainModule.interna := 'N';

        try
            ExecSQL('insert into NOTAS_CAB  ' +
            '( ID, SERIE, MODELO, COD_EMITENTE, NATUREZA_OPER, CRT, ALIQ_SIMPLES, TIPONOTA                         ' +
            ' , DTEMISSAO, DTSAIDA, IDCLIENTE, CPF_CONSUMIDOR, NOME_CONSUMIDOR, IDTRANSP                           ' +
            ' , TIPOFRETE, PLACAVEICULO, UFVEICULO, COD_ANTT, BASE_ICMS, VALOR_ICMS, BASE_ICMS_ST                  ' +
            ' , VALOR_ICMS_ST, VALOR_FRETE, VALOR_DESCONTO, VALOR_ACRESCIMO, VALOR_SEGURO, VALOR_OUTRAS_DESP       ' +
            ' , VALOR_IPI, BASE_IPI, TOTAL_PRODUTOS, TOTAL_NOTA, QUANT, ESPECIE, MARCA, NUMERO, PESOBRUTO          ' +
            ' , PESOLIQUIDO, STATUS_NOTA, DADOS_ADICIONAIS, FORMA_PGTO, XML_NOTA, CSTAT, XSTAT, AMBIENTE           ' +
            ' , TIPOEMISSAO, PROTOCOLO, DATA_HORARECIBO, CHAVE_ACESSO, FINALIDADE, XML_ORIGINAL,                   ' +
            '   CHAVE_ACESSO_ORIGINAL, VENDEDOR, CFOPVENDA                                                                    ' +
            '   ) values  ( :ID, :SERIE, :MODELO, :COD_EMITENTE, :NATUREZA_OPER, :CRT, :ALIQ_SIMPLES, :TIPONOTA    ' +
            ' , :DTEMISSAO, :DTSAIDA, :IDCLIENTE, :CPF_CONSUMIDOR, :NOME_CONSUMIDOR, :IDTRANSP                     ' +
            ' , :TIPOFRETE, :PLACAVEICULO, :UFVEICULO, :COD_ANTT, :BASE_ICMS, :VALOR_ICMS, :BASE_ICMS_ST           ' +
            ' , :VALOR_ICMS_ST, :VALOR_FRETE, :VALOR_DESCONTO, :VALOR_ACRESCIMO, :VALOR_SEGURO, :VALOR_OUTRAS_DESP ' +
            ' , :VALOR_IPI, :BASE_IPI, :TOTAL_PRODUTOS, :TOTAL_NOTA, :QUANT, :ESPECIE, :MARCA, :NUMERO, :PESOBRUTO ' +
            ' , :PESOLIQUIDO, :STATUS_NOTA, :DADOS_ADICIONAIS, :FORMA_PGTO, :XML_NOTA, :CSTAT, :XSTAT, :AMBIENTE   ' +
            ' , :TIPOEMISSAO, :PROTOCOLO, :DATA_HORARECIBO, :CHAVE_ACESSO, :FINALIDADE, :XML_ORIGINAL, '+
            ' :CHAVE_ACESSO_ORIGINAL,:VENDEDOR, :CFOPVENDA ) ',
            [lnrnota, self.SERIE, self.MODELO, self.COD_EMITENTE, self.NATUREZA_OPER, self.CRT, self.ALIQ_SIMPLES,
            self.TIPONOTA, self.DTEMISSAO, self.DTSAIDA, self.IDCLIENTE, self.CPF_CONSUMIDOR, self.NOME_CONSUMIDOR,
            self.IDTRANSP, self.TIPOFRETE, self.PLACAVEICULO, self.UFVEICULO, self.COD_ANTT, self.BASE_ICMS,
            self.VALOR_ICMS, self.BASE_ICMS_ST, self.VALOR_ICMS_ST, self.VALOR_FRETE, self.VALOR_DESCONTO,
            self.VALOR_ACRESCIMO, self.VALOR_SEGURO, self.VALOR_OUTRAS_DESP, self.VALOR_IPI, self.BASE_IPI,
            self.TOTAL_PRODUTOS, self.TOTAL_NOTA, self.QUANT, self.ESPECIE, self.MARCA, self.NUMERO, self.PESOBRUTO,
            self.PESOLIQUIDO, self.STATUS_NOTA, self.DADOS_ADICIONAIS, self.FORMA_PGTO, self.XML_NOTA, self.CSTAT,
            self.XSTAT, self.AMBIENTE, self.TIPOEMISSAO, self.PROTOCOLO, self.DATA_HORARECIBO, self.CHAVE_ACESSO,
            self.FINALIDADE, self.XML_ORIGINAL, self.CHAVE_ACESSO_ORIGINAL,self.VENDEDOR,self.CFOPVENDA]);

            for vItem in self.ItensNota.List do
            begin
                if vItem <> nil then
                begin
                    ExecSQL(' insert into NOTAS_ITENS ' +
                    ' ( ID, SERIE, MODELO, COD_EMITENTE, IDPRODUTO, SEQ_PRODUTO, NCM, CFOP, NATUREZA, UN, QUANT ' +
                    ' , VLUNIT, BASEICMS, VLICMS, ALIQICMS, BASE_IPI, VALOR_IPI, ALIQ_IPI, CST_CSOSN, CRED_ICMS ' +
                    ' , MVA, PREDICMS, CEST, EAN, ORIGEM, CODIGO_ANP, DESCONTO, ACRESCIMO, FRETE, SEGURO, OUTROS ' +
                    '  ) values ( ' +
                    '  :ID , :SERIE, :MODELO, :COD_EMITENTE, :IDPRODUTO, :SEQ_PRODUTO, :NCM, :CFOP, :NATUREZA, :UN, :QUANT ' +
                    '  , :VLUNIT, :BASEICMS, :VLICMS, :ALIQICMS, :BASE_IPI, :VALOR_IPI, :ALIQ_IPI, :CST_CSOSN, :CRED_ICMS ' +
                    '  , :MVA, :PREDICMS, :CEST, :EAN, :ORIGEM, :CODIGO_ANP, :DESCONTO, :ACRESCIMO, :FRETE, :SEGURO, :OUTROS) ',
                    [lnrnota, self.SERIE, self.MODELO, self.COD_EMITENTE, vItem.id_item, vItem.seq_item, vItem.NCM, vItem.CFOP,
                    { vItem.NATUREZA } 'Venda', vItem.unidade, vItem.qtd, vItem.preco_unit, vItem.PREDICMS, vItem.VALOR_ICMS,
                    vItem.ALIQICMS, vItem.BASE_IPI, vItem.VALOR_IPI, vItem.aliq_ipi, vItem.CSOSN, '0' { vItem.CRED_ICMS }
                    , {0} vItem.MVA , vItem.PREDICMS , vItem.CEST, vItem.EAN, vItem.origem, vItem.CODIGO_ANP,
                    vItem.desconto, vItem.acrescimo, vItem.FRETE, vItem.SEGURO, vItem.OUTROS]);

                    // baixa no estoque
                    UniMainModule.DiminuiEstoque(self.COD_EMITENTE,vItem.id_item,vItem.qtd);
                end;
            end;

            for vformas in self.formasNF.List do
            begin
                if vformas <> nil then
                begin
                    ExecSQL('insert into NOTAS_FORMAS ' +
                    ' ( ID, SERIE, MODELO, COD_EMITENTE, PARCELA, EMISSAO, VENCIMENTO, VALOR, TIPO_FATURA,TOKEN,IDINTENCAO,'+
                    ' NOMEINTENCAOSTATUS,IDTERMINAL,COMPROVANTESTAB,NSU,NPARCELAS) ' +
                    ' values  ' +
                    '  ( :ID,:SERIE,:MODELO,:COD_EMITENTE,:PARCELA,:EMISSAO,:VENCIMENTO,:VALOR,:TIPO_FATURA,:TOKEN,:IDINTENCAO,'+
                    ' :NOMEINTENCAOSTATUS,:IDTERMINAL,:COMPROVANTESTAB,:NSU,:NPARCELAS)',
                    [lnrnota, self.SERIE, self.MODELO, self.COD_EMITENTE, vformas.parcela, self.DTEMISSAO, vformas.vencimento,
                    vformas.valor, vformas.tipo_fatura,vformas.token,vformas.idIntencao,vformas.nomeIntencaoStatus,vformas.idTerminal,
                    vformas.ComprovanteEstab,vformas.NSU,vformas.nParcelas]);

                    if vformas.tipo_fatura = '05' then
                    begin
                          idReceberCab     := lbase.pegaseg('RECEBERCAB', 'ID', UniMainModule.Banco);
                          codigoReceberCab := lbase.ultimoCampo('RECEBERCAB', 'CODIGO','IDemitente',UniMainModule.Banco);

                          ExecSQL('insert into RECEBERCAB                    '+
                          ' ( ID,IDEMITENTE,CODIGO,FATURA,DATA,DATAVCTO,     '+
                          ' VALOR,SALDO,OBS,PARCELA, CLIENTE, REFPEDIDO ) '+
                          ' values                                           '+
                          '( :ID,:IDEMITENTE,:CODIGO,:FATURA,:DATA,:DATAVCTO,'+
                          ' :VALOR,:SALDO,:OBS,:PARCELA,:CLIENTE,:REFPEDIDO )',
                          [idReceberCab,
                           UniMainModule.CodigoEmitente.ToInteger,
                           codigoReceberCab,
                           vformas.fatura,
                           vformas.emissao,    // Data
                           vformas.vencimento, // Vencimento
                           vformas.valor,      // valor parcela
                           vformas.valor,      // Saldo
                           'VENDA N°'+intToStr( lnrnota ),// Obs
                           vformas.parcela,    // Parcela
                           self.IDCLIENTE,      // Cliente
                           lnrnota
                           ]);
                    end;
                end;
            end;

            if UniMainModule.TRdata^.xmodelo = 65 then
              ExecSQL('update emitente set GERAL_NNFCEPRODUCAO = ' + QuotedStr(lnrnota.ToString) + ' where idemitente=' +
                UniMainModule.CodigoEmitente)
            else
              ExecSQL('update emitente set GERAL_NNFEPRODUCAO = ' + QuotedStr(lnrnota.ToString) + ' where idemitente=' +
                UniMainModule.CodigoEmitente);

            Commit;

        except
          on e: Exception do
          begin
              Rollback;
              raise Exception.create(e.Message);
          end;
        end;
    end;
end;

end.
