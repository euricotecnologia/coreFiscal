unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, DateUtils,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniGUIBaseClasses, unimScrollBox,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TMainmForm = class(TUnimForm)
    UnimScrollBox1: TUnimScrollBox;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimContainerPanel6: TUnimContainerPanel;
    bProdutos: TUnimButton;
    UnimContainerPanel5: TUnimContainerPanel;
    bClientes: TUnimButton;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    bNfe: TUnimButton;
    UnimContainerPanel3: TUnimContainerPanel;
    bNfce: TUnimButton;
    UnimContainerPanel14: TUnimContainerPanel;
    UnimContainerPanel15: TUnimContainerPanel;
    bPendentesNfe: TUnimButton;
    UnimContainerPanel16: TUnimContainerPanel;
    bPendentesNFCe: TUnimButton;
    UnimContainerPanel17: TUnimContainerPanel;
    UnimContainerPanel18: TUnimContainerPanel;
    bCanceladasNFCe: TUnimButton;
    UnimContainerPanel19: TUnimContainerPanel;
    bCanceladasNFe: TUnimButton;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimContainerPanel8: TUnimContainerPanel;
    bAceitasNFCe: TUnimButton;
    UnimContainerPanel9: TUnimContainerPanel;
    bAceitasNFe: TUnimButton;
    procedure bNfceClick(Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure bNfeClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure bAceitasNFeClick(Sender: TObject);
    procedure bAceitasNFCeClick(Sender: TObject);
  private
    { Private declarations }
    procedure loadData;
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uNfceM, uClientesListaM,
  uProdutosListaM, uNfeOpm, uPdfM, uNfeM;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.loadData;
var  eInicio, efinal : TDate;
cont : integer;
begin
    eInicio := StartOfTheMonth(now);
    efinal  := EndOfTheMonth(now);


    //Nfe
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
           bNFe.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
           bAceitasNFe.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
        end;
        if cont = 2 then
           //AppendRecord(['Canceladas', UniMainModule.qGrafico.RecordCount]);
           bCanceladasNFe.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
        if cont = 3 then
           bPendentesNFe.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
        inc(cont);
    end;
    


    //Nfce
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
           bNFce.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
           bAceitasNFce.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
        end;
        if cont = 2 then
           //AppendRecord(['Canceladas', UniMainModule.qGrafico.RecordCount]);
           bCanceladasNFce.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
        if cont = 3 then
           bPendentesNFce.BadgeText  := intToStr(UniMainModule.qGrafico.RecordCount);
        inc(cont);
    end;


    //Produtos e Clientes
    with UniMainModule.qGrafico do
    begin
        close;
        sql.Clear;
        sql.Add('select idCliente from CLIENTES where IDEMITENTE=:e');
        ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        FetchAll;
        //lClientes.Caption := intToStr(RecordCount);
        bClientes.BadgeText := intToStr(RecordCount);

        close;
        sql.Clear;
        sql.Add('select idProduto from PRODUTOS WHERE IDEMITENTE = :e');
        ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
        Open;
        FetchAll;
        //lProdutos.Caption := intToStr(RecordCount);
        bProdutos.BadgeText := intToStr(RecordCount);
    end;
end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
begin
 loadData;
end;

procedure TMainmForm.bNfceClick(Sender: TObject);
begin
     UniMainModule.TRdata^.xmodelo := 65;
     fNFCem.ShowModal;
end;

procedure TMainmForm.bNfeClick(Sender: TObject);
begin
     UniMainModule.TRdata^.xmodelo := 55;
     fNFCem.ShowModal;
end;

procedure TMainmForm.bAceitasNFCeClick(Sender: TObject);
begin
    unimainModule.Modelo := 65;
    fNfeOPm.showmodal;
end;

procedure TMainmForm.bAceitasNFeClick(Sender: TObject);
begin
     unimainModule.Modelo := 55;
     fNfeOPm.showmodal;
end;

procedure TMainmForm.bClientesClick(Sender: TObject);
begin
     fClientesListaM.ShowModal;
end;

procedure TMainmForm.bProdutosClick(Sender: TObject);
begin
     fProdutosListaM.showModal;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
