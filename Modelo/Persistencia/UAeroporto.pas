unit UAeroporto;

interface

uses
    UEntidade
  , UCidade
  ;

type
  TAEROPORTO = class(TENTIDADE)
  public
    NOME            : String;
    TAMANHO_PISTA_KM: Double;
    CIDADE          : TCIDADE;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_AEROPORTO                  = 'AEROPORTO';
  FLD_AEROPORTO_NOME             = 'NOME';
  FLD_AEROPORTO_TAMANHO_PISTA_KM = 'TAMANHO_PISTA_KM';
  FLD_AEROPORTO_ID_CIDADE        = 'ID_CIDADE';

resourcestring
  STR_AEROPORTO = 'Aeroporto';

implementation

uses
    SysUtils
  , Dialogs
  ;

{ TAEROPORTO }

constructor TAEROPORTO.Create;
begin
  CIDADE := TCIDADE.Create;
end;

destructor TAEROPORTO.Destroy;
begin
  FreeAndNil(CIDADE);
  Inherited;
end;

end.
