func @_Persistance.Data.ModelConfigurations.RoleConfiguration.Configure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Microsoft.AspNetCore.Identity.IdentityRole$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :8 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :8 :30)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :8 :30)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :10 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :11 :12) // new IdentityRole              {                  Id = "1",                  Name = "SuperAdmin",                  NormalizedName = "SUPERADMIN"              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :13 :21) // "1" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :14 :23) // "SuperAdmin" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :15 :33) // "SUPERADMIN" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :17 :12) // new IdentityRole              {                  Id = "2",                  Name = "Admin",                  NormalizedName = "ADMIN"              } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :19 :21) // "2" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :20 :23) // "Admin" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :21 :33) // "ADMIN" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :23 :12) // new IdentityRole              {                  Id = "3",                  Name = "Observer",                  NormalizedName = "OBSERVER"              } (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :25 :21) // "3" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :26 :23) // "Observer" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :27 :33) // "OBSERVER" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :29 :12) // new IdentityRole              {                  Id = "4",                  Name = "User",                  NormalizedName = "USER"              } (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :31 :21) // "4" (StringLiteralExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :32 :23) // "User" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :33 :33) // "USER" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\RoleConfiguration.cs" :10 :12) // builder.HasData(              new IdentityRole              {                  Id = "1",                  Name = "SuperAdmin",                  NormalizedName = "SUPERADMIN"              },              new IdentityRole              {                  Id = "2",                  Name = "Admin",                  NormalizedName = "ADMIN"              },              new IdentityRole              {                  Id = "3",                  Name = "Observer",                  NormalizedName = "OBSERVER"              },              new IdentityRole              {                  Id = "4",                  Name = "User",                  NormalizedName = "USER"              }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
