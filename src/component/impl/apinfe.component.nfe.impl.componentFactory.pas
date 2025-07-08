unit apinfe.component.nfe.impl.componentFactory;

interface

uses
  ACBrNFe,
  ACBrNFe.Classes,
  apinfe.component.nfe.interfaces,
  apinfe.component.nfe.impl.ACBrNFe;

type
  TComponentFactory = class(TInterfacedObject, iComponentFactory)
  private
    // Criamos as variáveis aqui no private, para ficar mais fácil de dar um create, ou reultiliza-las aqui dentro da classe
    FACBr : iComponent<TACBrNFe>;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iComponentFactory;
    function ACBr: iComponent<TACBrNFe>;
  end;

implementation

{ TComponentFactory }

function TComponentFactory.ACBr: iComponent<TACBrNFe>;
begin
    // No método publico, só retornamos ele.
    Result := FACBr;
end;

constructor TComponentFactory.Create;
begin
   // E aqui na criação, nós instanciamos
   FACBr := TComponentACBrNFe.New;
end;

destructor TComponentFactory.Destroy;
begin

  inherited;
end;

class function TComponentFactory.New: iComponentFactory;
begin

end;

end.
