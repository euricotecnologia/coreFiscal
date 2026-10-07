unit uTES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniDBComboBox, uniMultiItem,
  uniComboBox, uniDBLookupComboBox, uniRadioGroup, uniEdit, uniDBEdit, uniLabel,
  uniDBNavigator, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel;

type
  TfTES = class(TUniForm)
    UniPanel1: TUniPanel;
    btnInclui: TUniBitBtn;
    btnSalva: TUniBitBtn;
    btnCancela: TUniBitBtn;
    btnExcluir: TUniBitBtn;
    UniBitBtn5: TUniBitBtn;
    UniPanel2: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniPanel3: TUniPanel;
    UniLabel1: TUniLabel;
    DBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniRadioGroup1: TUniRadioGroup;
    UniRadioGroup2: TUniRadioGroup;
    UniRadioGroup3: TUniRadioGroup;
    UniRadioGroup4: TUniRadioGroup;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    cbST: TUniDBComboBox;
    UniLabel4: TUniLabel;
    cbCSOSN: TUniDBComboBox;
    UniLabel5: TUniLabel;
    cbCSTPIS: TUniDBComboBox;
    UniLabel6: TUniLabel;
    cbCOFINS: TUniDBComboBox;
    UniLabel7: TUniLabel;
    cbCSTIPI: TUniDBComboBox;
    UniLabel8: TUniLabel;
    dbEDIT3: TUniDBEdit;
    UniLabel9: TUniLabel;
    dbEdit10: TUniDBEdit;
    UniLabel10: TUniLabel;
    DBEdit11: TUniDBEdit;
    UniLabel11: TUniLabel;
    DBEdit7: TUniDBEdit;
    UniLabel12: TUniLabel;
    DBEdit9: TUniDBEdit;
    UniLabel13: TUniLabel;
    DBEdit1: TUniDBEdit;
    UniLabel14: TUniLabel;
    DBEdit5: TUniDBEdit;
    UniLabel15: TUniLabel;
    DBEdit4: TUniDBEdit;
    UniLabel16: TUniLabel;
    DBEdit6: TUniDBEdit;
    UniLabel17: TUniLabel;
    DBEdit8: TUniDBEdit;
    qCFOP: TFDQuery;
    qCFOPID: TIntegerField;
    qCFOPCFOP: TIntegerField;
    qCFOPNATUREZA: TStringField;
    qCFOPTIPO: TIntegerField;
    qCFOPOBS1: TStringField;
    qCFOPOBS2: TStringField;
    qTES: TFDQuery;
    dsCFOP: TDataSource;
    dsTes: TDataSource;
    qTESID: TIntegerField;
    qTESDESCRICAO: TStringField;
    qTESCFOP: TStringField;
    qTESALIQICMS: TCurrencyField;
    qTESREDBCICMS: TCurrencyField;
    qTESALIQICMSST: TCurrencyField;
    qTESREDBCICMSST: TCurrencyField;
    qTESMVAICMSST: TCurrencyField;
    qTESCSTIPI: TStringField;
    qTESALIQIPI: TCurrencyField;
    qTESCSTPIS: TStringField;
    qTESALIQPIS: TCurrencyField;
    qTESALIQPISST: TCurrencyField;
    qTESCSTCOFINS: TStringField;
    qTESALIQCOFINS: TCurrencyField;
    qTESALIQCOFINSST: TCurrencyField;
    qTESDESTACA_ICMS: TIntegerField;
    qTESDESTACA_IPI: TIntegerField;
    qTESDESTACA_PIS: TIntegerField;
    qTESDESTACA_COFINS: TIntegerField;
    qTESCST: TStringField;
    qTESCSOSN: TStringField;
    qTESIDEMITENTE: TIntegerField;
    eId: TUniDBEdit;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure UniBitBtn5Click(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fTES: TfTES;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fTES: TfTES;
begin
         Result := TfTES(UniMainModule.GetFormInstance(TfTES));
end;

procedure TfTES.btnCancelaClick(Sender: TObject);
begin
        qTES.Cancel;
        btnInclui.SetFocus;
end;

procedure TfTES.btnExcluirClick(Sender: TObject);
begin
      if qTES.IsEmpty then
         Abort;

      MessageDlg('Deseja excluir este Registro?', mtConfirmation, mbYesNo,
      procedure(Sender: TComponent; Res: Integer)
      begin
          case Res of
              mrYes :
              begin

               qTES.Delete;
               qTES.ApplyUpdates;
               qTES.CommitUpdates;

              end;
              mrNo  :
              begin

              end;
          end;
      end);

end;

procedure TfTES.btnIncluiClick(Sender: TObject);
begin
       qTES.Append;
       qTESAliqICMS.Value     := 0;
       qTESAliqICMSST.Value   := 0;
       qTESAliqIPI.Value      := 0;
       qTESAliqPIS.Value      := 0;
       qTESAliqPISST.Value    := 0;
       qTESAliqCOFINS.Value   := 0;
       qTESAliqCOFINSST.Value := 0;
       qTESMVAICMSST.Value    := 0;
       qTESREDBCICMS.Value    := 0;
       qTESREDBCICMSST.Value  := 0;
       qTESIDEMITENTE.Value   := StrToInt(UniMainModule.CodigoEmitente);
       DBEdit2.Setfocus;
end;

procedure TfTES.btnSalvaClick(Sender: TObject);
begin
        if qTes.State in [dsEdit,dsInsert] then
        begin
               if dbedit2.Text = '' then
               begin
                  Showmessage( 'Existem campos obrigatórios a serem preenchidos!');
                  dbedit2.SetFocus;
                  Abort;
               end;

               if (cbST.Text = '') and (UniMainModule.qEmitenteCRT.AsString = '3') then
               begin
                  Showmessage( 'É necessário informar a situação tributária do produto !');
                  cbST.SetFocus;
                  Abort;
               end;

               if (cbCSOSN.Text = '') and (UniMainModule.qEmitenteCRT.AsString <> '3') then
               begin
                  Showmessage( 'É necessário informar o CSOSN do produto!');
                  cbCSOSN.SetFocus;
                  Abort;
               end;

               if eid.Text = '' then
                  qTESID.Value := UniMainModule.GerarCodigo('GEN_TBTES_ID');

               qTES.Post;
               btnInclui.SetFocus;

               Showmessage( 'Registro Atualizado!');
        end;
end;

procedure TfTES.UniBitBtn5Click(Sender: TObject);
begin
       Close;
end;

procedure TfTES.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
      qTES.Close;
      qCFOP.Close;
end;

procedure TfTES.UniFormShow(Sender: TObject);
begin
      qcfop.Open();

      qtes.ParamByName('idemitente').Value := strToInt(UniMainModule.CodigoEmitente);//
      qTES.Open;
end;

end.
