unit apinfe.usecase.interfaces.impl.Pagamento;

interface

uses
  apinfe.usecase.interfaces;

type
  TPagamento = class(TInterfacedObject, iCommand)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand;
    function Execute: iCommand;
  end;

implementation

{ TDest }

constructor TPagamento.Create;
begin

end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

function TPagamento.Execute: iCommand;
begin
  Result := Self;
end;

class function TPagamento.New: iCommand;
begin
  Result := Self.Create;
end;

end.
