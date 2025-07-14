unit apinfe.usecase.interfaces.impl.Duplicata;

interface

uses
  apinfe.usecase.interfaces;

type
  TDuplicata = class(TInterfacedObject, iCommand)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand;
    function Execute: iCommand;
  end;

implementation

{ TDuplicata }

constructor TDuplicata.Create;
begin

end;

destructor TDuplicata.Destroy;
begin

  inherited;
end;

function TDuplicata.Execute: iCommand;
begin
  Result := Self;
end;

class function TDuplicata.New: iCommand;
begin
  Result := Self.Create;
end;

end.
