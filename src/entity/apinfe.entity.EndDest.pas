unit apinfe.entity.EndDest;

interface

type
 TEndDest = class
   private
    FLogradouro: String;
    FFone: String;
    FBairro: String;
    FCEP: Integer;
    FNumero: String;
    FComplemento: String;
    FCidade: String;
    FEstado: String;
    FPais: String;
   public
    property Fone: String read FFone write FFone;
    property CEP: Integer read FCEP write FCEP;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property Complemento: String read FComplemento write FComplemento;
    property Bairro: String read FBairro write FBairro;
    property Cidade: String read FCidade write FCidade;
    property Estado: String read FEstado write FEstado;
    property Pais: String read FPais write FPais;
 end;

implementation

end.
