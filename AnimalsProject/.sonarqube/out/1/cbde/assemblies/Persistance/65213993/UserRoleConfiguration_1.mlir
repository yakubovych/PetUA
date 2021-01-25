func @_Persistance.Data.ModelConfigurations.UserRoleConfiguration.Configure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Microsoft.AspNetCore.Identity.IdentityUserRole$string$$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :8 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :8 :30)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :8 :30)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :10 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :11 :16) // new IdentityUserRole<string>                  {                      UserId = "1",                      RoleId = "1"                  } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :13 :29) // "1" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :14 :29) // "1" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :16 :16) // new IdentityUserRole<string>                  {                      UserId = "2",                      RoleId = "2"                  } (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :18 :29) // "2" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :19 :29) // "2" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\UserRoleConfiguration.cs" :10 :12) // builder.HasData(                  new IdentityUserRole<string>                  {                      UserId = "1",                      RoleId = "1"                  },                  new IdentityUserRole<string>                  {                      UserId = "2",                      RoleId = "2"                  }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
