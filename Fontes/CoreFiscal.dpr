
   {$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

    {$ifndef UNIGUI_VCL}
  {$E dll}
library
  {$else}
  {$E exe}
program
{$endif}
CoreFiscal;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  uPrincipal in 'uPrincipal.pas' {fPrincipal: TUniForm},
  uEmitente in 'uEmitente.pas' {fEmitente: TUniForm},
  uNFCe in 'uNFCe.pas' {fNFCe: TUniForm},
  uPDF in 'uPDF.pas' {fPDF: TUniForm},
  uNfeOP in 'uNfeOP.pas' {fNfeOP: TUniForm},
  uLogin in 'uLogin.pas' {fLogin: TUniLoginForm},
  uframeTes in 'uframeTes.pas' {frameTes: TUniFrame},
  uFrameProduto in 'uFrameProduto.pas' {frameProduto: TUniFrame},
  uFrameClientes in 'uFrameClientes.pas' {frameClientes: TUniFrame},
  uClsBase in 'uClsBase.pas',
  clsClientes in 'clsClientes.pas',
  uPesquisa in 'uPesquisa.pas' {fPesquisa: TUniForm},
  clsVendasItens in 'clsVendasItens.pas',
  clsVendas in 'clsVendas.pas',
  clsProdutos in 'clsProdutos.pas',
  clsFormasNotas in 'clsFormasNotas.pas',
  clsNaturezas in 'clsNaturezas.pas',
  uListaProutos in 'uListaProutos.pas' {fListaProdutos: TUnimForm},
  uframetransf in 'uframetransf.pas' {frmTransp: TUniFrame},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uClientesDadosM in 'uClientesDadosM.pas' {fClientesDadosM: TUnimForm},
  uClientesListaM in 'uClientesListaM.pas' {fClientesListaM: TUnimForm},
  uConsultaCnpj in 'uConsultaCnpj.pas' {fConsultaCNPJ: TUnimForm},
  uEnviarEmailM in 'uEnviarEmailM.pas' {fEnviarEmailM: TUnimForm},
  uProdutosListaM in 'uProdutosListaM.pas' {fProdutosListaM: TUnimForm},
  uNfceM in 'uNfceM.pas' {FNfceM: TUnimForm},
  uLoginM in 'uLoginM.pas' {fLoginM: TUnimLoginForm},
  uListaCidadesM in 'uListaCidadesM.pas' {fListaCidadesM: TUnimForm},
  uNfeOpm in 'uNfeOpm.pas' {fNfeOPm: TUnimForm},
  uPdfM in 'uPdfM.pas' {fPdfM: TUnimForm},
  uWhatsAppm in 'uWhatsAppm.pas' {fWhatsappM: TUnimForm},
  uMdfe in 'uMdfe.pas' {fMdfe: TUniFrame},
  uMdfeOp in 'uMdfeOp.pas' {fMdfeOp: TUniFrame},
  uCondutores in 'uCondutores.pas' {fCondutores: TUniFrame},
  uXmlEscritorio in 'uXmlEscritorio.pas' {fXmlEscritorio: TUniForm},
  uNfse in 'uNfse.pas' {fNfse: TUniFrame},
  uVeiculos in 'uVeiculos.pas' {fVeiculos: TUniFrame},
  uBuscarNfeMdfe in 'uBuscarNfeMdfe.pas' {fBuscarNfeMdfe: TUniForm},
  uCompra in 'uCompra.pas' {fCompra: TUniForm},
  uRelProdutos in 'uRelProdutos.pas' {relProdutos: TUniForm},
  uRelVendas in 'uRelVendas.pas' {RelVendas: TUniForm},
  uEnviarEmail in 'uEnviarEmail.pas' {fEnviarEmail: TUniForm},
  uWhatsApp in 'uWhatsApp.pas' {fWhatsApp: TUniForm},
  uConsProd in 'uConsProd.pas' {fConsProd: TUniForm},
  uCadRapidoProd in 'uCadRapidoProd.pas' {fCadRapidoProd: TUniForm},
  uCompraLocalizar in 'uCompraLocalizar.pas' {fCompraLocalizar: TUniForm},
  uSpedFiscal in 'uSpedFiscal.pas' {fSpedFiscal: TUniForm},
  udmEFDFiscal in 'udmEFDFiscal.pas' {dmEFDFiscal: TDataModule},
  uVendedor in 'uVendedor.pas' {fVendedor: TUniFrame},
  clsVendedor in 'clsVendedor.pas',
  uReVendasComissao in 'uReVendasComissao.pas' {reVendasComissao: TUniForm},
  uNivelAcesso in 'uNivelAcesso.pas' {fNivelAcesso: TUniForm},
  NFeCalculoController in 'NFeCalculoController.pas',
  uContasReceberListar in 'uContasReceberListar.pas' {fContasReceberListar: TUniFrame},
  uContasReceberBaixar in 'uContasReceberBaixar.pas' {fContasReceberBaixar: TUniForm},
  uContasReceberLancar in 'uContasReceberLancar.pas' {fContasReceberLancar: TUniForm},
  uReaReceber in 'uReaReceber.pas' {ReaReceber: TUniForm},
  uContasPagarListar in 'uContasPagarListar.pas' {fContasPagarListar: TUniFrame},
  uContasPagarBaixar in 'uContasPagarBaixar.pas' {fContasPagarBaixar: TUniForm},
  uContaspagarLancar in 'uContaspagarLancar.pas' {fContasPagarLancar: TUniForm},
  uReaPagar in 'uReaPagar.pas' {ReApagar: TUniForm},
  uFeRecibo in 'uFeRecibo.pas' {feRecibo: TUniForm},
  uFrameHtml in 'uFrameHtml.pas' {FrameHtml: TUniFrame},
  uFhmtl in 'uFhmtl.pas' {fHtml: TUniForm},
  uOS in 'uOS.pas' {fOS: TUniFrame},
  uOsDados in 'uOsDados.pas' {fOsDados: TUniForm},
  uServicos in 'uServicos.pas' {fServico: TUniFrame};
 // uOsOtica in 'uOsOtica.pas' {fOsOtica: TUniFrame},
 // uOsOticaDados in 'uOsOticaDados.pas' {fOsOticaDados: TUniForm};

{$R *.res}


    {$ifndef UNIGUI_VCL}
    exports
      GetExtensionVersion,
      HttpExtensionProc,
      TerminateExtension;
    {$endif}

begin
    {$ifdef UNIGUI_VCL}
        Application.Initialize;
        TUniServerModule.Create(Application);
        Application.Run;
    {$endif}
end.
