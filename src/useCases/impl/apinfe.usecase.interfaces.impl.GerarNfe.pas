unit apinfe.usecase.interfaces.impl.GerarNfe;

interface

uses
  apinfe.usecase.interfaces;

type
  TGerarNFe = class(TInterfacedObject, iCommand)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCommand;
    function Execute: iCommand;
  end;

implementation

{ TGerarNFe }

constructor TGerarNFe.Create;
begin

end;

destructor TGerarNFe.Destroy;
begin

  inherited;
end;

function TGerarNFe.Execute: iCommand;
begin
  Result := Self;
end;

class function TGerarNFe.New: iCommand;
begin
  Result := Self.Create;
end;

end.
