// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.ProcessingConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.Processing$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :16 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :16 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :18 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :19 :20) // new Processing                      {                          Id = 1,                          Type = "Anti-flea and anti-ticks processing"                      } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :21 :29)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :22 :31) // "Anti-flea and anti-ticks processing" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :24 :20) // new Processing                      {                          Id = 2,                          Type = "Anti-worms processing"                      } (ObjectCreationExpression)
%6 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :26 :29)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :27 :31) // "Anti-worms processing" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ProcessingConfiguration.cs" :18 :12) // builder.HasData(                      new Processing                      {                          Id = 1,                          Type = "Anti-flea and anti-ticks processing"                      },                      new Processing                      {                          Id = 2,                          Type = "Anti-worms processing"                      }                  ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
