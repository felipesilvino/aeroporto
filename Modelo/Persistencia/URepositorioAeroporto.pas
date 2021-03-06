unit URepositorioAeroporto;

interface

uses
    UCidade
  , UAeroporto
  , UEntidade
  , URepositorioDB
  , URepositorioCidade
  , SqlExpr
  ;

type
  TRepositorioAeroporto = class(TRepositorioDB<TAEROPORTO>)
  private
    FRepositorioCidade: TRepositorioCidade;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coAEROPORTO: TAEROPORTO); override;
    procedure AtribuiEntidadeParaDB(const coAEROPORTO: TAEROPORTO;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  ;

{ TRepositorioAeroporto }

constructor TRepositorioAeroporto.Create;
begin
  Inherited Create(TAEROPORTO, TBL_AEROPORTO, FLD_ENTIDADE_ID, STR_AEROPORTO);
  FRepositorioCidade := TRepositorioCidade.Create;
end;

destructor TRepositorioAeroporto.Destroy;
begin
  FreeAndNil(FRepositorioCidade);
  inherited;
end;

procedure TRepositorioAeroporto.AtribuiDBParaEntidade(
  const coAEROPORTO: TAEROPORTO);
begin
  inherited;
  with FSQLSelect do
  begin
    coAEROPORTO.NOME             := FieldByName(FLD_AEROPORTO_NOME).AsString;
    coAEROPORTO.TAMANHO_PISTA_KM := FieldByName(FLD_AEROPORTO_TAMANHO_PISTA_KM).AsFloat;
    coAEROPORTO.CIDADE           := TCIDADE(
      FRepositorioCidade.Retorna(FieldByName(FLD_AEROPORTO_ID_CIDADE).AsInteger));
  end;
end;

procedure TRepositorioAeroporto.AtribuiEntidadeParaDB(
  const coAEROPORTO: TAEROPORTO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_AEROPORTO_NOME).AsString            := coAEROPORTO.NOME;
    ParamByName(FLD_AEROPORTO_TAMANHO_PISTA_KM).AsFloat := coAEROPORTO.TAMANHO_PISTA_KM;
    ParamByName(FLD_AEROPORTO_ID_CIDADE).AsInteger      := coAEROPORTO.CIDADE.ID;
  end;
end;

end.
