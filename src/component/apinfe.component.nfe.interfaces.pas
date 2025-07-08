unit apinfe.component.nfe.interfaces;

interface

uses
  ACBrNFe.Classes,
  ACBrNFeNotasFiscais,
  pcnNFeR,
  System.Classes, ACBrNFe;

type
  iComponent<T> = interface
    function This: T;
    function AddNotaFiscal: NotaFiscal ;
    function NotaFiscal : NotaFiscal;
    function AddProduto: TDetCollectionItem;
    function Produto: TDetCollectionItem;
    function AddDuplicata : TDupCollectionItem;
    function Duplicata: TDupCollectionItem;
    function AddPagamento: TpagCollectionItem;
    function Pagamento : TpagCollectionItem;
  end;

  iAWSS3 = interface
    function Push(Value: String): String;
  end;

  // Centralizamos todas as interfaces em uma só.
  iComponentFactory = interface
     function ACBr : iComponent<TACBrNFe>;
  end;


implementation

end.
