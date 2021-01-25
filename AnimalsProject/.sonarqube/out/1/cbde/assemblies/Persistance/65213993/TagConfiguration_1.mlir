// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.TagConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.Tag$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :16 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :16 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :18 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :19 :16) // new Tag                  {                      Id = 1,                      Name = "Vaccination"                  } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :21 :25)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :22 :27) // "Vaccination" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :24 :16) // new Tag                  {                      Id = 2,                      Name = "Keepings"                  } (ObjectCreationExpression)
%6 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :26 :25)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :27 :27) // "Keepings" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :29 :16) // new Tag                  {                      Id = 3,                      Name = "Defects"                  } (ObjectCreationExpression)
%9 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :31 :25)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :32 :27) // "Defects" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :34 :16) // new Tag                  {                      Id = 4,                      Name = "Proccesing"                  } (ObjectCreationExpression)
%12 = constant 4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :36 :25)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :37 :27) // "Proccesing" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :39 :16) // new Tag                  {                      Id = 5,                      Name = "AnimalHealth"                  } (ObjectCreationExpression)
%15 = constant 5 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :41 :25)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :42 :27) // "AnimalHealth" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\TagConfiguration.cs" :18 :12) // builder.HasData(                  new Tag                  {                      Id = 1,                      Name = "Vaccination"                  },                  new Tag                  {                      Id = 2,                      Name = "Keepings"                  },                  new Tag                  {                      Id = 3,                      Name = "Defects"                  },                  new Tag                  {                      Id = 4,                      Name = "Proccesing"                  },                  new Tag                  {                      Id = 5,                      Name = "AnimalHealth"                  }                  ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
