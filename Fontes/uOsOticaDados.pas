unit uOsOticaDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,

  uniGUIFrame,

  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniDBDateTimePicker, uniLabel,
  uniEdit, uniDBEdit, uniButton, UniSFButton, uniGUIBaseClasses, uniPanel,
  uniCheckBox, uniDBCheckBox, uniPageControl, uniDBComboBox, uniMultiItem,
  uniComboBox, uniDBLookupComboBox, uniBasicGrid, uniDBGrid, Data.DB,
  UniSFSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxExportPDF, frxDBSet, frxExportBaseDialog, uniBitBtn;

type
  TfOsOticaDados = class(TUniForm)
    PG: TUniPageControl;
    tabItens: TUniTabSheet;
    TabLaboratorio: TUniTabSheet;
    UniSFButton1: TUniSFButton;
    UniSFButton2: TUniSFButton;
    UniSFButton3: TUniSFButton;
    UniSFButton4: TUniSFButton;
    UniSFButton5: TUniSFButton;
    UniSFButton6: TUniSFButton;
    UniSFButton7: TUniSFButton;
    UniSFButton8: TUniSFButton;
    UniSFButton9: TUniSFButton;
    UniSFButton10: TUniSFButton;
    UniSFButton11: TUniSFButton;
    UniSFButton12: TUniSFButton;
    UniSFButton13: TUniSFButton;
    UniSFButton14: TUniSFButton;
    UniSFButton15: TUniSFButton;
    UniSFButton16: TUniSFButton;
    UniSFButton17: TUniSFButton;
    UniSFButton18: TUniSFButton;
    UniSFButton19: TUniSFButton;
    UniSFButton20: TUniSFButton;
    UniSFButton21: TUniSFButton;
    UniSFButton22: TUniSFButton;
    UniSFButton23: TUniSFButton;
    UniSFButton24: TUniSFButton;
    UniLabel1: TUniLabel;
    eDataReceita: TUniDBDateTimePicker;
    UniSFButton25: TUniSFButton;
    UniSFButton26: TUniSFButton;
    UniSFButton27: TUniSFButton;
    UniSFButton28: TUniSFButton;
    UniLabel2: TUniLabel;
    eObsReceita: TUniDBEdit;
    cAcompanhaReceita: TUniDBCheckBox;
    cAcompanhaArmacao: TUniDBCheckBox;
    UniLabel3: TUniLabel;
    eMedico: TUniDBEdit;
    UniLabel4: TUniLabel;
    eLaboratorio: TUniDBEdit;
    UniLabel5: TUniLabel;
    eObsInterna: TUniDBEdit;
    UniLabel6: TUniLabel;
    eCodigo: TUniDBEdit;
    UniLabel7: TUniLabel;
    eData: TUniDBDateTimePicker;
    UniLabel8: TUniLabel;
    eHora: TUniDBDateTimePicker;
    eVendedor: TUniDBLookupComboBox;
    UniLabel9: TUniLabel;
    eSitaucao: TUniDBComboBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    eCliente: TUniDBLookupComboBox;
    eCodCliente: TUniEdit;
    bPesqCliente: TUniSFButton;
    bCadCliente: TUniSFButton;
    UniLabel12: TUniLabel;
    eCodProduto: TUniEdit;
    enProduto: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;
    eQuantidadeProduto: TUniFormattedNumberEdit;
    eValorProduto: TUniFormattedNumberEdit;
    eTotalProduto: TUniFormattedNumberEdit;
    bDelProduto: TUniSFButton;
    bAdcProduto: TUniSFButton;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    eSubTotal: TUniDBFormattedNumberEdit;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    bSalvar: TUniSFButton;
    bCancelar: TUniSFButton;
    bFaturar: TUniSFButton;
    eEsfLongeDireito: TUniDBEdit;
    eEsfLongeEsquerdo: TUniDBEdit;
    eEsfPertoDireito: TUniDBEdit;
    eEsfPertoEsquerdo: TUniDBEdit;
    eCilLongeDireito: TUniDBEdit;
    eCilLongeEsquerdo: TUniDBEdit;
    eCilPertoDireito: TUniDBEdit;
    eCilPertoEsquerdo: TUniDBEdit;
    eEixoLongeDireito: TUniDBEdit;
    eAlturaLongeDireito: TUniDBEdit;
    eDnpLongeDireito: TUniDBEdit;
    eEixoLongeEsquerdo: TUniDBEdit;
    eAlturaLongeEsquerdo: TUniDBEdit;
    eDnpLongeEsquerdo: TUniDBEdit;
    eEixoPertoDireito: TUniDBEdit;
    eALturaPertoDireito: TUniDBEdit;
    eDnpPertoDireito: TUniDBEdit;
    eEixoPertoEsquerdo: TUniDBEdit;
    eAlturaPertoEsquerdo: TUniDBEdit;
    eDnpPertoEsquerdo: TUniDBEdit;
    eAdcao: TUniDBEdit;
    dsOticaCab: TDataSource;
    ePercDesconto: TUniDBFormattedNumberEdit;
    eValorDesconto: TUniDBFormattedNumberEdit;
    eTotal: TUniDBFormattedNumberEdit;
    sa: TUniSFSweetAlert;
    qVendedor: TFDQuery;
    dsVendedores: TDataSource;
    qVendedorCODIGO: TIntegerField;
    qVendedorNOME: TStringField;
    dsClientes: TDataSource;
    UniSFButton36: TUniSFButton;
    UniSFButton37: TUniSFButton;
    frxDB: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    frxVisualizar: TfrxReport;
    frxDbCor: TfrxDBDataset;
    frxEmpresa: TfrxDBDataset;
    pFaturar: TUniTabSheet;
    navPanel: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniSFButton29: TUniSFButton;
    FrxOrcamento: TfrxReport;
    UniPanel2: TUniPanel;
    lTitulo: TUniLabel;
    frxGarantia: TfrxReport;
    UniSFButton30: TUniSFButton;
    UniSFButton31: TUniSFButton;
    frxOrcamentoA4: TfrxReport;
    UniSFButton32: TUniSFButton;
    UniSFButton33: TUniSFButton;
    procedure bCancelarClick(Sender: TObject);
    procedure eAdcaoExit(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure eEixoLongeDireitoChange(Sender: TObject);
    procedure eEixoLongeEsquerdoChange(Sender: TObject);
 //   procedure ](Sender: TObject);
    procedure UniSFButton36Click(Sender: TObject);
    procedure bPesqClienteClick(Sender: TObject);
    procedure eCodClienteExit(Sender: TObject);
    procedure eQuantidadeProdutoChange(Sender: TObject);
    procedure eValorProdutoChange(Sender: TObject);
    procedure enProdutoExit(Sender: TObject);
    procedure bDelProdutoClick(Sender: TObject);
    procedure UniSFButton37Click(Sender: TObject);
    procedure eValorDescontoExit(Sender: TObject);
    procedure bFaturarClick(Sender: TObject);
    procedure eCodProdutoExit(Sender: TObject);
    procedure eCilLongeDireitoChange(Sender: TObject);
    procedure eCilLongeEsquerdoChange(Sender: TObject);
    procedure bCadClienteClick(Sender: TObject);
    procedure UniSFButton29Click(Sender: TObject);
    procedure UniSFButton30Click(Sender: TObject);
    procedure UniSFButton31Click(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniSFButton32Click(Sender: TObject);
    procedure UniSFButton33Click(Sender: TObject);
    procedure bAdcProdutoClick(Sender: TObject);

  private

    FCurrentFrame: TUniFrame;
    procedure GravaCab;
    procedure IncluiItem;
    procedure AtualizaItens;
    procedure SubTotal;
    procedure AbrirFrame(aframename: string);
    procedure VerificaStatus;
    procedure Salvar;
    procedure CarregaProdutoComboBox;

  public
    COD_LOCALIZA: Integer;

    procedure VoltaAbaInicio;

  end;

function fOsOticaDados: TfOsOticaDados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uOsOtica, uClsBase, uPesquisa, ServerModule,
  uPDF, uNFCe, uCadClientes, uConsProd;

function fOsOticaDados: TfOsOticaDados;
begin
  Result := TfOsOticaDados(UniMainModule.GetFormInstance(TfOsOticaDados));
end;

procedure TfOsOticaDados.AbrirFrame(aframename: string);
begin
    if Assigned(FCurrentFrame) then
    begin
      if FCurrentFrame.classname = aframename then
        exit;
    end;

    FreeAndNil(FCurrentFrame);
    FCurrentFrame        := TUniFrameClass(FindClass(aframename)).Create(Self);
    FCurrentFrame.Align  := alClient;
    FCurrentFrame.Parent := navPanel;
    PG.ActivePage        := pFaturar;
end;

procedure TfOsOticaDados.AtualizaItens;
begin
    with UniMainModule do
    begin
        qOticaCor.Close;
        qOticaCor.ParamByName('emi').AsString  := UniMainModule.CodigoEmitente;
        qOticaCor.ParamByName('id').AsString   := eCodigo.Text;
        qOticaCor.Open;
    end;

    subTotal;
end;

procedure TfOsOticaDados.eAdcaoExit(Sender: TObject);
var esfPertoDireito,esfPertoEsquerdo,
    esfLongeDireito,esfLongeEsquerdo,
    cilPertoEsquerdo,cilPertoDireito,
    cilLongeEsquerdo,cilLongeDireito : Real;
begin
     esfPertoDireito  := StrToFloat(eEsfLongeDireito.Text)  + StrToFloat(eAdcao.Text);
     esfPertoEsquerdo := StrToFloat(eEsfLongeEsquerdo.Text) + StrToFloat(eAdcao.Text);

     if esfPertoDireito > 0 then
         eEsfPertoDireito.Text := '+'+FloatToStr(esfPertoDireito)
     else
         eEsfPertoDireito.Text := FloatToStr(esfPertoDireito);

     if esfPertoEsquerdo > 0 then
         eEsfPertoEsquerdo.Text := '+'+FloatToStr(esfPertoEsquerdo)
     else
         eEsfPertoEsquerdo.Text := FloatToStr(esfPertoEsquerdo)
end;

procedure TfOsOticaDados.eCilLongeDireitoChange(Sender: TObject);
begin
     eCilPertoDireito.Text := eCilLongeDireito.Text;
end;

procedure TfOsOticaDados.eCilLongeEsquerdoChange(Sender: TObject);
begin
     eCilPertoEsquerdo.Text := eCilLongeEsquerdo.Text;
end;

procedure TfOsOticaDados.eCodClienteExit(Sender: TObject);
begin
     if eCodCliente.Text <> '' then
     begin
         with UniMainModule.QGeral do
         begin
              close;
              sql.Clear;
              sql.Add('Select idcliente From Clientes where idcliente = '+
              QuotedStr(eCodCliente.Text)+' and IDEMITENTE = '+QuotedStr(UniMainModule.CodigoEmitente));
              open;

              if not IsEmpty then
                 eCliente.KeyValue := FieldByName('idcliente').AsInteger
              else
              begin
                  eCodCliente.Clear;
                  eCodCliente.SetFocus;
                  sa.Info('Cliente não encontrado');
              end;
         end;
     end;
end;

procedure TfOsOticaDados.eCodProdutoExit(Sender: TObject);
begin
     CarregaProdutoComboBox;
end;

procedure TfOsOticaDados.eEixoLongeDireitoChange(Sender: TObject);
begin
     eEixoPertoDireito.Text := eEixoLongeDireito.Text;
end;

procedure TfOsOticaDados.eEixoLongeEsquerdoChange(Sender: TObject);
begin
     eEixoPertoEsquerdo.Text := eEixoLongeEsquerdo.Text;
end;

procedure TfOsOticaDados.enProdutoExit(Sender: TObject);
begin
     eValorProduto.Value      := UniMainModule.qProdutosPRECO.AsFloat;
     eTotalProduto.Value      := UniMainModule.qProdutosPRECO.AsFloat;
     eQuantidadeProduto.Value := 1;
end;

procedure TfOsOticaDados.eQuantidadeProdutoChange(Sender: TObject);
begin
     if ((eValorProduto.Value > 0) and (eQuantidadeProduto.Value > 0)) then
         eTotalProduto.Value := eQuantidadeProduto.Value * eValorProduto.Value
     else
         eTotalProduto.Value := 0;
end;

procedure TfOsOticaDados.eValorDescontoExit(Sender: TObject);
begin
    with UniMainModule do
    begin
         qOticaCab.Edit;
         qOticaCabTOTAL.Value := (qOticaCabSUBTOTAL.Value - qOticaCabDESCONTO.Value);
         qOticaCab.Post;
         qOticaCab.ApplyUpdates;
         qOticaCab.CommitUpdates;
    end;
end;

procedure TfOsOticaDados.eValorProdutoChange(Sender: TObject);
begin
     if ((eValorProduto.Value > 0) and (eQuantidadeProduto.Value > 0)) then
         eTotalProduto.Value := eQuantidadeProduto.Value * eValorProduto.Value
     else
         eTotalProduto.Value := 0;
end;

procedure TfOsOticaDados.GravaCab;
var   lbase: TBase;
begin
     try
          eCodigo.Text := intToStr( lbase.ultimoCampo('OTICACAB', 'CODIGO','COD_EMITENTE',UniMainModule.Banco) );

          if UniMainModule.qOticaCab.Active = false then
             UniMainModule.qOticaCab.open;

          UniMainModule.qOticaCabID.asInteger           := lbase.pegaseg('OTICACAB','ID',UniMainModule.Banco);
          UniMainModule.qOticaCabCODIGO.AsString        := eCodigo.Text;
          UniMainModule.qOticaCabCOD_EMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          UniMainModule.qOticaCabDATA.AsDateTime        := date;
          UniMainModule.qOticaCabSUBTOTAL.AsFloat       := 0;
          UniMainModule.qOticaCabATIVO.AsString         := 'S';
          UniMainModule.qOticaCabPERCDESCONTO.AsFloat   := 0;
          UniMainModule.qOticaCabDESCONTO.AsFloat       := 0;
          UniMainModule.qOticaCabTOTAL.AsFloat          := 0;
          UniMainModule.qOticaCab.post;
          UniMainModule.qOticaCab.ApplyUpdates;
          UniMainModule.qOticaCab.CommitUpdates;

     except on e:Exception do
     begin
          ShowmessageN('erro 3: '+e.Message);
     end;
     end;
end;

procedure TfOsOticaDados.IncluiItem;
var   lbase: TBase;
begin
      if enproduto.text = '' then
      begin
           ShowmessageN('Informe um produto!');
           enproduto.SetFocus;
           abort;
      end;

      if eQuantidadeProduto.Value = 0 then
      begin
           ShowmessageN('Informe a quantidade do produto!');
           eQuantidadeProduto.SetFocus;
           abort;
      end;

      if eValorProduto.Value = 0 then
      begin
           ShowmessageN('Informe o valor do produto!');
           eValorProduto.SetFocus;
           abort;
      end;

      try
          with UniMainModule do
          begin
                tExecuta.StartTransaction;
                Executa.Close;
                Executa.SQL.Clear;
                Executa.SQL.Add('Insert into oticaCor (id, cod_emitente,Codigo,'+
                ' idOtica,nProduto,produto,quantidade,valor,total) values      '+
                ' (gen_id(gOticaCor,1),:emitente,:codigo,:idOtica,:nproduto,   '+
                ' :produto,:quantidade,:valor,:total) ');
                Executa.ParamByName('emitente').AsString  := UniMainModule.CodigoEmitente;
                Executa.ParamByName('codigo').asInteger   := lbase.ultimoCampo('OTICACOR', 'CODIGO','COD_EMITENTE',UniMainModule.Banco);
                Executa.ParamByName('idOtica').AsString   := eCodigo.Text;
                Executa.ParamByName('nproduto').AsString  := enProduto.Text;
                Executa.ParamByName('produto').AsString   := enProduto.KeyValue;
                Executa.ParamByName('quantidade').AsFloat := eQuantidadeProduto.Value;
                Executa.ParamByName('valor').AsFloat      := eValorProduto.Value;
                Executa.ParamByName('total').AsFloat      := eTotalProduto.Value;
                Executa.ExecSQL;
                tExecuta.Commit;

                atualizaItens;
          end;

          eCodProduto.Clear;
          eQuantidadeProduto.Value := 1;
          eTotalProduto.Value      := 0;
          eValorProduto.Value      := 0;
          eCodProduto.SetFocus;

      except on e:exception do
      begin
          UniMainModule.tExecuta.Rollback;
          ShowmessageN('Erro: '+e.Message);
      end;
      end;
end;

procedure TfOsOticaDados.Salvar;
begin
     if UniMainModule.qEmitenteEDITARORCAMENTO.asstring <> 'S' then
     begin
           if eSitaucao.ItemIndex = 4 then
           begin
                sa.Info('Atenção!', 'Não é possivel salvar como FATURADO!');
                eSitaucao.SetFocus;
                exit;
           end;
     end;

     if ((eCodigo.Text = 'NOVO') or (eCodigo.Text = '')) then
        GravaCab;

     if UniMainModule.qOticaCab.State in [dsInsert, dsEdit] then
     begin
          UniMainModule.qOticaCab.post;
          UniMainModule.qOticaCab.ApplyUpdates;
          UniMainModule.qOticaCab.CommitUpdates;
     end;

     VerificaStatus;
end;

procedure TfOsOticaDados.SubTotal;
begin
     try
          with UniMainModule.qGeral do
          begin
               close;
               sql.Clear;
               sql.Add('select coalesce(Sum(ai.total),0) as TotalVenda  '+
               ' from oticaCor ai                                       '+
               ' where ai.cod_emitente = :idEmitente and ai.idOtica = :idAcerto  ');
               ParamByName('idEmitente').AsString  := UniMainModule.CodigoEmitente;
               ParamByName('idAcerto').AsString    := eCodigo.Text;
               Open;
          end;
     except on e : Exception do
          ShowmessageN('Erro 1: '+e.Message);
     end;

     try
          with UniMainModule do
          begin
               qOticaCab.Edit;
               qOticaCabSUBTOTAL.Value := qGeral.FieldByName('TotalVenda').Value;
               qOticaCabTOTAL.Value    := (qGeral.FieldByName('TotalVenda').Value - qOticaCabDESCONTO.Value);
               qOticaCab.Post;
               qOticaCab.ApplyUpdates;
               qOticaCab.CommitUpdates;
          end;
     except on e : Exception do
          ShowmessageN('Erro 2: '+e.Message);
     end;
end;

procedure TfOsOticaDados.UniDBGrid1DblClick(Sender: TObject);
begin
     with UniMainModule.qOticaCor do
     begin
          Edit;
          if UniMainModule.qOticaCorGARANTIA.AsString = 'SIM' then
              UniMainModule.qOticaCorGARANTIA.AsString := 'NÃO'
          else
              UniMainModule.qOticaCorGARANTIA.AsString := 'SIM';
          Post;
          ApplyUpdates;
          CommitUpdates;
     end;
end;

procedure TfOsOticaDados.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
      if Column.FieldName = 'GARANTIA' then
      begin
          if Column.Field.AsString = 'SIM' then
          begin
              Attribs.Font.Color := clWhite;
              Attribs.Font.Style := [fsBold];
              Attribs.Color      := clGreen;
          end
          else
          begin
              Attribs.Font.Color := clWhite;
              Attribs.Font.Style := [fsBold];
              Attribs.Color      := clWhite;
          end;
      end;
end;

procedure TfOsOticaDados.UniFormShow(Sender: TObject);
begin
    if unimainmodule.qEmitenteMODULO_OSOTICA.AsString <> 'S' then
       TabLaboratorio.Visible := false;

    with qVendedor do
    begin
        close;
        sql.Clear;
        sql.Add(' select codigo,nome from VENDEDORES ');
        SQL.Add(' where IDEMITENTE = :IDEMITENTE order By nome ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        Offline;
    end;

    with UniMainModule.qClientes do
    begin
        close;
        sql.Clear;
        sql.Add(' select tipo, REGIMECLIENTE,IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,');
        sql.Add(' COMPLEMENTO,BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,IDEMITENTE, '+
        ' email,emailautomatico,dataNascimento ');
        sql.Add(' from CLIENTES where IDEMITENTE=:IDEMITENTE ');
        SQL.Add(' order By NomeFantasia ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        Offline;
    end;

    with UniMainModule.qProdutos do
    begin
        close;
        sql.Clear;
        sql.Add(' select margem, estoque, IDPRODUTO,CODIGO,EAN,DESCRICAO,DESCRICAO_COMPLETA,NCM,CEST,CUSTO, ');
        sql.Add(' IPI,PESOBRUTO,PESOLIQ,CFOP,CSOSN,MVA,PREDICMS,ORIGEM,CSTIPI,CSTPIS,CSTCOFINS,ALIQPIS,     ');
        sql.Add(' ALIQCOFINS,OPER_ENTRADA_DENTRO,OPER_ENTRADA_FORA,OPER_SAIDA_DENTRO,OPER_SAIDA_FORA,       ');
        sql.Add(' IDEMITENTE,OPER_DEVOLUCAO_DENTRO,OPER_DEVOLUCAO_FORA,CODIGO_ANP,PRECO,UN,CST,ICMS,        '+
        ' DESC_ANP,PGPL_ANP,PGNN_ANP,PGNI_ANP,VPART_ANP         ');
        sql.Add(' from PRODUTOS WHERE IDEMITENTE = :IDEMITENTE ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        SQL.Add(' order by descricao ');
        Open;
        offline;
    end;

    if eCodigo.Text <> 'NOVO' then
        AtualizaItens
    else
    begin
        eHora.text           := timeToStr(time);
        eSitaucao.ItemIndex  := 0;
        eSubTotal.Value      := 0;
        eValorDesconto.Value := 0;
        ePercDesconto.Value  := 0;
        eSubTotal.Value      := 0;
        etotal.value         := 0;
    end;

    VerificaStatus;
end;

procedure TfOsOticaDados.bSalvarClick(Sender: TObject);
begin
     if eVendedor.KeyValue = null then
     begin
          sa.info('Atenção!', 'Vendedor não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     if eCliente.KeyValue = null then
     begin
          sa.info('Atenção!', 'Cliente não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     Salvar;

     sa.Success('Muito bem!', 'Registro Salvo com sucesso!');
end;

procedure TfOsOticaDados.CarregaProdutoComboBox;
begin
     if eCodProduto.Text <> '' then
     begin
          with UniMainModule.QGeral do
          begin
                if  Length(eCodProduto.text) >= 8 then
                begin
                    close;
                    sql.Clear;
                    sql.Add('Select idProduto From PRODUTOS where EAN = '+
                    QuotedStr(eCodProduto.Text)+' and IDEMITENTE = '+
                    QuotedStr(UniMainModule.CodigoEmitente));
                    open;
                end
                else
                begin
                    close;
                    sql.Clear;
                    sql.Add('Select idProduto From PRODUTOS where CODIGO = '+
                    QuotedStr(eCodProduto.Text)+' and IDEMITENTE = '+
                    QuotedStr(UniMainModule.CodigoEmitente));
                    open;
                end;

                if not IsEmpty then
                begin
                     enProduto.KeyValue := FieldByName('idProduto').AsInteger;
                     eQuantidadeProduto.SetFocus;
                end
                else
                begin
                     eCodProduto.Clear;
                     eCodProduto.SetFocus;
                     sa.Info('Produto não encontrado!');
                end;
          end;
     end;
end;

procedure TfOsOticaDados.bAdcProdutoClick(Sender: TObject);
begin
     if UniMainModule.qEmitenteEDITARORCAMENTO.asstring <> 'S' then
     begin
         if eSitaucao.ItemIndex = 4 then
         begin
              sa.Info('Atenção!', 'Não é possivel salvar como FATURADO!');
              eSitaucao.SetFocus;
              exit;
         end;
     end;

     if ((eCodigo.Text = 'NOVO') or (ecodigo.Text = '')) then
        GravaCab;

     IncluiItem;
end;

procedure TfOsOticaDados.bCadClienteClick(Sender: TObject);
begin
     try
         fCadClientes.showModal;

         eCodCliente.Text  := fCadClientes.wCodigo;
         eCliente.KeyValue := fCadClientes.wCodigo;
     except

     end;
end;

procedure TfOsOticaDados.bCancelarClick(Sender: TObject);
begin
     if UniMainModule.qOticaCab.State in [dsInsert, dsEdit] then
        UniMainModule.qOticaCab.Cancel;
end;

procedure TfOsOticaDados.bPesqClienteClick(Sender: TObject);
begin
     try
         fPesquisa.Tag := 10;
         fPesquisa.ShowModal;

         eCodCliente.Text  := fPesquisa.wCodigo;
         eCliente.KeyValue := fPesquisa.wCodigo;
     except

     end;
end;

procedure TfOsOticaDados.bDelProdutoClick(Sender: TObject);
begin
      with UniMainModule do
      begin
           tExecuta.StartTransaction;
           Executa.Close;
           Executa.SQL.Clear;
           Executa.SQL.Add('delete from oticaCor where cod_emitente = :emitente and '+
           ' Codigo = :codigo and idOtica = :idAcerto ');
           Executa.ParamByName('emitente').AsString  := UniMainModule.CodigoEmitente;
           Executa.ParamByName('codigo').asInteger   := qOticaCorCODIGO.asInteger;;
           Executa.ParamByName('idAcerto').AsString  := eCodigo.Text;
           Executa.ExecSQL;
           tExecuta.commit;

           AtualizaItens;

           sa.Success('Sucesso!','Item Excluido com sucesso!');
      end;
end;

//procedure TfOsOticaDados.(Sender: TObject);
//begin
//     if eSitaucao.ItemIndex = 4 then
//     begin
//          sa.Info('Atenção!', 'Não é possivel salvar como FATURADO!');
//          eSitaucao.SetFocus;
//          exit;
//     end;
//
//     if ((eCodigo.Text = 'NOVO') or (ecodigo.Text = '')) then
//        GravaCab;
//
//     IncluiItem;
//end;

procedure TfOsOticaDados.bFaturarClick(Sender: TObject);
begin
     if ((eCodigo.Text = 'NOVO') or (ecodigo.Text = '')) then
        GravaCab;

     if eVendedor.KeyValue = null then
     begin
          sa.info('Atenção!', 'Vendedor não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     if eCliente.KeyValue = null then
     begin
          sa.info('Atenção!', 'Cliente não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     if eTotal.Value = 0 then
     begin
          sa.Info('Atenção','O.S com valor zerado!');
          exit;
     end;

     UniMainModule.TRdata^.xmodelo     := 65;
     UniMainModule.TRdata^.xfinalidade := 1;
     UniMainModule.TRdata^.xtipodoc    := 1;
     UniMainModule.Tela                := 'OTICA';
     UniMainModule.CodigoTela          := eCodigo.Text;
     UniMainModule.LerConfiguracao(65);

     if UniMainModule.vctoCertificado <> '' then
        ShowmessageN( UniMainModule.vctoCertificado );

     AbrirFrame('TfNFCe');
end;

procedure TfOsOticaDados.UniSFButton29Click(Sender: TObject);
var
  xDataRel : String;
begin
     salvar;

     xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
     unimainModule.NomePDF  := xDataRel + '.PDF';

     frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

     FrxOrcamento.PrepareReport(True);

     frxPDF.ShowDialog := false;
     FrxOrcamento.Export(frxPDF);

     fPDF.Caption          := unimainModule.NomePDF;
     fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
     fPDF.Show();
end;

procedure TfOsOticaDados.UniSFButton30Click(Sender: TObject);
var
  xDataRel : String;
begin
     salvar;

     frxGarantia.Variables['Cliente'] := QuotedStr(eCliente.Text);

     xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
     unimainModule.NomePDF  := xDataRel + '.PDF';

     frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

     frxGarantia.PrepareReport(True);

     frxPDF.ShowDialog := false;
     frxGarantia.Export(frxPDF);

     fPDF.Caption          := unimainModule.NomePDF;
     fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
     fPDF.Show();
end;

procedure TfOsOticaDados.UniSFButton31Click(Sender: TObject);
begin
     try
          with UniMainModule do
          begin
               qOticaCab.Edit;
               qOticaCabATIVO.AsString := 'N';
               qOticaCab.Post;
               qOticaCab.ApplyUpdates;
               qOticaCab.CommitUpdates;
          end;

          sa.Success('O.S Excluida com sucesso!');

          close;

     except on e : Exception do
          ShowmessageN('Erro Excluir: '+e.Message);
     end;
end;

procedure TfOsOticaDados.UniSFButton32Click(Sender: TObject);
var
  xDataRel : String;
begin
     salvar;

     xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
     unimainModule.NomePDF  := xDataRel + '.PDF';

     frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

     frxOrcamentoA4.PrepareReport(True);

     frxPDF.ShowDialog := false;
     frxOrcamentoA4.Export(frxPDF);

     fPDF.Caption          := unimainModule.NomePDF;
     fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
     fPDF.Show();
end;

procedure TfOsOticaDados.UniSFButton33Click(Sender: TObject);
begin
      COD_LOCALIZA  := 0;
      FConsProd.Tag := 1;

      FConsProd.showmodal;

      if COD_LOCALIZA > 0 then
      begin
           eCodProduto.Text := intToStr( COD_LOCALIZA );
           CarregaProdutoComboBox;
      end;
end;

procedure TfOsOticaDados.UniSFButton36Click(Sender: TObject);
begin
     if UniMainModule.qOticaCab.State in [dsInsert, dsEdit] then
        UniMainModule.qOticaCab.Cancel;

     close;
end;

procedure TfOsOticaDados.UniSFButton37Click(Sender: TObject);
var
  xDataRel : String;
begin
     salvar;

     xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
     unimainModule.NomePDF  := xDataRel + '.PDF';

     frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

     frxVisualizar.PrepareReport(True);

     frxPDF.ShowDialog := false;
     frxVisualizar.Export(frxPDF);

     fPDF.Caption          := unimainModule.NomePDF;
     fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
     fPDF.Show();
end;

procedure TfOsOticaDados.VerificaStatus;
begin
     if UniMainModule.qEmitenteEDITARORCAMENTO.asstring <> 'S' then
     begin
           if eSitaucao.Text = 'Faturado' then
           begin
                 bFaturar.Enabled     := false;
                 bSalvar.Enabled      := False;
                 bcancelar.Enabled    := False;
                 bAdcProduto.Enabled  := false;
                 bDelProduto.Enabled  := false;
                 bPesqCliente.Enabled := false;
                 bCadCliente.Enabled  := false;
           end
           else
           begin
                 bFaturar.Enabled     := true;
                 bSalvar.Enabled      := true;
                 bcancelar.Enabled    := true;
                 bAdcProduto.Enabled  := true;
                 bDelProduto.Enabled  := true;
                 bPesqCliente.Enabled := true;
                 bCadCliente.Enabled  := true;
           end;
     end;
end;

procedure TfOsOticaDados.VoltaAbaInicio;
begin
     pg.ActivePage := tabItens;
     VerificaStatus;
     close;
end;

end.
