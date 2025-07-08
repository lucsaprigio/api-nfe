unit apinfe.controller.nfe;

interface

uses
  System.JSON,
  Horse,
  Horse.GBSwagger.controller,
  GBJSON.Interfaces,
  GBSwagger.JSON.Interfaces,
  GBSwagger.Path.Attributes,
  apinfe.entity.nfe;

type

  [SwaggerPath('nfe', 'NFe')]
  TControllerNFe = class(THorseGBSwagger)
  private
  public
    [SwagPOST('Emitir NFe')]
    [SwagParamBody('body', TNfe)]
    [SwagResponse(201, TNfe)]
    [SwagResponse(400)]
    procedure EmitirNFe;
  end;

implementation

{ TControllerNFe }

procedure TControllerNFe.EmitirNFe;
var
  lNFe, lResp: TNfe;
begin
  lNFe := TGBJSONDefault.Serializer<TNfe>.JsonStringToObject(FRequest.Body);
  try
    lResp := lNFe;
    FResponse.Send<TJSONObject>(TGBJSONDefault.Deserializer.ObjectToJsonObject
      (lResp)).Status(201);
  finally
    lNFe.DisposeOf;
  end;
end;

end.
