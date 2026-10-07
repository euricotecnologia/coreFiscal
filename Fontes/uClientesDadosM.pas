unit uClientesDadosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniMultiItem, unimSelect, unimDBSelect, uniEdit, uniDBEdit, unimDBEdit, acbrvalidador,
  uniLabel, unimLabel, Data.DB, uniGUIBaseClasses, uniButton, unimButton,
  ACBrBase, ACBrSocket, ACBrCEP, uniMemo, uniDBMemo, unimDBMemo;

type
  TfClientesDadosM = class(TUnimForm)
    dsClientes: TDataSource;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel18: TUnimContainerPanel;
    UnimContainerPanel19: TUnimContainerPanel;
    UnimLabel10: TUnimLabel;
    UnimContainerPanel20: TUnimContainerPanel;
    UnimLabel12: TUnimLabel;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    dbedit8: TUnimDBEdit;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    dbeNome: TUnimDBEdit;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    UnimDBEdit5: TUnimDBEdit;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimLabel5: TUnimLabel;
    UnimContainerPanel6: TUnimContainerPanel;
    eCEP: TUnimDBEdit;
    UnimButton1: TUnimButton;
    ACBrCEP1: TACBrCEP;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimLabel6: TUnimLabel;
    UnimDBEdit6: TUnimDBEdit;
    UnimContainerPanel8: TUnimContainerPanel;
    UnimContainerPanel9: TUnimContainerPanel;
    UnimLabel7: TUnimLabel;
    dblTipo: TUnimDBSelect;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimLabel8: TUnimLabel;
    UnimDBEdit7: TUnimDBEdit;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimLabel9: TUnimLabel;
    UnimDBEdit9: TUnimDBEdit;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimContainerPanel13: TUnimContainerPanel;
    UnimLabel11: TUnimLabel;
    UnimDBEdit10: TUnimDBEdit;
    UnimContainerPanel14: TUnimContainerPanel;
    UnimLabel13: TUnimLabel;
    UnimDBEdit11: TUnimDBEdit;
    dblUf: TUnimDBSelect;
    UnimContainerPanel16: TUnimContainerPanel;
    UnimLabel14: TUnimLabel;
    UnimContainerPanel17: TUnimContainerPanel;
    dblMunicipio: TUnimDBEdit;
    bCidade: TUnimButton;
    UnimDBNumberEdit1: TUnimDBNumberEdit;
    UnimContainerPanel15: TUnimContainerPanel;
    UnimContainerPanel21: TUnimContainerPanel;
    UnimLabel15: TUnimLabel;
    UnimDBEdit1: TUnimDBEdit;
    UnimContainerPanel22: TUnimContainerPanel;
    UnimLabel16: TUnimLabel;
    UnimDBEdit8: TUnimDBEdit;
    UnimContainerPanel23: TUnimContainerPanel;
    UnimLabel17: TUnimLabel;
    UnimDBMemo1: TUnimDBMemo;
    UnimContainerPanel24: TUnimContainerPanel;
    EditCNPJ: TUnimDBEdit;
    UnimButton2: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure dblUfChange(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
    procedure bCidadeClick(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fClientesDadosM: TfClientesDadosM;

implementation

{$R *.dfm}

uses
  MainModule, uClsBase, uniGUIApplication, uListaCidadesM, uConsultaCnpj;

function fClientesDadosM: TfClientesDadosM;
begin
  Result := TfClientesDadosM(UniMainModule.GetFormInstance(TfClientesDadosM));
end;

procedure TfClientesDadosM.UnimButton1Click(Sender: TObject);
var
  I: Integer;
begin
      try
          ACBrCEP1.BuscarPorCEP(eCEP.Text);

          For I := 0 to ACBrCEP1.Enderecos.Count - 1 do
          begin
              with ACBrCEP1.Enderecos[I] do
              begin
                UniMainModule.qClientesENDERECO.AsString     := ACBrCEP1.Enderecos[I].Logradouro;
                UniMainModule.qClientesCOMPLEMENTO.AsString  := ACBrCEP1.Enderecos[I].Complemento;
                UniMainModule.qClientesCIDADE.AsString       := ACBrCEP1.Enderecos[I].IBGE_Municipio;
                UniMainModule.qClientesUF.AsString           := ACBrCEP1.Enderecos[I].UF;
                UniMainModule.qClientesBAIRRO.AsString       := ACBrCEP1.Enderecos[I].Bairro;
                UniMainModule.qClientesCODMUNICIPIO.AsString := ACBrCEP1.Enderecos[I].IBGE_Municipio;
              end;
          end;
      except
          On E: Exception do
          begin
              ShowMessage('Ocorreu um erro na consulta :' + E.Message);
          end;
      end;
end;

procedure TfClientesDadosM.UnimButton2Click(Sender: TObject);
begin
     fConsultaCnpj.showModal;
end;

procedure TfClientesDadosM.bCidadeClick(Sender: TObject);
begin
     if dblUf.ItemIndex = -1 then
     begin
          ShowMessage('Selecione um ESTADO para continuar');
          dblUf.SetFocus;
          exit;
     end;

     fListaCidadesM.estado := dblUf.Text;
     fListaCidadesM.ShowModal();
end;

procedure TfClientesDadosM.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
var
  lbase : tbase;
begin
     try
        if Sender.ButtonId = 0 then  // Novo Registro
        begin
            UniMainModule.qClientes.Append;
            UniMainModule.qClientesTIPOPESSOA.Value := 'FISICA';
            dblTipo.Text                            := 'FISICA';
            dblTipo.Setfocus;
        end
        else if Sender.ButtonId = 4 then
        begin
            if UniMainModule.qClientes.State in [dsEdit, dsInsert] then
            begin
                if dblTipo.Text = 'FISICA' then
                begin
                    UniMainModule.docValido.Documento := UniMainModule.soNumero(EditCNPJ.Text);
                    UniMainModule.docValido.TipoDocto := docCPF;
                    if not UniMainModule.docValido.validar then
                    begin
                        ShowMessage('CPF informado invalido');
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
                        ShowMessage('CNPJ informado invalido');
                        EditCNPJ.Setfocus;
                        Abort;
                    end;

                    UniMainModule.docValido.Documento   := UniMainModule.soNumero(dbedit8.Text);
                    UniMainModule.docValido.TipoDocto   := docInscEst;
                    UniMainModule.docValido.Complemento := dblUf.Text;

                    if not UniMainModule.docValido.validar then
                    begin
                        ShowMessage('IE informado invalido');
                        dbedit8.Setfocus;
                        Abort;
                    end;
                end;

                if dbeNome.Text = '' then
                begin
                    ShowMessage('Nome é um campo obrigatório!');
                    dbeNome.Setfocus;
                    Abort;
                end;

                if UniMainModule.qClientesIDCLIENTE.AsString = '' then
                begin
                    lbase := TBase.Create;
                    UniMainModule.qClientesIDCLIENTE.Value                      := lbase.pegaseg('CLIENTES', 'IDCLIENTE',UniMainModule.Banco);
                    UniMainModule.qClientes.FieldByName('IDEMITENTE').AsInteger := UniMainModule.CodigoEmitente.ToInteger; //
                    UniMainModule.qClientes.post;
                    UniMainModule.qClientes.ApplyUpdates;
                    UniMainModule.qClientes.CommitUpdates;
                    lbase.Free;
                end
                else
                begin
                    UniMainModule.qClientes.post;
                    UniMainModule.qClientes.ApplyUpdates;
                    UniMainModule.qClientes.CommitUpdates;
                end;
            end;

            ShowMessage('Registro salvo com sucesso!');
        end
        else if Sender.ButtonId = 3 then
        begin
             UniMainModule.qClientes.Cancel;
             close;
        end;
     except on e:exception do
     begin
        ShowMessage('Erro: '+e.Message);
     end;
     end;
end;

procedure TfClientesDadosM.dblUfChange(Sender: TObject);
begin
      UniMainModule.qIbge.Close;
      UniMainModule.qIbge.SQL.Clear;
      UniMainModule.qIbge.SQL.Text := 'select * from MUNICIPIOS where IDUF = :vUF order by NOME';
      UniMainModule.qIbge.ParamByName('vUF').AsString := dblUf.Text;
      UniMainModule.qIbge.Open;
      UniMainModule.qIbge.First;

      bCidade.Click;
end;

end.
