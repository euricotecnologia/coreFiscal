unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIFrame,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniButton, uniBitBtn, uniLabel, Vcl.Imaging.pngimage, uniImage, uniChart,
  uniMultiItem, uniComboBox, uniToolBar, uniTreeView, uniImageList,
  uniPageControl, Vcl.Menus, uniMainMenu, uniTimer, uniStatusBar, uniSpeedButton,
  uniHTMLFrame, uniProgressBar,
  uniMenuButton,
  uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,  dateutils,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TfPrincipal = class(TUniForm)
    UniImage13: TUniImage;
    PMain: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    UniPanel3: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    pnIndicador: TUniPanel;
    UniPanel6: TUniPanel;
    UniPanel7: TUniPanel;
    UniLabel4: TUniLabel;
    lb_usuario: TUniLabel;
    UniPanel8: TUniPanel;
    UniLabel5: TUniLabel;
    lb_os: TUniLabel;
    UniPanel9: TUniPanel;
    UniLabel6: TUniLabel;
    lb_navegador: TUniLabel;
    UniPanel10: TUniPanel;
    UniLabel7: TUniLabel;
    lb_ip: TUniLabel;
    imgImposto: TUniImage;
    PG: TUniPageControl;
    pMenu: TUniTabSheet;
    pAbas: TUniTabSheet;
    navPanel: TUniContainerPanel;
    CDSNFE: TClientDataSet;
    DS: TDataSource;
    CDSNFCE: TClientDataSet;
    CDSMDFE: TClientDataSet;
    CDSTOTAL1: TClientDataSet;
    UniContainerPanel8: TUniContainerPanel;
    UniPanel28: TUniPanel;
    UniPanel31: TUniPanel;
    UniPanel35: TUniPanel;
    UniPanel36: TUniPanel;
    UniLabel29: TUniLabel;
    UniLabel8: TUniLabel;
    lClientes: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    lProdutos: TUniLabel;
    lMdfe: TUniLabel;
    lNfe: TUniLabel;
    UniImage18: TUniImage;
    UniImage16: TUniImage;
    UniImage17: TUniImage;
    UniImage15: TUniImage;
    UniPanel17: TUniPanel;
    UniLabel9: TUniLabel;
    lNfce: TUniLabel;
    UniImage19: TUniImage;
    tMenu: TUniTimer;
    unipCadastro: TUniPanel;
    uniPmovimento: TUniPanel;
    uniPrelatorio: TUniPanel;
    pRelProduto: TUniPanel;
    UniPanel43: TUniPanel;
    pRelVendas: TUniPanel;
    UniPanel48: TUniPanel;
    UniPanel49: TUniPanel;
    UniPanel50: TUniPanel;
    pDash: TUniPanel;
    UniImage5: TUniImage;
    UniPanel29: TUniPanel;
    pRelVendasComissao: TUniPanel;
    UniPanel44: TUniPanel;
    UniPanel47: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniPanel15: TUniPanel;
    imgEdit: TUniImage;
    imgDelete: TUniImage;
    UniPanel16: TUniPanel;
    UniPanel18: TUniPanel;
    UniPanel19: TUniPanel;
    dsReceberCab: TDataSource;
    dsPagarCab: TDataSource;
    IMGpAGAR: TUniImage;
    imAceita: TUniImage;
    UniPanel24: TUniPanel;
    UniPanel25: TUniPanel;
    UniPanel26: TUniPanel;
    pRecibo: TUniPanel;
    UniPanel22: TUniPanel;
    bClientes: TUniButton;
    bProdutos: TUniButton;
    bTransportadora: TUniButton;
    bVeiculos: TUniButton;
    bCondutores: TUniButton;
    bVendedores: TUniButton;
    UniButton2: TUniButton;
    bServicos: TUniButton;
    bCompras: TUniButton;
    bNFe: TUniButton;
    bNFCe: TUniButton;
    UniButton3: TUniButton;
    bMDFe: TUniButton;
    bGerenciarMDFe: TUniButton;
    bOsOtica: TUniButton;
    bOS: TUniButton;
    bContasReceber: TUniButton;
    bSped: TUniButton;
    bEmitente: TUniButton;
    UniButton1: TUniButton;
    UniButton4: TUniButton;
    bEmpresa: TUniButton;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel14: TUniPanel;
    UniContainerPanel2: TUniContainerPanel;
    bAtualiza: TUniButton;
    UniContainerPanel3: TUniContainerPanel;
    pReceber: TUniPanel;
    GridReceber: TUniDBGrid;
    UniPanel20: TUniPanel;
    UniLabel11: TUniLabel;
    pPagar: TUniPanel;
    gridPagar: TUniDBGrid;
    UniPanel23: TUniPanel;
    UniLabel10: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure pDashClick(Sender: TObject);
    procedure bAtualizaClick(Sender: TObject);
    procedure tMenuTimer(Sender: TObject);
    procedure pRelProdutoClick(Sender: TObject);
    procedure pRelVendasClick(Sender: TObject);
    procedure pRelVendasComissaoClick(Sender: TObject);
    procedure bEmitenteClick(Sender: TObject);
    procedure bNivelClick(Sender: TObject);
    procedure bSpedClick(Sender: TObject);
    procedure bCondutoresClick(Sender: TObject);
    procedure bVendedoresClick(Sender: TObject);
    procedure bComprasClick(Sender: TObject);
    procedure bNFeClick(Sender: TObject);
    procedure bNFCeClick(Sender: TObject);
    procedure bGerenciarNFsClick(Sender: TObject);
    procedure bMDFeClick(Sender: TObject);
    procedure bGerenciarMDFeClick(Sender: TObject);
    procedure bOsOticaClick(Sender: TObject);
    procedure bContasReceberClick(Sender: TObject);
    procedure UniPanel16Click(Sender: TObject);
    procedure GridReceberFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure gridPagarFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure GridReceberCellClick(Column: TUniDBGridColumn);
    procedure gridPagarCellClick(Column: TUniDBGridColumn);
    procedure UniPanel24Click(Sender: TObject);
    procedure pReciboClick(Sender: TObject);
    procedure bConciliadorClick(Sender: TObject);
    procedure bOSClick(Sender: TObject);
    procedure bServicosClick(Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure bTransportadoraClick(Sender: TObject);
    procedure bVeiculosClick(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);


  private
    FCurrentFrame: TUniFrame;
    FileNames    : TStrings;
    procedure AbrirFrame(aframename: string);
    procedure ativaindicador(lPanel: TUniPanel);
    procedure ativaindicadorCadastro(lPanel: TUniPanel);
    procedure ativaIndicadorMovimento(lPanel: TUniPanel);
    procedure ativaIndicadorRelatorio(lPanel: TUnipanel);

    procedure ContasReceber;
    procedure ContasPagar;

    procedure loadData;

    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
  public
    procedure CarregaInformacoesUsuario;
    procedure _cbProc1(LoginSuccessful: Boolean);
  end;

function fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uEmitente, uNFCe, ucompra,
  uTES, uNfeOP, ServerModule, UniGUIJSUtils, uniStrUtils, uFrameTeste,
  uframeTes, uFrameProduto, uFrameClientes, uLogin, uframetransf, uMdfe, //uOsOtica, uFconciliador,
  uMdfeOp, uCondutores, uVeiculos, uRelProdutos, uRelVendas, uVendedor,
  uReVendasComissao, uNivelAcesso, uSpedFiscal,  uContasReceberListar,
  uReaReceber, uContasPagarListar, uContasReceberBaixar, uContasPagarBaixar,
  uReaPagar, uFeRecibo, uFrameHtml, uOS, uFhmtl, uServicos;

function fPrincipal: TfPrincipal;
begin
    Result := TfPrincipal(UniMainModule.GetFormInstance(TfPrincipal));
end;

procedure TfPrincipal.CarregaInformacoesUsuario;
var
  C: TUniClientInfos;
begin
    UniMainModule.TRdata^.ip := UniApplication.RemoteAddress;
    C                        := UniApplication.ClientInfo;
    if ciIE in C then
      UniMainModule.TRdata^.navegador := 'IE'
    else if ciFireFox in C then
      UniMainModule.TRdata^.navegador := 'FireFox'
    else if ciOpera in C then
      UniMainModule.TRdata^.navegador := 'Opera'
    else if ciSafari in C then
      UniMainModule.TRdata^.navegador := 'Safari'
    else if ciChrome in C then
      UniMainModule.TRdata^.navegador := 'Chrome';
    if ciLinux in C then
      UniMainModule.TRdata^.os := 'Linux'
    else if ciWindows in C then
      UniMainModule.TRdata^.os := 'Windows'
    else if ciMac in C then
      UniMainModule.TRdata^.os := 'Mac';

    lb_usuario.Caption   := UniMainModule.TRdata^.xUsuario;
    lb_os.Caption        := UniMainModule.TRdata^.os;
    lb_navegador.Caption := UniMainModule.TRdata^.navegador;
    lb_ip.Caption        := UniMainModule.TRdata^.ip;
end;

procedure TfPrincipal.ContasPagar;
begin
     with UniMainModule do
     begin
          qPagarCab.Close;
          qPagarCab.SQL.Clear;
          qPagarCab.SQL.Add('Select pc.*, c.nomefantasia,            '+
          ' c.razaosocial from PagarCab pc                           '+
          ' left join clientes c on (c.idcliente = pc.fornecedor and '+
          ' pc.IDemitente = C.idemitente )                           '+
          ' WHERE pc.IDemitente = :E and pc.dataVcto <= current_date AND pc.saldo > 0 ');
          qPagarCab.sql.Add(' ORDER BY PC.ID ');
          qPagarCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          qPagarCab.open;

          if qPagarCab.IsEmpty then
             pPagar.Visible := false;
     end;
end;

procedure TfPrincipal.ContasReceber;
begin
     with UniMainModule do
     begin
          qReceberCab.Close;
          qReceberCab.SQL.Clear;
          qReceberCab.SQL.Add('Select rc.*, c.nomefantasia,  '+
          ' c.razaosocial from ReceberCab rc                 '+
          ' left join clientes c on (c.idcliente = rc.cliente and '+
          ' rc.IDemitente = C.idemitente )                   '+
          ' WHERE rc.IDemitente = :E and rc.dataVcto <= current_date AND rc.saldo > 0 ');
          qReceberCab.sql.Add(' ORDER BY RC.ID ');
          qReceberCab.ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          qReceberCab.open;

          if qReceberCab.IsEmpty then
             pReceber.Visible := false;
     end;
end;

procedure TfPrincipal.gridPagarCellClick(Column: TUniDBGridColumn);
begin
      if Column.Field.Name = 'qPagarCabID' then
      begin
          if UniMainModule.qPagarCabID.AsString <> '' then
          begin
               FContasPagarBaixar.Tag := 1;
               FContasPagarBaixar.showModal;
               ContasPagar;
          end;
      end;
end;

procedure TfPrincipal.gridPagarFieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'ID') then
    begin
        DoNotDispose := True;
        OutImage     := fPrincipal.imAceita.Picture.Graphic;
    end;
end;

procedure TfPrincipal.GridReceberCellClick(Column: TUniDBGridColumn);
begin
      if Column.Field.Name = 'qReceberCabID' then
      begin
          if UniMainModule.qReceberCabID.AsString <> '' then
          begin
               FContasReceberBaixar.Tag := 1;
               FContasReceberBaixar.showModal;
               ContasReceber;
          end;
      end;
end;

procedure TfPrincipal.GridReceberFieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'ID') then
    begin
        DoNotDispose := True;
        OutImage     := fPrincipal.imAceita.Picture.Graphic;
    end;
end;

procedure TfPrincipal.loadData;
var  eInicio, efinal : TDate;
cont : integer;
begin
    eInicio := StartOfTheMonth(now);
    efinal  := EndOfTheMonth(now);

    with CDSNFE do
    begin
      Close;
      FieldDefs.Clear;
      FieldDefs.Add('Tipo', ftString,20);
      FieldDefs.Add('Totais', ftInteger);
      CreateDataSet;

      cont := 1;
      while cont <= 3 do
      begin
          WITH UniMainModule.qGrafico do
          begin
              close;
              sql.Clear;
              sql.Add('select NOTAS_CAB.COD_EMITENTE');
              sql.Add('from NOTAS_CAB  ');
              sql.Add('LEFT OUTER JOIN CLIENTES ON (NOTAS_CAB.IDCLIENTE=CLIENTES.IDCLIENTE '+
              'AND NOTAS_CAB.COD_EMITENTE=CLIENTES.IDEMITENTE) ');
              sql.Add('WHERE NOTAS_CAB.COD_EMITENTE = :e');
              sql.Add('AND NOTAS_CAB.DTEMISSAO >= :vIni and NOTAS_CAB.DTEMISSAO <= :vFim ');
              ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
              if cont = 1 then
                sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''A''  '); // Aceita
              if cont = 2 then
                sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''C''  '); // Cancelada
              if cont = 3 then
                sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''P''  '); // Pendente
                sql.Add(' AND NOTAS_CAB.MODELO = 55 ');
              ParamByName('vIni').AsDate := eInicio;
              ParamByName('vFim').AsDate := eFinal;
              open;
              FetchAll;
          end;

          if cont = 1 then
          begin
             AppendRecord(['Emitidas', UniMainModule.qGrafico.RecordCount]);
             lNfe.Caption := intToStr(UniMainModule.qGrafico.RecordCount);
          end;
          if cont = 2 then
             AppendRecord(['Canceladas', UniMainModule.qGrafico.RecordCount]);
          if cont = 3 then
             AppendRecord(['Pendentes', UniMainModule.qGrafico.RecordCount]);
          inc(cont);
      end;
    end;

    cont := 1;
    with CDSNFCE do
    begin
      Close;
      FieldDefs.Clear;
      FieldDefs.Add('Tipo', ftString,20);
      FieldDefs.Add('Totais', ftInteger);
      CreateDataSet;

      cont := 1;
      while cont <= 3 do
      begin
          WITH UniMainModule.qGrafico do
          begin
              close;
              sql.Clear;
              sql.Add('select NOTAS_CAB.COD_EMITENTE');
              sql.Add('from NOTAS_CAB  ');
              sql.Add('LEFT OUTER JOIN CLIENTES ON (NOTAS_CAB.IDCLIENTE=CLIENTES.IDCLIENTE '+
              'AND NOTAS_CAB.COD_EMITENTE=CLIENTES.IDEMITENTE) ');
              sql.Add('WHERE NOTAS_CAB.COD_EMITENTE = :e');
              sql.Add('AND NOTAS_CAB.DTEMISSAO >= :vIni and NOTAS_CAB.DTEMISSAO <= :vFim ');
              ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
              if cont = 1 then
                sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''A''  '); // Aceita
              if cont = 2 then
                sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''C''  '); // Cancelada
              if cont = 3 then
                sql.Add(' AND NOTAS_CAB.STATUS_NOTA=''P''  '); // Pendente
              sql.Add(' AND NOTAS_CAB.MODELO = 65 ');
              ParamByName('vIni').AsDate := eInicio;
              ParamByName('vFim').AsDate := eFinal;
              open;
              FetchAll;
          end;

          if cont = 1 then
          begin
             AppendRecord(['Emitidas', UniMainModule.qGrafico.RecordCount]);
             lNfce.Caption := intToStr(UniMainModule.qGrafico.RecordCount);
          end;
          if cont = 2 then
             AppendRecord(['Canceladas', UniMainModule.qGrafico.RecordCount]);
          if cont = 3 then
             AppendRecord(['Pendentes', UniMainModule.qGrafico.RecordCount]);
          inc(cont);
      end;
    end;

    cont := 1;
    with CDSMDFE do
    begin
      Close;
      FieldDefs.Clear;
      FieldDefs.Add('Tipo', ftString,20);
      FieldDefs.Add('Totais', ftInteger);
      CreateDataSet;

      cont := 1;
      while cont <= 3 do
      begin
          WITH UniMainModule.qGrafico do
          begin
              close;
              sql.Clear;
              sql.Add('select MDFE.id_emitente from MDFE '+
              ' WHERE MDFE.id_emitente = :e AND MDFE.situacao = ''AUTORIZADA'' ');
              ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
              open;
          end;

          AppendRecord(['Abertas', 0]);
          lMdfe.Caption := intToStr(UniMainModule.qGrafico.RecordCount);

          inc(cont);
      end;
    end;

    with UniMainModule.qGrafico do
    begin
        close;
        sql.Clear;
        sql.Add('select idCliente from CLIENTES where IDEMITENTE=:e');
        ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        FetchAll;
        lClientes.Caption := intToStr(RecordCount);

        close;
        sql.Clear;
        sql.Add('select idProduto from PRODUTOS WHERE IDEMITENTE = :e');
        ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        FetchAll;
        lProdutos.Caption := intToStr(RecordCount);
    end;
end;

procedure TfPrincipal.pDashClick(Sender: TObject);
begin
    PG.ActivePage := pMenu;
    bAtualizaClick(Self);
end;

procedure TfPrincipal.ativaindicador(lPanel: TUniPanel);
var
  ncont: integer;
begin
    pnIndicador.Visible := true;
    pnIndicador.Top     := lPanel.Top;

    for ncont := 0 to UniPanel2.ControlCount - 1 do
    begin
      if UniPanel2.Controls[ncont] is TUniPanel then
        TUniPanel(UniPanel2.Controls[ncont]).Color := $002C2B2A;
    end;
    lPanel.Color := $0079C900; // $00565350;
end;

procedure TfPrincipal.ativaindicadorCadastro(lPanel: TUniPanel);
var
  ncont: integer;
begin
    pnIndicador.Visible := true;
    pnIndicador.Top     := lPanel.Top + 92;

    for ncont := 0 to unipCadastro.ControlCount - 1 do
    begin
      if unipCadastro.Controls[ncont] is TUniPanel then
        TUniPanel(unipCadastro.Controls[ncont]).Color := $002C2B2A;
    end;
    lPanel.Color := $0079C900; // $00565350;
end;

procedure TfPrincipal.ativaIndicadorMovimento(lPanel: TUniPanel);
var
  ncont: integer;
begin
    pnIndicador.Visible := true;
    pnIndicador.Top     := lPanel.Top + 119;

    for ncont := 0 to uniPmovimento.ControlCount - 1 do
    begin
      if uniPmovimento.Controls[ncont] is TUniPanel then
        TUniPanel(uniPmovimento.Controls[ncont]).Color := $002C2B2A;
    end;
    lPanel.Color := $0079C900; // $00565350;
end;

procedure TfPrincipal.ativaIndicadorRelatorio(lPanel: TUnipanel);
var
  ncont: integer;
begin
    pnIndicador.Visible := true;
    pnIndicador.Top     := lPanel.Top + 92;

    for ncont := 0 to uniPrelatorio.ControlCount - 1 do
    begin
      if uniPrelatorio.Controls[ncont] is TUniPanel then
        TUniPanel(uniPrelatorio.Controls[ncont]).Color := $002C2B2A;
    end;
    lPanel.Color := $0079C900; // $00565350;
end;

procedure TfPrincipal.AbrirFrame(aframename: string);
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
    PG.ActivePage        := pAbas;
end;

procedure TfPrincipal.bAtualizaClick(Sender: TObject);
begin
     try
         ContasReceber;
         ContasPagar;

         loadData;
     except

     end;
end;

procedure TfPrincipal.bClientesClick(Sender: TObject);
begin
     AbrirFrame('TframeClientes');
end;

procedure TfPrincipal.bProdutosClick(Sender: TObject);
begin
    AbrirFrame('TframeProduto');
end;

procedure TfPrincipal.UniButton1Click(Sender: TObject);
begin
     AbrirFrame('TfContasPagarListar');
end;

procedure TfPrincipal.UniButton2Click(Sender: TObject);
begin
    AbrirFrame('TframeTes');
end;

procedure TfPrincipal.UniButton4Click(Sender: TObject);
begin
     UniApplication.Terminate();
end;

procedure TfPrincipal.UniFormCreate(Sender: TObject);
begin
    UniImage13.Picture.LoadFromFile('C:\CoreFiscal\files\fundo.jpg');
    //UniImage13.Picture.LoadFromFile('C:\CoreFiscal\files\IMG\fundo_inicial.jpg');

    with FormatSettings do
    begin
        DateSeparator  := '/';
        CurrencyFormat := 0;
        CurrencyString := 'R$';
    end;

    if WebMode then
    begin
        with fLogin do
        begin
            InitCallback(False, _cbProc1);
            Show;
        end;
    end
    else
    begin
        PMain.Visible := true;
    end;

    if WebMode then
    begin
        with fLogin do
        begin
            InitCallback(False, _cbProc1);
            Show;
        end;
    end;
    PG.TabBarVisible := False;
end;

procedure TfPrincipal.UniPanel16Click(Sender: TObject);
begin
     reAreceber.ShowModal();
end;

procedure TfPrincipal.UniPanel24Click(Sender: TObject);
begin
     reApagar.ShowModal();
end;

procedure TfPrincipal.pRelVendasComissaoClick(Sender: TObject);
begin
    reVendasComissao.ShowModal();
end;

procedure TfPrincipal.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin
      if AResult = mrOK then
      begin
           if AText = '101010' then
           begin
               if UniMainModule.teste = 'S' then
                    ShowMessage('Usuário de testes, opção indisponivel!')
               else
               begin
                    AbrirFrame('TfEmitente');
               end;
           end
           else
                Showmessage('Senha incorreta');
      end;
end;

procedure TfPrincipal.pReciboClick(Sender: TObject);
begin
     feRecibo.ShowModal();
end;

procedure TfPrincipal.pRelProdutoClick(Sender: TObject);
begin
    relProdutos.ShowModal();
end;

procedure TfPrincipal.pRelVendasClick(Sender: TObject);
begin
    relVendas.ShowModal();
end;

procedure TfPrincipal.bConciliadorClick(Sender: TObject);
begin
    AbrirFrame('TFconciliador');
end;

procedure TfPrincipal.bCondutoresClick(Sender: TObject);
begin
    AbrirFrame('TFCondutores');
end;

procedure TfPrincipal.bVeiculosClick(Sender: TObject);
begin
     AbrirFrame('TfVeiculos');
end;

procedure TfPrincipal.bVendedoresClick(Sender: TObject);
begin
    AbrirFrame('TfVendedor');
end;

procedure TfPrincipal.bContasReceberClick(Sender: TObject);
begin
     AbrirFrame('TfContasReceberListar');
end;

procedure TfPrincipal.bEmitenteClick(Sender: TObject);
begin
     Prompt('@*Entre com a senha de Administrador', '', mtInformation, mbOKCancel, PromptCallBack, False);
end;

procedure TfPrincipal.bNivelClick(Sender: TObject);
begin
    fNivelAcesso.ShowModal();
end;

procedure TfPrincipal.bOSClick(Sender: TObject);
begin
     AbrirFrame('TfOs');
end;

procedure TfPrincipal.bOsOticaClick(Sender: TObject);
begin
     AbrirFrame('TfOsOtica');
end;

procedure TfPrincipal.bServicosClick(Sender: TObject);
begin
     AbrirFrame('TFservico');
end;

procedure TfPrincipal.bSpedClick(Sender: TObject);
begin
    fSpedFiscal.ShowModal();
end;

procedure TfPrincipal.bTransportadoraClick(Sender: TObject);
begin
     AbrirFrame('TfrmTransp');
end;

procedure TfPrincipal.bComprasClick(Sender: TObject);
begin
    fCompra.ShowModal();
end;

procedure TfPrincipal.bNFCeClick(Sender: TObject);
begin
    UniMainModule.TRdata^.xmodelo     := 65;
    UniMainModule.TRdata^.xfinalidade := 1;
    UniMainModule.TRdata^.xtipodoc    := 1;
    UniMainModule.LerConfiguracao(65);

    if UniMainModule.vctoCertificado <> '' then
       ShowMessage( UniMainModule.vctoCertificado );

    FreeAndNil(FCurrentFrame);
    AbrirFrame('TfNFCe');
end;

procedure TfPrincipal.bNFeClick(Sender: TObject);
begin
    UniMainModule.TRdata^.xmodelo := 55;
    UniMainModule.LerConfiguracao(55);

    if UniMainModule.vctoCertificado <> '' then
       ShowMessage( UniMainModule.vctoCertificado );

    FreeAndNil(FCurrentFrame);
    AbrirFrame('TfNFCe');
end;

procedure TfPrincipal.bGerenciarNFsClick(Sender: TObject);
begin
    fNfeOP.ShowModal();
end;

procedure TfPrincipal.bMDFeClick(Sender: TObject);
begin
    AbrirFrame('TfMdfe');
end;

procedure TfPrincipal.bGerenciarMDFeClick(Sender: TObject);
begin
    AbrirFrame('TfMdfeOp');
end;

procedure TfPrincipal.tMenuTimer(Sender: TObject);
begin
     bAtualiza.Visible := true;
     bAtualiza.Visible := false;
end;

procedure TfPrincipal._cbProc1(LoginSuccessful: Boolean);
begin
    if LoginSuccessful = true then
    begin
      CarregaInformacoesUsuario;
      PMain.Visible := true;
    end;
end;

initialization

RegisterAppFormClass(TfPrincipal);
RegisterClasses([TframeClientes, TfNFCe, TfMdfe, TFCondutores, TFCompra,
TfMdfeOp, TfrmTransp, TfEmitente, TframeProduto, TframeTes, TfVeiculos,
TfVendedor, TfServico, TfOs, TfContasReceberListar,TfContasPagarListar,
TFrameHtml]);

end.




