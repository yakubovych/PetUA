// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.AnimalDefectsConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.AnimalDefects$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :26 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :26 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :26 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :28 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :29 :21) // new AnimalDefects                       {                           AnimalId = 13,                           DefectsId = 1                       } (ObjectCreationExpression)
%3 = constant 13 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :31 :36)
%4 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :32 :37)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :34 :21) // new AnimalDefects                       {                           AnimalId = 10,                           DefectsId = 2                       } (ObjectCreationExpression)
%6 = constant 10 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :36 :36)
%7 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :37 :37)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :39 :21) // new AnimalDefects                       {                           AnimalId = 8,                           DefectsId = 1                       } (ObjectCreationExpression)
%9 = constant 8 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :41 :36)
%10 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :42 :37)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :44 :21) // new AnimalDefects                       {                           AnimalId = 11,                           DefectsId = 4,                       } (ObjectCreationExpression)
%12 = constant 11 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :46 :36)
%13 = constant 4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :47 :37)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDefectsConfiguration.cs" :28 :12) // builder.HasData(                       new AnimalDefects                       {                           AnimalId = 13,                           DefectsId = 1                       },                       new AnimalDefects                       {                           AnimalId = 10,                           DefectsId = 2                       },                       new AnimalDefects                       {                           AnimalId = 8,                           DefectsId = 1                       },                       new AnimalDefects                       {                           AnimalId = 11,                           DefectsId = 4,                       }                   ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
