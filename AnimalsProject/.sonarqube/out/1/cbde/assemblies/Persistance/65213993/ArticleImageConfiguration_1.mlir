// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.ArticleImageConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.ArticleImage$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :15 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :15 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :15 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :17 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :18 :20) // new ArticleImage                      {                          Id = 1,                          ArticleId = 1,                          ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg",                          FileName = "vivcharka"                      } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :20 :29)
%4 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :21 :36)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :22 :36) // "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :23 :35) // "vivcharka" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :25 :20) // new ArticleImage                      {                          Id = 2,                          ArticleId = 1,                          ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg",                          FileName = "vivcharkaTwo"                      } (ObjectCreationExpression)
%8 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :27 :29)
%9 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :28 :36)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :29 :36) // "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :30 :35) // "vivcharkaTwo" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :32 :20) // new ArticleImage                      {                          Id = 3,                          ArticleId = 2,                          ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg",                          FileName = "labradorThree"                      } (ObjectCreationExpression)
%13 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :34 :29)
%14 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :35 :36)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :36 :36) // "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg" (StringLiteralExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :37 :35) // "labradorThree" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\ArticleImageConfiguration.cs" :17 :12) // builder.HasData(                      new ArticleImage                      {                          Id = 1,                          ArticleId = 1,                          ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg",                          FileName = "vivcharka"                      },                      new ArticleImage                      {                          Id = 2,                          ArticleId = 1,                          ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg",                          FileName = "vivcharkaTwo"                      },                      new ArticleImage                      {                          Id = 3,                          ArticleId = 2,                          ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg",                          FileName = "labradorThree"                      }                  ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
