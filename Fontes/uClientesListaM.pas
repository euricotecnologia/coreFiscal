unit uClientesListaM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniEdit, unimEdit, uniLabel, unimLabel,
  uniGUIBaseClasses, uniRadioButton, unimRadio, Data.DB, uniBasicGrid,
  uniDBGrid, unimDBListGrid;

type
  TfClientesListaM = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel2: TUnimContainerPanel;
    eCliePesq: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimDBListGrid1: TUnimDBListGrid;
    dsClientes: TDataSource;
    UnimContainerPanel18: TUnimContainerPanel;
    rFantasia: TUnimRadio;
    rRazao: TUnimRadio;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimDBListGrid1Click(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fClientesListaM: TfClientesListaM;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uClientesDadosM;

function fClientesListaM: TfClientesListaM;
begin
  Result := TfClientesListaM(UniMainModule.GetFormInstance(TfClientesListaM));
end;

procedure TfClientesListaM.UnimButton1Click(Sender: TObject);
begin
      with UniMainModule.qClientes do
      begin
          close;
          sql.Clear;
          sql.Add('select tipo,REGIMECLIENTE,IDCLIENTE,TIPOPESSOA,RAZAOSOCIAL,'+
          ' NOMEFANTASIA,RG_IE,CPF_CNPJ,FONE,FAX,ENDERECO,NRO,COMPLEMENTO,    '+
          ' BAIRRO,CIDADE,CODMUNICIPIO,UF,CEP,OBSERVACAO,CONSUMIDORFINAL,     '+
          ' IDEMITENTE,email,emailautomatico,dataNascimento '+
          ' from CLIENTES where IDEMITENTE=:IDEMITENTE ');
          if eCliePesq.Text <> '' then
          begin
            if rRazao.Checked = true then
              SQL.Add(' and  RAZAOSOCIAL like :nome ')
            else
              SQL.Add(' and  NOMEFANTASIA like :nome ');
            ParamByName('nome').AsString := '%' + eCliePesq.Text + '%';
          end;
          SQL.Add(' order By RAZAOSOCIAL ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
          Open;
      end;
end;

procedure TfClientesListaM.UnimDBListGrid1Click(Sender: TObject);
begin
     UniMainModule.qClientes.Edit;
     fClientesDadosM.showmodal;
end;

procedure TfClientesListaM.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
     if Sender.ButtonId = 1 then  // Novo Registro
     begin
         UniMainModule.qClientes.open;
         UniMainModule.qClientes.Append;
         UniMainModule.qClientesTIPOPESSOA.Value := 'FISICA';
         fClientesDadosM.dblTipo.Text            := 'FISICA';
         fClientesDadosM.dblTipo.Setfocus;
         fClientesDadosM.showmodal;
     end
end;

end.
