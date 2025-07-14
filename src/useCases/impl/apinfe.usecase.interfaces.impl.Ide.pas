unit apinfe.usecase.interfaces.impl.Ide;

interface

uses
  apinfe.usecase.interfaces;

type
  TIde = class(TInterfacedObject, iCommand)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand;
    function Execute: iCommand;
  end;

implementation

{ TIde }

constructor TIde.Create;
begin

end;

destructor TIde.Destroy;
begin

  inherited;
end;

function TIde.Execute: iCommand;
begin
  Result := Self;
end;

class function TIde.New: iCommand;
begin
  Result := Self.Create;
end;

end.
