// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.AdoptOrderConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.AdoptOrder$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :16 :38)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :16 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :18 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :19 :19) // new AdoptOrder                     {                         Id = 1,                         AnimalId = 9,                         UserId = "1",                         Status = Domain.Enums.OrderStatus.Pending,                         UserMotivation = "i want to adopt this pet, because i am alone, and need friend"                     } (ObjectCreationExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :21 :28)
%4 = constant 9 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :22 :34)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :23 :32) // "1" (StringLiteralExpression)
// Entity from another assembly: Domain
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :24 :32) // Domain.Enums.OrderStatus (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :24 :32) // Domain.Enums.OrderStatus.Pending (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :25 :40) // "i want to adopt this pet, because i am alone, and need friend" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :27 :19) // new AdoptOrder                     {                         Id = 2,                         AnimalId = 3,                         UserId = "2",                         ClosingDate = DateTime.ParseExact("25/07/2019", "dd/MM/yyyy", null),                         EndingDate = DateTime.ParseExact("05/08/2019", "dd/MM/yyyy", null),                         UserMotivation = "i want to adopt this pet, because i have kebab cafe at the city center",                         AdminComment = "Declined because your cause is criminal",                         Status = Domain.Enums.OrderStatus.Approved                     } (ObjectCreationExpression)
%10 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :29 :28)
%11 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :30 :34)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :31 :32) // "2" (StringLiteralExpression)
// Entity from another assembly: DateTime
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :32 :57) // "25/07/2019" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :32 :71) // "dd/MM/yyyy" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :32 :85) // null (NullLiteralExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :32 :37) // DateTime.ParseExact("25/07/2019", "dd/MM/yyyy", null) (InvocationExpression)
// Entity from another assembly: DateTime
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :33 :56) // "05/08/2019" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :33 :70) // "dd/MM/yyyy" (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :33 :84) // null (NullLiteralExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :33 :36) // DateTime.ParseExact("05/08/2019", "dd/MM/yyyy", null) (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :34 :40) // "i want to adopt this pet, because i have kebab cafe at the city center" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :35 :38) // "Declined because your cause is criminal" (StringLiteralExpression)
// Entity from another assembly: Domain
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :36 :32) // Domain.Enums.OrderStatus (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :36 :32) // Domain.Enums.OrderStatus.Approved (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :38 :19) // new AdoptOrder                     {                         Id = 3,                         AnimalId = 10,                         UserId = "1",                         ClosingDate = DateTime.ParseExact("18/10/2019", "dd/MM/yyyy", null),                         UserMotivation = "i want to adopt this pet, because i love pets, and want to help them",                         Status = Domain.Enums.OrderStatus.Declined                     } (ObjectCreationExpression)
%26 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :40 :28)
%27 = constant 10 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :41 :34)
%28 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :42 :32) // "1" (StringLiteralExpression)
// Entity from another assembly: DateTime
%29 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :43 :57) // "18/10/2019" (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :43 :71) // "dd/MM/yyyy" (StringLiteralExpression)
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :43 :85) // null (NullLiteralExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :43 :37) // DateTime.ParseExact("18/10/2019", "dd/MM/yyyy", null) (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :44 :40) // "i want to adopt this pet, because i love pets, and want to help them" (StringLiteralExpression)
// Entity from another assembly: Domain
%34 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :45 :32) // Domain.Enums.OrderStatus (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :45 :32) // Domain.Enums.OrderStatus.Declined (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AdoptOrderConfiguration.cs" :18 :12) // builder.HasData(                     new AdoptOrder                     {                         Id = 1,                         AnimalId = 9,                         UserId = "1",                         Status = Domain.Enums.OrderStatus.Pending,                         UserMotivation = "i want to adopt this pet, because i am alone, and need friend"                     },                     new AdoptOrder                     {                         Id = 2,                         AnimalId = 3,                         UserId = "2",                         ClosingDate = DateTime.ParseExact("25/07/2019", "dd/MM/yyyy", null),                         EndingDate = DateTime.ParseExact("05/08/2019", "dd/MM/yyyy", null),                         UserMotivation = "i want to adopt this pet, because i have kebab cafe at the city center",                         AdminComment = "Declined because your cause is criminal",                         Status = Domain.Enums.OrderStatus.Approved                     },                     new AdoptOrder                     {                         Id = 3,                         AnimalId = 10,                         UserId = "1",                         ClosingDate = DateTime.ParseExact("18/10/2019", "dd/MM/yyyy", null),                         UserMotivation = "i want to adopt this pet, because i love pets, and want to help them",                         Status = Domain.Enums.OrderStatus.Declined                     }              ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
