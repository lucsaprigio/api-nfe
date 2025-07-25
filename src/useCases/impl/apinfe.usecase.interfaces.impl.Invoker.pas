unit apinfe.usecase.interfaces.impl.Invoker;

interface

uses
  apinfe.usecase.interfaces, System.Generics.Collections;

type
  TInvoker = class(TInterfacedObject, iInvoker)
  private
    FList: TList<iCommand>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iInvoker;
    function Add(Value: iCommand): iInvoker;
    function Execute: iInvoker;
  end;

implementation

{ TInvoker }

function TInvoker.Add(Value: iCommand): iInvoker;
begin
  FList.Add(Value);
  Result := Self;
end;

constructor TInvoker.Create;
begin
  FList := TList<iCommand>.Create;
end;

destructor TInvoker.Destroy;
begin
  FList.DisposeOf;
  inherited;
end;

function TInvoker.Execute: iInvoker;
var
  lCommand: iCommand;
begin
  Result := Self;
  for lCommand in FList do
    lCommand.Execute;
end;

class function TInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
