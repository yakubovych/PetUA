func @_Persistance.Data.AnimalContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :45 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :45 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :45 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :47 :17) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :47 :17) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :47 :16) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :47 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :49 :39) // "Server=(localdb)\\MSSQLLocalDB; Database=AnimalDb; Integrated Security=True;" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :51 :16) // Not a variable of known type: optionsBuilder
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :51 :44) // Not a variable of known type: connectionString
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :51 :16) // optionsBuilder.UseSqlServer(connectionString) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function SaveChangesAsync(none), it contains poisonous unsupported syntaxes

// Skipping function SaveChanges(), it contains poisonous unsupported syntaxes

func @_Persistance.Data.AnimalContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :94 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :94 :48)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :94 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :96 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :96 :33) // Not a variable of known type: modelBuilder
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :96 :12) // base.OnModelCreating(modelBuilder) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :98 :12) // Not a variable of known type: modelBuilder
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :98 :44) // new UserConfiguration() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :98 :12) // modelBuilder.ApplyConfiguration(new UserConfiguration()) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :99 :12) // Not a variable of known type: modelBuilder
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :99 :44) // new RoleConfiguration() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :99 :12) // modelBuilder.ApplyConfiguration(new RoleConfiguration()) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :100 :12) // Not a variable of known type: modelBuilder
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :100 :44) // new UserRoleConfiguration() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :100 :12) // modelBuilder.ApplyConfiguration(new UserRoleConfiguration()) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :101 :12) // Not a variable of known type: modelBuilder
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :101 :44) // new AddressConfiguration() (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :101 :12) // modelBuilder.ApplyConfiguration(new AddressConfiguration()) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :102 :12) // Not a variable of known type: modelBuilder
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :102 :44) // new CategoryConfiguration() (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :102 :12) // modelBuilder.ApplyConfiguration(new CategoryConfiguration()) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :103 :12) // Not a variable of known type: modelBuilder
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :103 :44) // new FoodConfiguration() (ObjectCreationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :103 :12) // modelBuilder.ApplyConfiguration(new FoodConfiguration()) (InvocationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :104 :12) // Not a variable of known type: modelBuilder
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :104 :44) // new AnimalDescriptionConfiguration() (ObjectCreationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :104 :12) // modelBuilder.ApplyConfiguration(new AnimalDescriptionConfiguration()) (InvocationExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :105 :12) // Not a variable of known type: modelBuilder
%26 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :105 :44) // new BreedConfiguration() (ObjectCreationExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :105 :12) // modelBuilder.ApplyConfiguration(new BreedConfiguration()) (InvocationExpression)
%28 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :106 :12) // Not a variable of known type: modelBuilder
%29 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :106 :44) // new AnimalConfiguration() (ObjectCreationExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :106 :12) // modelBuilder.ApplyConfiguration(new AnimalConfiguration()) (InvocationExpression)
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :107 :12) // Not a variable of known type: modelBuilder
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :107 :44) // new VaccinationConfiguration() (ObjectCreationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :107 :12) // modelBuilder.ApplyConfiguration(new VaccinationConfiguration()) (InvocationExpression)
%34 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :108 :12) // Not a variable of known type: modelBuilder
%35 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :108 :44) // new ProcessingConfiguration() (ObjectCreationExpression)
%36 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :108 :12) // modelBuilder.ApplyConfiguration(new ProcessingConfiguration()) (InvocationExpression)
%37 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :109 :12) // Not a variable of known type: modelBuilder
%38 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :109 :44) // new DefectConfiguration() (ObjectCreationExpression)
%39 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :109 :12) // modelBuilder.ApplyConfiguration(new DefectConfiguration()) (InvocationExpression)
%40 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :110 :12) // Not a variable of known type: modelBuilder
%41 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :110 :44) // new AttitudeToConfiguration() (ObjectCreationExpression)
%42 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :110 :12) // modelBuilder.ApplyConfiguration(new AttitudeToConfiguration()) (InvocationExpression)
%43 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :111 :12) // Not a variable of known type: modelBuilder
%44 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :111 :44) // new NeedsConfiguration() (ObjectCreationExpression)
%45 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :111 :12) // modelBuilder.ApplyConfiguration(new NeedsConfiguration()) (InvocationExpression)
%46 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :112 :12) // Not a variable of known type: modelBuilder
%47 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :112 :44) // new KeepingConfiguration() (ObjectCreationExpression)
%48 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :112 :12) // modelBuilder.ApplyConfiguration(new KeepingConfiguration()) (InvocationExpression)
%49 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :113 :12) // Not a variable of known type: modelBuilder
%50 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :113 :44) // new AnimalAttitudeToConfiguration() (ObjectCreationExpression)
%51 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :113 :12) // modelBuilder.ApplyConfiguration(new AnimalAttitudeToConfiguration()) (InvocationExpression)
%52 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :114 :12) // Not a variable of known type: modelBuilder
%53 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :114 :44) // new AnimalDefectsConfiguration() (ObjectCreationExpression)
%54 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :114 :12) // modelBuilder.ApplyConfiguration(new AnimalDefectsConfiguration()) (InvocationExpression)
%55 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :115 :12) // Not a variable of known type: modelBuilder
%56 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :115 :44) // new AnimalKeepingConfiguration() (ObjectCreationExpression)
%57 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :115 :12) // modelBuilder.ApplyConfiguration(new AnimalKeepingConfiguration()) (InvocationExpression)
%58 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :116 :12) // Not a variable of known type: modelBuilder
%59 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :116 :44) // new AnimalNeedsConfiguration() (ObjectCreationExpression)
%60 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :116 :12) // modelBuilder.ApplyConfiguration(new AnimalNeedsConfiguration()) (InvocationExpression)
%61 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :117 :12) // Not a variable of known type: modelBuilder
%62 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :117 :44) // new ArticleConfiguration() (ObjectCreationExpression)
%63 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :117 :12) // modelBuilder.ApplyConfiguration(new ArticleConfiguration()) (InvocationExpression)
%64 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :118 :12) // Not a variable of known type: modelBuilder
%65 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :118 :44) // new TagConfiguration() (ObjectCreationExpression)
%66 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :118 :12) // modelBuilder.ApplyConfiguration(new TagConfiguration()) (InvocationExpression)
%67 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :119 :12) // Not a variable of known type: modelBuilder
%68 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :119 :44) // new ArticleImageConfiguration() (ObjectCreationExpression)
%69 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :119 :12) // modelBuilder.ApplyConfiguration(new ArticleImageConfiguration()) (InvocationExpression)
%70 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :120 :12) // Not a variable of known type: modelBuilder
%71 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :120 :44) // new ArticleTagConfiguration() (ObjectCreationExpression)
%72 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :120 :12) // modelBuilder.ApplyConfiguration(new ArticleTagConfiguration()) (InvocationExpression)
%73 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :121 :12) // Not a variable of known type: modelBuilder
%74 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :121 :44) // new AnimalVaccinationConfiguration() (ObjectCreationExpression)
%75 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :121 :12) // modelBuilder.ApplyConfiguration(new AnimalVaccinationConfiguration()) (InvocationExpression)
%76 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :122 :12) // Not a variable of known type: modelBuilder
%77 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :122 :44) // new AnimalProcessingConfiguration() (ObjectCreationExpression)
%78 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :122 :12) // modelBuilder.ApplyConfiguration(new AnimalProcessingConfiguration()) (InvocationExpression)
%79 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :123 :12) // Not a variable of known type: modelBuilder
%80 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :123 :44) // new AdoptOrderConfiguration() (ObjectCreationExpression)
%81 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :123 :12) // modelBuilder.ApplyConfiguration(new AdoptOrderConfiguration()) (InvocationExpression)
%82 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :124 :12) // Not a variable of known type: modelBuilder
%83 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :124 :44) // new BookOrderConfiguration() (ObjectCreationExpression)
%84 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :124 :12) // modelBuilder.ApplyConfiguration(new BookOrderConfiguration()) (InvocationExpression)
%85 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :125 :12) // Not a variable of known type: modelBuilder
%86 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :125 :44) // new ImagesConfiguration() (ObjectCreationExpression)
%87 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :125 :12) // modelBuilder.ApplyConfiguration(new ImagesConfiguration()) (InvocationExpression)
%88 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :126 :12) // Not a variable of known type: modelBuilder
%89 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :126 :44) // new HelpConfiguration() (ObjectCreationExpression)
%90 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :126 :12) // modelBuilder.ApplyConfiguration(new HelpConfiguration()) (InvocationExpression)
%91 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :127 :12) // Not a variable of known type: modelBuilder
%92 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :127 :44) // new UserHelpConfiguration() (ObjectCreationExpression)
%93 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :127 :12) // modelBuilder.ApplyConfiguration(new UserHelpConfiguration()) (InvocationExpression)
%94 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :128 :12) // Not a variable of known type: modelBuilder
%95 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :128 :44) // new AnimalVideoConfiguration() (ObjectCreationExpression)
%96 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :128 :12) // modelBuilder.ApplyConfiguration(new AnimalVideoConfiguration()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateRelations
%97 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :130 :28) // Not a variable of known type: modelBuilder
%98 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Data\\AnimalContext.cs" :130 :12) // CreateRelations(modelBuilder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function CreateRelations(none), it contains poisonous unsupported syntaxes

