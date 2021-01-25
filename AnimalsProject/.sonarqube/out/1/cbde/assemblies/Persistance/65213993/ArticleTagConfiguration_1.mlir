// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.ArticleTagConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.ArticleTag$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :26 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :26 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :26 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :28 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :29 :16) // new ArticleTag                  {                      ArticleId = 1,                      TagId = 1                  } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :31 :32)
%4 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :32 :28)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :34 :16) // new ArticleTag                  {                      ArticleId = 2,                      TagId = 3                  } (ObjectCreationExpression)
%6 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :36 :32)
%7 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :37 :28)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :39 :16) // new ArticleTag                  {                      ArticleId = 2,                      TagId = 5                  } (ObjectCreationExpression)
%9 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :41 :32)
%10 = constant 5 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :42 :28)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleTagConfiguration.cs" :28 :12) // builder.HasData(                  new ArticleTag                  {                      ArticleId = 1,                      TagId = 1                  },                  new ArticleTag                  {                      ArticleId = 2,                      TagId = 3                  },                  new ArticleTag                  {                      ArticleId = 2,                      TagId = 5                  }             ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
