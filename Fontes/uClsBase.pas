unit uClsBase;

interface

uses
  FireDAC.Comp.Client, dialogs;

type
  TBase = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
  published
   function pegaseg(TableName, Field: String;conexao : tfdconnection) : integer;
   function GerarCodigo(gen: String; conexao : tfdconnection): integer;
   function pegasegLocal(TableName, Field: String;conexao : tfdconnection) : integer;

   function ultimoCampo(TableName, Field, emitente: String;conexao : tfdconnection) : integer;

   function RetornaStringTabela(CampoRetorno : string; tabela : string; Campochave : string; ValorChave : Variant) : string;
   function codigoUF(uf:string) : integer;
   procedure gavamsg(const id, serie, modelo, codemitente: integer; msg: string);

    { published declarations }
  end;


implementation

uses
  Data.DB, System.Math, MainModule, System.Classes, System.SysUtils;

{ TBase }


function TBase.codigoUF(uf: string): integer;
begin
     if uf =  'RO' then
        result := 11
     else if uf =  'AC' then
        result := 12
     else if uf =  'AM' then
        result := 13
     else if uf =  'RR' then
        result := 14
     else if uf =  'PA' then
        result := 15
     else if uf =  'AP' then
        result := 16
     else if uf =  'TO' then
        result := 17
     else if uf =  'MA' then
        result := 21
     else if uf =  'PI' then
        result := 22
     else if uf =  'CE' then
        result := 23
     else if uf =  'RN' then
        result := 24
     else if uf =  'PB' then
        result := 25
     else if uf =  'PE' then
        result := 26
     else if uf =  'AL' then
        result := 27
     else if uf =  'SE' then
        result := 28
     else if uf =  'BA' then
        result := 29
     else if uf =  'MG' then
        result := 31
     else if uf =  'ES' then
        result := 32
     else if uf =  'RJ' then
        result := 33
     else if uf =  'SP' then
        result := 35
     else if uf =  'PR' then
        result := 41
     else if uf =  'SC' then
        result := 42
     else if uf =  'RS' then
        result := 43
     else if uf =  'MS' then
        result := 50
     else if uf =  'MT' then
        result := 51
     else if uf =  'GO' then
        result := 52
     else if uf =  'DF' then
        result := 53
end;

procedure TBase.gavamsg(const id,serie,modelo,codemitente : integer ; msg : string);
var
  vdataset : TDataSet;
  lseqmsg : integer;
begin
  UniMainModule.Banco.ExecSQL('select max(SEQ_MSG) codigo from NOTAS_MSG where ID='+ id.ToString+' and SERIE='+SERIE.ToString+' and MODELO='+
             modelo.ToString+' and COD_EMITENTE='+codemitente.ToString,vdataset);
  if not vdataset.Eof then
  begin
    if vdataset.FieldByName('codigo').AsString <> '' then
      lseqmsg := vdataset.FieldByName('codigo').AsInteger + 1
    else
      lseqmsg := 1;
  end else
    lseqmsg := 1;
  UniMainModule.Banco.StartTransaction;
  UniMainModule.Banco.ExecSQL('insert into NOTAS_MSG (ID,SERIE,MODELO,COD_EMITENTE,SEQ_MSG,MENSAGEM) '+
       ' values (:ID, :SERIE, :MODELO, :COD_EMITENTE, :SEQ_MSG, :MENSAGEM)',[ID,SERIE,MODELO,CODEMITENTE,lseqmsg.ToString,QuotedStr(msg)]);
  UniMainModule.Banco.Commit;
end;


function TBase.GerarCodigo(gen: String; conexao: tfdconnection): integer;
var
  lmaxcodigo : integer;
begin
  lmaxcodigo := conexao.ExecSQLScalar('SELECT GEN_ID(' + gen + ', 1) AS CODIGO FROM RDB$DATABASE');
  result := lmaxcodigo;
end;

function TBase.pegaseg(TableName, Field: String; conexao: tfdconnection): integer;
var
  lmaxcodigo : integer;
begin
     lmaxcodigo := conexao.ExecSQLScalar('SELECT coalesce(max(cast('+Field+
     ' as integer)),0) AS ULTIMO FROM ' + TableName);
     result := IfThen(lmaxcodigo>0,lmaxcodigo+1,1);
end;

function TBase.pegasegLocal(TableName, Field: String; conexao: tfdconnection): integer;
var
  lmaxcodigo : integer;
begin
     lmaxcodigo := conexao.ExecSQLScalar('SELECT coalesce(max(cast('+Field+
     ' as integer)),0) AS ULTIMO FROM '+TableName+
     ' Where idEmitente = '+UniMainModule.CodigoEmitente);
     result := IfThen(lmaxcodigo>0,lmaxcodigo+1,1);
end;

function TBase.RetornaStringTabela(CampoRetorno, tabela, Campochave: string;
  ValorChave: Variant): string;
begin
     try
         with UniMainModule.qGeral do
         begin
               close;
               sql.Clear;
               sql.Add('SELECT ' + CampoRetorno + ' FROM ' + TABELA +
                       ' WHERE ' + CampoChave + ' = :cod');
               Parambyname('cod').Value := ValorChave;
               ExecSQL;
               result := fieldbyname(CampoRetorno).AsString;
               close;
         end;
     except
         Result := '';
     end;
end;



function TBase.ultimoCampo(TableName, Field, emitente: String;
  conexao: tfdconnection): integer;
var
  lmaxcodigo : integer;
begin
     lmaxcodigo := conexao.ExecSQLScalar('SELECT coalesce(max(cast('+Field+
     ' as integer)),0) AS ULTIMO FROM '+TableName+
     ' Where '+emitente+' = '+UniMainModule.CodigoEmitente);

     result := IfThen(lmaxcodigo > 0, lmaxcodigo + 1 , 1 );
end;

end.
