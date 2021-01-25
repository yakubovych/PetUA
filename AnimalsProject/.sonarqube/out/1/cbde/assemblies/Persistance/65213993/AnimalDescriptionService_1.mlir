func @_Persistance.Data.ModelConfigurations.AnimalDescriptionConfiguration.Configure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.AnimalDescription$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :8 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :8 :30)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :8 :30)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DataSeedConfigure
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :10 :30) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :10 :12) // DataSeedConfigure(builder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Persistance.Data.ModelConfigurations.AnimalDescriptionConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.AnimalDescription$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :13 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :13 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :13 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :15 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :16 :20) // new AnimalDescription                      {                          Id = 1,                          AnimalId = 2,                          LanguageUa = "Привіт це песик",                          LanguageEn = "Hi its dog"                      } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :18 :29)
%4 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :19 :35)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :20 :37) // "Привіт це песик" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :21 :37) // "Hi its dog" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :23 :20) // new AnimalDescription                      {                          Id = 2,                          AnimalId =3,                          LanguageUa = "Привіт це котик",                          LanguageEn = "Hi its cat"                      } (ObjectCreationExpression)
%8 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :25 :29)
%9 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :26 :34)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :27 :37) // "Привіт це котик" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :28 :37) // "Hi its cat" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :30 :20) // new AnimalDescription                      {                          Id = 3,                          AnimalId = 4,                          LanguageUa = "Привіт це тваринка",                          LanguageEn = "Hi its pet"                      } (ObjectCreationExpression)
%13 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :32 :29)
%14 = constant 4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :33 :35)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :34 :37) // "Привіт це тваринка" (StringLiteralExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :35 :37) // "Hi its pet" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :37 :20) // new AnimalDescription                      {                          Id = 4,                          AnimalId = 5,                          LanguageUa = "Привіт це інша тваринка",                          LanguageEn = "Hi its another pet"                      } (ObjectCreationExpression)
%18 = constant 4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :39 :29)
%19 = constant 5 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :40 :35)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :41 :37) // "Привіт це інша тваринка" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :42 :37) // "Hi its another pet" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :44 :20) // new AnimalDescription                      {                          Id = 5,                          AnimalId = 6,                          LanguageUa = "Привіт це дружелюбна тваринка",                          LanguageEn = "Hi its friandly pet"                      } (ObjectCreationExpression)
%23 = constant 5 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :46 :29)
%24 = constant 6 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :47 :35)
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :48 :37) // "Привіт це дружелюбна тваринка" (StringLiteralExpression)
%26 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :49 :37) // "Hi its friandly pet" (StringLiteralExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :51 :20) // new AnimalDescription                      {                          Id = 6,                          AnimalId = 7,                          LanguageUa = "Привіт це мила тваринка",                          LanguageEn = "Hi its cute pet"                      } (ObjectCreationExpression)
%28 = constant 6 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :53 :29)
%29 = constant 7 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :54 :35)
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :55 :37) // "Привіт це мила тваринка" (StringLiteralExpression)
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :56 :37) // "Hi its cute pet" (StringLiteralExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalDescriptionService.cs" :15 :12) // builder.HasData(                      new AnimalDescription                      {                          Id = 1,                          AnimalId = 2,                          LanguageUa = "Привіт це песик",                          LanguageEn = "Hi its dog"                      },                      new AnimalDescription                      {                          Id = 2,                          AnimalId =3,                          LanguageUa = "Привіт це котик",                          LanguageEn = "Hi its cat"                      },                      new AnimalDescription                      {                          Id = 3,                          AnimalId = 4,                          LanguageUa = "Привіт це тваринка",                          LanguageEn = "Hi its pet"                      },                      new AnimalDescription                      {                          Id = 4,                          AnimalId = 5,                          LanguageUa = "Привіт це інша тваринка",                          LanguageEn = "Hi its another pet"                      },                      new AnimalDescription                      {                          Id = 5,                          AnimalId = 6,                          LanguageUa = "Привіт це дружелюбна тваринка",                          LanguageEn = "Hi its friandly pet"                      },                      new AnimalDescription                      {                          Id = 6,                          AnimalId = 7,                          LanguageUa = "Привіт це мила тваринка",                          LanguageEn = "Hi its cute pet"                      }                  ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
