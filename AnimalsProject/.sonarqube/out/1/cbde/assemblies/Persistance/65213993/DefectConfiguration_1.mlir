// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.DefectConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.Defect$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :16 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :16 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :18 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :19 :20) // new Defect                      {                          Id = 1,                          Type = "Front pow disability"                      } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :21 :29)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :22 :31) // "Front pow disability" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :24 :20) // new Defect                      {                          Id = 2,                          Type = "Back pow disability"                      } (ObjectCreationExpression)
%6 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :26 :29)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :27 :31) // "Back pow disability" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :29 :20) // new Defect                      {                          Id = 3,                          Type = "Vision disability"                      } (ObjectCreationExpression)
%9 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :31 :29)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :32 :31) // "Vision disability" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :34 :20) // new Defect                      {                          Id = 4,                          Type = "Hearing disability"                      } (ObjectCreationExpression)
%12 = constant 4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :36 :29)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :37 :31) // "Hearing disability" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\DefectConfiguration.cs" :18 :12) // builder.HasData(                      new Defect                      {                          Id = 1,                          Type = "Front pow disability"                      },                      new Defect                      {                          Id = 2,                          Type = "Back pow disability"                      },                      new Defect                      {                          Id = 3,                          Type = "Vision disability"                      },                      new Defect                      {                          Id = 4,                          Type = "Hearing disability"                      }                  ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
