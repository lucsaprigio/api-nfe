unit apinfe.entity.ProdImposto;

interface

uses
  ACBrNFe.entity.ImpostoICMSUFDest, ACBrNFe.entity.ImpostoII,
  ACBrNFe.entity.ImpostoPISST, ACBrNFe.entity.ImpostoICMS,
  ACBrNFe.entity.ImpostoPIS, ACBrNFe.entity.ImpostoCOFINS,
  ACBrNFe.entity.ImpostoCOFINSST;

type
  TProdImposto = class
    private
      FICMSUFDest: TImpostoICMSUFDest;
      FII: TImpostoII;
      FPISST: TImpostoPISST;
      FICMS: TImpostoICMS;
      FPIS: TImpostoPIS;
      FCOFINS: TImpostoCOFINS;
      FvTotTrib: Currency;
      FCOFINSST: TImpostoCOFINSST;
    public
      constructor Create;
      destructor Destroy;
      property vTotTrib: Currency read FvTotTrib write FvTotTrib;
      property ICMS: TImpostoICMS read FICMS write FICMS;
      property ICMSUFDest: TImpostoICMSUFDest read FICMSUFDest write FICMSUFDest;
      property II: TImpostoII read FII write FII;
      property PIS: TImpostoPIS read FPIS write FPIS;
      property PISST: TImpostoPISST read FPISST write FPISST;
      property COFINS: TImpostoCOFINS read FCOFINS write FCOFINS;
      property COFINSST: TImpostoCOFINSST read FCOFINSST write FCOFINSST;
  end;

implementation

{ TProdImposto }

constructor TProdImposto.Create;
begin

end;

destructor TProdImposto.Destroy;
begin

end;

end.
