unit apinfe.usecase.interfaces.impl.Produto;

interface

uses
  apinfe.usecase.interfaces;

type
  TProduto = class(TInterfacedObject, iCommand)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand;
    function Execute: iCommand;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

function TProduto.Execute: iCommand;
begin
  Result := Self;
end;

class function TProduto.New: iCommand;
begin
  Result := Self.Create;
end;

end.
