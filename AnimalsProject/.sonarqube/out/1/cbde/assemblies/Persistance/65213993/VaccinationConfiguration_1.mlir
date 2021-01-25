// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.VaccinationConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.Vaccination$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :17 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :17 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :17 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :19 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :20 :19) // new Vaccination                     {                         Id = 1,                         Type = "Common",                         Name = "Daramoon"                     } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :22 :28)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :23 :30) // "Common" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :24 :30) // "Daramoon" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :26 :19) // new Vaccination                     {                         Id = 2,                         Type = "Common",                         Name = "Vangard"                     } (ObjectCreationExpression)
%7 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :28 :28)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :29 :30) // "Common" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :30 :30) // "Vangard" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :32 :19) // new Vaccination                     {                         Id = 3,                         Type = "Common",                         Name = "Nobivak"                     } (ObjectCreationExpression)
%11 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :34 :28)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :35 :30) // "Common" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :36 :30) // "Nobivak" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :38 :19) // new Vaccination                     {                         Id = 4,                         Type = "Rabies vaccine",                         Name = "Rabisin"                     } (ObjectCreationExpression)
%15 = constant 4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :40 :28)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :41 :30) // "Rabies vaccine" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :42 :30) // "Rabisin" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :44 :19) // new Vaccination                     {                         Id = 5,                         Type = "Rabies vaccine",                         Name = "Rabistar"                     } (ObjectCreationExpression)
%19 = constant 5 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :46 :28)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :47 :30) // "Rabies vaccine" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :48 :30) // "Rabistar" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\VaccinationConfiguration.cs" :19 :12) // builder.HasData(                     new Vaccination                     {                         Id = 1,                         Type = "Common",                         Name = "Daramoon"                     },                     new Vaccination                     {                         Id = 2,                         Type = "Common",                         Name = "Vangard"                     },                     new Vaccination                     {                         Id = 3,                         Type = "Common",                         Name = "Nobivak"                     },                     new Vaccination                     {                         Id = 4,                         Type = "Rabies vaccine",                         Name = "Rabisin"                     },                     new Vaccination                     {                         Id = 5,                         Type = "Rabies vaccine",                         Name = "Rabistar"                     }             ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
