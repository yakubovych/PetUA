// Skipping function Configure(none), it contains poisonous unsupported syntaxes

func @_Persistance.Data.ModelConfigurations.AnimalNeedsConfiguration.DataSeedConfigure$Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder$Domain.Models.AnimalNeeds$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :26 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :26 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :26 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :28 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :29 :18) // new AnimalNeeds                    {                        AnimalId = 2,                        NeedsId = 3                    } (ObjectCreationExpression)
%3 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :31 :33)
%4 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :32 :32)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :34 :18) // new AnimalNeeds                    {                        AnimalId = 2,                        NeedsId = 2                    } (ObjectCreationExpression)
%6 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :36 :33)
%7 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :37 :32)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :39 :18) // new AnimalNeeds                    {                        AnimalId = 3,                        NeedsId = 1                    } (ObjectCreationExpression)
%9 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :41 :33)
%10 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :42 :32)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :44 :18) // new AnimalNeeds                    {                        AnimalId = 7,                        NeedsId = 3                    } (ObjectCreationExpression)
%12 = constant 7 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :46 :33)
%13 = constant 3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :47 :32)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :49 :18) // new AnimalNeeds                    {                        AnimalId = 8,                        NeedsId = 2                    } (ObjectCreationExpression)
%15 = constant 8 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :51 :33)
%16 = constant 2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :52 :32)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :54 :18) // new AnimalNeeds                    {                        AnimalId = 14,                        NeedsId = 1                    } (ObjectCreationExpression)
%18 = constant 14 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :56 :33)
%19 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :57 :32)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\ModelConfigurations\\AnimalNeedsConfiguration.cs" :28 :12) // builder.HasData(                    new AnimalNeeds                    {                        AnimalId = 2,                        NeedsId = 3                    },                    new AnimalNeeds                    {                        AnimalId = 2,                        NeedsId = 2                    },                    new AnimalNeeds                    {                        AnimalId = 3,                        NeedsId = 1                    },                    new AnimalNeeds                    {                        AnimalId = 7,                        NeedsId = 3                    },                    new AnimalNeeds                    {                        AnimalId = 8,                        NeedsId = 2                    },                    new AnimalNeeds                    {                        AnimalId = 14,                        NeedsId = 1                    }                ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
