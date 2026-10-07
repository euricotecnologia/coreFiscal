unit uFrameClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, ACBrValidador,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniDBLookupComboBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBEdit, uniBasicGrid, uniDBGrid, uniEdit,
  uniLabel, uniRadioGroup, uniPageControl, uniButton, uniBitBtn, System.JSON,
  uniGUIBaseClasses, uniPanel, uniSpeedButton, ACBrIBGE, ACBrBase, ACBrSocket,
  ACBrCEP, uniImage, ACBrConsultaCNPJ, uniDBRadioGroup,
  uniCheckBox, uniDBCheckBox, uniDateTimePicker, uniDBDateTimePicker;

type
  TframeClientes = class(TUniFrame)
    dsIbge: TDataSource;
    dsClientes: TDataSource;
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    PG: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel4: TUniPanel;
    rFiltro: TUniRadioGroup;
    eCliePesq: TUniEdit;
    bPesq: TUniBitBtn;
    UniDBGrid1: TUniDBGrid;
    UniTabSheet2: TUniTabSheet;
    UniPanel3: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    Label9: TUniLabel;
    eRazao: TUniDBEdit;
    Label1: TUniLabel;
    eFantasia: TUniDBEdit;
    Label11: TUniLabel;
    EditCNPJ: TUniDBEdit;
    Label12: TUniLabel;
    dbedit8: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel7: TUniLabel;
    eNumero: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel10: TUniLabel;
    dbIbge: TUniDBEdit;
    UniLabel11: TUniLabel;
    eCEP: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    dblTipo: TUniDBComboBox;
    dbcCf: TUniDBComboBox;
    dblUf: TUniDBComboBox;
    dblMunicipio: TUniDBLookupComboBox;
    btnVoltar: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    bCep: TUniSpeedButton;
    bCnpj: TUniSpeedButton;
    pCNPJ: TUniPanel;
    UniPanel2: TUniPanel;
    Image1: TUniImage;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    EditCaptcha: TUniEdit;
    bEnviarEmal: TUniBitBtn;
    bCancelarEmail: TUniBitBtn;
    bCidade: TUniSpeedButton;
    UniLabel2: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    bCnpj2: TUniSpeedButton;
    dbTipo: TUniDBRadioGroup;
    UniLabel5: TUniLabel;
    UniLabel19: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    cEnvioAutomatico: TUniDBCheckBox;
    UniLabel20: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel21: TUniLabel;
    procedure dblMunicipioChange(Sender: TObject);
    procedure dblUfChange(Sender: TObject);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure dsClientesStateChange(Sender: TObject);
    procedure bPesqClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bCepClick(Sender: TObject);
    procedure bCnpjClick(Sender: TObject);
    procedure bCancelarEmailClick(Sender: TObject);
    procedure UniLabel3Click(Sender: TObject);
    procedure bEnviarEmalClick(Sender: TObject);
    procedure bCidadeClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure bCnpj2Click(Sender: TObject);
    procedure EditCNPJExit(Sender: TObject);
    procedure eRazaoExit(Sender: TObject);
  private

    procedure OffLine;
    Procedure Pesquisar;
    procedure CarregaCidades;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uClsBase, uPesquisa, Vcl.Imaging.pngimage, uPrincipal, uJSON;

procedure TframeClientes.dblMunicipioChange(Sender: TObject);
begin
  if  UniMainModule.qClientes.State in [dsEdit, dsInsert] then
    UniMainModule.qClientesCODMUNICIPIO.Value := UniMainModule.qIbgeID.Value;
end;

procedure TframeClientes.dblUfChange(Sender: TObject);
begin
     CarregaCidades;
end;

procedure TframeClientes.dsClientesDataChange(Sender: TObject; Field: TField);
begin
  if UniMainModule.qClientesTIPOPESSOA.Value = 'FISICA' then
  begin
    Label9.Caption  := 'Nome';
    Label1.Caption  := 'Apelido';
    Label11.Caption := 'CPF';
    Label12.Caption := 'RG';
    bCnpj.Visible   := False;
    bCnpj2.Visible   := False;
  end
  else if UniMainModule.qClientesTIPOPESSOA.Value = 'JURIDICA' then
  begin
    Label9.Caption  := 'Razão Social';
    Label1.Caption  := 'Nome Fantasia';
    Label11.Caption := 'CNPJ';
    Label12.Caption := 'Insc. Estadual - ou ISENTO';
    bCnpj.Visible   := True;
    bCnpj2.Visible   := True;
  end;
end;

procedure TframeClientes.dsClientesStateChange(Sender: TObject);
begin
  btnInclui.Enabled  := UniMainModule.qClientes.State in [dsBrowse];
  btnVoltar.Enabled  := UniMainModule.qClientes.State in [dsBrowse];
  btnSalva.Enabled   := UniMainModule.qClientes.State in [dsEdit, dsInsert];
  btnCancela.Enabled := UniMainModule.qClientes.State in [dsEdit, dsInsert];
  // dblcliente.Enabled := qClientes.State in [dsBrowse];
end;

procedure TframeClientes.EditCNPJExit(Sender: TObject);
var lcodcli : integer;
begin
      if EditCNPJ.Text <> '' then
      begin
          if UniMainModule.qClientes.State in [dsInsert] then
          begin
              lcodcli := UniMainModule.Banco.ExecSQLScalar('SELECT IDCLIENTE FROM CLIENTES WHERE CPF_CNPJ='+
              UniMainModule.soNumero(EditCNPJ.Text).QuotedString+
              ' and idEmitente = '+UniMainModule.CodigoEmitente.QuotedString);

              if lcodcli > 0 then
              begin
                  ShowMessage('CPF/CNPJ informado ja cadastrado');
                  exit;
              end;
          end;
      end;
end;

procedure TframeClientes.eRazaoExit(Sender: TObject);
begin
    if eFantasia.Text = '' then
    begin
        UniMainModule.qClientesNOMEFANTASIA.AsString := UniMainModule.qClientesRAZAOSOCIAL.AsString;
        eFantasia.Text := eRazao.text;
    end;
end;

procedure TframeClientes.OffLine;
begin
     unimainModule.Banco.Offline;
end;

procedure TframeClientes.Pesquisar;
begin
    with UniMainModule.qClientes do
    begin
        close;
        sql.Clear;
        sql.Add('select tipo,REGIMECLIENTE,IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,'+
        ' NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,COMPLEMENTO,BAIRRO,'+
        ' CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,IDEMITENTE,  '+
        ' email,emailautomatico,dataNascimento    '+
        ' from CLIENTES where IDEMITENTE=:IDEMITENTE ');
        if eCliePesq.Text <> '' then
        begin
          if rFiltro.ItemIndex = 0 then
            SQL.Add(' and  nomeFantasia like :nome ')
          else if rFiltro.ItemIndex = 1 then
            SQL.Add(' and  cpf_cnpj like :nome ')
          else if rFiltro.ItemIndex = 2 then
            SQL.Add(' and  RAZAOSOCIAL like :nome ')
          else if rFiltro.ItemIndex = 3 then
            SQL.Add(' and  RG_IE like :nome ')    ;
          ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
        end;
        SQL.Add(' order By NomeFantasia ');
        ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        Offline;
    end;
end;

procedure TframeClientes.btnIncluiClick(Sender: TObject);
begin
      PG.ActivePage := UniTabSheet2;
      UniMainModule.qClientes.Append;
      UniMainModule.qClientesTIPOPESSOA.Value := 'FISICA';
      dblTipo.Text                            := 'FISICA';
      UniMainModule.qClientesCONSUMIDORFINAL.AsString := 'SIM';
      dblTipo.Setfocus;
end;

procedure TframeClientes.btnSalvaClick(Sender: TObject);
var
  lbase : tbase;
  lcodcli : integer;
begin
    try
        if UniMainModule.qClientes.State in [dsEdit, dsInsert] then
        begin
            if EditCNPJ.Text = '' then
            begin
                ShowMessage('CNPJ/CPF é um campo obrigatório!');
                EditCNPJ.Setfocus;
                Abort;
            end;

            if eCEP.Text = '' then
            begin
                ShowMessage('CEP é um campo obrigatório!');
                eCEP.Setfocus;
                Abort;
            end;

            if UniDBEdit6.Text = '' then
            begin
                ShowMessage('Endereço é um campo obrigatório!');
                UniDBEdit6.Setfocus;
                Abort;
            end;

            if eNumero.Text = '' then
            begin
                ShowMessage('Numero do Endereço é um campo obrigatório!');
                eNumero.Setfocus;
                Abort;
            end;

            if UniDBEdit8.Text = '' then
            begin
                ShowMessage('Complemento é um campo obrigatório!');
                UniDBEdit8.Setfocus;
                Abort;
            end;

            if dblUf.Text = '' then
            begin
                ShowMessage('UF é um campo obrigatório!');
                dblUf.Setfocus;
                Abort;
            end;

            if dblMunicipio.Text = '' then
            begin
                ShowMessage('Cidade é um campo obrigatório!');
                dblMunicipio.Setfocus;
                Abort;
            end;

            if UniDBEdit9.Text = '' then
            begin
                ShowMessage('Bairro é um campo obrigatório!');
                UniDBEdit9.Setfocus;
                Abort;
            end;


            if eRazao.Text = '' then
            begin
                ShowMessage('Nome/Razão é um campo obrigatório!');
                eRazao.Setfocus;
                Abort;
            end;

            if eFantasia.Text = '' then
            begin
                 UniMainModule.qClientesNOMEFANTASIA.AsString := UniMainModule.qClientesRAZAOSOCIAL.AsString;
            end;

            if dblTipo.Text = 'FISICA' then
            begin
                UniMainModule.docValido.Documento := UniMainModule.soNumero(EditCNPJ.Text);
                UniMainModule.docValido.TipoDocto := docCPF;
                if not UniMainModule.docValido.validar then
                begin
                  ShowMessage('O conteúdo do campo CPF está incorreto!');
                  EditCNPJ.Setfocus;
                  Abort;
                end;
            end
            else
            begin
                UniMainModule.docValido.Documento := UniMainModule.soNumero(EditCNPJ.Text);
                UniMainModule.docValido.TipoDocto := docCNPJ;

                if not UniMainModule.docValido.validar then
                begin
                    ShowMessage('O conteúdo do campo CNPJ está incorreto!');
                    EditCNPJ.Setfocus;
                    Abort;
                end;

                UniMainModule.docValido.Documento   := UniMainModule.soNumero(dbedit8.Text);
                UniMainModule.docValido.TipoDocto   := docInscEst;
                UniMainModule.docValido.Complemento := dblUf.Text;

                if not UniMainModule.docValido.validar then
                begin
                    ShowMessage('O conteúdo do campo INSCRIÇÃO ESTADUAL está incorreto!');
                    dbedit8.Setfocus;
                    Abort;
                end;
            end;

            if UniMainModule.qClientesIDCLIENTE.IsNull then
            begin
                lbase := TBase.Create;
                UniMainModule.qClientesIDCLIENTE.Value      := lbase.pegaseg('CLIENTES', 'IDCLIENTE',UniMainModule.Banco);
                UniMainModule.qClientesIDEMITENTE.AsInteger := UniMainModule.CodigoEmitente.ToInteger; //
                lbase.Free;
            end;

            UniMainModule.qClientes.post;
            UniMainModule.qClientes.ApplyUpdates;
            UniMainModule.qClientes.CommitUpdates;
        end;

        ShowMessage('Registro atualizado com sucesso!');

    except
      On E: Exception do
      begin
        showmessage('Ocorreu um erro: '+e.Message);
      end;
    end;
end;

procedure TframeClientes.bCancelarEmailClick(Sender: TObject);
begin
     pCNPJ.Visible := False;
end;

procedure TframeClientes.bCepClick(Sender: TObject);
 var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
  lResponse : TStringStream;
  lParams :TStringList;
  resposta : AnsiString;
  json: TJSONObject;
begin
   URL := 'https://viacep.com.br/ws/' + UniMainModule.soNumero( eCep.Text ) + '/json/';

   JsonStreamEnvio   := TStringStream.Create(URL);
   JsonStreamRetorno := TStringStream.Create('');
   lResponse         := TStringStream.Create('');

   lResponse := TStringStream.Create('');

   json := TJSONObject.create();
   json.create(unimainmodule.IdHTTP1.Get(URL));

   if bcep.Tag <> 1 then
   begin
       UniMainModule.qClientesENDERECO.AsString     := json.getString('logradouro');
       UniMainModule.qClientesCOMPLEMENTO.AsString  := json.getString('complemento');
       UniMainModule.qClientesBAIRRO.AsString       := json.getString('bairro');
       bcep.Tag := 0;
   end;
   UniMainModule.qClientesCIDADE.AsString       := json.getString('ibge');
   UniMainModule.qClientesUF.AsString           := json.getString('uf');
   UniMainModule.qClientesCODMUNICIPIO.AsString := json.getString('ibge');
   json.Free;

   CarregaCidades;
end;


procedure TframeClientes.bCidadeClick(Sender: TObject);
begin
    fPesquisa.Tag        := 3;
    fPesquisa.parametro1 := dblUf.Text;
    fPesquisa.showModal;

    dblMunicipio.KeyValue                     := fPesquisa.wCodigo;
    UniMainModule.qClientesCODMUNICIPIO.Value := fPesquisa.wCodigo;
    UniDBEdit12.Setfocus;
end;

procedure TframeClientes.bCnpj2Click(Sender: TObject);
 var
  URL, Retorno: String;
  JsonStreamRetorno, JsonStreamEnvio: TStringStream;
  lResponse : TStringStream;
  lParams :TStringList;
  resposta : AnsiString;
  json: TJSONObject;

begin
   URL := 'http://www.receitaws.com.br/v1/cnpj/' + UniMainModule.soNumero( EditCNPJ.Text );

   JsonStreamEnvio   := TStringStream.Create(URL);
   JsonStreamRetorno := TStringStream.Create('');
   lResponse := TStringStream.Create('');

   lResponse := TStringStream.Create('');

   json := TJSONObject.create();
   json.create(unimainmodule.IdHTTP1.Get(URL));

  UniMainModule.qClientesRAZAOSOCIAL.AsString  := json.getString('nome');
  UniMainModule.qClientesNOMEFANTASIA.AsString := json.getString('fantasia');
  UniMainModule.qClientesENDERECO.AsString     := json.getString('logradouro');
  UniMainModule.qClientesNRO.AsString          := json.getString('numero');
  UniMainModule.qClientesCOMPLEMENTO.AsString  := json.getString('complemento');
  UniMainModule.qClientesBAIRRO.AsString       := json.getString('bairro');
  UniMainModule.qClientesCEP.AsString          := json.getString('cep');
  UniMainModule.qClientesFONE.AsString         := json.getString('telefone');
  UniMainModule.qClientesUF.AsString           := json.getString('uf');

  bcep.Tag := 1;
  bCep.click;
end;

procedure TframeClientes.bCnpjClick(Sender: TObject);
begin
      pCNPJ.Visible := True;
      UniLabel3Click(UniLabel3);
      EditCaptcha.Clear;
      EditCaptcha.Setfocus;
end;

procedure TframeClientes.bEnviarEmalClick(Sender: TObject);
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    try
      if UniMainModule.ACBrConsultaCNPJ1.Consulta(EditCNPJ.Text, EditCaptcha.Text, False) then
      begin
        UniMainModule.qClientesRAZAOSOCIAL.AsString  := UniMainModule.ACBrConsultaCNPJ1.RazaoSocial;
        UniMainModule.qClientesNOMEFANTASIA.AsString := UniMainModule.ACBrConsultaCNPJ1.Fantasia;
        UniMainModule.qClientesENDERECO.AsString     := UniMainModule.ACBrConsultaCNPJ1.Endereco;
        UniMainModule.qClientesNRO.AsString          := UniMainModule.ACBrConsultaCNPJ1.Numero;
        UniMainModule.qClientesCOMPLEMENTO.AsString  := UniMainModule.ACBrConsultaCNPJ1.Complemento;
        UniMainModule.qClientesBAIRRO.AsString       := UniMainModule.ACBrConsultaCNPJ1.Bairro;
        UniMainModule.qClientesUF.AsString           := UniMainModule.ACBrConsultaCNPJ1.UF;
        UniMainModule.qClientesCIDADE.AsString       := UniMainModule.ACBrConsultaCNPJ1.IBGE_Municipio;
        UniMainModule.qClientesCODMUNICIPIO.AsString := UniMainModule.ACBrConsultaCNPJ1.IBGE_Municipio;
        UniMainModule.qClientesCEP.AsString          := UniMainModule.ACBrConsultaCNPJ1.CEP;
        UniMainModule.qClientesFONE.AsString         := UniMainModule.ACBrConsultaCNPJ1.Telefone;
      end;
    finally
      UniMainModule.ACBrCEP1.BuscarPorCEP(eCEP.Text);

      For I := 0 to UniMainModule.ACBrCEP1.Enderecos.Count - 1 do
      begin
        with UniMainModule.ACBrCEP1.Enderecos[I] do
        begin
          UniMainModule.qClientesCIDADE.AsString       := UniMainModule.ACBrCEP1.Enderecos[I].IBGE_Municipio;
          UniMainModule.qClientesUF.AsString           := UniMainModule.ACBrCEP1.Enderecos[I].UF;
          UniMainModule.qClientesCODMUNICIPIO.AsString := UniMainModule.ACBrCEP1.Enderecos[I].IBGE_Municipio;
        end;
      end;
    end;
    pCNPJ.Visible := False;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha!');
    EditCaptcha.Setfocus;
  end;
end;

procedure TframeClientes.bPesqClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure TframeClientes.btnCancelaClick(Sender: TObject);
begin
  UniMainModule.qClientes.Cancel;
  btnInclui.Setfocus;
end;

procedure TframeClientes.btnVoltarClick(Sender: TObject);
begin
    PG.ActivePage := UniTabSheet1;
end;

procedure TframeClientes.CarregaCidades;
begin
    UniMainModule.qIbge.Close;
    UniMainModule.qIbge.SQL.Clear;
    UniMainModule.qIbge.SQL.Text := 'select * from MUNICIPIOS where IDUF = :vUF order by NOME';
    UniMainModule.qIbge.ParamByName('vUF').AsString := UniMainModule.qClientesUF.AsString; // dblUf.Text;
    UniMainModule.qIbge.Open;
    UniMainModule.qIbge.First;

    dblMunicipio.Text := UniMainModule.qIbgeNOME.Value;
end;

procedure TframeClientes.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
    if Column.Field.Name = 'qClientesUF' then
    begin
        if UniMainModule.qClientesIDCLIENTE.AsString <> '' then
        begin
            MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
            procedure(Sender: TComponent; Res: Integer)
            begin
                case Res of
                    mrYes :
                    begin
                        Try
                            UniMainModule.qClientes.Delete;
                            UniMainModule.qClientes.ApplyUpdates;
                            unimainModule.qClientes.CommitUpdates;

                        except on e: exception do
                        begin
                            ShowMessage('Ocorreu o seguinte erro: '+e.Message);
                        end;
                        end;
                    end;
                    mrNo  :
                    begin
                    end;
                end;
            end);
        end
    end;

    if Column.Field.Name = 'qClientesNRO' then
    begin
        if UniMainModule.qClientesIDCLIENTE.AsString <> '' then
        begin
            PG.ActivePage := UniTabSheet2;
            UniMainModule.qClientes.Edit;
        end;
    end;
end;

procedure TframeClientes.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
//      UniMainModule.qClientes.Edit;
//      if Column.FieldName = 'edit' then
//      begin
//           column.Field.Text:='<button type="button" class="btn btn-block btn-warning btn-xs"><i class="glyphicon-pencil"></i></button>';  //
//      end;
//
//      if Column.FieldName = 'delete' then
//      begin
//           column.Field.Text:='<button type="button" class="btn btn-block btn-danger btn-xs"><i class="glyphicon-trash"></i></button>';   //
//      end;
//      UniMainModule.qClientes.post;
end;

procedure TframeClientes.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
    if SameText(AField.FieldName, 'UF') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgDelete.Picture.Graphic;
    end;

    if SameText(AField.FieldName, 'NRO') then
    begin
      DoNotDispose := True;
      OutImage := fPrincipal.imgEdit.Picture.Graphic;
    end;
end;

procedure TframeClientes.UniFrameCreate(Sender: TObject);
begin
    UniMainModule.qIbge.Open();
    Pesquisar;
end;

procedure TframeClientes.UniLabel3Click(Sender: TObject);
var
  Stream: TMemoryStream;
  png: TPngImage;
begin
      Stream := TMemoryStream.Create;
      try
          UniMainModule.ACBrConsultaCNPJ1.Captcha(Stream);

          png := TPngImage.Create;
          try
            png.LoadFromStream(Stream);
            Image1.Picture.Assign(png);

            EditCaptcha.Clear;
            EditCaptcha.Setfocus;
          finally
            png.Free;
          end;
      finally
          Stream.Free;
      end;
end;

end.
