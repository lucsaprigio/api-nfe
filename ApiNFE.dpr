program ApiNFE;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.cors,
  Horse.jhonson,
  Horse.GBSwagger,
  System.SysUtils,
  apinfe.entity.nfe in 'src\entity\apinfe.entity.nfe.pas',
  apinfe.controller.nfe in 'src\controller\apinfe.controller.nfe.pas',
  apinfe.component.nfe.interfaces in 'src\component\apinfe.component.nfe.interfaces.pas',
  apinfe.component.nfe.impl.ACBrNFe in 'src\component\impl\apinfe.component.nfe.impl.ACBrNFe.pas',
  apinfe.component.nfe.impl.componentFactory in 'src\component\impl\apinfe.component.nfe.impl.componentFactory.pas',
  apinfe.entity.Destinatario in 'src\entity\apinfe.entity.Destinatario.pas',
  apinfe.entity.EndDest in 'src\entity\apinfe.entity.EndDest.pas',
  apinfe.entity.Produto in 'src\entity\apinfe.entity.Produto.pas',
  apinfe.entity.ProdImposto in 'src\entity\apinfe.entity.ProdImposto.pas',
  ACBrNFe.entity.CobrancaDuplicata in 'src\entity\ACBrNFe.entity.CobrancaDuplicata.pas',
  ACBrNFe.entity.CobrancaFat in 'src\entity\ACBrNFe.entity.CobrancaFat.pas',
  ACBrNFe.entity.CombCIDE in 'src\entity\ACBrNFe.entity.CombCIDE.pas',
  ACBrNFe.entity.CombICMS in 'src\entity\ACBrNFe.entity.CombICMS.pas',
  ACBrNFe.entity.CombICMSCons in 'src\entity\ACBrNFe.entity.CombICMSCons.pas',
  ACBrNFe.entity.CombICMSInter in 'src\entity\ACBrNFe.entity.CombICMSInter.pas',
  ACBrNFe.entity.Combustivel in 'src\entity\ACBrNFe.entity.Combustivel.pas',
  ACBrNFe.entity.Compra in 'src\entity\ACBrNFe.entity.Compra.pas',
  ACBrNFe.entity.Destinatario in 'src\entity\ACBrNFe.entity.Destinatario.pas',
  ACBrNFe.entity.EndDest in 'src\entity\ACBrNFe.entity.EndDest.pas',
  ACBrNFe.entity.exporta in 'src\entity\ACBrNFe.entity.exporta.pas',
  ACBrNFe.entity.ImpostoCOFINS in 'src\entity\ACBrNFe.entity.ImpostoCOFINS.pas',
  ACBrNFe.entity.ImpostoCOFINSST in 'src\entity\ACBrNFe.entity.ImpostoCOFINSST.pas',
  ACBrNFe.entity.ImpostoICMS in 'src\entity\ACBrNFe.entity.ImpostoICMS.pas',
  ACBrNFe.entity.ImpostoICMSUFDest in 'src\entity\ACBrNFe.entity.ImpostoICMSUFDest.pas',
  ACBrNFe.entity.ImpostoII in 'src\entity\ACBrNFe.entity.ImpostoII.pas',
  ACBrNFe.entity.ImpostoPIS in 'src\entity\ACBrNFe.entity.ImpostoPIS.pas',
  ACBrNFe.entity.ImpostoPISST in 'src\entity\ACBrNFe.entity.ImpostoPISST.pas',
  ACBrNFe.entity.InfAdicionais in 'src\entity\ACBrNFe.entity.InfAdicionais.pas',
  ACBrNFe.entity.InfIntermed in 'src\entity\ACBrNFe.entity.InfIntermed.pas',
  ACBrNFe.entity.interfaces in 'src\entity\ACBrNFe.entity.interfaces.pas',
  ACBrNFe.entity.ObsComplementar in 'src\entity\ACBrNFe.entity.ObsComplementar.pas',
  ACBrNFe.entity.ObsFisco in 'src\entity\ACBrNFe.entity.ObsFisco.pas',
  ACBrNFe.entity.pagamentos in 'src\entity\ACBrNFe.entity.pagamentos.pas',
  ACBrNFe.entity.pedidos in 'src\entity\ACBrNFe.entity.pedidos.pas',
  ACBrNFe.entity.ProdImposto in 'src\entity\ACBrNFe.entity.ProdImposto.pas',
  ACBrNFe.entity.Produto in 'src\entity\ACBrNFe.entity.Produto.pas',
  ACBrNFe.entity.ResponseNFe in 'src\entity\ACBrNFe.entity.ResponseNFe.pas',
  ACBrNFe.entity.RetTrasnportadora in 'src\entity\ACBrNFe.entity.RetTrasnportadora.pas',
  ACBrNFe.entity.Total in 'src\entity\ACBrNFe.entity.Total.pas',
  ACBrNFe.entity.TotalICMS in 'src\entity\ACBrNFe.entity.TotalICMS.pas',
  ACBrNFe.entity.TotalRetTrib in 'src\entity\ACBrNFe.entity.TotalRetTrib.pas',
  ACBrNFe.entity.Transportadora in 'src\entity\ACBrNFe.entity.Transportadora.pas',
  ACBrNFe.entity.Veiculo in 'src\entity\ACBrNFe.entity.Veiculo.pas',
  ACBrNFe.entity.VolumeTransportadora in 'src\entity\ACBrNFe.entity.VolumeTransportadora.pas',
  apinfe.usecase.interfaces in 'src\useCases\apinfe.usecase.interfaces.pas',
  apinfe.usecase.interfaces.impl.Configuracao in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Configuracao.pas',
  apinfe.usecase.interfaces.impl.Invoker in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Invoker.pas',
  apinfe.usecase.interfaces.impl.Ide in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Ide.pas',
  apinfe.usecase.interfaces.impl.Emitente in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Emitente.pas',
  apinfe.usecase.interfaces.impl.Dest in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Dest.pas',
  apinfe.usecase.interfaces.impl.Produto in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Produto.pas',
  apinfe.usecase.interfaces.impl.Total in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Total.pas',
  apinfe.usecase.interfaces.impl.Fatura in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Fatura.pas',
  apinfe.usecase.interfaces.impl.Duplicata in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Duplicata.pas',
  apinfe.usecase.interfaces.impl.Pagamento in 'src\useCases\impl\apinfe.usecase.interfaces.impl.Pagamento.pas',
  apinfe.usecase.interfaces.impl.GerarNfe in 'src\useCases\impl\apinfe.usecase.interfaces.impl.GerarNfe.pas';

procedure IniciarHorse;
begin
  THorse.use(cors).use(HorseSwagger).use(jhonson);

  THorseGBSwaggerRegister.RegisterPath(TControllerNFe);

  System.Writeln('Servidor rodando na porta 8080');
  THorse.Listen(8080);
end;

procedure IniciarSwagger;
begin
  Swagger
  .Version('2.0')
  .AddProtocol(TGBSwaggerProtocol.gbHttp)
  .Config.Language('pt-BR')
  .&End
  .Info
   .Title('API NFE')
   .Description('Api Emissora de NF-e')
   .Contact
    .Name('Lucas Aprigio')
    .Email('lucas@hotmail.com')
   .&End
  .&End
.&End;
end;

begin
  IniciarSwagger;
  IniciarHorse;

end.
