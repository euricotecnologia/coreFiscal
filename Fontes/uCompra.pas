unit uCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,

  pcnCOnversao, pcnConversaoNFE,

  uniGUIClasses, uniGUIForm, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniLabel, uniButton, uniBitBtn, uniDBEdit, uniFileUpload,
  uniImage, uniEdit, uniBasicGrid, uniDBGrid, uniRadioGroup, uniDateTimePicker,
  Data.DB, Vcl.Imaging.pngimage, unimImage, uniCheckBox;

type
  TfCompra = class(TUniForm)
    PG: TUniPageControl;
    tabInicio: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniEdit1: TUniEdit;
    UniImage1: TUniImage;
    UniLabel3: TUniLabel;
    UniEdit2: TUniEdit;
    TabDadosIniciais: TUniTabSheet;
    UniFileUpload1: TUniFileUpload;
    UniPanel1: TUniPanel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    eFornecedorRAZAO2: TUniLabel;
    eFornecedorCIDADE2: TUniLabel;
    eFornecedorUF2: TUniLabel;
    eFornecedorCNPJ2: TUniLabel;
    eNotaTOTAL_PRODUTOS2: TUniLabel;
    eNotaOUTRASDESP2: TUniLabel;
    eNotaV_IPI2: TUniLabel;
    eNotaDESC_ENT2: TUniLabel;
    eNotaTOTAL_ENT2: TUniLabel;
    tabCadForn: TUniTabSheet;
    UniLabel23: TUniLabel;
    lblStatusForn: TUniLabel;
    eFornecedorRAZAO: TUniEdit;
    eFornecedorFANTASIA: TUniEdit;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    eFornecedorCNPJ: TUniEdit;
    UniLabel28: TUniLabel;
    eFornecedorINSC: TUniEdit;
    UniLabel29: TUniLabel;
    eFornecedorCNAE: TUniEdit;
    UniLabel30: TUniLabel;
    eFornecedorCRT: TUniEdit;
    UniLabel31: TUniLabel;
    eFornecedorEND: TUniEdit;
    UniLabel32: TUniLabel;
    eFornecedorNUMERO: TUniEdit;
    UniLabel33: TUniLabel;
    eFornecedorBAIRRO: TUniEdit;
    UniLabel34: TUniLabel;
    eFornecedorCOMPLEMENTO: TUniEdit;
    UniLabel35: TUniLabel;
    eFornecedorCEP: TUniEdit;
    UniLabel36: TUniLabel;
    eFornecedorCIDADE: TUniEdit;
    UniLabel37: TUniLabel;
    eFornecedorUF: TUniEdit;
    UniLabel38: TUniLabel;
    eFornecedorTEL: TUniEdit;
    tabprodutos: TUniTabSheet;
    UniLabel39: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniLabel40: TUniLabel;
    UniLabel41: TUniLabel;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    UniLabel44: TUniLabel;
    UniLabel45: TUniLabel;
    UniLabel46: TUniLabel;
    UniLabel48: TUniLabel;
    UniTabSheet6: TUniTabSheet;
    UniLabel49: TUniLabel;
    UniLabel50: TUniLabel;
    eNotaNUMNF_ENT: TUniEdit;
    UniLabel51: TUniLabel;
    eNotaSERIE_ENT: TUniEdit;
    UniLabel52: TUniLabel;
    eNotaTPOP: TUniEdit;
    UniLabel53: TUniLabel;
    eNotaNatOp: TUniEdit;
    UniLabel54: TUniLabel;
    eCodForn: TUniEdit;
    UniLabel55: TUniLabel;
    eFornecedorRAZAO3: TUniEdit;
    UniLabel56: TUniLabel;
    eFornecedorCNPJ3: TUniEdit;
    UniLabel57: TUniLabel;
    eFornecedorUF3: TUniEdit;
    UniLabel58: TUniLabel;
    UniLabel59: TUniLabel;
    UniDBGrid2: TUniDBGrid;
    UniLabel60: TUniLabel;
    UniLabel61: TUniLabel;
    UniLabel62: TUniLabel;
    UniLabel63: TUniLabel;
    UniLabel64: TUniLabel;
    UniLabel65: TUniLabel;
    UniLabel66: TUniLabel;
    UniLabel67: TUniLabel;
    UniLabel68: TUniLabel;
    UniLabel69: TUniLabel;
    UniLabel71: TUniLabel;
    UniTabSheet7: TUniTabSheet;
    UniPanel2: TUniPanel;
    UniLabel72: TUniLabel;
    eNrDoc: TUniEdit;
    UniLabel73: TUniLabel;
    UniLabel74: TUniLabel;
    UniLabel75: TUniLabel;
    UniLabel76: TUniLabel;
    UniDBGrid3: TUniDBGrid;
    rFormaPgto2: TUniRadioGroup;
    UniLabel77: TUniLabel;
    eFornecedorIBGE: TUniEdit;
    eNotaTOTAL_PRODUTOS: TUniFormattedNumberEdit;
    eNotaTOTAL_ENT: TUniFormattedNumberEdit;
    eNotaFRETE_ENT: TUniFormattedNumberEdit;
    eNotaBCICMS: TUniFormattedNumberEdit;
    eNotaV_SEG: TUniFormattedNumberEdit;
    eNotaVALOR_ICMS: TUniFormattedNumberEdit;
    eNotaOUTRASDESP: TUniFormattedNumberEdit;
    eNotaBASE_SUB_TRIB: TUniFormattedNumberEdit;
    eNotaV_IPI: TUniFormattedNumberEdit;
    eNotaVALOR_ICMS_SUB: TUniFormattedNumberEdit;
    eNotaDESC_ENT: TUniFormattedNumberEdit;
    eNotaDATAEMI_ENT: TUniDateTimePicker;
    eNotaDATAENT_ENT: TUniDateTimePicker;
    FornecedorFJ: TUniEdit;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    eNotaCHAVE_NFE: TUniEdit;
    rFormaPgto: TUniRadioGroup;
    UniLabel15: TUniLabel;
    eNotaCODIGO_ES: TUniEdit;
    UniLabel16: TUniLabel;
    eNotaCODIFICACAO_FISCAL: TUniEdit;
    UniLabel17: TUniLabel;
    eNotaV_PIS: TUniFormattedNumberEdit;
    UniLabel18: TUniLabel;
    eNotaV_COFINS: TUniFormattedNumberEdit;
    UniBitBtn1: TUniBitBtn;
    DsEntradaCor: TDataSource;
    UniLabel22: TUniLabel;
    bImportar: TUniBitBtn;
    imgEdit: TUniImage;
    imgImposto: TUniImage;
    eValorTotal: TUniFormattedNumberEdit;
    eNrParcelas: TUniFormattedNumberEdit;
    eVctoPrimeiraParc: TUniDateTimePicker;
    eDataEmissao: TUniDateTimePicker;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UnimImage1: TUniImage;
    bLocalizarCompra: TUniBitBtn;
    UniPanel3: TUniPanel;
    UniLabel20: TUniLabel;
    UniImage2: TUniImage;
    UniBitBtn4: TUniBitBtn;
    dsPagarCab: TDataSource;
    UniLabel19: TUniLabel;
    cXML: TUniCheckBox;
    UniButton2: TUniButton;
    UniButton1: TUniButton;
    UniBitBtn5: TUniBitBtn;
    bAvancar1: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    bAvancar2: TUniBitBtn;
    UniBitBtn8: TUniBitBtn;
    bCadForn: TUniBitBtn;
    UniBitBtn7: TUniBitBtn;
    UniBitBtn9: TUniBitBtn;
    UniBitBtn10: TUniBitBtn;
    UniBitBtn11: TUniBitBtn;
    UniBitBtn12: TUniBitBtn;
    bEncerrar: TUniBitBtn;
    procedure bImportarClick(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure bCadFornClick(Sender: TObject);
    procedure bAvancar1Click(Sender: TObject);
    procedure bAvancar2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure bLocalizarCompraClick(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure UniBitBtn8Click(Sender: TObject);
    procedure UniBitBtn9Click(Sender: TObject);
    procedure UniBitBtn7Click(Sender: TObject);
    procedure UniBitBtn10Click(Sender: TObject);
    procedure UniBitBtn11Click(Sender: TObject);
    procedure UniBitBtn12Click(Sender: TObject);
    procedure bEncerrarClick(Sender: TObject);


  private
     COD_FOR, CODENT : Integer;

     NomedoArquivo,DestinatarioCNPJ,caminho,Ext,CurDir,Continua : String;

     procedure CarregaDadosNota();
     procedure CarregaForn();
     procedure CarregaTransp();
     procedure VerificaImportada;
     procedure VerificaEmitente;  // verifica se a nota é para ele mesmo
     procedure CarregaDuplicatas();
     procedure CarregaProdutos();

     procedure CadastraFornecedor;
     procedure VerificaFornecedor;

     function contas(COD_ENT: Integer): Boolean;

     function ImportaCabecalho: Integer;

     procedure CalculaItens( COD_ENT: Integer );
     procedure CalculaCabecalho( COD_ENT: Integer );

     procedure CalculaNota( COD_ENT: Integer );
     procedure AtualizaEstoque;

     procedure FecharTabelas;

     procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
     procedure PromptCallBackAtualizaEstoque(Sender: TComponent; AResult:Integer; AText: string);

  public

    COD_LOCALIZA: Integer;

    procedure Associa(SEQ: Integer);
    procedure CadastraProduto(SEQ: Integer);
    procedure VerificaProd;
    procedure MudaTabProdutos;

  end;

function fCompra: TfCompra;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uClsBase, uConsProd,
  uCadRapidoProd, uCompraLocalizar;

function fCompra: TfCompra;
begin
  Result := TfCompra(UniMainModule.GetFormInstance(TfCompra));
end;

procedure TfCompra.CadastraFornecedor;
var
  COD_ULTIMO: Integer;
  lbase : tbase;
begin
    COD_ULTIMO := 0;
    try
        with UniMainModule.Banco do
        begin
            StartTransaction;
            COD_ULTIMO := lbase.pegaseg('CLIENTES', 'IDCLIENTE',UniMainModule.Banco);
            ExecSQL('insert into CLIENTES( IDCLIENTE, TIPOPESSOA, RAZAOSOCIAL,NOMEFANTASIA,'+
            ' ENDERECO, BAIRRO, CIDADE, CEP, UF, CPF_CNPJ, RG_IE, FONE, NRO, CODMUNICIPIO,'+
            ' COMPLEMENTO,IDEMITENTE,consumidorFinal,tipo ) '+
            ' values( :COD_FOR, :FJ, :RAZAO, :FANT, :END, :BAIRRO, :CIDADE, :CEP, :UF, '+
            ' :CNPJ, :INSC, :TEL, :NUMERO, :IBGE, :complemento,:IDEMITENTE,:consumidorFinal,:tipo )',
            [ COD_ULTIMO,FornecedorFJ.text,eFornecedorRAZAO.text,eFornecedorFANTASIA.text,
            eFornecedorEND.text,eFornecedorBAIRRO.text,eFornecedorCIDADE.text,eFornecedorCEP.text,
            eFornecedorUF.text,eFornecedorCNPJ.text,eFornecedorINSC.text,
            eFornecedorTEL.text,eFornecedorNUMERO.text,eFornecedorIBGE.text,
            eFornecedorCOMPLEMENTO.Text,UniMainModule.CodigoEmitente,'NAO','F']);
            COD_FOR       := COD_ULTIMO;
            eCodForn.Text := intToStr( COD_ULTIMO );
            Commit;
        end;
        lblStatusForn.Font.Color := clGreen;
        lblStatusForn.Caption    := 'Fornecedor cadastrado!';
        bAvancar2.Enabled        := True;
        bCadForn.Enabled         := False;
        ShowMessage('Fornecedor Cadastrado com Sucesso');
        bAvancar2.SetFocus;
    except
      on E: Exception do
      begin
          Showmessage('Erro ao Cadastrar fornecedor!' + #13 + E.Message);
          COD_FOR := 0;
      end;
    end;
end;

procedure TfCompra.CadastraProduto(SEQ: Integer);
var
  COD,id: Integer;
  COD_MEDIDA: Integer;
  lbase : tbase;
begin
    try
        with unimainmodule do
        begin
            id  := lbase.pegaseg('PRODUTOS', 'IDPRODUTO',UniMainModule.Banco);
            cod := lbase.pegasegLocal('PRODUTOS', 'CODIGO',UniMainModule.Banco);
            qEntradaCor.Edit;
            qEntradaCorCOD_PROD.AsInteger := COD;
            qEntradaCor.Post;
            qEntradaCor.ApplyUpdates;
            qEntradaCor.CommitUpdates;
            tExecuta.StartTransaction;
            Executa.close;
            Executa.sql.Clear;
            Executa.sql.add(
            ' INSERT INTO PRODUTOS ( IDPRODUTO,CODIGO,EAN,DESCRICAO,DESCRICAO_COMPLETA,'+
            ' NCM,CEST,CUSTO,PRECO,UN,CST,ICMS,IPI,CFOP,CSOSN,MVA,PREDICMS,ORIGEM, '+
            ' CSTIPI,CSTPIS,CSTCOFINS,ALIQPIS,ALIQCOFINS,OPER_SAIDA_DENTRO,OPER_SAIDA_FORA,'+
            ' IDEMITENTE,ESTOQUE,MARGEM, COD_FORN) ' +
            ' VALUES (:IDPRODUTO,:CODIGO,:EAN,:DESCRICAO,:DESCRICAO_COMPLETA,'+
            ' :NCM,:CEST,:CUSTO,:PRECO,:UN,:CST,:ICMS,:IPI,:CFOP,:CSOSN,:MVA,:PREDICMS,:ORIGEM, '+
            ' :CSTIPI,:CSTPIS,:CSTCOFINS,:ALIQPIS,:ALIQCOFINS,:OPER_SAIDA_DENTRO,:OPER_SAIDA_FORA,'+
            ' :IDEMITENTE,:ESTOQUE,:MARGEM,:COD_FORN)');
            with Executa do
            begin
                ParamByName('IDPRODUTO').AsInteger        := ID;
                ParamByName('CODIGO').AsInteger           := COD;
                if qEntradaCorEAN.AsString = '' then
                  ParamByName('EAN').AsString             := ''
                else
                  ParamByName('EAN').AsString             := qEntradaCorEAN.AsString;
                ParamByName('DESCRICAO').AsString         := trim(qEntradaCorDESCRICAO.AsString);
                ParamByName('DESCRICAO_COMPLETA').AsString :=  trim(qEntradaCorDESCRICAO.AsString);
                ParamByName('NCM').AsString               := qEntradaCorNCM.AsString;
                ParamByName('CEST').AsString              := qEntradaCorCEST.AsString;
                ParamByName('CUSTO').asFloat              := qEntradaCorVLUNIT.Value;
                ParamByName('PRECO').asFloat              := qEntradaCorVALOR_VENDA.AsFloat;
                ParamByName('UN').AsString                := trim(copy(qEntradaCorUN.AsString,1,2));
                if Length(qEntradaCorCST_CSOSN.AsString) > 2 then
                   ParamByName('CST').AsString            := qEntradaCorCST_CSOSN.AsString // cst
                else
                   ParamByName('CST').AsString            := '400';
                ParamByName('ICMS').AsString              := qEntradaCorALIQICMS.AsString;
                ParamByName('IPI').AsString               := qEntradaCorALIQ_IPI.AsString;
                ParamByName('CFOP').AsString              := qEntradaCorCFOP.AsString;
                if Length(qEntradaCorCST_CSOSN.AsString) > 2 then
                   ParamByName('CSOSN').AsString          := qEntradaCorCST_CSOSN.AsString // cst
                else
                   ParamByName('CSOSN').AsString          := '400';
                ParamByName('MVA').AsString               := '040';
                ParamByName('PREDICMS').AsString          := '040';
                ParamByName('ORIGEM').AsInteger           := qEntradaCorORIGEM.AsInteger;    //origem
                paramByName('CSTIPI').AsString            := '53';
                ParamByName('CSTPIS').AsString            := qEntradaCorPIS_CST.AsString;   // CSTPIS
                ParamByName('CSTCOFINS').AsString         := qEntradaCorCOFINS_ST.AsString; // CSTCOFINS
                ParamByName('ALIQCOFINS').AsCurrency      := qEntradaCorALIQ_COFINS.AsCurrency;
                ParamByName('OPER_SAIDA_DENTRO').AsString := qEntradaCorOPER_SAIDA_DENTRO.AsString;// '28';
                ParamByName('OPER_SAIDA_FORA').AsString   := qEntradaCorOPER_SAIDA_FORA.AsString;// '28';
                ParamByName('IDEMITENTE').AsString        := CodigoEmitente;
                ParamByName('ESTOQUE').AsFloat            := 0;// qEntradaCorQUANT.AsFloat;
                ParamByName('MARGEM').AsFloat             := qEntradaCorMARGEM.AsFloat;
                ParamByName('COD_FORN').AsString          := qEntradaCorCOD_PROD_FORN.asstring;
            end;
            Executa.ExecSQL;
            tExecuta.Commit;
            tExecuta.StartTransaction;
            Executa.close;
            Executa.SQL.Clear;
            Executa.sql.Text :=
            'Insert into CODIGOS_FORNECEDORES( COD, CODIGO_LOCAL, COD_FORNECEDOR,'+
            ' CODIGO_FORN, CODEMITENTE )'+
            ' values( :COD, :CODIGO_LOCAL, :COD_FORNECEDOR, :CODIGO_FORN, :CODEMITENTE )';
            Executa.ParamByName('COD').AsInteger            := lbase.pegaseg('CODIGOS_FORNECEDORES', 'COD',UniMainModule.Banco);
            Executa.ParamByName('CODIGO_LOCAL').AsInteger   := COD;
            Executa.ParamByName('COD_FORNECEDOR').AsInteger := COD_FOR;
            Executa.ParamByName('CODIGO_FORN').AsString     := qEntradaCorCOD_PROD_FORN.AsString;
            Executa.ParamByName('CODEMITENTE').AsString     := CodigoEmitente;
            Executa.ExecSQL;
            tExecuta.Commit;
        end;
    except
      on E: Exception do
      begin
        showmessage('Erro: '+e.message)
      end;
    end;
end;

procedure TfCompra.CalculaCabecalho(COD_ENT: Integer);
var
  cTotal, cTotalBaseICMS, cTotalIcms, cTotalBaseSub, cTotalICMSSub, cTotalIPI,
    cTotalQuant, cTotalPIS, cTotalCOFINS, cTotalDesconto: currency;
  bSomarItens: Boolean;
begin
  cTotal         := 0;
  cTotalBaseICMS := 0;
  cTotalIcms     := 0;
  cTotalBaseSub  := 0;
  cTotalICMSSub  := 0;
  cTotalIPI      := 0;
  cTotalQuant    := 0;
  cTotalPIS      := 0;
  cTotalCOFINS   := 0;
  cTotalDesconto := 0;
     with UniMainModule do
     begin
         qEntradaCor.First;
         while not qEntradaCor.Eof do
         begin
              cTotal := cTotal + qEntradaCorVLTOTAL.AsCurrency;
              cTotalBaseICMS := cTotalBaseICMS + qEntradaCorBASEICMS.AsCurrency;
              cTotalIcms     := cTotalIcms +     qEntradaCorVLICMS.AsCurrency;
              cTotalBaseSub  := cTotalBaseSub +  qEntradaCorBASEICMS.AsCurrency;
              cTotalICMSSub  := cTotalICMSSub +  qEntradaCorVALOR_ST.AsCurrency;
              cTotalIPI      := cTotalIPI +      qEntradaCorVALOR_IPI.AsCurrency;
              cTotalPIS      := cTotalPIS +      qEntradaCorPIS_VALOR.AsCurrency;
              cTotalCOFINS   := cTotalCOFINS +   qEntradaCorVALOR_COFINS.AsCurrency;
              cTotalDesconto := cTotalDesconto + qEntradaCorDESCONTO.AsCurrency;
              qEntradaCor.Next;
         end;
         if not qEntradaCab.IsEmpty then
         begin
               qEntradaCab.Edit;
               qEntradaCabTOTAL_NOTA.AsCurrency     := ( cTotal + cTotalIPI + cTotalICMSSub ) - cTotalDesconto;
               qEntradaCabTOTAL_PRODUTOS.AsCurrency :=  cTotal;
               qEntradaCabVALOR_DESCONTO.AsCurrency := cTotalDesconto;
               qEntradaCabBASE_ICMS_ST.AsCurrency   := cTotalBaseSub;
               qEntradaCabVALOR_ICMS_ST.AsCurrency  :=  cTotalICMSSub;
               qEntradaCabVALOR_PIS.AsCurrency      := cTotalPIS;
               qEntradaCabVALOR_COFINS.AsCurrency   := cTotalCOFINS;
               qEntradaCabBASE_ICMS.AsCurrency      := cTotalBaseICMS;
               qEntradaCabVALOR_ICMS.AsCurrency     := cTotalIcms;
               qEntradaCabVALOR_IPI.AsCurrency      := cTotalIPI;
               qEntradaCabVALOR_SEGURO.AsCurrency   := 0;
               qEntradaCabENCERRADA.AsString        := 'S';
               qEntradaCabENCERRADA_DATA.AsDateTime := date;
               qEntradaCab.Post;
               qEntradaCab.ApplyUpdates();
               qEntradaCab.CommitUpdates;
         end;
     end;
end;

procedure TfCompra.CalculaItens(COD_ENT: Integer);
var
  cAuxiTotal: currency;
  cAuxiTotalProd: currency;
  cAuxiBaseICMS: currency;
  cAuxiValorICMS: currency;
  cAuxiValorPIS: currency;
  cAuxiBasePIS: currency;
  cAuxiValorCOFINS: currency;
  cAuxiBaseCOFINS: currency;
  cAuxiBaseSubTrib: currency;
  cAuxiValorSubTrib: currency;
  cAuxiValorIPI: currency;
  cAuxiDesconto: currency;
  cAuxiTxDesconto: currency;
  cAuxiAliquotaICMS: currency;
  frete, calc_frete, desconto, calc_desconto: Double;
begin
    cAuxiTxDesconto := 0;
    cAuxiTotal      := 0;
    frete           := 0;
    desconto        := 0;
    with UniMainModule do
    begin
        while not qEntradaCor.Eof do
        begin
              cAuxiTotal        := 0;
              cAuxiTotalProd    := 0;
              cAuxiBaseICMS     := 0;
              cAuxiValorICMS    := 0;
              cAuxiBaseSubTrib  := 0;
              cAuxiValorSubTrib := 0;
              cAuxiValorIPI     := 0;
              cAuxiDesconto     := 0;
              cAuxiValorPIS     := 0;
              cAuxiValorCOFINS  := 0;
              cAuxiBasePIS      := 0;
              cAuxiBaseCOFINS   := 0;
              cAuxiAliquotaICMS := qEntradaCorPERC_ICMS.AsCurrency;
             { calcula o Total dos produtos }
              cAuxiTotalProd := qEntradaCorQUANT.AsCurrency * qEntradaCorVLUNIT.AsCurrency;
              cAuxiDesconto  := qEntradaCorDESCONTO.AsCurrency;
              if cAuxiDesconto > 0 then
                 begin
                    cAuxiTxDesconto := ( cAuxiDesconto * 100 ) / cAuxiTotalProd;
                    cAuxiTotalProd  := cAuxiTotalProd - cAuxiDesconto;
              end;
              begin
                  cAuxiBaseICMS     := 0;
                  cAuxiValorICMS    := 0;
                  cAuxiAliquotaICMS := 0;
              end;
            { calcula a base e o valor da sub.tributaria }
            if MesmoEstado and ( qEntradaCorPERC_ST.AsCurrency > 0 ) then
            begin
                cAuxiBaseSubTrib := cAuxiBaseICMS + ((cAuxiBaseICMS * qEntradaCorPERC_ST.AsCurrency) / 100);
                cAuxiValorSubTrib := ((cAuxiBaseSubTrib * cAuxiAliquotaICMS) / 100) - cAuxiValorICMS;
            end;
            { calcula o valor do ipi }
            if qEntradaCorPERC_IPI.AsCurrency > 0 then
              cAuxiValorIPI := ((cAuxiTotalProd * qEntradaCorPERC_IPI.AsCurrency) / 100);

            { PIS E COFINS }
            if qEntradaCorPIS_ALIQ.AsCurrency > 0 then
            begin
                cAuxiBasePIS     := cAuxiTotalProd;
                cAuxiBaseCOFINS  := cAuxiTotalProd;
                cAuxiValorPIS    := (cAuxiTotalProd * qEntradaCorALIQ_IPI.AsCurrency) / 100;
                cAuxiValorCOFINS := (cAuxiTotalProd * qEntradaCorALIQ_COFINS.AsCurrency) / 100;
            end;
            { calcula o total geral do produto }
            cAuxiTotal := (cAuxiTotalProd + cAuxiValorIPI + cAuxiValorSubTrib);
            qEntradaCor.Edit;
            qEntradaCorVLTOTAL.AsCurrency      := cAuxiTotal;
            qEntradaCorBASE_CALCULO.AsCurrency := cAuxiBaseICMS;
            qEntradaCorVLICMS.AsCurrency       := cAuxiValorICMS;
            qEntradaCorBASE_ST.AsCurrency      := cAuxiBaseSubTrib;
            qEntradaCorVALOR_ST.AsCurrency     := cAuxiValorSubTrib;
            qEntradaCorVALOR_IPI.AsCurrency    := cAuxiValorIPI;
            qEntradaCorVALOR_IPI.AsCurrency    := cAuxiValorPIS;
            qEntradaCorVALOR_COFINS.AsCurrency := cAuxiValorCOFINS;
            qEntradaCor.Post;
            qEntradaCor.ApplyUpdates;
            qEntradaCor.CommitUpdates;
            qEntradaCor.Next;
        end;
    end;
end;

procedure TfCompra.CalculaNota(COD_ENT: Integer);
begin
   CalculaItens( COD_ENT );
   CalculaCabecalho( COD_ENT );
end;

procedure TfCompra.CarregaDadosNota;
var    ok, bIgnoraDuplicata: Boolean;
begin
      DestinatarioCNPJ := UniMainModule.Nfe.NotasFiscais[0].NFe.Dest.CNPJCPF;

      if cxml.Checked = false then
      begin
          if DestinatarioCNPJ <> UniMainModule.qEmitenteCNPJ.AsString then
          begin
             ShowMessage('Atenção, esta NF não é para este emitente!');
             Continua := 'N';
          end;
      end;

      eNotaNUMNF_ENT.text          := intToStr( UniMainModule.Nfe.NotasFiscais[0].NFe.Ide.nNF );   // NOTA
      eNotaSERIE_ENT.text          := intToStr( UniMainModule.Nfe.NotasFiscais[0].NFe.Ide.serie ); // SERIE
      eNotaTPOP.text               := tpNFToStr( UniMainModule.Nfe.NotasFiscais[0].Nfe.Ide.tpNF ); // TIPONOTA
      eNotaNatOp.text              := UniMainModule.Nfe.NotasFiscais[0].Nfe.Ide.natOp;             // NATUREZA OPERACAO
      eNotaDATAEMI_ENT.DateTime    := UniMainModule.Nfe.NotasFiscais[0].Nfe.Ide.dEmi;              // DTEMISSAO
      eNotaDATAENT_ENT.DateTime    := date;                                                        // DTENTRADA
      eNotaTOTAL_ENT.value         := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vNF;     // TOTAL_NOTA
      eNotaTOTAL_ENT2.caption      := FormatFloat('#,,0.00', UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vNF );
      eNotaTOTAL_PRODUTOS.Value    := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vProd;   // TOTAL_PRODUTOS
      eNotaTOTAL_PRODUTOS2.caption := FormatFloat('#,,0.00', UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vProd );
      eNotaOUTRASDESP.value        := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vOutro;  // VALOR_OUTRAS_DESPESAS
      eNotaOUTRASDESP2.Caption     := FormatFloat('#,,0.00', UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vOutro);
      eNotaDESC_ENT.value          := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vDesc;   // VALOR_DESCONTO
      eNotaDESC_ENT2.caption       := FormatFloat('#,,0.00', UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vDesc);
      eNotaV_IPI.value             := UniMainModule.Nfe.NotasFiscais[0].NFe.Total.ICMSTot.vIPI;    // VALOR_IPI
      eNotaV_IPI2.caption          := FormatFloat('#,,0.00', UniMainModule.Nfe.NotasFiscais[0].NFe.Total.ICMSTot.vIPI);
      eNotaFRETE_ENT.value         := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vFrete;  // VALOR_FRETE
      eNotaV_SEG.value             := UniMainModule.Nfe.NotasFiscais[0].NFe.Total.ICMSTot.vSeg;    // VALOR_SEGURO
      eNotaBCICMS.value            := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vBC;     // BASE_ICMS
      eNotaVALOR_ICMS.value        := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vICMS;   // VALOR_ICMS
      eNotaBASE_SUB_TRIB.value     := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vBCST;   // BASE_ICMS_ST
      eNotaVALOR_ICMS_SUB.value    := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vST;     // VALOR_ICMS_ST
      eNotaV_PIS.value             := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vPIS;    // VALOR_PIS
      eNotaV_COFINS.value          := UniMainModule.Nfe.NotasFiscais[0].Nfe.Total.ICMSTot.vCofins; // VALOR_COFINS
      eNotaCODIGO_ES.text          := intToStr( UniMainModule.Nfe.NotasFiscais[0].Nfe.Ide.cUF );   // CODIGO_UF
      eNotaCHAVE_NFE.text          := UniMainModule.Nfe.NotasFiscais[0].Nfe.infNFe.ID;             // CHAVE_ACESSO
      eNotaCODIFICACAO_FISCAL.text := intToStr(UniMainModule.Nfe.NotasFiscais[0].Nfe.Ide.modelo);  // MODELO
    //  NotaICMSFRETE_ENT.AsCurrency := 0;

      if UniMainModule.Nfe.NotasFiscais[0].Nfe.Ide.indPag = ipVista then
      begin
          rFormaPgto.ItemIndex  := 0;
          rFormaPgto2.ItemIndex := 1;
      end
      else
      begin
          rFormaPgto.ItemIndex  := 1;
          rFormaPgto2.ItemIndex := 2;
      end;
end;

procedure TfCompra.CarregaDuplicatas;
var
  I, parcela: Integer;
  lbase: TBase;
begin
    parcela := 1;
    with UniMainModule do
    begin
        if Nfe.NotasFiscais[0].Nfe.Ide.indPag = ipVista then
        begin
            if qEntradaCabENCERRADA.AsString <> 'S' then
            begin
                with UniMainModule.Banco do
                begin
                     StartTransaction;
                     ExecSQL('insert into PAGARCAB                    '+
                     ' ( ID,IDEMITENTE,CODIGO,FATURA,DATA,DATAVCTO,     '+
                     ' VALOR,SALDO,OBS,PARCELA,FORNECEDOR,REFPEDIDO ) '+
                     ' values                                           '+
                     '( :ID,:IDEMITENTE,:CODIGO,:FATURA,:DATA,:DATAVCTO,'+
                     ' :VALOR,:SALDO,:OBS,:PARCELA,:FORNECEDOR,:REFPEDIDO)',
                     [lbase.pegaseg('PAGARCAB', 'ID', UniMainModule.Banco),
                         UniMainModule.CodigoEmitente.ToInteger,
                         lbase.ultimoCampo('PAGARCAB', 'CODIGO','IDemitente',UniMainModule.Banco),
                         Nfe.NotasFiscais[0].NFe.Cobr.Fat.nFat,  // fatura,
                         Nfe.NotasFiscais[0].Nfe.Ide.dEmi,       // eData.DateTime,    // Data
                         Nfe.NotasFiscais[0].Nfe.Ide.dEmi,       // Vencimento,        // Vencimento
                         Nfe.NotasFiscais[0].Nfe.Cobr.Fat.vLiq,  // valorParcela,      // valor parcela
                         Nfe.NotasFiscais[0].Nfe.Cobr.Fat.vLiq,  // valorParcela,      // Saldo
                         'Fat. Compra.',                         // eDescricao.Text,   // Obs
                         1,                                      // Parcela
                         COD_FOR,                                // Fornecedor
                         eNotaNUMNF_ENT.text
                     ]);
                     Commit;
                end;
            end;
            eNrDoc.Text                := Nfe.NotasFiscais[0].Nfe.Cobr.Fat.nFat;
            eDataEmissao.DateTime      := Nfe.NotasFiscais[0].Nfe.Ide.dEmi;
            eValorTotal.value          := Nfe.NotasFiscais[0].Nfe.Cobr.Fat.vLiq;
            eNrParcelas.value          := 1;
            eVctoPrimeiraParc.DateTime := Nfe.NotasFiscais[0].Nfe.Ide.dEmi;
        end
        else
        begin
            if qEntradaCabENCERRADA.AsString <> 'S' then
            begin
                with UniMainModule.Banco do
                begin
                    StartTransaction;
                    for I := 0 to Nfe.NotasFiscais[0].Nfe.Cobr.Dup.Count - 1 do
                    begin
                         ExecSQL('insert into PAGARCAB                    '+
                         ' ( ID,IDEMITENTE,CODIGO,FATURA,DATA,DATAVCTO,     '+
                         ' VALOR,SALDO,OBS,PARCELA,FORNECEDOR,REFPEDIDO ) '+
                         ' values                                           '+
                         '( :ID,:IDEMITENTE,:CODIGO,:FATURA,:DATA,:DATAVCTO,'+
                         ' :VALOR,:SALDO,:OBS,:PARCELA,:FORNECEDOR,:REFPEDIDO)',
                         [lbase.ultimoCampo('PAGARCAB', 'ID', 'IDemitente',UniMainModule.Banco),
                             UniMainModule.CodigoEmitente.ToInteger,
                             lbase.ultimoCampo('PAGARCAB', 'CODIGO','IDemitente',UniMainModule.Banco),
                             Nfe.NotasFiscais[0].Nfe.Cobr.Dup.Items[I].nDup,  // fatura,
                             Nfe.NotasFiscais[0].Nfe.Ide.dEmi,                // eData.DateTime,    // Data
                             Nfe.NotasFiscais[0].Nfe.Cobr.Dup.Items[I].dVenc, // Vencimento,        // Vencimento
                             Nfe.NotasFiscais[0].Nfe.Cobr.Dup.Items[I].vDup,  // valorParcela,      // valor parcela
                             Nfe.NotasFiscais[0].Nfe.Cobr.Dup.Items[I].vDup,  // valor Saldo,       // Saldo
                             'Fat. Compra.',                                  // eDescricao.Text,   // Obs
                             parcela,                                         // Parcela
                             COD_FOR,                                         // Fornecedor
                             eNotaNUMNF_ENT.text
                         ]);
                        eNrDoc.Text           := Nfe.NotasFiscais[0].Nfe.Cobr.Fat.nFat;
                        eDataEmissao.DateTime := Nfe.NotasFiscais[0].Nfe.Ide.dEmi;
                        eValorTotal.value     := Nfe.NotasFiscais[0].Nfe.Cobr.Fat.vLiq;
                        eNrParcelas.value     := parcela;
                        inc(parcela);
                        if i = 0 then
                           eVctoPrimeiraParc.DateTime := Nfe.NotasFiscais[0].Nfe.Cobr.Dup.Items[I].dVenc;
                    end;
                    Commit;
                end;
            end;
        end;
    end;
    with UniMainModule do
    begin
          qPagarCab.Close;
          qPagarCab.SQL.Clear;
          qPagarCab.SQL.Add('Select pc.*, c.nomefantasia,  '+
          ' c.razaosocial from PagarCab pc                 '+
          ' left join clientes c on (c.idcliente = pc.Fornecedor and '+
          ' pc.IDemitente = C.idemitente )                   '+
          ' WHERE pc.IDemitente = :E and pc.fornecedor = :for and pc.refPedido = :fat ');
          qPagarCab.sql.Add(' ORDER BY pc.id ');

          qPagarCab.ParamByName('e').AsInteger   := UniMainModule.CodigoEmitente.ToInteger;
          qPagarCab.ParamByName('for').AsInteger := COD_FOR;
          qPagarCab.ParamByName('fat').AsString  := eNotaNUMNF_ENT.TEXT; // Nfe.NotasFiscais[0].Nfe.Cobr.Fat.nFat;
          qPagarCab.open;
    end;
end;

procedure TfCompra.CarregaForn;
var
   lbase : tbase;
begin
    eFornecedorRAZAO.text      := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.xNome;
    eFornecedorRAZAO2.Caption  := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.xNome;
    eFornecedorRAZAO3.text     := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.xNome;
    eFornecedorFANTASIA.text   := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.xFant;
    eFornecedorEND.text        := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.xLgr;
    eFornecedorBAIRRO.text     := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.xBairro;
    eFornecedorCOMPLEMENTO.Text:= UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.xCpl;
    eFornecedorCIDADE.text     := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.xMun;
    eFornecedorCIDADE2.caption := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.xMun;
    eFornecedorCEP.text        := intToStr(UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.CEP);
    eFornecedorUF.text         := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.UF;
    eFornecedorUF2.caption     := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.UF;
    eFornecedorUF3.text        := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.UF;
    eFornecedorCNPJ.text       := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.CNPJCPF;
    eFornecedorCNPJ2.caption   := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.CNPJCPF;
    eFornecedorCNPJ3.text      := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.CNPJCPF;
    eFornecedorINSC.text       := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.IE;
    eFornecedorCNAE.text       := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.CNAE;
    eFornecedorCRT.text        := CRTToStr(UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.CRT);
    eFornecedorTEL.text        := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.fone;
    eFornecedorNUMERO.text     := UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.nro;
    eFornecedorIBGE.text       := intToStr( UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.cMun );
    if Length(eFornecedorCNPJ.text) > 11 then
      FornecedorFJ.text   := 'JURIDICA'
    else
      FornecedorFJ.text   := 'FISICA';
    if lbase.codigoUF( UniMainModule.Nfe.NotasFiscais[0].Nfe.Emit.EnderEmit.UF ) = lbase.codigoUF( UniMainModule.qEmitenteUF.AsString )  then
        unimainmodule.MesmoEstado := true
    else
        unimainmodule.MesmoEstado := false
end;

procedure TfCompra.CarregaProdutos;
var
  I: Integer;
  Prod, seq: Integer;
  sIPI: String;
  lbase : tbase;
begin
      with UniMainModule do
      begin
          qentradacor.open;
          seq := 1;
          Prod := Nfe.NotasFiscais[0].Nfe.Det.Count;
          for I := 0 to Prod - 1 do
          begin
              qentradacor.Insert;
              qEntradaCorID.AsInteger           := lbase.pegaseg('ENTRADA_COR', 'ID',UniMainModule.Banco);
              qEntradaCorCOD_ENTRADA.AsInteger  := CODENT;
              qEntradaCornota.AsInteger         := strToInt( eNotaNUMNF_ENT.text );
              qEntradaCorSEQ_PRODUTO.AsInteger  := seq;
              qEntradaCorSERIE.AsInteger        := strToInt( eNotaSERIE_ENT.text );
              qEntradaCorMODELO.AsInteger       := 55;
              qEntradaCorCOD_EMITENTE.AsInteger := StrToInt( CodigoEmitente );
              qEntradaCorCOD_PROD_FORN.AsString := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.cProd;    // IDPRODUTO
              qEntradaCorEAN.AsString           := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.cEAN;     // EAN
              qEntradaCorDESCRICAO.AsString     := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.xProd;    // DESCRICAO
              qEntradaCorNCM.AsString           := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.NCM;      // NCM
              qEntradaCorUN.AsString            := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.uTrib;    // UN
              qEntradaCorQUANT.AsFloat          := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.qTrib;    // QUANT
              qEntradaCorVLUNIT.AsCurrency      := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.vUnTrib;  // VLUNIT
              qEntradaCorVLTOTAL.AsCurrency     := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.vProd;    // VLTOTAL
              qEntradaCorORIGEM.AsString        := OrigToStr(Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.orig); // ORIGEM
              if Nfe.NotasFiscais[0].Nfe.Emit.CRT = crtSimplesNacional then
                  qEntradaCorCST_CSOSN.AsString := CSOSNICMSToStr(Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.CSOSN)//CST_CSOSN
              else
                  qEntradaCorCST_CSOSN.AsString := CSTICMSToStr(Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.CST);//CST_CSOSN
              qEntradaCorBASEICMS.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.vBC;    // BASE_ICMS
              qEntradaCorALIQICMS.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.pICMS;  // ALIQ_ICMS
              qEntradaCorVLICMS.AsCurrency      := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.vICMS;  // VLICMS
              qEntradaCorBASE_ST.AsCurrency     := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.vBCST;  // BASE_ST
              qEntradaCorALIQ_ST.AsCurrency     := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.pICMSST;// ALIQ_ST
              qEntradaCorVALOR_ST.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.vICMSST;// VALOR_ST
              qEntradaCorALIQ_IPI.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.IPI.pIPI;    // ALIQ_IPI
              qEntradaCorVALOR_IPI.AsCurrency   := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.IPI.vIPI;    // VALOR_IPI
              qEntradaCorBASE_IPI.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.IPI.vBC;     // BASE_IPI
              qEntradaCorDESCONTO.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.vDesc;          // DESCONTO
              qEntradaCorPRED_BC.AsCurrency     := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.pRedBC;  // PRED_BC
              qEntradaCorPRED_BC_ST.AsCurrency  := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.ICMS.pRedBCST;// PRED_BC_ST
              qEntradaCorPIS_CST.AsString       := CSTPISToStr(Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.PIS.CST);// PIS_CST
              qEntradaCorPIS_BC.AsCurrency      := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.PIS.vBC;             // PIS_BC
              qEntradaCorPIS_ALIQ.AsCurrency    := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.PIS.pPIS;            // PIS_ALIQ
              qEntradaCorPIS_VALOR.AsCurrency   := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.PIS.vPIS;            // PIS_VALOR
              qEntradaCorCOFINS_ST.AsString     := CSTCOFINSToStr(Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.COFINS.CST);//COFINS_ST
              qEntradaCorBASE_COFINS.AsCurrency := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.COFINS.vBC;     // BASE_COFINS
              qEntradaCorALIQ_COFINS.AsCurrency := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.COFINS.pCOFINS; // ALIQ_COFINS
              qEntradaCorVALOR_COFINS.AsCurrency:= Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.COFINS.vCofins;// VALOR_COFINS
              qEntradaCorCFOP.AsString          := Nfe.NotasFiscais[0].Nfe.Det.Items[I].Prod.CFOP;              // CFOP
              sIPI := trim(CSTIPIToSTR(Nfe.NotasFiscais[0].Nfe.Det.Items[I].Imposto.IPI.CST));
              if sIPI = '99' then
                  qEntradaCorCST_IPI.AsString := '49'
              else
              begin
                  sIPI := '0' + Copy(sIPI, 2, 1);
                  qEntradaCorCST_IPI.AsString := sIPI;
              end;
              inc(seq);
              qentradacor.Post;
              qentradacor.ApplyUpdates;
              qentradacor.CommitUpdates;
          end;
          qentradacor.Close;
          qEntradaCor.SQL.Clear;
          qEntradaCor.SQL.Add('Select * from Entrada_Cor where '+
          ' COD_ENTRADA = :Entrada and nota = :nota and COD_EMITENTE = :emitente ');
          qentradacor.ParamByName('Entrada').AsInteger  := CODENT;
          qentradacor.ParamByName('nota').AsInteger     := strToInt( eNotaNUMNF_ENT.text );
          qentradacor.ParamByName('emitente').AsString  := CodigoEmitente;
          qEntradaCor.open;
      end;
end;
procedure TfCompra.CarregaTransp;
begin
    //
end;

function TfCompra.contas(COD_ENT: Integer): Boolean;
var
  SEQ: Integer;
  COD_CPT: Integer;
  lbase : tbase;
begin
end;

procedure TfCompra.FecharTabelas;
begin
     with UniMainModule do
     begin
          qEntradaCab.Close;
          qEntradaCor.Close;
     end;
end;

function TfCompra.ImportaCabecalho: Integer;
var
    lbase : tbase;
begin
      try
          UniMainModule.qGeral.close;
          UniMainModule.qGeral.sql.Clear;
          UniMainModule.qGeral.sql.Text := 'select nota from ENTRADA_CAB where CHAVE_ACESSO = :CHAVE';
          UniMainModule.qGeral.ParamByName('CHAVE').AsString := eNotaCHAVE_NFE.text;
          UniMainModule.qGeral.Open;
          if not UniMainModule.qGeral.IsEmpty then
          begin
              UniMainModule.qGeral.close;
              ShowMessage('Esta Nota ja foi importada! Selecione um novo arquivo XML para continuar.');
              result := 0;
              exit;
          end;
          UniMainModule.qGeral.close;
          with UniMainModule do
          begin
              CODENT := lbase.pegaseg('ENTRADA_CAB', 'ID',UniMainModule.Banco);//  ID
              qEntradaCab.Open;
              qEntradaCab.Insert;
              qEntradaCabID.AsInteger               := CODENT;
              qEntradaCabNOTA.AsInteger             := StrToInt( eNotaNUMNF_ENT.Text );         //  NOTA
              qEntradaCabMODELO.AsInteger           := StrToInt( eNotaCODIFICACAO_FISCAL.Text );//  modelo
              qEntradaCabSERIE.AsInteger            := StrToInt( eNotaSERIE_ENT.Text );         //  serie
              qEntradaCabCOD_EMITENTE.AsInteger     := strToInt( UniMainModule.CodigoEmitente );
              qEntradaCabDTEMISSAO.AsDateTime       := eNotaDATAEMI_ENT.DateTime;
              qEntradaCabTIPONOTA.AsString          := eNotaTPOP.Text;
              qEntradaCabNATUREZA_OPER.AsString     := eNotaNatOp.Text;
              qEntradaCabIDFORNECEDOR.AsInteger     := COD_FOR;
              qEntradaCabNOME_FORNECEDOR.AsString   := eFornecedorRAZAO.Text;;
              qEntradaCabTOTAL_NOTA.AsCurrency      := eNotaTOTAL_ENT.Value;
              qEntradaCabVALOR_ACRESCIMO.AsCurrency := eNotaOUTRASDESP.value; // eNotaACRES_ENT.Value;
              qEntradaCabVALOR_DESCONTO.AsCurrency  := eNotaDESC_ENT.Value;
              qEntradaCabVALOR_FRETE.AsCurrency     := eNotaFRETE_ENT.Value;
              qEntradaCabNOTA.AsString              := eNotaNUMNF_ENT.text;
              qEntradaCabSERIE.AsString             := eNotaSERIE_ENT.text;
              qEntradaCabBASE_ICMS_ST.AsCurrency    := eNotaBASE_SUB_TRIB.Value;
              qEntradaCabVALOR_ICMS_ST.AsCurrency   := eNotaVALOR_ICMS_SUB.Value;
              qEntradaCabTOTAL_PRODUTOS.AsCurrency  := eNotaTOTAL_PRODUTOS.Value;
              qEntradaCabCHAVE_ACESSO.AsString      := eNotaCHAVE_NFE.text;
              qEntradaCabVALOR_PIS.AsCurrency       := eNotaV_PIS.Value;
              qEntradaCabVALOR_COFINS.AsCurrency    := eNotaV_COFINS.Value;
              qEntradaCabBASE_ICMS.AsCurrency       := eNotaBCICMS.Value;
              qEntradaCabVALOR_ICMS.AsCurrency      := eNotaVALOR_ICMS.Value;
              qEntradaCabVALOR_IPI.AsCurrency       := eNotaV_IPI.Value;
              qEntradaCabVALOR_SEGURO.AsCurrency    := eNotaV_SEG.Value;
              qEntradaCabCODIGO_UF.AsString         := eNotaCODIGO_ES.Text;
              qEntradaCabCRT.AsString               := eFornecedorCRT.Text;
              qEntradaCabENCERRADA.AsString         := 'N';
              qEntradaCab.Post;
              qEntradaCab.ApplyUpdates();
              qEntradaCab.CommitUpdates;
          end;
          result := CODENT;
      except
        on E: Exception do
        begin
            showmessage('Erro ao Cadastrar Nota! '+E.Message);
            result := 0;
        end;
      end;
end;

procedure TfCompra.MudaTabProdutos;
begin
     pg.ActivePage := tabprodutos;
end;

procedure TfCompra.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin
      if AResult = mrOK then
      begin
           if AText = 'xml' then
           begin
                cXML.Checked := true;
           end
           else
           begin
                ShowMessage('Senha incorreta');
                cXML.Checked := false;
           end;
      end;
end;

procedure TfCompra.PromptCallBackAtualizaEstoque(Sender: TComponent;
  AResult: Integer; AText: string);
begin
      if AResult = mrOK then
      begin
           if AText = 'acerto' then
           begin
                AtualizaEstoque;
           end
           else
           begin
                ShowMessage('Senha incorreta');
                cXML.Checked := false;
           end;
      end;
end;

procedure TfCompra.UniBitBtn10Click(Sender: TObject);
begin
      pg.ActivePage := tabprodutos;
end;

procedure TfCompra.UniBitBtn11Click(Sender: TObject);
begin
     pg.ActivePage := UniTabSheet7;
end;

procedure TfCompra.UniBitBtn12Click(Sender: TObject);
begin
     pg.ActivePage := UniTabSheet6;
end;

procedure TfCompra.bEncerrarClick(Sender: TObject);
begin
  //   ImportaCabecalho;
     try
         CalculaNota( 1 );
         AtualizaEstoque;
         ShowMessage('Nota importada com sucesso!');
         pg.ActivePage := tabInicio;
     except on e:Exception do
     begin
          ShowMessage('Erro: '+e.Message);
          pg.ActivePage := tabInicio;
     end;
     end;
end;

procedure TfCompra.UniBitBtn1Click(Sender: TObject);
begin
     Associa(1);
end;

procedure TfCompra.UniBitBtn2Click(Sender: TObject);
begin
     CadastraProduto(0);
end;

procedure TfCompra.UniBitBtn4Click(Sender: TObject);
begin
     close;
end;

procedure TfCompra.UniBitBtn6Click(Sender: TObject);
begin
     pg.ActivePage := TabInicio;
end;

procedure TfCompra.UniBitBtn7Click(Sender: TObject);
begin
     pg.ActivePage := TabCadForn;
end;

procedure TfCompra.UniBitBtn8Click(Sender: TObject);
begin
     pg.ActivePage := TabDadosIniciais;
end;

procedure TfCompra.UniBitBtn9Click(Sender: TObject);
begin
     with unimainmodule do
     begin
          qEntradaCor.first;

          while not qEntradaCor.eof do
          begin
               if qEntradaCorCOD_PROD.asstring = '' then
               begin
                    ShowMessage('Existem produtos não cadastrados ou vinculados!');
                    EXIT;
               end;
               qEntradaCor.next;
          end;
     end;

     pg.ActivePage := UniTabSheet6;
end;

procedure TfCompra.bLocalizarCompraClick(Sender: TObject);
begin
     fCompraLocalizar.showModal;
end;

procedure TfCompra.bImportarClick(Sender: TObject);
begin
     UniFileUpload1.Execute;
end;

procedure TfCompra.UniButton1Click(Sender: TObject);
begin
     Prompt('@*Entre com a senha de Gerente', '', mtInformation, mbOKCancel, PromptCallBackAtualizaEstoque, False);
end;

procedure TfCompra.UniButton2Click(Sender: TObject);
begin
     Prompt('@*Entre com a senha de Gerente', '', mtInformation, mbOKCancel, PromptCallBack, False);
end;

procedure TfCompra.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
     if Column.Field.Name = 'qEntradaCorCOD_PROD' then
     begin
          MessageDlg('Deseja vincular ou cadastrar este produto?', mtConfirmation, mbYesNo,
          procedure(Sender: TComponent; Res: Integer)
          begin
              case Res of
              mrYes :
              begin
                    fCadRapidoProd.showModal;
              end;
              mrNo  :
              begin
              end;
              end;
          end);
     end;
end;

procedure TfCompra.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
      if SameText(AField.FieldName, 'COD_PROD') then
      begin
          if Column.Field.AsString = '' then
          begin
              DoNotDispose := True;
              OutImage     := imgImposto.Picture.Graphic;
          end
          else
          begin
              DoNotDispose := True;
              OutImage     := UnimImage1.Picture.Graphic;
          end;
      end;
end;

procedure TfCompra.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  DestName  : String;
  DestFolder: String;
  FFolder, FUrl: String;
begin
    NomedoArquivo := ExtractFileName(UniFileUpload1.FileName);
    Ext           := ExtractFileExt(UniFileUpload1.FileName);

    if ((Ext = '.xml') or (Ext = '.Xml') or (Ext = '.XMl') or (Ext = '.XML') ) then
    begin
        try
            DestFolder := UniServerModule.LocalCachePath;
            DestName   := DestFolder+ExtractFileName(NomedoArquivo);

            CopyFile(PChar(AStream.FileName), PChar(DestName), False);

            FFolder := UniServerModule.LocalCachePath;

            try
                 UniMainModule.NFE.NotasFiscais.Clear;
                 if not UniMainModule.Nfe.NotasFiscais.LoadFromFile(FFolder + NomedoArquivo) then
                 begin
                    ShowMessage('Não foi possivel carregar dados da nota!');
                    Exit;
                 end;
                 if UniMainModule.nfe.NotasFiscais.Count = 0 then
                 begin
                    ShowMessage( 'Não foi possivel carregar dados da nota!');
                    Exit;
                 end;
                 CarregaDadosNota();
                 CarregaForn();
                 CarregaTransp;
            except
            on E: Exception do
            begin
                ShowMessage('Erro ao abrir o XML!' + #13 + E.Message);
                abort;
            end;
            end;

        finally
            VerificaImportada;

            if Continua <> 'N' then
            begin
                bEncerrar.Enabled := true;
                pg.ActivePage := TabDadosIniciais;
            end;
        end;
    end
    else
      ShowMessage('São aceitos apenas arquivos pfx. Este arquivo é de extenção ' + Ext);
end;

procedure TfCompra.UniFormShow(Sender: TObject);
begin
     pg.TabBarVisible := false;
     pg.ActivePage    := tabInicio;
end;

procedure TfCompra.Associa(SEQ: Integer);
var lbase : tbase;
begin
      COD_LOCALIZA  := 0;
      FConsProd.Tag := 98;
      FConsProd.showmodal;
      if COD_LOCALIZA > 0 then
      begin
          with unimainmodule do
          begin
              if Trim( qEntradaCorCOD_PROD_FORN.AsString ) <> '' then
              begin
                  tExecuta.StartTransaction;
                  Executa.close;
                  Executa.SQL.Clear;
                  Executa.sql.Text :=
                  'Insert into CODIGOS_FORNECEDORES( COD, CODIGO_LOCAL, COD_FORNECEDOR,'+
                  ' CODIGO_FORN, CODEMITENTE )'+
                  ' values( :COD, :CODIGO_LOCAL, :COD_FORNECEDOR, :CODIGO_FORN, :CODEMITENTE )';
                  Executa.ParamByName('COD').AsInteger            := lbase.pegaseg('CODIGOS_FORNECEDORES', 'COD',UniMainModule.Banco);
                  Executa.ParamByName('CODIGO_LOCAL').AsInteger   := COD_LOCALIZA;
                  Executa.ParamByName('COD_FORNECEDOR').AsInteger := COD_FOR;
                  Executa.ParamByName('CODIGO_FORN').AsString     := qEntradaCorCOD_PROD_FORN.AsString;
                  Executa.ParamByName('CODEMITENTE').AsString     := CodigoEmitente;
                  Executa.ExecSQL;
                  Executa.close;
                  Executa.SQL.Clear;
                  Executa.sql.Text :=
                  ' Update produtos Set Cod_Forn = :var0 where codigo = :var1 and idEmitente = :var2 ';
                  Executa.ParamByName('var0').AsString  := qEntradaCorCOD_PROD_FORN.AsString;
                  Executa.ParamByName('var1').AsInteger := COD_LOCALIZA;
                  Executa.ParamByName('var2').AsString  := CodigoEmitente;
                  Executa.ExecSQL;
                  tExecuta.Commit;
              end;
              qEntradaCor.Edit;
              qEntradaCorCOD_PROD.AsInteger := COD_LOCALIZA;
              qEntradaCorVINCULADO.AsString := 'S';
              qEntradaCor.Post;
              qEntradaCor.ApplyUpdates;
              qEntradaCor.CommitUpdates;
          end
      end;
end;

procedure TfCompra.AtualizaEstoque;
begin
     with UniMainModule do
     begin
          try
              tExecuta.StartTransaction;
              qEntradaCor.First;
              while not qEntradaCor.Eof do
              begin
                  Executa.close;
                  Executa.SQL.Clear;
                  Executa.sql.Text :=
                  ' update produtos set estoque = estoque + :estoque where '+
                  ' idEmitente = :emitente and codigo = :codigo ';
                  Executa.ParamByName('estoque').Value        := qEntradaCorQUANT.Value;
                  Executa.ParamByName('emitente').AsInteger   := strToInt( UniMainModule.CodigoEmitente );
                  Executa.ParamByName('codigo').AsInteger     := qEntradaCorCOD_PROD.Value;
                  Executa.ExecSQL;
                  qEntradaCor.Next;
              end;
              tExecuta.Commit;
          except on e:Exception do
          begin
              tExecuta.Rollback;
              showmessage('Erro: '+e.Message)
          end;
          end;
     end;
end;

procedure TfCompra.bAvancar1Click(Sender: TObject);
begin
     pg.ActivePage := tabCadForn;
     VerificaFornecedor;
end;

procedure TfCompra.bAvancar2Click(Sender: TObject);
begin
     ImportaCabecalho;
     CarregaProdutos;
     VerificaProd;
     pg.ActivePage := tabprodutos;
end;

procedure TfCompra.bCadFornClick(Sender: TObject);
begin
     CadastraFornecedor;
end;

procedure TfCompra.VerificaEmitente;
begin
     DestinatarioCNPJ := UniMainModule.Nfe.NotasFiscais[0].NFe.Dest.CNPJCPF;

     if DestinatarioCNPJ <> UniMainModule.qEmitenteCNPJ.AsString then
     begin
          ShowMessage( 'Atenção, esta NF não é para este emitente!');
          abort;
     end;
end;

procedure TfCompra.VerificaFornecedor;
var
  sAux: String;
begin
      COD_FOR := 0;
      with UniMainModule do
      begin
            qGeral.Close;
            qGeral.SQL.Clear;
            qGeral.sql.add('select idCliente from clientes '+
            ' where CPF_CNPJ = :CNPJ and IDEMITENTE = :emi ');
            qGeral.ParamByName('CNPJ').AsString := eFornecedorCNPJ.Text;
            qGeral.ParamByName('emi').AsString  := CodigoEmitente;
            qGeral.Open;
            if qGeral.IsEmpty then
            begin
                 lblStatusForn.Font.Color := clRed;
                 lblStatusForn.Caption    := 'Fornecedor não cadastrado!';
                 bAvancar2.Enabled        := false;
                 bCadForn.Enabled         := true;
            end
            else
            begin
                 lblStatusForn.Font.Color := clGreen;
                 lblStatusForn.Caption    := 'Fornecedor cadastrado!';
                 bAvancar2.Enabled        := True;
                 bCadForn.Enabled         := False;
                 COD_FOR                  := qGeral.FieldByName('idCliente').AsInteger;
            end;
            qGeral.close;
      end;
end;

procedure TfCompra.VerificaImportada;
begin
      UniMainModule.qGeral.close;
      UniMainModule.qGeral.sql.Clear;
      UniMainModule.qGeral.sql.Text := 'select nota from ENTRADA_CAB where CHAVE_ACESSO = :CHAVE';
      UniMainModule.qGeral.ParamByName('CHAVE').AsString := eNotaCHAVE_NFE.text;
      UniMainModule.qGeral.Open;
      if not UniMainModule.qGeral.IsEmpty then
      begin
           UniMainModule.qGeral.close;
           ShowMessage('Esta Nota ja foi importada, impossivel continuar!');
           abort;
      end;
end;

procedure TfCompra.VerificaProd;
begin
     with UniMainModule do
     begin
          qEntradaCor.First;
          while not qEntradaCor.Eof do
          begin
              if ((qEntradaCorEAN.AsString <> '') and (qEntradaCorEAN.AsString <> 'SEM GTIN')) then
              begin
                  qgeral.close;
                  qgeral.SQL.Clear;
                  qgeral.sql.add('select CODIGO,MARGEM,PRECO, '+
                  ' OPER_SAIDA_DENTRO, OPER_SAIDA_FORA from PRODUTOS  '+
                  ' where EAN = :BARRAS AND IDEMITENTE = :EMITENTE ');
                  qgeral.ParamByName('BARRAS').AsString   := qEntradaCorEAN.AsString;
                  qgeral.ParamByName('EMITENTE').AsString := CodigoEmitente;
                  qgeral.Open;
                  if not qgeral.IsEmpty then
                  begin
                      qEntradaCor.Edit;
                      qEntradaCorCOD_PROD.AsInteger          := qgeral.FieldByName('CODIGO').AsInteger;
                      qEntradaCorMARGEM.AsFloat              := qgeral.FieldByName('MARGEM').AsFloat;
                      qEntradaCorVALOR_VENDA.AsFloat         := qgeral.FieldByName('PRECO').AsInteger;
                      qEntradaCorOPER_SAIDA_DENTRO.AsInteger := qgeral.FieldByName('OPER_SAIDA_DENTRO').AsInteger;
                      qEntradaCorOPER_SAIDA_FORA.AsInteger   := qgeral.FieldByName('OPER_SAIDA_FORA').AsInteger;
                      qEntradaCorNOVO.AsString               := 'N';
                      qEntradaCor.Post;
                      qEntradaCor.ApplyUpdates;
                      qEntradaCor.CommitUpdates;
                  end
                  else
                  begin
                      if qEntradaCorCOD_PROD.IsNull then
                      begin
                          qEntradaCor.Edit;
                          qEntradaCorNOVO.AsString     := 'S';
                          qEntradaCor.Post;
                          qEntradaCor.ApplyUpdates;
                          qEntradaCor.CommitUpdates;
                      end;
                  end;
              end
              else
              begin
                  qgeral.close;
                  qgeral.SQL.Clear;
                  qgeral.sql.Add('select cf.*, P.CODIGO, P.MARGEM, P.PRECO, P.OPER_SAIDA_DENTRO,P.OPER_SAIDA_FORA '+
                  '  from CODIGOS_FORNECEDORES CF                  '+
                  '  join produtos p on P.codigo = CF.codigo_local '+
                  '  where                                         '+
                  '  CF.COD_FORNECEDOR = :COD_FOR and              '+
                  '  CF.CODIGO_FORN    = :COD  and                 '+
                  '  CF.CODEMITENTE    = :EMI and                  '+
                  '  p.idemitente      = :emi and                  '+
                  '  P.COD_FORN        = :COD     ');
                  qgeral.ParamByName('COD_FOR').AsInteger := COD_FOR;                          // codigo do fornecedor
                  qgeral.ParamByName('COD').AsString      := qEntradaCorCOD_PROD_FORN.AsString;// codigo do produto do fornecedor
                  qgeral.ParamByName('EMI').AsString      := CodigoEmitente;
                  qgeral.Open;
                  if not qgeral.IsEmpty then
                  begin
                      qEntradaCor.Edit;
                      qEntradaCorCOD_PROD.AsInteger          := qgeral.FieldByName('CODIGO_LOCAL').AsInteger;
                      qEntradaCorNOVO.AsString               := 'N';
                      qEntradaCorMARGEM.AsFloat              := qgeral.FieldByName('MARGEM').AsFloat;
                      qEntradaCorVALOR_VENDA.AsFloat         := qgeral.FieldByName('PRECO').AsInteger;
                      qEntradaCorOPER_SAIDA_DENTRO.AsInteger := qgeral.FieldByName('OPER_SAIDA_DENTRO').AsInteger;
                      qEntradaCorOPER_SAIDA_FORA.AsInteger   := qgeral.FieldByName('OPER_SAIDA_FORA').AsInteger;
                      qEntradaCor.Post;
                      qEntradaCor.ApplyUpdates;
                      qEntradaCor.CommitUpdates;
                  end
                  else
                  begin
                      if qEntradaCorCOD_PROD.IsNull then
                      begin
                          qEntradaCor.Edit;
                          qEntradaCorNOVO.AsString     := 'S';
                          qEntradaCor.Post;
                          qEntradaCor.ApplyUpdates;
                          qEntradaCor.CommitUpdates;
                      end;
                  end;
              end;
              qEntradaCor.Next;
          end;
     end;
end;

end.
