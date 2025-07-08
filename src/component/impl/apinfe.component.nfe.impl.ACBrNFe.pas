unit apinfe.component.nfe.impl.ACBrNFe;

interface

uses
  ACBrNFe,
  ACBrNFe.Classes,
  ACBrDFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass,
  ACBrBase,
  ACBrDFe,
  pcnNFeR,
  ACBrNFeNotasFiscais,
  apinfe.component.nfe.interfaces;

type
  TComponentACBrNFe = class(TInterfacedObject, iComponent<TACBrNFe>)
  private
    FACBrNFe: TACBrNFe;
    FAddNotaFiscal: NotaFiscal;
    FACBrNFeDANFeRL: TACBrNFeDANFeRL;
    FNotaFiscal: NotaFiscal;
    FAddProduto: TDetCollectionItem;
    FProduto: TDetCollectionItem;
    FAddDuplicata: TDupCollectionItem;
    FDuplicata: TDupCollectionItem;
    FAddPagamento: TpagCollectionItem;
    FPagamento: TpagCollectionItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iComponent<TACBrNFe>;
    function This: TACBrNFe;
    function AddNotaFiscal: NotaFiscal;
    function NotaFiscal: NotaFiscal;
    function AddProduto: TDetCollectionItem;
    function Produto: TDetCollectionItem;
    function AddDuplicata: TDupCollectionItem;
    function Duplicata: TDupCollectionItem;
    function AddPagamento: TpagCollectionItem;
    function Pagamento: TpagCollectionItem;
  end;

implementation

{ TComponentACBrNFe }

function TComponentACBrNFe.AddDuplicata: TDupCollectionItem;
begin
  FDuplicata := FNotaFiscal.nfe.Cobr.Dup.New;
  Result := FDuplicata;
end;

function TComponentACBrNFe.AddNotaFiscal: NotaFiscal;
begin
  FNotaFiscal := FACBrNFe.NotasFiscais.Add;
  Result := FNotaFiscal;
end;

function TComponentACBrNFe.AddPagamento: TpagCollectionItem;
begin
  FPagamento := FNotaFiscal.nfe.pag.New;
  Result := FPagamento;
end;

function TComponentACBrNFe.AddProduto: TDetCollectionItem;
begin
  FProduto := FNotaFiscal.nfe.Det.New;
  Result := FProduto;
end;

constructor TComponentACBrNFe.Create;
begin
  FACBrNFe := TACBrNFe.Create(nil);
  FACBrNFeDANFeRL := TACBrNFeDANFeRL.Create(nil);
  FACBrNFeDANFeRL.MostraPreview := False;
  FACBrNFeDANFeRL.MostraSetup := False;
  FACBrNFeDANFeRL.MostraStatus := False;

  FACBrNFe.DANFE := FACBrNFeDANFeRL;
  FACBrNFeDANFeRL.ACBrNFe := FACBrNFe;
end;

destructor TComponentACBrNFe.Destroy;
begin

  inherited;
end;

function TComponentACBrNFe.Duplicata: TDupCollectionItem;
begin
  Result := FDuplicata;
end;

class function TComponentACBrNFe.New: iComponent<TACBrNFe>;
begin
  Result := Self.Create;
end;

function TComponentACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TComponentACBrNFe.Pagamento: TpagCollectionItem;
begin
  Result := FPagamento;
end;

function TComponentACBrNFe.Produto: TDetCollectionItem;
begin
  Result := FProduto;
end;

function TComponentACBrNFe.This: TACBrNFe;
begin
  Result := FACBrNFe;
end;

end.
