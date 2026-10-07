unit uMdfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,

  ACBrDFeUtil,


  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniRadioGroup, uniMultiItem, uniComboBox,
  uniDBComboBox, uniEdit, uniDBEdit, uniLabel, uniPanel, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniSpeedButton, uniBasicGrid, uniDBGrid, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  ACBrUtil, pcnCOnversao, uniFileUpload;

type
  TfMdfe = class(TUniFrame)
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    bCancelar: TUniBitBtn;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    eCodigoMDFE: TUniDBEdit;
    eCodVeiculo: TUniDBEdit;
    ePlacaVeiculo: TUniDBEdit;
    eNomeVeiculo: TUniDBEdit;
    eUf: TUniDBComboBox;
    eUfPrimeiraEntrega: TUniDBComboBox;
    eUfUltimaEntrega: TUniDBComboBox;
    bVeiculo: TUniSpeedButton;
    dsMdfe: TDataSource;
    qCarregamento: TFDQuery;
    dsCarregamento: TDataSource;
    qMunicipiosDescarregamento: TFDQuery;
    dsMunicipioDescarregamento: TDataSource;
    qCondutores: TFDQuery;
    dsCondutores: TDataSource;
    qNfe: TFDQuery;
    qCarregamentoCODIGO: TIntegerField;
    qCarregamentoID_EMITENTE: TIntegerField;
    qCarregamentoMDFE: TIntegerField;
    qCarregamentoCODIBGE: TStringField;
    qCarregamentoNOME: TStringField;
    qCarregamentoUF: TStringField;
    qMunicipiosDescarregamentoCODIGO: TIntegerField;
    qMunicipiosDescarregamentoMDFE: TIntegerField;
    qMunicipiosDescarregamentoID_EMITENTE: TIntegerField;
    qMunicipiosDescarregamentoCODIGOIBGE: TStringField;
    qMunicipiosDescarregamentoNOMECIDADE: TStringField;
    qMunicipiosDescarregamentoUF: TStringField;
    qCondutoresCODIGO: TIntegerField;
    qCondutoresID_EMITENTE: TIntegerField;
    qCondutoresMDFE: TIntegerField;
    qCondutoresCOD_CLIENTE: TIntegerField;
    qCondutoresNOME: TStringField;
    qCondutoresCPF: TStringField;
    qNfeCODIGO: TIntegerField;
    qNfeID_EMITENTE: TIntegerField;
    qNfeMDFE: TIntegerField;
    qNfeNR_NFE: TIntegerField;
    qNfeNOME_DESTINATARIO: TStringField;
    qNfeCODIBGE: TStringField;
    qNfeMUNICIPIO: TStringField;
    qNfeCHAVE: TStringField;
    dsNfe: TDataSource;
    UniContainerPanel2: TUniContainerPanel;
    bEnviar: TUniBitBtn;
    bSalvar: TUniBitBtn;
    UniPanel5: TUniPanel;
    UniDBGrid4: TUniDBGrid;
    UniContainerPanel3: TUniContainerPanel;
    bitbtn10: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniContainerPanel4: TUniContainerPanel;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel3: TUniPanel;
    UniDBGrid2: TUniDBGrid;
    UniPanel4: TUniPanel;
    UniDBGrid3: TUniDBGrid;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel10: TUniLabel;
    dbTotalNotas: TUniDBFormattedNumberEdit;
    UniLabel11: TUniLabel;
    dbPesoTotal: TUniDBFormattedNumberEdit;
    UniLabel12: TUniLabel;
    dbValorTotal: TUniDBFormattedNumberEdit;
    UniFileUpload1: TUniFileUpload;
    UniContainerPanel6: TUniContainerPanel;
    bitbtn3: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniContainerPanel7: TUniContainerPanel;
    bitbtn7: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniContainerPanel8: TUniContainerPanel;
    bitbtn13: TUniSpeedButton;
    UniSpeedButton6: TUniSpeedButton;
    UniPanel6: TUniPanel;
    UniDBGrid5: TUniDBGrid;
    UniContainerPanel9: TUniContainerPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    eufPercorrido: TUniComboBox;
    qEstadosPercorridos: TFDQuery;
    dsEstadosPercorridos: TDataSource;
    qEstadosPercorridosCODIGO: TIntegerField;
    qEstadosPercorridosID_EMITENTE: TIntegerField;
    qEstadosPercorridosMDFE: TIntegerField;
    qEstadosPercorridosUF: TStringField;
    qEstadosPercorridosNOMEUF: TStringField;
    ePesoBruto: TUniDBEdit;
    eTara: TUniDBEdit;
    UniLabel15: TUniLabel;
    qNfePESO: TFMTBCDField;
    qNfeVALOR: TFMTBCDField;
    procedure bitbtn10Click(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniSpeedButton2Click(Sender: TObject);
    procedure bitbtn3Click(Sender: TObject);
    procedure UniSpeedButton4Click(Sender: TObject);
    procedure UniSpeedButton6Click(Sender: TObject);
    procedure bitbtn7Click(Sender: TObject);
    procedure bitbtn13Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure eUfUltimaEntregaExit(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure eCodigoMDFEExit(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bVeiculoClick(Sender: TObject);
    procedure UniSpeedButton3Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
  private

    procedure VerificaCampos;
    procedure CarregaTabelas;
    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
    procedure LerConfiguracao;
    procedure AtivaBotoes;

    function codigoUF(uf:string) : integer;

  public
    NomeXML, NomePDF, ArquivoPDF, FFolder, FUrl: string;
    NomedoArquivo, caminho, Ext, CurDir: String;
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, uPesquisa, pmdfeConversaoMDFe, ServerModule, uPDF,
  uBuscarNfeMdfe;



procedure TfMdfe.btnIncluiClick(Sender: TObject);
var   lbase: TBase;
begin
     UniMainModule.qMdfe.Close;
     UniMainModule.qMdfe.ParamByName('id_emitente').asString := UniMainModule.codigoEmitente;
     UniMainModule.qmdfe.Open;

     UniMainModule.qMdfe.Append;
     UniMainModule.qMdfeID.AsInteger          := lbase.pegaseg('MDFE', 'ID',UniMainModule.Banco);
     UniMainModule.qMdfeCOD_MDFE.AsInteger    := lbase.ultimoCampo('MDFE', 'COD_MDFE','ID_emitente',UniMainModule.Banco);
     UniMainModule.qMdfeID_EMITENTE.AsString  := UniMainModule.CodigoEmitente;

     benviar.Enabled   := true;
     bSalvar.Enabled   := true;
     bCancelar.Enabled := True;

     CarregaTabelas;
     eCodVeiculo.SetFocus;
end;

procedure TfMdfe.CarregaTabelas;
var
  total : Currency;
begin
     qCarregamento.Close;
     qCarregamento.ParamByName('id_emitente').asstring := unimainmodule.codigoEmitente;
     qCarregamento.ParamByName('mdfe').Value           := eCodigoMDFE.Text;
     qCarregamento.Open;

     qEstadosPercorridos.Close;
     qEstadosPercorridos.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
     qEstadosPercorridos.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
     qEstadosPercorridos.Open;

     qMunicipiosDescarregamento.Close;
     qMunicipiosDescarregamento.ParamByName('id_emitente').asstring := unimainmodule.codigoEmitente;
     qMunicipiosDescarregamento.ParamByName('mdfe').Value           := eCodigoMDFE.Text;
     qMunicipiosDescarregamento.Open;

     qCondutores.Close;
     qCondutores.ParamByName('id_emitente').asstring := unimainmodule.codigoEmitente;
     qCondutores.ParamByName('mdfe').Value           := eCodigoMDFE.Text;
     qCondutores.Open;

     qNFE.Close;
     qNFE.ParamByName('id_emitente').asstring := unimainmodule.codigoEmitente;
     qNFE.ParamByName('mdfe').Value           := eCodigoMDFE.Text;
     qNFE.Open;

     total := 0;
     qnfe.First;
     while not qnfe.Eof do
     begin
          total := total + qNFEVALOR.AsFloat;
          qNFE.Next;
     end;

     dbValorTotal.Text := CurrToStr(total);
     dbTotalNotas.Text := IntToStr(qnfe.RecordCount);
end;


function TfMdfe.codigoUF(uf: string): integer;
begin
          if uf =  'RO' then result := 11
     else if uf =  'AC' then result := 12
     else if uf =  'AM' then result := 13
     else if uf =  'RR' then result := 14
     else if uf =  'PA' then result := 15
     else if uf =  'AP' then result := 16
     else if uf =  'TO' then result := 17
     else if uf =  'MA' then result := 21
     else if uf =  'PI' then result := 22
     else if uf =  'CE' then result := 23
     else if uf =  'RN' then result := 24
     else if uf =  'PB' then result := 25
     else if uf =  'PE' then result := 26
     else if uf =  'AL' then result := 27
     else if uf =  'SE' then result := 28
     else if uf =  'BA' then result := 29
     else if uf =  'MG' then result := 31
     else if uf =  'ES' then result := 32
     else if uf =  'RJ' then result := 33
     else if uf =  'SP' then result := 35
     else if uf =  'PR' then result := 41
     else if uf =  'SC' then result := 42
     else if uf =  'RS' then result := 43
     else if uf =  'MS' then result := 50
     else if uf =  'MT' then result := 51
     else if uf =  'GO' then result := 52
     else if uf =  'DF' then result := 53
end;

procedure TfMdfe.eCodigoMDFEExit(Sender: TObject);
begin
     CarregaTabelas;
end;

procedure TfMdfe.eUfUltimaEntregaExit(Sender: TObject);
begin
     try
         if qCarregamento.IsEmpty then
            bitbtn3.Click;
     except
     end;
end;

procedure TfMdfe.LerConfiguracao;
Var  vcaminho:String;
     ok:Boolean;
     PathMensal: String;
begin
      vCaminho:= ExtractFilePath(Application.ExeName);

      if UniMainModule.MDFe.DAMDFE <> nil then
      begin
         UniMainModule.MDFe.DAMDFE.TipoDAMDFe    := StrToTpImp(Ok, IntToStr(UniMainModule.qEmitenteGERAL_DANFE.AsInteger));
         UniMainModule.MDFe.DAMDFE.Logo          := uniMainModule.qEmitenteGERAL_LOGOMARCA.asString;
         UniMainModule.aDanfeMdfe.MargemEsquerda :=0;
         UniMainModule.aDanfeMdfe.MargemDireita  :=0;
         UniMainModule.aDanfeMdfe.MargemSuperior :=0;
         UniMainModule.aDanfeMdfe.MargemInferior :=0;
         UniMainModule.aDanfeMdfe.PathPDF        := uniMainModule.caminhoArqs + 'PDF';
      end;

       UniMainModule.MDFe.Configuracoes.Certificados.ArquivoPFX  := UniMainModule.qEmitenteCERT_CAMINHO.AsString;
       UniMainModule.MDFe.Configuracoes.Certificados.senha       := UniMainModule.qEmitenteCERT_SENHA.AsString;
       UniMainModule.MDFe.SSL.CarregarCertificado;

     if UniMainModule.vctoCertificado <> '' then
        ShowMessage( UniMainModule.vctoCertificado );

     UniMainModule.MDFe.Configuracoes.Certificados.VerificarValidade := False;

     // Configurações -> Arquivos
     UniMainModule.MDFe.Configuracoes.Arquivos.AdicionarLiteral  := True;
     UniMainModule.MDFe.Configuracoes.Arquivos.EmissaoPathMDFe   := True;
     UniMainModule.MDFe.Configuracoes.Arquivos.SepararPorMes     := false;
     UniMainModule.MDFe.Configuracoes.Arquivos.PathMDFe          := unimainModule.caminhoArqs+'MDFe\XML\';// Trim(edtPathLogs.Text);
     UniMainModule.MDFe.Configuracoes.Arquivos.PathSalvar        := unimainModule.caminhoArqs+'MDFe\XML\';
     UniMainModule.MDFe.Configuracoes.Arquivos.PathEvento        := uniMainModule.caminhoArqs+'MDFe\Eventos\';
     UniMainModule.MDFe.Configuracoes.Arquivos.Salvar            := True;
     UniMainModule.MDFe.Configuracoes.Geral.VersaoDF             := ve300;
     UniMainModule.MDFe.Configuracoes.Arquivos.PathSalvar        := PathMensal;

     // Configurações -> WebServices
     UniMainModule.MDFe.Configuracoes.WebServices.AguardarConsultaRet      := 0;
     UniMainModule.MDFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
     UniMainModule.MDFe.Configuracoes.WebServices.Ambiente                 := StrToTpAmb(Ok, IntToStr(UniMainModule.qEmitenteWEBSERVICE_AMBIENTE.AsInteger + 1));
     UniMainModule.MDFe.Configuracoes.WebServices.IntervaloTentativas      := 0;
     UniMainModule.MDFe.Configuracoes.WebServices.Tentativas               := 5;
     UniMainModule.MDFe.Configuracoes.WebServices.UF                       := UniMainModule.qEmitenteWEBSERVICE_UF.AsString;
 //    UniMainModule.MDFe.Configuracoes.WebServices.Visualizar               := UniMainModule.qEmitenteWEBSERVICE_VISUALIZAR.AsInteger;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyHost                := uniMainModule.qEmitentePROXY_HOST.AsString;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyPort                := uniMainModule.qEmitentePROXY_PORTA.asString;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyUser                := uniMainModule.qEmitentePROXY_USER.AsString;
     UniMainModule.MDFe.Configuracoes.WebServices.ProxyPass                := uniMainModule.qEmitentePROXY_PASS.asString;
     UniMainModule.MDFe.Configuracoes.WebServices.Salvar                   := True;

     // Configurações -> Geral
     UniMainModule.MDFe.Configuracoes.Geral.FormaEmissao :=  StrToTpEmis(Ok, IntToStr(UniMainModule.qEmitenteGERAL_FORMAEMISSAO.AsInteger));

     UniMainModule.MDFe.Configuracoes.Arquivos.PathSchemas  := 'C:\CoreFiscal\Schemas';

     // DAMDFe
     if UniMainModule.MDFe.DAMDFe <> nil then
      begin
           UniMainModule.MDFe.DAMDFe.PathPDF           := unimainModule.caminhoArqs+'MDFe\Resp'; // := PathMensal;
        //   UniMainModule.MDFe.DAMDFe.ExpandirLogoMarca := False;
           UniMainModule.MDFe.DAMDFe.Logo              := uniMainModule.qEmitenteGERAL_LOGOMARCA.asString;
        //   UniMainModule.MDFe.DAMDFe.MostrarPreview    := false;
      end;
end;

procedure TfMdfe.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin

end;

procedure TfMdfe.AtivaBotoes;
begin
     if UniMainModule.qMdfe.Active = true then
     begin
          UniMainModule.qMdfe.close;
     end;
end;

procedure TfMdfe.bCancelarClick(Sender: TObject);
var
  total : Currency;
begin
     qMunicipiosDescarregamento.Close;
     qEstadosPercorridos.Close;
     qCarregamento.Close;
     qCondutores.Close;
     qNFE.Close;

     dbValorTotal.Text := '0,00';
     dbTotalNotas.Text := '0';
end;

procedure TfMdfe.bEnviarClick(Sender: TObject);
var
    i, iIndex, iCodCid : integer;
    cSql, iUFPerc, cModelo, cVersao, cFormaDeEmissao, cImpDanf : String;
    vAux, vNumLote : String;
begin
     verificaCampos;
     UniMainModule.MDFE.Manifestos.Clear;

     with UniMainModule.MDFE.Manifestos.Add.MDFe do
     begin
         //  função para estado
         Ide.cUF     := codigoUF(UniMainModule.qEmitenteWEBSERVICE_UF.AsString);
         Ide.tpAmb   := UniMainModule.MDFE.Configuracoes.WebServices.Ambiente;

         // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
         Ide.tpEmit  := teTranspCargaPropria;
         Ide.modelo  := '58';
         Ide.serie   := 1;
         Ide.nMDF    := StrToIntDef(eCodigoMDFE.Text,1);                 // StrToIntDef(eCodigoMDFE.Text, 0);
         Ide.cMDF    := GerarCodigoDFe(StrToIntDef(eCodigoMDFE.Text,1));// StrToIntDef(eCodigoMDFE.Text,0);

         // TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
         Ide.modal   := moRodoviario;
         Ide.dhEmi   := Now;

         // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
         Ide.tpEmis  := teNormal;

         // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
         Ide.procEmi := peAplicativoContribuinte;
         Ide.verProc := '1.0';
         Ide.UFIni   := eUfPrimeiraEntrega.Text;
         Ide.UFFim   := eUfUltimaEntrega.Text;

         qCarregamento.First;
         while not qCarregamento.Eof do
         begin
              with Ide.infMunCarrega.Add do
              begin
                 cMunCarrega := qCarregamentoCODIBGE.AsInteger; //4113502;
                 xMunCarrega := qCarregamentoNOME.AsString;     // 'LOANDA';
              end;
              qCarregamento.Next;
         end;

         if not qEstadosPercorridos.IsEmpty then
         begin
             qEstadosPercorridos.First;
             while not qEstadosPercorridos.Eof do
             begin
                  Ide.infPercurso.Add.UFPer := qEstadosPercorridosUF.AsString;// 'PR';  // pegar depois da tabela
                  qEstadosPercorridos.Next;
             end;
         end;

         // Dados do Emitente
         Emit.CNPJCPF           := UniMainModule.qEmitenteCNPJ.AsString;        // edtEmitCNPJ.Text;
         Emit.IE                := UniMainModule.qEmitenteIE.AsString;          // edtEmitIE.Text;
         Emit.xNome             := UniMainModule.qEmitenteRAZAOSOCIAL.AsString; // edtEmitRazao.Text;
         Emit.xFant             := UniMainModule.qEmitenteFANTASIA.AsString;    // edtEmitFantasia.Text;
         Emit.EnderEmit.xLgr    := UniMainModule.qEmitenteENDERECO.AsString;    // edtEmitLogradouro.Text;
         Emit.EnderEmit.nro     := UniMainModule.qEmitenteNUMERO.AsString;      // edtEmitNumero.Text;
         Emit.EnderEmit.xCpl    := UniMainModule.qEmitenteCOMPLEMENTO.AsString; // edtEmitComp.Text;
         Emit.EnderEmit.xBairro := UniMainModule.qEmitenteBAIRRO.AsString;      // edtEmitBairro.Text;
         Emit.EnderEmit.cMun    := UniMainModule.qEmitenteCODCIDADE.AsInteger;  // StrToInt(edtEmitCodCidade.Text);
         Emit.EnderEmit.xMun    := UniMainModule.qEmitenteCIDADE.AsString;      // edtEmitCidade.Text;
         Emit.EnderEmit.CEP     := StrToIntDef(UniMainModule.qEmitenteCEP.AsString, 0);        // StrToIntDef(edtEmitCEP.Text, 0);
         Emit.EnderEmit.UF      := UniMainModule.qEmitenteUF.AsString;          // edtEmitUF.Text;
         Emit.EnderEmit.fone    := UniMainModule.qEmitenteFONE.AsString;        //  edtEmitFone.Text;
         Emit.enderEmit.email   := UniMainModule.qEmitenteEMAIL.AsString;       // 'endereco@provedor.com.br';
  //
         rodo.veicTracao.cInt    := eCodVeiculo.Text;      // '001';
         rodo.veicTracao.placa   := ePlacaVeiculo.Text;    // 'ABC1234';
         rodo.veicTracao.tara    := StrToInt( eTara.text );// 5000;
  //       rodo.veicTracao.RENAVAM := '123456789';
  //       rodo.veicTracao.capKG   := 4500;
  //       rodo.veicTracao.capM3   := 400;
  //
         // TpcteTipoRodado = (trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros);
         // Para o MDF-e não utilizar o trNaoAplicavel.
         rodo.veicTracao.tpRod := trUtilitario; /// colocar no cadastro de veiculo
  //
         // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
         rodo.veicTracao.tpCar := tcNaoAplicavel;
         rodo.veicTracao.UF    := eUf.Text;

         qCondutores.First;
         while not qCondutores.Eof do
         begin
             with rodo.veicTracao.condutor.Add do
             begin
               xNome := qCondutoresNOME.AsString; // 'JOAO';
               CPF   := qCondutoresCPF.AsString;  // '12345678912';
             end;
             qCondutores.Next;
         end;

//       with rodo.veicReboque.Add do
//       begin
//         cInt    := '002';
//         placa   := 'XYZ4567';
//         RENAVAM := '123456789';
//         tara    := 4000;
//         capKG   := 3000;
//         capM3   := 300;
//         // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
//         tpCar := tcFechada;
//
//         UF := edtEmitUF.Text;
//       end;

//       with rodo.valePed.disp.Add do
//       begin
//         CNPJForn := '12345678000199';
//         CNPJPg   := '21543876000188';
//         nCompra  := '789';
//       end;

          with infDoc.infMunDescarga.Add do
          begin
               qNfe.First;
               while not qNfe.Eof do
               begin
                     //   Verifica se municipio de descarga ja foi adicionado
                     iIndex  := -1;
                     iCodCid := qNFECODIBGE.AsInteger;
                     for I := 0 to infDoc.infMunDescarga.Count - 1 do
                     begin
                        if ( infDoc.infMunDescarga.Items[i].cMunDescarga = iCodCid ) then
                        begin
                            iIndex := 1;
                            Break;
                        end;
                     end;

//                     // se o não adiciona
//                     if ( iIndex < 0 ) then
//                     begin
                         cMunDescarga     := qNFECODIBGE.AsInteger;  // // 4202008;
                         xMunDescarga     := qNFEMUNICIPIO.AsString; // // 'Balneário Camboriú';
                         infNFe.Add.chNFe := qNFECHAVE.AsString;     // // '41170509288780000191550010000002341000002348';
//                     end
//                     else
//                     begin
//                         infDoc.infMunDescarga.Items[iIndex].infNFe.Add.chNFe := qNFECHAVE.AsString;
//                     end;

                //   with infCTe.Add do
                //      with infNF.Add do
                //      begin
                //       chCTe := '35110803911545000148570010000001011000001018';
                //
                //      // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)
                //
                //      with infUnidTransp.Add do
                //       begin
                //        //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
                //        tpUnidTransp := utRodoTracao;
                //        idUnidTransp := 'ABC1234'; // informar a placa se rodoviário
                //        with lacUnidTransp.Add do
                //         begin
                //          nLacre := '123';
                //         end;
                //        // Informações das Unidades de carga (Containeres/ULD/Outros)
                //        with infUnidCarga.Add do
                //         begin
                //          // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
                //          tpUnidCarga := ucOutros;
                //          idUnidCarga := 'AB45'; // informar o numero da unidade da carga
                //          with lacUnidCarga.Add do
                //           begin
                //            nLacre := '123';
                //           end;
                //          qtdRat := 1.0;
                //         end;
                //        qtdRat := 1.0;
                //       end;
                //
                //      end; // fim do with
                //
                //     with infCTe.Add do
                //      begin
                //       chCTe := '35110803911545000148570010000001021000001023';
                //
                //      // Informações das Unidades de Transporte (Carreta/Reboque/Vagão)
                //
                //      with infUnidTransp.Add do
                //       begin
                //        //TpcnUnidTransp = ( utRodoTracao, utRodoReboque, utNavio, utBalsa, utAeronave, utVagao, utOutros );
                //        tpUnidTransp := utRodoReboque;
                //        idUnidTransp := 'XYZ5678';
                //        with lacUnidTransp.Add do
                //         begin
                //          nLacre := '321';
                //         end;
                //        // Informações das Unidades de carga (Containeres/ULD/Outros)
                //        with infUnidCarga.Add do
                //         begin
                //          // TpcnUnidCarga  = ( ucContainer, ucULD, ucPallet, ucOutros );
                //          tpUnidCarga := ucOutros;
                //          idUnidCarga := 'DD98';
                //          with lacUnidCarga.Add do
                //           begin
                //            nLacre := '321';
                //           end;
                //          qtdRat := 1.0;
                //         end;
                //        qtdRat := 1.0;
                //       end;
                //
                //      end; // fim do with

                    qNfe.Next;
               end;

            //   //////   Seguro da Carga  /////////////
            //
            //   seg.Add.respSeg := rsEmitente;
            //   seg.Add.CNPJCPF := edtEmitCNPJ.Text;
            //
            //   seg.Add.xSeg  := copy(trim('marcelo'), 1, 30);
            //   seg.Add.nApol := copy(trim('marcelo'), 1, 20);
            // //  seg.Add.nAver := segaverba;

               ////////////////////////////////////////

             //  tot.qCTe := 2;

               tot.qNFe   := strToInt( dbTotalNotas.Text );   // 1;       // Total de notas fiscais
               tot.vCarga := strToFloat( dbValorTotal.Text ); // 3500.00; // somar as notas fiscais;

               // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
               tot.cUnid  :=  uKG;
               tot.qCarga := StrToFloat(ePesoBruto.Text);// 2.8000;

        //       with lacres.Add do
        //       begin
        //         nLacre := '123';
        //       end;

               infAdic.infCpl     := 'Empresa optante pelo Simples Nacional.';  // colocar um memo para o cliente digitar
               infAdic.infAdFisco := '';
          end;

         UniMainModule.MDFE.Manifestos.GerarMDFe;
         UniMainModule.MDFE.Manifestos.Assinar;

         NomePDF := Copy(UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44);
         NomeXML := Copy(UniMainModule.MDFE.Manifestos.Items[0].MDFe.infMDFe.Id, 5, 44);
         NomeXML := UniMainModule.MDFE.Configuracoes.Arquivos.PathMDFe+NomeXML+'-mdfe.xml';

         FFolder := UniServerModule.LocalCachePath;
         FUrl    := UniServerModule.LocalCacheURL+ExtractFileName(NomePDF)+'-mdfe.pdf';

         UniMainModule.qMdfeXML.AsString          := UniMainModule.MDFe.Manifestos.Items[0].XML;
         UniMainModule.qMdfeARQ_MDFE.AsString     := NomeXML;
         UniMainModule.qMdfeARQUIVADA.AsString    := 'N';
         UniMainModule.qMdfeSITUACAO.AsString     := 'AGUARDANDO';
         UniMainModule.qMdfeFORMAEMISSAO.AsString := cFormaDeEmissao;
         UniMainModule.qMdfeDATAEMISSAO.Value     := date();
         UniMainModule.qMdfeHORAEMISSAO.Value     := Time();

         try
             UniMainModule.MDFe.Manifestos.Validar;
         except on e:Exception do
         begin
             ShowMessage(e.Message + #13 + #10 + 'MDF-e não é valido!');
             abort;
         end;
         end;

         try
             UniMainModule.MDFe.Enviar(1, false);
         except on e:Exception do
         begin
             ShowMessage(e.Message + #13 + #10 + 'Houve um erro ao transmitir a MDF-e. Tente novamente.');
             abort;
         end;
         end;
     end;

     UniMainModule.qMdfeCHAVE.AsString     := UniMainModule.MDFe.WebServices.Retorno.ChaveMDFe;
     UniMainModule.qMdfePROTOCOLO.AsString := UniMainModule.MDFe.WebServices.Retorno.Protocolo;
     UniMainModule.qMdfeRECIBO.AsString    := UniMainModule.MDFe.WebServices.Retorno.Recibo;
     UniMainModule.qMdfeARQUIVADA.AsString := 'S';
     UniMainModule.qMdfeSITUACAO.AsString  := 'AUTORIZADA';
     UniMainModule.qMdfeCSTATUS.AsInteger  := UniMainModule.MDFe.Manifestos.Items[0].mdfe.procMDFe.cStat;
     UniMainModule.qMdfeXSTATUS.AsString   := UniMainModule.MDFe.Manifestos.Items[0].mdfe.procMDFe.xMotivo;

     UniMainModule.qMdfe.Post;
     UniMainModule.qMdfe.ApplyUpdates;
     UniMainModule.qMdfe.CommitUpdates;

     UniMainModule.MDFE.DAMDFE.TipoDAMDFe       := tiRetrato;
     UniMainModule.aDanfeMdfe.FastFile          := ExtractFilePath(ParamStr(0)) + 'DAMDFe_Retrato.fr3';
     UniMainModule.aDanfeMdfe.PathPDF           := FFolder;
     UniMainModule.aDanfeMdfe.Sistema           := 'Nota Facil';
     UniMainModule.aDanfeMdfe.PathPDF           := UniServerModule.LocalCachePath;

     UniMainModule.MDFE.Manifestos.ImprimirPDF;

     fPDF.Caption          := NomePDF;
     fPDF.UniURLFrame1.URL := FUrl;
     fPDF.ShowModal;

     benviar.Enabled := False;
     bSalvar.Enabled := False;
end;

procedure TfMdfe.bitbtn10Click(Sender: TObject);
var
  lbase : tbase;
  total : Currency;
  nome : string;
begin
      if UniMainModule.qMdfeCOD_MDFE.Text = ''  then
      begin
          ShowMessage('Cliente em Novo para iniciar o Manifesto!');
          exit;
      end;

      fBuscarNfeMdfe.ShowModal;

      UniMainModule.qAux.Close;
      UniMainModule.qAux.sql.Clear;
      UniMainModule.qAux.sql.Add('Select ID, idCliente, chave_acesso, total_nota '+
      ' from Notas_Cab where ID = :var0 and serie = :var1 and modelo = 55 and COD_EMITENTE = :var2');
      UniMainModule.qAux.Params[0].Value := UniMainModule.qNotasCabID.AsInteger;
      UniMainModule.qAux.Params[1].Value := UniMainModule.qNotasCabSERIE.AsInteger;
      UniMainModule.qAux.Params[2].Value := UniMainModule.CodigoEmitente;
      UniMainModule.qAux.Prepare;
      UniMainModule.qAux.Open;

      if not UniMainModule.qAux.IsEmpty then
      begin
           UniMainModule.qAux2.Close;
           UniMainModule.qAux2.sql.Clear;
           UniMainModule.qAux2.sql.Add('select razaoSocial, codMunicipio, cidade from clientes where idCliente = :var0');
           UniMainModule.qAux2.Params[0].Value := UniMainModule.qAux.FieldByName('idCliente').AsString;
           UniMainModule.qAux2.Prepare;
           UniMainModule.qAux2.Open;

           qNFE.Close;
           qNFE.ParamByName('id_emitente').asInteger := strToInt( UniMainModule.codigoEmitente );
           qNFE.ParamByName('mdfe').asInteger        := strToInt( eCodigoMDFE.Text );
           qNFE.Open;

           qNFE.Append;
           qNFECODIGO.Value               := lbase.pegaseg('NFE_MDFE', 'CODIGO',UniMainModule.Banco);
           qNFEID_EMITENTE.asString       := UniMainModule.codigoEmitente;
           qNFEMDFE.AsString              := eCodigoMDFE.text;
           qNFENR_NFE.AsString            := UniMainModule.qAux.FieldByName('ID').AsString;
           qNFENOME_DESTINATARIO.AsString := UniMainModule.qAux2.FieldByName('razaoSocial').AsString;
           qNFECODIBGE.AsString           := UniMainModule.qAux2.FieldByName('codMunicipio').AsString;
           qNFEMUNICIPIO.AsString         := UniMainModule.qAux2.FieldByName('cidade').AsString;
           qNFEPESO.Value                 := 0;
           qNFECHAVE.AsString             := onlyNumber(UniMainModule.qAux.FieldByName('chave_acesso').AsString);
           qNFEVALOR.Value                := UniMainModule.qAux.FieldByName('total_nota').AsFloat;
           qNFE.Post;
           qNFE.ApplyUpdates;
           qNFE.CommitUpdates;

           qNFE.Close;
           qNFE.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
           qNFE.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
           qNFE.Open;

           total := 0;

           qnfe.First;
           while not qnfe.Eof do
           begin
                total := total + qNFEVALOR.AsFloat;
                qNFE.Next;
           end;

           dbValorTotal.Text := CurrToStr(total);
           dbTotalNotas.Text := IntToStr(qnfe.RecordCount);
      end
      else
           ShowMessage('NFE NÃO ENCONTRADA!');
end;

procedure TfMdfe.UniBitBtn2Click(Sender: TObject);
begin
     if UniMainModule.qMdfeCOD_MDFE.Text = ''  then
     begin
          ShowMessage('Cliente em Novo para iniciar o Manifesto!');
          exit;
     end;

    if not DirectoryExists('c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\MdfeImport\') then
      CreateDir('c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\MdfeImport\');
    UniFileUpload1.Execute;
end;

procedure TfMdfe.UniBitBtn3Click(Sender: TObject);
var   total : Currency;
begin
     if qnfe.IsEmpty then
     begin
          ShowMessage('Nenhuma nota para excluir!');
          exit;
     end;

     qnfe.Delete;
     qNfe.ApplyUpdates;
     qNfe.CommitUpdates;

     qNFE.Close;
     qNFE.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
     qNFE.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
     qNFE.Open;

     total := 0;
     qnfe.First;
     while not qnfe.Eof do
     begin
          total := total + qNFEVALOR.AsFloat;
          qNFE.Next;
     end;

     dbValorTotal.Text := CurrToStr(total);
     dbTotalNotas.Text := IntToStr(qnfe.RecordCount);
end;

procedure TfMdfe.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
var
  DestName,nome, ArquivoXML,DestFolder  : String;
  lbase : tbase;
  total : Currency;
begin
    NomedoArquivo := ExtractFileName(UniFileUpload1.FileName);
    Ext           := ExtractFileExt(UniFileUpload1.FileName);

    if ((Ext = '.xml') or (Ext = '.XML') or (Ext = '.Xml') or (Ext = '.XMl') or (Ext = '.xMl'))  then
    begin
         DestFolder := 'c:\XML\' + UniMainModule.qEmitenteCNPJ.AsString + '\MdfeImport\';

         DestName   := DestFolder + NomedoArquivo;
         CopyFile(PChar(AStream.FileName), PChar(DestName), False);

         ShowMessage('Arquivo: ' + UniFileUpload1.FileName + ' Salvo com sucesso no servidor!');

         UniMainModule.NFE.NotasFiscais.Clear;
         UniMainModule.NFE.NotasFiscais.LoadFromFile(DestName);

         qNFE.Close;
         qNFE.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
         qNFE.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
         qNFE.Open;

         qNFE.Append;
         qNFECODIGO.Value               := lbase.pegaseg('NFE_MDFE', 'CODIGO',UniMainModule.Banco);
         qNFEID_EMITENTE.asString       := UniMainModule.codigoEmitente;
         qNFEMDFE.AsString              := eCodigoMDFE.text;
         qNFENR_NFE.AsString            := IntToStr(UniMainModule.NFE.NotasFiscais.Items[0].NFe.Ide.nNF);
         qNFENOME_DESTINATARIO.AsString := UniMainModule.NFE.NotasFiscais.Items[0].NFe.Dest.xNome;
         qNFECODIBGE.Value              := intToStr(UniMainModule.NFE.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun);
         qNFEMUNICIPIO.Value            := UniMainModule.NFE.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun;
       //  qNFEPESO.Value                 := UniMainModule.NFE.NotasFiscais.Items[0].NFE.Transp.Vol.Items[0].pesoB;
         qNFECHAVE.Value                := UniMainModule.NFE.NotasFiscais.Items[0].NFE.infNFe.ID;
         qNFEVALOR.Value                := UniMainModule.NFE.NotasFiscais.Items[0].NFE.Total.ICMSTot.vNF ;
         qNFE.Post;
         qNFE.ApplyUpdates;
         qNFE.CommitUpdates;

         qNFE.Close;
         qNFE.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
         qNFE.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
         qNFE.Open;

         total := 0;
         qnfe.First;
         while not qnfe.Eof do
         begin
              total := total + qNFEVALOR.AsFloat;
              qNFE.Next;
         end;

         dbValorTotal.Text := CurrToStr(total);
         dbTotalNotas.Text := IntToStr(qnfe.RecordCount);
    end
    else
         ShowMessage('São aceitos apenas arquivos XML. Este arquivo é de extenção ' + Ext);
end;


procedure TfMdfe.UniFrameCreate(Sender: TObject);
begin
     LerConfiguracao;


     UniMainModule.qMdfe.Close;
end;

procedure TfMdfe.bitbtn3Click(Sender: TObject);
var
  lbase: TBase;
begin
     fPesquisa.Tag := 5;
     fPesquisa.ShowModal;

     if fPesquisa.wCodigo <> '' then
     begin
         qCarregamento.Close;
         qCarregamento.ParamByName('id_emitente').Value := unimainmodule.CodigoEmitente;
         qCarregamento.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
         qCarregamento.Open;

         qCarregamento.Append;
         qCarregamentoCODIGO.Value         := lbase.pegaseg('MUNICIPIOCARREGAMENTO', 'codigo',UniMainModule.Banco);
         qCarregamentoID_EMITENTE.asstring := uniMainModule.codigoEmitente;
         qCarregamentoMDFE.AsString        := eCodigoMDFE.text;
         qCarregamentoCODIBGE.AsString     := fPesquisa.wCodigo;
         qCarregamentoNOME.AsString        := fPesquisa.wCodigo3;
         qCarregamentoUF.AsString          := fPesquisa.wCodigo2;
         qCarregamento.Post;
         qCarregamento.ApplyUpdates;
         qCarregamento.CommitUpdates;
     end;

     qCarregamento.Close;
     qCarregamento.ParamByName('id_emitente').Value := uniMainModule.codigoEmitente;
     qCarregamento.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
     qCarregamento.Open;
end;

procedure TfMdfe.UniSpeedButton1Click(Sender: TObject);
var
  lbase: TBase;
begin
       qEstadosPercorridos.Close;
       qEstadosPercorridos.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
       qEstadosPercorridos.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
       qEstadosPercorridos.Open;

       qEstadosPercorridos.Append;
       qEstadosPercorridosCODIGO.Value          := lbase.pegaseg('ESTADOSPERCORRIDOS', 'codigo',UniMainModule.Banco);
       qEstadosPercorridosID_EMITENTE.asInteger := StrToInt( UniMainModule.codigoEmitente );
       qEstadosPercorridosMDFE.AsString         := eCodigoMDFE.text;
       qEstadosPercorridosUF.AsString           := eufPercorrido.Text;
       qEstadosPercorridos.Post;
       qEstadosPercorridos.ApplyUpdates;
       qEstadosPercorridos.CommitUpdates;

       qEstadosPercorridos.Close;
       qEstadosPercorridos.ParamByName('id_emitente').Value := UniMainModule.codigoEmitente;
       qEstadosPercorridos.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
       qEstadosPercorridos.Open;
end;

procedure TfMdfe.UniSpeedButton2Click(Sender: TObject);
begin
     if qnfe.IsEmpty then
     begin
          ShowMessage('Nenhuma municipio para excluir!');
          exit;
     end;

     qCarregamento.Delete;
     qCarregamento.ApplyUpdates;
     qCarregamento.CommitUpdates;
end;

procedure TfMdfe.UniSpeedButton3Click(Sender: TObject);
begin
     if qEstadosPercorridos.IsEmpty then
     begin
          ShowMessage('Nenhuma estado para excluir!');
          exit;
     end;

     qEstadosPercorridos.Delete;
     qEstadosPercorridos.ApplyUpdates;
     qEstadosPercorridos.CommitUpdates;
end;

procedure TfMdfe.bitbtn7Click(Sender: TObject);
var
  lbase: TBase;
begin
     fPesquisa.Tag := 6;
     fPesquisa.ShowModal;

     if fPesquisa.wCodigo <> '' then
     begin
         qMunicipiosDescarregamento.Close;
         qMunicipiosDescarregamento.ParamByName('id_emitente').AsString := UniMainModule.CodigoEmitente;
         qMunicipiosDescarregamento.ParamByName('mdfe').Value           := eCodigoMDFE.Text;
         qMunicipiosDescarregamento.Open;

         qMunicipiosDescarregamento.Append;
         qMunicipiosDescarregamentoCODIGO.Value         := lbase.pegaseg('MUNICIPIOSDESCARREGAMENTO', 'codigo',UniMainModule.Banco);
         qMunicipiosDescarregamentoID_EMITENTE.asstring := unimainmodule.codigoEmitente;
         qMunicipiosDescarregamentoMDFE.AsString        := eCodigoMDFE.text;
         qMunicipiosDescarregamentoCODIGOIBGE.AsString  := fPesquisa.wCodigo;
         qMunicipiosDescarregamentoNOMECIDADE.AsString  := fPesquisa.wCodigo3;
         qMunicipiosDescarregamentoUF.AsString          := fPesquisa.wCodigo2;
         qMunicipiosDescarregamento.Post;
         qMunicipiosDescarregamento.ApplyUpdates;
         qMunicipiosDescarregamento.CommitUpdates;
     end;

     qMunicipiosDescarregamento.Close;
     qMunicipiosDescarregamento.ParamByName('id_emitente').Value := UniMainModule.CodigoEmitente;
     qMunicipiosDescarregamento.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
     qMunicipiosDescarregamento.Open;
end;

procedure TfMdfe.bVeiculoClick(Sender: TObject);
begin
     fPesquisa.Tag := 8;
     fPesquisa.ShowModal;

     UniMainModule.qMdfeCOD_VEICULO.AsString   := fPesquisa.wCodigo;
     UniMainModule.qMdfePLACA_VEICULO.AsString := fPesquisa.wCodigo3;
     UniMainModule.qMdfeNOME_VEICULO.AsString  := fPesquisa.wCodigo2;
     UniMainModule.qMdfeUF_VEICULO.AsString    := fPesquisa.wCodigo4;
     UniMainModule.qMdfeTARA_VEICULO.AsString  := fPesquisa.wCodigo5;

     ePesoBruto.SetFocus;
end;

procedure TfMdfe.bSalvarClick(Sender: TObject);
begin
     showmessage('Opção indisponivel!');
end;

procedure TfMdfe.UniSpeedButton4Click(Sender: TObject);
begin
     if qnfe.IsEmpty then
     begin
          ShowMessage('Nenhuma municipio para excluir!');
          exit;
     end;

     qMunicipiosDescarregamento.Delete;
     qMunicipiosDescarregamento.ApplyUpdates;
     qMunicipiosDescarregamento.CommitUpdates;
end;

procedure TfMdfe.bitbtn13Click(Sender: TObject);
var
  lbase: TBase;
begin
     fPesquisa.Tag := 7;
     fPesquisa.ShowModal;

     if fPesquisa.wCodigo <> '' then
     begin
         qCondutores.Close;
         qCondutores.ParamByName('id_emitente').AsString := uniMainModule.CodigoEmitente;
         qCondutores.ParamByName('mdfe').Value           := eCodigoMDFE.Text;
         qCondutores.Open;

         qCondutores.Append;
         qCondutoresCODIGO.Value         := lbase.pegaseg('CONDUTORES_MDFE', 'CODIGO',UniMainModule.Banco);
         qCondutoresID_EMITENTE.asString := UniMainMOdule.CodigoEmitente;
         qCondutoresMDFE.AsString        := eCodigoMDFE.text;
         qCondutoresCOD_CLIENTE.AsString := fPesquisa.wCodigo;
         qCondutoresNOME.AsString        := fPesquisa.wCodigo2;
         qCondutoresCPF.AsString         := fPesquisa.wCodigo3;
         qCondutores.Post;
         qCondutores.ApplyUpdates;
         qCondutores.CommitUpdates;
     end;

     qCondutores.Close;
     qCondutores.ParamByName('id_emitente').Value := UniMainMOdule.codigoEmitente;
     qCondutores.ParamByName('mdfe').Value        := eCodigoMDFE.Text;
     qCondutores.Open;
end;

procedure TfMdfe.UniSpeedButton6Click(Sender: TObject);
begin
     if qnfe.IsEmpty then
     begin
          ShowMessage('Nenhum condutor para excluir!');
          exit;
     end;

     qCondutores.Delete;
     qCondutores.ApplyUpdates;
     qCondutores.CommitUpdates;
end;

procedure TfMdfe.VerificaCampos;
begin
     if ePlacaVeiculo.Text = '' then
     begin
         ShowMessage('Placa do veiculo é obrigatória');
         ePlacaVeiculo.SetFocus;
         abort;
     end;

     if eNomeVeiculo.Text = '' then
     begin
         ShowMessage('Nome do veiculo é obrigatória');
         eNomeVeiculo.SetFocus;
         abort;
     end;

     if eUf.Text = '' then
     begin
         ShowMessage('UF do veiculo é obrigatória');
         eUf.SetFocus;
         abort;
     end;

     if eTara.Text = '' then
     begin
         ShowMessage('Tara do veiculo é obrigatória');
         eTara.SetFocus;
         abort;
     end;

     if ePesoBruto.Text = '' then
     begin
         ShowMessage('Peso Bruto do veiculo é obrigatória');
         ePesoBruto.SetFocus;
         abort;
     end;

     if eUfPrimeiraEntrega.Text = '' then
     begin
         ShowMessage('UF primeira entrega é obrigatória');
         eUfPrimeiraEntrega.SetFocus;
         abort;
     end;

     if eUfUltimaEntrega.Text = '' then
     begin
         ShowMessage('UF ultima entrega é obrigatória');
         eUfUltimaEntrega.SetFocus;
         abort;
     end;

     if eNomeVeiculo.Text = '' then
     begin
         ShowMessage('Nome do veiculo é obrigatória');
         eNomeVeiculo.SetFocus;
         abort;
     end;

     if qCarregamento.IsEmpty then
     begin
         ShowMessage('Nenhum municipio de carregamento informado!');
         bitbtn3.SetFocus;
         exit;
     end;

     if qMunicipiosDescarregamento.IsEmpty then
     begin
         ShowMessage('Nenhum municipio de descarregamento informado!');
         bitbtn7.SetFocus;
         exit;
     end;

     if qCondutores.IsEmpty then
     begin
         ShowMessage('Nenhum condutor informado!');
         bitbtn13.SetFocus;
         exit;
     end;

     if qNFE.IsEmpty then
     begin
         ShowMessage('Nenhuma NFe informado!');
         bitbtn10.SetFocus;
         exit;
     end;
end;

end.
