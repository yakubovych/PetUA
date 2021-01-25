// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.AttitudeToConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.AttitudeTo$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :16 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :16 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :18 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :19 :20) // new AttitudeTo                      {                          Id = 1,                          Name = "Childrens"                      } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :21 :29)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :22 :31) // "Childrens" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :24 :20) // new AttitudeTo                      {                          Id = 2,                          Name = "Cats"                      } (ObjectCreationExpression)
%6 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :26 :29)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :27 :31) // "Cats" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :29 :20) // new AttitudeTo                      {                          Id = 3,                          Name = "Dogs"                      } (ObjectCreationExpression)
%9 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :31 :29)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :32 :31) // "Dogs" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AttitudeToConfiguration.cs" :18 :12) // builder.HasData(                      new AttitudeTo                      {                          Id = 1,                          Name = "Childrens"                      },                      new AttitudeTo                      {                          Id = 2,                          Name = "Cats"                      },                      new AttitudeTo                      {                          Id = 3,                          Name = "Dogs"                      }                  ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
