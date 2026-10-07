unit uOsDados;

interface

uses
  uniGUIFrame,

  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniPanel,
  uniPageControl, uniButton, uniDBEdit, uniBasicGrid, uniDBGrid,
  uniEdit, uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox,
  uniDateTimePicker, uniDBDateTimePicker, uniMemo, uniDBMemo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBitBtn;

type
  TfOsDados = class(TUniForm)
    UniPanel2: TUniPanel;
    lTitulo: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    PG: TUniPageControl;
    tabItens: TUniTabSheet;
    pFaturar: TUniTabSheet;
    UniLabel6: TUniLabel;
    eCodigo: TUniDBEdit;
    UniLabel7: TUniLabel;
    eData: TUniDBDateTimePicker;
    eVendedor: TUniDBLookupComboBox;
    UniLabel9: TUniLabel;
    eSitaucao: TUniDBComboBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    eCliente: TUniDBLookupComboBox;
    eCodCliente: TUniEdit;
    UniLabel21: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    PG2: TUniPageControl;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniLabel12: TUniLabel;
    eCodProduto: TUniEdit;
    enProduto: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;
    eQuantidadeProduto: TUniFormattedNumberEdit;
    eValorProduto: TUniFormattedNumberEdit;
    eTotalProduto: TUniFormattedNumberEdit;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    eCodServico: TUniEdit;
    enServico: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    eQtdSerivo: TUniFormattedNumberEdit;
    eValorServico: TUniFormattedNumberEdit;
    eTotalServico: TUniFormattedNumberEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBGrid2: TUniDBGrid;
    eSubTotal: TUniDBFormattedNumberEdit;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    ePercDesconto: TUniDBFormattedNumberEdit;
    eValorDesconto: TUniDBFormattedNumberEdit;
    eTotal: TUniDBFormattedNumberEdit;
    UniLabel22: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniLabel23: TUniLabel;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniTabSheet8: TUniTabSheet;
    UniLabel24: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniLabel25: TUniLabel;
    UniDBMemo2: TUniDBMemo;
    UniDBEdit2: TUniDBEdit;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel28: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel29: TUniLabel;
    navPanel: TUniContainerPanel;
    dsOsCab: TDataSource;
    dsClientes: TDataSource;
    qVendedor: TFDQuery;
    qVendedorCODIGO: TIntegerField;
    qVendedorNOME: TStringField;
    dsVendedores: TDataSource;
    frxEmpresa: TfrxDBDataset;
    frxOsCab: TfrxDBDataset;
    frxOsCor: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    FrxOrcamento: TfrxReport;
    frxOrdemServicoA4: TfrxReport;
    frxVisualizar: TfrxReport;
    frxGarantia: TfrxReport;
    UniLabel8: TUniLabel;
    eNtecnico: TUniDBLookupComboBox;
    frxOsCorSer: TfrxDBDataset;
    bPesqCliente: TUniButton;
    bCadCliente: TUniButton;
    UniButton3: TUniButton;
    bAdcProduto: TUniButton;
    bDelProduto: TUniButton;
    bAdcServico: TUniButton;
    bDelServico: TUniButton;
    UniButton1: TUniButton;
    bFaturar: TUniButton;
    bSalvar: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    bCancelar: TUniButton;
    procedure eCodClienteExit(Sender: TObject);
    procedure eCodProdutoExit(Sender: TObject);
    procedure enProdutoExit(Sender: TObject);
    procedure eQuantidadeProdutoChange(Sender: TObject);
    procedure eValorDescontoExit(Sender: TObject);
    procedure eValorProdutoChange(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bAdcProdutoClick(Sender: TObject);
    procedure bCadClienteClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bPesqClienteClick(Sender: TObject);
    procedure bDelProdutoClick(Sender: TObject);
    procedure bFaturarClick(Sender: TObject);
    procedure eCodServicoExit(Sender: TObject);
    procedure bAdcServicoClick(Sender: TObject);
    procedure enServicoExit(Sender: TObject);
    procedure bDelServicoClick(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);


  private

    FCurrentFrame: TUniFrame;
    procedure GravaCab;
    procedure IncluiItem;
    procedure IncluiItemServico;
    procedure AtualizaItens;
    procedure atualizaItensServico;
    procedure SubTotal;
    procedure AbrirFrame(aframename: string);
    procedure VerificaStatus;
    procedure Salvar;
    procedure CarregaProdutoComboBox;
    procedure CarregaServicoComboBox;

  public
    COD_LOCALIZA: Integer;

    procedure VoltaAbaInicio;

  end;

function fOsDados: TfOsDados;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClsBase, uPesquisa, ServerModule,
  uPDF, uNFCe, uCadClientes, uConsProd;

function fOsDados: TfOsDados;
begin
  Result := TfOsDados(UniMainModule.GetFormInstance(TfOsDados));
end;

{ TfOsDados }

procedure TfOsDados.AbrirFrame(aframename: string);
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

procedure TfOsDados.AtualizaItens;
begin
    with UniMainModule do
    begin
        qOsCor.Close;
        qOsCor.ParamByName('emi').AsString  := UniMainModule.CodigoEmitente;
        qOsCor.ParamByName('id').AsString   := eCodigo.Text;
        qOsCor.Open;
    end;

    with UniMainModule do
    begin
        qOsCorSer.Close;
        qOsCorSer.ParamByName('emi').AsString  := UniMainModule.CodigoEmitente;
        qOsCorSer.ParamByName('id').AsString   := eCodigo.Text;
        qOsCorSer.Open;
    end;

    subTotal;
end;

procedure TfOsDados.atualizaItensServico;
begin
    with UniMainModule do
    begin
        qOsCorSer.Close;
        qOsCorSer.ParamByName('emi').AsString  := UniMainModule.CodigoEmitente;
        qOsCorSer.ParamByName('id').AsString   := eCodigo.Text;
        qOsCorSer.Open;
    end;

    subTotal;
end;

procedure TfOsDados.bAdcProdutoClick(Sender: TObject);
begin
     if UniMainModule.qEmitenteEDITARORCAMENTO.asstring <> 'S' then
     begin
         if eSitaucao.ItemIndex = 4 then
         begin
              ShowMessage( 'Não é possivel salvar como FATURADO!');
              eSitaucao.SetFocus;
              exit;
         end;
     end;

     if ((eCodigo.Text = 'NOVO') or (ecodigo.Text = '')) then
        GravaCab;

     IncluiItem;
end;

procedure TfOsDados.bAdcServicoClick(Sender: TObject);
begin
     if UniMainModule.qEmitenteEDITARORCAMENTO.asstring <> 'S' then
     begin
         if eSitaucao.ItemIndex = 4 then
         begin
              ShowMEssage( 'Não é possivel salvar como FATURADO!');
              eSitaucao.SetFocus;
              exit;
         end;
     end;

     if ((eCodigo.Text = 'NOVO') or (ecodigo.Text = '')) then
        GravaCab;

     IncluiItemServico;
end;

procedure TfOsDados.bCadClienteClick(Sender: TObject);
begin
     try
         fCadClientes.showModal;

         eCodCliente.Text  := fCadClientes.wCodigo;
         eCliente.KeyValue := fCadClientes.wCodigo;
     except

     end;
end;

procedure TfOsDados.bCancelarClick(Sender: TObject);
begin
     if UniMainModule.qOSCab.State in [dsInsert, dsEdit] then
        UniMainModule.qOSCab.Cancel;
end;

procedure TfOsDados.bDelProdutoClick(Sender: TObject);
begin
      with UniMainModule do
      begin
           tExecuta.StartTransaction;
           Executa.Close;
           Executa.SQL.Clear;
           Executa.SQL.Add('delete from OsCor where cod_emitente = :emitente and '+
           ' Codigo = :codigo and idOS = :idAcerto ');
           Executa.ParamByName('emitente').AsString  := UniMainModule.CodigoEmitente;
           Executa.ParamByName('codigo').asInteger   := qOsCOrCODIGO.asInteger;;
           Executa.ParamByName('idAcerto').AsString  := eCodigo.Text;
           Executa.ExecSQL;
           tExecuta.commit;

           AtualizaItens;

           Showmessage('Item Excluido com sucesso!');
      end;
end;

procedure TfOsDados.bDelServicoClick(Sender: TObject);
begin
      with UniMainModule do
      begin
           tExecuta.StartTransaction;
           Executa.Close;
           Executa.SQL.Clear;
           Executa.SQL.Add('delete from OsCorSer where cod_emitente = :emitente and '+
           ' Codigo = :codigo and idOS = :idAcerto ');
           Executa.ParamByName('emitente').AsString  := UniMainModule.CodigoEmitente;
           Executa.ParamByName('codigo').asInteger   := qOsCOrSerCODIGO.asInteger;;
           Executa.ParamByName('idAcerto').AsString  := eCodigo.Text;
           Executa.ExecSQL;
           tExecuta.commit;

           AtualizaItens;

           ShowMessage('Item Excluido com sucesso!');
      end;
end;

procedure TfOsDados.bFaturarClick(Sender: TObject);
begin
     if ((eCodigo.Text = 'NOVO') or (ecodigo.Text = '')) then
        GravaCab;

     if eVendedor.KeyValue = null then
     begin
          ShowMessage('Vendedor não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     if eCliente.KeyValue = null then
     begin
          ShowMessage('Cliente não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     if eTotal.Value = 0 then
     begin
          ShowMessage('O.S com valor zerado!');
          exit;
     end;

     UniMainModule.TRdata^.xmodelo     := 65;
     UniMainModule.TRdata^.xfinalidade := 1;
     UniMainModule.TRdata^.xtipodoc    := 1;
     UniMainModule.Tela                := 'OS';
     UniMainModule.CodigoTela          := eCodigo.Text;
     UniMainModule.LerConfiguracao(65);

     if UniMainModule.vctoCertificado <> '' then
        ShowMessage( UniMainModule.vctoCertificado );

     AbrirFrame('TfNFCe');
end;


procedure TfOsDados.bPesqClienteClick(Sender: TObject);
begin
     try
         fPesquisa.Tag := 10;
         fPesquisa.ShowModal;

         eCodCliente.Text  := fPesquisa.wCodigo;
         eCliente.KeyValue := fPesquisa.wCodigo;
     except

     end;
end;

procedure TfOsDados.bSalvarClick(Sender: TObject);
begin
     if eVendedor.KeyValue = null then
     begin
          ShowMessage('Vendedor não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     if eCliente.KeyValue = null then
     begin
          ShowMessage('Cliente não informado!');
          eVendedor.SetFocus;
          exit;
     end;

     Salvar;

     ShowMessage('Registro Salvo com sucesso!');
end;

procedure TfOsDados.CarregaProdutoComboBox;
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
                     ShowMessage('Produto não encontrado!');
                end;
          end;
     end;
end;

procedure TfOsDados.CarregaServicoComboBox;
begin
     if eCodServico.Text <> '' then
     begin
          with UniMainModule.QGeral do
          begin
                close;
                sql.Clear;
                sql.Add('Select id From Servicos where codigo = '+
                QuotedStr(eCodServico.Text)+' and IDEMITENTE = '+
                QuotedStr(UniMainModule.CodigoEmitente));
                open;

                if not IsEmpty then
                begin
                     enServico.KeyValue := FieldByName('ID').AsInteger;
                     eNtecnico.SetFocus;
                end
                else
                begin
                     eCodServico.Clear;
                     eCodServico.SetFocus;
                     ShowMessage('Servico não encontrado!');
                end;
          end;
     end;
end;

procedure TfOsDados.eCodClienteExit(Sender: TObject);
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
                  ShowMessage('Cliente não encontrado');
              end;
         end;
     end;
end;

procedure TfOsDados.eCodProdutoExit(Sender: TObject);
begin
     CarregaProdutoComboBox;
end;

procedure TfOsDados.eCodServicoExit(Sender: TObject);
begin
     CarregaServicoComboBox;
end;

procedure TfOsDados.enProdutoExit(Sender: TObject);
begin
     eValorProduto.Value      := UniMainModule.qProdutosPRECO.AsFloat;
     eTotalProduto.Value      := UniMainModule.qProdutosPRECO.AsFloat;
     eQuantidadeProduto.Value := 1;
end;

procedure TfOsDados.enServicoExit(Sender: TObject);
begin
     eValorServico.Value := UniMainModule.qServicoVALOR.Value;
     eTotalServico.Value := UniMainModule.qServicoVALOR.Value;
     eQtdSerivo.Value    := 1;
end;

procedure TfOsDados.eQuantidadeProdutoChange(Sender: TObject);
begin
     if ((eValorProduto.Value > 0) and (eQuantidadeProduto.Value > 0)) then
         eTotalProduto.Value := eQuantidadeProduto.Value * eValorProduto.Value
     else
         eTotalProduto.Value := 0;
end;

procedure TfOsDados.eValorDescontoExit(Sender: TObject);
begin
    with UniMainModule do
    begin
         qOSCab.Edit;
         qOSCabTOTAL.Value := (qOSCabSUBTOTAL.Value - qOSCabDESCONTO.Value);
         qOSCab.Post;
         qOSCab.ApplyUpdates;
         qOSCab.CommitUpdates;
    end;
end;


procedure TfOsDados.eValorProdutoChange(Sender: TObject);
begin
     if ((eValorProduto.Value > 0) and (eQuantidadeProduto.Value > 0)) then
         eTotalProduto.Value := eQuantidadeProduto.Value * eValorProduto.Value
     else
         eTotalProduto.Value := 0;
end;

procedure TfOsDados.GravaCab;
var   lbase: TBase;
begin
     try
          eCodigo.Text := intToStr( lbase.ultimoCampo('OSCAB', 'CODIGO','COD_EMITENTE',UniMainModule.Banco) );

          if UniMainModule.qOSCab.Active = false then
             UniMainModule.qOSCab.open;

          UniMainModule.qOSCabID.asInteger           := lbase.pegaseg('OSCAB','ID',UniMainModule.Banco);
          UniMainModule.qOSCabCODIGO.AsString        := eCodigo.Text;
          UniMainModule.qOSCabCOD_EMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          UniMainModule.qOScabDATAHORAENTRADA.AsDateTime := NOW;
          UniMainModule.qOSCabSUBTOTAL.AsFloat       := 0;
          UniMainModule.qOSCabATIVO.AsString         := 'S';
          UniMainModule.qOSCabPERCDESCONTO.AsFloat   := 0;
          UniMainModule.qOSCabDESCONTO.AsFloat       := 0;
          UniMainModule.qOSCabTOTAL.AsFloat          := 0;
          UniMainModule.qOSCab.post;
          UniMainModule.qOSCab.ApplyUpdates;
          UniMainModule.qOSCab.CommitUpdates;

     except on e:Exception do
     begin
          ShowMessage('erro 3: '+e.Message);
     end;
     end;
end;

procedure TfOsDados.IncluiItem;
var   lbase: TBase;
begin
      if enproduto.text = '' then
      begin
           ShowMessage('Informe um produto!');
           enproduto.SetFocus;
           abort;
      end;

      if eQuantidadeProduto.Value = 0 then
      begin
           ShowMessage('Informe a quantidade do produto!');
           eQuantidadeProduto.SetFocus;
           abort;
      end;

      if eValorProduto.Value = 0 then
      begin
           ShowMessage('Informe o valor do produto!');
           eValorProduto.SetFocus;
           abort;
      end;

      try
          with UniMainModule do
          begin
                tExecuta.StartTransaction;
                Executa.Close;
                Executa.SQL.Clear;
                Executa.SQL.Add('Insert into OsCor (id, cod_emitente,Codigo,'+
                ' idOs,nProduto,produto,quantidade,valor,total) values      '+
                ' (gen_id(gOsCor,1),:emitente,:codigo,:idOS,:nproduto,   '+
                ' :produto,:quantidade,:valor,:total) ');
                Executa.ParamByName('emitente').AsString  := UniMainModule.CodigoEmitente;
                Executa.ParamByName('codigo').asInteger   := lbase.ultimoCampo('OSCOR', 'CODIGO','COD_EMITENTE',UniMainModule.Banco);
                Executa.ParamByName('idOs').AsString      := eCodigo.Text;
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
          ShowMessage('Erro: '+e.Message);
      end;
      end;
end;

procedure TfOsDados.IncluiItemServico;
var   lbase: TBase;
begin
      if enServico.text = '' then
      begin
           ShowMessage('Informe um servico!');
           enServico.SetFocus;
           abort;
      end;

      if eQtdSerivo.Value = 0 then
      begin
           ShowMessage('Informe a quantidade do servico!');
           eQtdSerivo.SetFocus;
           abort;
      end;

      if eValorServico.Value = 0 then
      begin
           ShowMessage('Informe o valor do servico!');
           eValorServico.SetFocus;
           abort;
      end;

      try
          with UniMainModule do
          begin
                tExecuta.StartTransaction;
                Executa.Close;
                Executa.SQL.Clear;
                Executa.SQL.Add('Insert into OsCorSer (id, cod_emitente,Codigo,'+
                ' idOs,nServico,servico,quantidade,valor,total,tecnico,ntecnico) values '+
                ' (gen_id(gOsCorSer,1),:emitente,:codigo,:idOS,:nproduto,   '+
                ' :produto,:quantidade,:valor,:total,:tecnico,:nTecnico) ');
                Executa.ParamByName('emitente').AsString  := UniMainModule.CodigoEmitente;
                Executa.ParamByName('codigo').asInteger   := lbase.ultimoCampo('OSCORSER', 'CODIGO','COD_EMITENTE',UniMainModule.Banco);
                Executa.ParamByName('idOs').AsString      := eCodigo.Text;
                Executa.ParamByName('nproduto').AsString  := enServico.Text;
                Executa.ParamByName('produto').AsString   := enServico.KeyValue;
                Executa.ParamByName('quantidade').AsFloat := eQtdSerivo.Value;
                Executa.ParamByName('valor').AsFloat      := eValorServico.Value;
                Executa.ParamByName('total').AsFloat      := eTotalServico.Value;
                Executa.ParamByName('tecnico').asInteger  := eNtecnico.KeyValue;
                Executa.ParamByName('nTecnico').AsString  := eNtecnico.text;
                Executa.ExecSQL;
                tExecuta.Commit;

                atualizaItensServico;
          end;

          eCodServico.Clear;
          eQtdSerivo.Value    := 1;
          eTotalServico.Value := 0;
          eValorServico.Value := 0;
          eCodServico.SetFocus;

      except on e:exception do
      begin
          UniMainModule.tExecuta.Rollback;
          ShowMessage('Erro: '+e.Message);
      end;
      end;
end;

procedure TfOsDados.Salvar;
begin
     if UniMainModule.qEmitenteEDITARORCAMENTO.asstring <> 'S' then
     begin
           if eSitaucao.ItemIndex = 4 then
           begin
                ShowMessage('Não é possivel salvar como FATURADO!');
                eSitaucao.SetFocus;
                exit;
           end;
     end;

     if ((eCodigo.Text = 'NOVO') or (eCodigo.Text = '')) then
        GravaCab;

     if UniMainModule.qOSCab.State in [dsInsert, dsEdit] then
     begin
          UniMainModule.qOSCab.post;
          UniMainModule.qOSCab.ApplyUpdates;
          UniMainModule.qOSCab.CommitUpdates;
     end;

     VerificaStatus;
end;

procedure TfOsDados.SubTotal;
var totSer, totProd, subTot : Currency;
begin
     try
          with UniMainModule.qGeral do
          begin
               close;
               sql.Clear;
               sql.Add('select coalesce(Sum(ai.total),0) as TotalVenda  '+
               ' from OsCor ai                                          '+
               ' where ai.cod_emitente = :idEmitente and ai.idOs = :idAcerto  ');
               ParamByName('idEmitente').AsString  := UniMainModule.CodigoEmitente;
               ParamByName('idAcerto').AsString    := eCodigo.Text;
               Open;

               totProd := FieldByName('TotalVenda').Value;
          end;

     except on e : Exception do
          ShowMessage('Erro 1: '+e.Message);
     end;

     try
          with UniMainModule.qGeral do
          begin
               close;
               sql.Clear;
               sql.Add('select coalesce(Sum(ai.total),0) as TotalVenda  '+
               ' from OsCorSer ai                                          '+
               ' where ai.cod_emitente = :idEmitente and ai.idOs = :idAcerto  ');
               ParamByName('idEmitente').AsString  := UniMainModule.CodigoEmitente;
               ParamByName('idAcerto').AsString    := eCodigo.Text;
               Open;

               totSer := FieldByName('TotalVenda').Value;
          end;

     except on e : Exception do
          ShowMessage('Erro 1: '+e.Message);
     end;

     try
          with UniMainModule do
          begin
               subTot := totSer + totProd;

               qOSCab.Edit;
               qOScabTOTALPRODUTOS.Value := totProd;
               qOScabTOTALSERVICOS.Value := totSer;
               qOSCabSUBTOTAL.Value      := subTot;
               qOSCabTOTAL.Value         := subTot - qOSCabDESCONTO.Value;
               qOSCab.Post;
               qOSCab.ApplyUpdates;
               qOSCab.CommitUpdates;
          end;
     except on e : Exception do
          ShowMessage('Erro 2: '+e.Message);
     end;
end;

procedure TfOsDados.UniButton1Click(Sender: TObject);
begin
     if UniMainModule.qOSCab.State in [dsInsert, dsEdit] then
        UniMainModule.qOSCab.Cancel;

     close;
end;

procedure TfOsDados.UniButton3Click(Sender: TObject);
begin
      COD_LOCALIZA  := 0;
      FConsProd.Tag := 2;

      FConsProd.showmodal;

      if COD_LOCALIZA > 0 then
      begin
           eCodProduto.Text := intToStr( COD_LOCALIZA );
           CarregaProdutoComboBox;
      end;
end;

procedure TfOsDados.UniButton4Click(Sender: TObject);
var
  xDataRel : String;
begin
     salvar;

     xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
     unimainModule.NomePDF  := xDataRel + '.PDF';

     frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

     frxOrdemServicoA4.PrepareReport(True);

     frxPDF.ShowDialog := false;
     frxOrdemServicoA4.Export(frxPDF);

     fPDF.Caption          := unimainModule.NomePDF;
     fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
     fPDF.Show();
end;

procedure TfOsDados.UniButton5Click(Sender: TObject);
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

procedure TfOsDados.UniButton6Click(Sender: TObject);
begin
     try
          with UniMainModule do
          begin
               qOSCab.Edit;
               qOSCabATIVO.AsString := 'N';
               qOSCab.Post;
               qOSCab.ApplyUpdates;
               qOSCab.CommitUpdates;
          end;

          ShowMessage('O.S Excluida com sucesso!');

          close;

     except on e : Exception do
          ShowMessage('Erro Excluir: '+e.Message);
     end;
end;

procedure TfOsDados.UniFormShow(Sender: TObject);
begin
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

    with UniMainModule.qServico do
    begin
        close;
        sql.Clear;
        sql.Add(' select idEmitente, id, codigo, nome, valor, comissao '+
                ' from servicos WHERE IDEMITENTE = :IDEMITENTE ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        SQL.Add(' order by nome ');
        Open;
        offline;
    end;

    if eCodigo.Text <> 'NOVO' then
        AtualizaItens
    else
    begin
        eSitaucao.ItemIndex  := 0;
        eSubTotal.Value      := 0;
        eValorDesconto.Value := 0;
        ePercDesconto.Value  := 0;
        eSubTotal.Value      := 0;
        etotal.value         := 0;
    end;

    VerificaStatus;
end;

procedure TfOsDados.VerificaStatus;
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

procedure TfOsDados.VoltaAbaInicio;
begin
     pg.ActivePage := tabItens;
     VerificaStatus;
     close;
end;

end.
