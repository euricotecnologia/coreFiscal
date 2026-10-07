unit uRelVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxExportPDF, frxDBSet,
  uniButton, uniBitBtn, uniDateTimePicker, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniCheckBox, uniLabel,
  uniGUIBaseClasses, uniRadioGroup, uniEdit, uniRadioButton, uniGroupBox,
  uniMemo, frxExportBaseDialog;

type
  TRelVendas = class(TUniForm)
    frxVisualizar: TfrxReport;
    frxDB: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    dsVisualizar: TDataSource;
    rCLiente: TUniRadioGroup;
    UniRadioGroup2: TUniRadioGroup;
    UniLabel2: TUniLabel;
    UniRadioGroup3: TUniRadioGroup;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel5: TUniLabel;
    rTipo: TUniComboBox;
    rFantasia: TUniRadioButton;
    rRazao: TUniRadioButton;
    rGeral: TUniRadioButton;
    eCliente: TUniEdit;
    UniGroupBox2: TUniGroupBox;
    cbFiltro: TUniComboBox;
    eForma: TUniComboBox;
    eInicio: TUniDateTimePicker;
    eFinal: TUniDateTimePicker;
    rEmissao: TUniRadioGroup;
    frxReport1: TfrxReport;
    rImpressao: TUniRadioGroup;
    qVendaAgrupada: TFDQuery;
    tQVendaAgrupada: TFDTransaction;
    dsVendaAgrupada: TDataSource;
    qVendaAgrupadaTIPO_FATURA: TStringField;
    qVendaAgrupadaSUM: TBCDField;
    frxAgrupado: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    qNotasCab: TFDQuery;
    qNotasCabNOMEFANTASIA: TStringField;
    qNotasCabCPF_CNPJ: TStringField;
    qNotasCabRAZAOSOCIAL: TStringField;
    qNotasCabID: TIntegerField;
    qNotasCabSERIE: TIntegerField;
    qNotasCabMODELO: TIntegerField;
    qNotasCabDTEMISSAO: TDateField;
    qNotasCabDTSAIDA: TDateField;
    qNotasCabIDCLIENTE: TIntegerField;
    qNotasCabCPF_CONSUMIDOR: TStringField;
    qNotasCabNOME_CONSUMIDOR: TStringField;
    qNotasCabVALOR_DESCONTO: TBCDField;
    qNotasCabVALOR_ACRESCIMO: TBCDField;
    qNotasCabTOTAL_PRODUTOS: TBCDField;
    qNotasCabTOTAL_NOTA: TBCDField;
    qNotasCabQUANT: TBCDField;
    qNotasCabNUMERO: TStringField;
    qNotasCabPESOBRUTO: TBCDField;
    qNotasCabSTATUS_NOTA: TStringField;
    qNotasCabFORMA_PGTO: TStringField;
    qNotasCabDATA_CANCELA: TSQLTimeStampField;
    qVendedor: TFDQuery;
    dsVendedores: TDataSource;
    tVendedores: TFDTransaction;
    qVendedorCODIGO: TIntegerField;
    qVendedorID: TIntegerField;
    qVendedorNOME: TStringField;
    UniRadioGroup4: TUniRadioGroup;
    UniLabel1: TUniLabel;
    eVendedor: TUniDBLookupComboBox;
    cVendedor: TUniCheckBox;
    Agrupado2: TfrxReport;
    rModelo: TUniRadioGroup;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    frxImpCartao: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure rImpressaoClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function RelVendas: TRelVendas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, uPDF;

function RelVendas: TRelVendas;
begin
  Result := TRelVendas(UniMainModule.GetFormInstance(TRelVendas));
end;

procedure TRelVendas.rImpressaoClick(Sender: TObject);
begin
     if rImpressao.ItemIndex = 0 then
     begin
          rModelo.Visible   := false;
          rModelo.ItemIndex := 0;
     end
     else
     begin
          rModelo.Visible   := true;
          rModelo.ItemIndex := 1;
     end;
end;

procedure TRelVendas.UniButton1Click(Sender: TObject);
var
  xDataRel : String;
begin
      frxImpCartao.variables['texto'] := UniMemo1.Text;

      xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
      unimainModule.NomePDF  := xDataRel + '.PDF';

      frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

      frxImpCartao.PrepareReport(True);

      frxPDF.ShowDialog := false;
      frxImpCartao.Export(frxPDF);

      fPDF.Caption          := unimainModule.NomePDF;
      fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
      fPDF.Show();
end;

procedure TRelVendas.UniButton2Click(Sender: TObject);
var
  xDataRel : String;
begin
    if rImpressao.ItemIndex = 0 then
    begin
        WITH qNotasCab do
        begin
          close;
          sql.Clear;
          sql.Add(' select CLIENTES.NOMEFANTASIA,CLIENTES.CPF_CNPJ,CLIENTES.RAZAOSOCIAL,    '+
          ' NOTAS_CAB.ID,NOTAS_CAB.SERIE,NOTAS_CAB.MODELO,NOTAS_CAB.DTEMISSAO,              '+
          ' NOTAS_CAB.DTSAIDA,NOTAS_CAB.IDCLIENTE,NOTAS_CAB.CPF_CONSUMIDOR,                 '+
          ' NOTAS_CAB.NOME_CONSUMIDOR,NOTAS_CAB.VALOR_DESCONTO,NOTAS_CAB.VALOR_ACRESCIMO,   '+
          ' NOTAS_CAB.TOTAL_PRODUTOS,NOTAS_CAB.TOTAL_NOTA,NOTAS_CAB.QUANT,NOTAS_CAB.NUMERO, '+
          ' NOTAS_CAB.PESOBRUTO,NOTAS_CAB.STATUS_NOTA,NOTAS_CAB.FORMA_PGTO,NOTAS_CAB.DATA_CANCELA '+
          ' from NOTAS_CAB   '+
          ' LEFT OUTER JOIN CLIENTES ON (NOTAS_CAB.IDCLIENTE = CLIENTES.IDCLIENTE '+
          ' AND NOTAS_CAB.COD_EMITENTE = CLIENTES.IDEMITENTE) '+
          ' WHERE NOTAS_CAB.COD_EMITENTE = :e                 '+
          ' AND NOTAS_CAB.DTEMISSAO >= :vIni and NOTAS_CAB.DTEMISSAO <= :vFim ');

          if cbFiltro.ItemIndex = 1 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''V''  ');
          if cbFiltro.ItemIndex = 2 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''A''  '); // Aceita
          if cbFiltro.ItemIndex = 3 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''R''  '); // Rejeitada
          if cbFiltro.ItemIndex = 4 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''C''  '); // Cancelada
          if cbFiltro.ItemIndex = 5 then
            sql.Add(' AND NOTAS_CAB.STATUS_NOTA = ''P''  '); // Pendente
          if rEmissao.ItemIndex = 0 then
            sql.Add(' AND NOTAS_CAB.TIPOEMISSAO = 1 ');
          if rEmissao.ItemIndex = 1 then
            sql.Add(' AND NOTAS_CAB.TIPOEMISSAO = 2 ');
          if rTipo.ItemIndex = 0 then
            sql.Add(' AND NOTAS_CAB.MODELO = 55 ');
          if rTipo.ItemIndex = 1 then
            sql.Add(' AND NOTAS_CAB.MODELO = 65 ');
          if cVendedor.Checked = false then
            sql.Add(' AND NOTAS_CAB.vendedor = '+QuotedStr(eVendedor.KeyValue));

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                  sql.Add(' AND CLIENTES.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                  sql.Add(' AND CLIENTES.RAZAOSOCIAL like  :cliente ')
          end;
          sql.Add(' ORDER BY NOTAS_CAB.ID ');

          ParamByName('e').AsInteger := UniMainModule.CodigoEmitente.ToInteger;
          ParamByName('vIni').AsDate := eInicio.DateTime;
          ParamByName('vFim').AsDate := eFinal.DateTime;

          if rGeral.Checked = false then
             ParamByName('cliente').asString := '%'+eCliente.Text+'%';

          open;
        end;

        frxVisualizar.Variables['Periodo'] := QuotedStr(eInicio.Text+' a '+eFinal.Text);

        if eCliente.Text <> '' then
            frxVisualizar.Variables['Cliente'] := QuotedStr(eCliente.Text)
        else
            frxVisualizar.variables['Cliente'] := QuotedStr('Geral');

        if rtipo.ItemIndex = 0 then
            frxVisualizar.Variables['tipo'] := QuotedStr('NFe')
        else if rtipo.ItemIndex = 1 then
            frxVisualizar.variables['tipo'] := QuotedStr('NFce')
        else
            frxVisualizar.variables['tipo'] := QuotedStr('Todas');

        if eFOrma.ItemIndex = 0 then
            frxVisualizar.Variables['forma'] := QuotedStr('Avista')
        else if eFOrma.ItemIndex = 1 then
            frxVisualizar.variables['forma'] := QuotedStr('Cheque')
        else if eFOrma.ItemIndex = 2 then
            frxVisualizar.variables['forma'] := QuotedStr('Cartão de Crédito')
        else if eFOrma.ItemIndex = 3 then
            frxVisualizar.variables['forma'] := QuotedStr('Cartão de Débito')
        else if eFOrma.ItemIndex = 4 then
            frxVisualizar.variables['forma'] := QuotedStr('Prazo')
        else
            frxVisualizar.variables['forma'] := QuotedStr('Todas');


        xDataRel        := FormatDateTime('yyyymmddhhmmsszzz', Now);
        unimainModule.NomePDF         := xDataRel + '.PDF';

        frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

        frxVisualizar.PrepareReport(True);

        frxPDF.ShowDialog:=false;
        frxVisualizar.Export(frxPDF);
    end
    else
    begin
         qVendaAgrupada.close;
         qVendaAgrupada.sql.Clear;
         qVendaAgrupada.sql.Add(' select nf.tipo_fatura, sum(nf.valor) from notas_formas nf   '+
          ' join notas_cab nc on (nc.id = nf.id and nc.serie = nc.serie         '+
          ' and nf.modelo = nc.modelo and nf.cod_emitente = nc.cod_emitente)    '+
          ' LEFT OUTER JOIN CLIENTES C ON (nc.idcliente = C.IDCLIENTE AND       '+
          ' NC.cod_emitente = C.IDEMITENTE)                                     '+
          ' where nf.cod_emitente = :e  and nf.emissao >= :vIni and nf.emissao <= :vFim   ');

          if cbFiltro.ItemIndex = 1 then
             qVendaAgrupada.sql.Add(' AND nc.STATUS_NOTA = ''V''  ');
          if cbFiltro.ItemIndex = 2 then
             qVendaAgrupada.sql.Add(' AND nc.STATUS_NOTA = ''A''  '); // Aceita
          if cbFiltro.ItemIndex = 3 then
             qVendaAgrupada.sql.Add(' AND nc.STATUS_NOTA = ''R''  '); // Rejeitada
          if cbFiltro.ItemIndex = 4 then
             qVendaAgrupada.sql.Add(' AND nc.STATUS_NOTA = ''C''  '); // Cancelada
          if cbFiltro.ItemIndex = 5 then
             qVendaAgrupada.sql.Add(' AND nc.STATUS_NOTA = ''P''  '); // Pendente
          if rEmissao.ItemIndex = 0 then
             qVendaAgrupada.sql.Add(' AND nc.TIPOEMISSAO = 1 ');
          if rEmissao.ItemIndex = 1 then
             qVendaAgrupada.sql.Add(' AND nc.TIPOEMISSAO = 2 ');
          if rTipo.ItemIndex = 0 then
             qVendaAgrupada.sql.Add(' AND nc.MODELO = 55 ');
          if rTipo.ItemIndex = 1 then
             qVendaAgrupada.sql.Add(' AND nc.MODELO = 65 ');
          if cVendedor.Checked = false then
            qVendaAgrupada.sql.Add(' AND NOTAS_CAB.vendedor = '+QuotedStr(eVendedor.KeyValue));

          if rGeral.Checked = false then
          begin
               if rFantasia.Checked = true then
                   qVendaAgrupada.sql.Add(' AND c.NOMEFANTASIA like :cliente ')
               else if rRazao.Checked = true then
                   qVendaAgrupada.sql.Add(' AND c.RAZAOSOCIAL like  :cliente ')
          end;

          qVendaAgrupada.sql.Add(' group by nf.tipo_fatura ');
          qVendaAgrupada.sql.Add(' ORDER BY nf.tipo_fatura ');

          qVendaAgrupada.ParamByName('e').asString  := UniMainModule.CodigoEmitente;
          qVendaAgrupada.ParamByName('vIni').AsDate := eInicio.DateTime;
          qVendaAgrupada.ParamByName('vFim').AsDate := eFinal.DateTime;

          if rGeral.Checked = false then
             qVendaAgrupada.ParamByName('cliente').asString := '%'+eCliente.Text+'%';

          qVendaAgrupada.Prepare;
          qVendaAgrupada.open;

        if rModelo.ItemIndex = 0 then
        begin
            frxAgrupado.Variables['Periodo'] := QuotedStr(eInicio.Text+' a '+eFinal.Text);

            if eCliente.Text <> '' then
                frxAgrupado.Variables['Cliente'] := QuotedStr(eCliente.Text)
            else
                frxAgrupado.variables['Cliente'] := QuotedStr('Geral');

            if rtipo.ItemIndex = 0 then
                frxAgrupado.Variables['tipo'] := QuotedStr('NFe')
            else if rtipo.ItemIndex = 1 then
                frxAgrupado.variables['tipo'] := QuotedStr('NFce')
            else
                frxAgrupado.variables['tipo'] := QuotedStr('Todas');

            if eForma.ItemIndex = 0 then
                frxAgrupado.Variables['forma'] := QuotedStr('Avista')
            else if eForma.ItemIndex = 1 then
                frxAgrupado.variables['forma'] := QuotedStr('Cheque')
            else if eForma.ItemIndex = 2 then
                frxAgrupado.variables['forma'] := QuotedStr('Cartão de Crédito')
            else if eForma.ItemIndex = 3 then
                frxAgrupado.variables['forma'] := QuotedStr('Cartão de Débito')
            else if eForma.ItemIndex = 4 then
                frxAgrupado.variables['forma'] := QuotedStr('Prazo')
            else
                frxAgrupado.variables['forma'] := QuotedStr('Todas');


            xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
            unimainModule.NomePDF  := xDataRel + '.PDF';

            frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

            frxAgrupado.PrepareReport(True);

            frxPDF.ShowDialog:=false;
            frxAgrupado.Export(frxPDF);
        end
        else
        begin
            Agrupado2.Variables['Periodo'] := QuotedStr(eInicio.Text+' a '+eFinal.Text);

            if eCliente.Text <> '' then
                Agrupado2.Variables['Cliente'] := QuotedStr(eCliente.Text)
            else
                Agrupado2.variables['Cliente'] := QuotedStr('Geral');

            if rtipo.ItemIndex = 0 then
                Agrupado2.Variables['tipo'] := QuotedStr('NFe')
            else if rtipo.ItemIndex = 1 then
                Agrupado2.variables['tipo'] := QuotedStr('NFce')
            else
                Agrupado2.variables['tipo'] := QuotedStr('Todas');

            if eFOrma.ItemIndex = 0 then
                Agrupado2.Variables['forma'] := QuotedStr('Avista')
            else if eFOrma.ItemIndex = 1 then
                Agrupado2.variables['forma'] := QuotedStr('Cheque')
            else if eFOrma.ItemIndex = 2 then
                Agrupado2.variables['forma'] := QuotedStr('Cartão de Crédito')
            else if eFOrma.ItemIndex = 3 then
                Agrupado2.variables['forma'] := QuotedStr('Cartão de Débito')
            else if eFOrma.ItemIndex = 4 then
                Agrupado2.variables['forma'] := QuotedStr('Prazo')
            else
                Agrupado2.variables['forma'] := QuotedStr('Todas');

            xDataRel               := FormatDateTime('yyyymmddhhmmsszzz', Now);
            unimainModule.NomePDF  := xDataRel + '.PDF';

            frxPDF.FileName := UniServerModule.LocalCachePath + xDataRel +'.PDF';

            Agrupado2.PrepareReport(True);

            frxPDF.ShowDialog:=false;
            Agrupado2.Export(frxPDF);
        end;
    end;

    fPDF.Caption          := unimainModule.NomePDF;
    fPDF.UniURLFrame1.URL := UniServerModule.LocalCacheURL + unimainModule.NomePDF;
    fPDF.Show();

end;

procedure TRelVendas.UniButton3Click(Sender: TObject);
begin
     close;
end;

procedure TRelVendas.UniFormShow(Sender: TObject);
begin
     eInicio.DateTime := Date;
     eFinal.DateTime  := date;

     with qVendedor do
     begin
          close;
          sql.Clear;
          sql.Add('select * from VENDEDORES where IDEMITENTE = :IDEMITENTE ');
          SQL.Add(' order By nome ');
          ParamByName('IDEMITENTE').Value := UniMainModule.CodigoEmitente.ToInteger;
          Open;
     end;
end;

end.
