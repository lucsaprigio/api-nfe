unit apinfe.entity.nfe;

interface

uses
  apinfe.entity.Destinatario, apinfe.entity.Produto,
  ACBrNFe.entity.Total, ACBrNFe.entity.CobrancaFat,
  System.Generics.Collections, ACBrNFe.entity.CobrancaDuplicata,
  ACBrNFe.entity.pagamentos;
type
  // Onde vai ser exposta para a camada de controle.
  TNfe = class
    private
      FSerie : Integer;
      FNumero : String;
      FIndPa: String;
      FNatOp: String;
      FTipoEmis: String;
      FTipoNfe: String;
      FIndPag: String;
      FProduto: TObjectList<TProduto>;
      FCobrancaDuplicata: TObjectList<TCobrancaDuplicata>;
      FTotal: TTotal;
      FPagamento: TObjectList<TPagamento>;
      FDestinatario: TDestinatario;
      FCobrancaFat: TCobrancaFat;
    public
      constructor Create;
      destructor Destroy;
      property NatOp : String read FNatOp write FNatOp;
      property IndPag: String read FIndPag write FIndPag;
      property Serie : Integer read FSerie write FSerie;
      property TipoNfe : String read FTipoNfe write FTipoNfe;
      property TipoEmis : String read FTipoEmis write FTipoEmis;
      property Destrinatario: TDestinatario read FDestinatario write FDestinatario;
      property Produto: TObjectList<TProduto> read FProduto write FProduto;
      property Total : TTotal read FTotal write FTotal;
      property CobrancaFat : TCobrancaFat read FCobrancaFat write FCobrancaFat;
      property CobrancaDuplicata : TObjectList<TCobrancaDuplicata> read FCobrancaDuplicata write FCobrancaDuplicata;
      property Pagamento: TObjectList<TPagamento> read FPagamento write FPagamento;
  end;


implementation

{ TNfe }

constructor TNfe.Create;
begin

end;

destructor TNfe.Destroy;
begin

end;

end.
