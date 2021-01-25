func @_Api.Program.Main$string$$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :9 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :9 :32)
cbde.store %_args, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :9 :32)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :11 :32) // new ConfigurationBuilder() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :12 :29) // "appsettings.json" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :11 :32) // new ConfigurationBuilder()                  .AddJsonFile("appsettings.json") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :11 :32) // new ConfigurationBuilder()                  .AddJsonFile("appsettings.json")                  .Build() (InvocationExpression)
// Entity from another assembly: Log
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :12) // Log.Logger (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :25) // new LoggerConfiguration() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :25) // new LoggerConfiguration()                  .ReadFrom (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :16 :40) // Not a variable of known type: configuration
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :25) // new LoggerConfiguration()                  .ReadFrom.Configuration(configuration) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :25) // new LoggerConfiguration()                  .ReadFrom.Configuration(configuration)                  .WriteTo (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :17 :37) // "Logs/AnimalProject-{Date}.txt" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :17 :86) // "{Timestamp:G} [{Level}] {ActionName} {Message}{NewLine:1}{Exception:1}" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :25) // new LoggerConfiguration()                  .ReadFrom.Configuration(configuration)                  .WriteTo.RollingFile("Logs/AnimalProject-{Date}.txt", outputTemplate: "{Timestamp:G} [{Level}] {ActionName} {Message}{NewLine:1}{Exception:1}") (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :15 :25) // new LoggerConfiguration()                  .ReadFrom.Configuration(configuration)                  .WriteTo.RollingFile("Logs/AnimalProject-{Date}.txt", outputTemplate: "{Timestamp:G} [{Level}] {ActionName} {Message}{NewLine:1}{Exception:1}")                  .CreateLogger() (InvocationExpression)
// Entity from another assembly: Log
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :20 :28) // "App is starting up" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :20 :12) // Log.Information("App is starting up") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateHostBuilder
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :21 :30) // Not a variable of known type: args
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :21 :12) // CreateHostBuilder(args) (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :21 :12) // CreateHostBuilder(args).Build() (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Api\\Program.cs" :21 :12) // CreateHostBuilder(args).Build().Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
