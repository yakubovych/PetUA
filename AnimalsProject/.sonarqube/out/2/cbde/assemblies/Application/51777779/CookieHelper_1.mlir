func @_Application.Helpers.CookieHelper.CreateCookie$Microsoft.Extensions.Configuration.IConfiguration.Microsoft.AspNetCore.Http.HttpResponse.bool.Application.DTO.User.UserTokenDto$(none, none, i1, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :8) {
^entry (%_configuration : none, %_response : none, %_isPersistent : i1, %_userToken : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :40)
cbde.store %_configuration, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :40)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :70)
cbde.store %_response, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :70)
%2 = cbde.alloca i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :93)
cbde.store %_isPersistent, %2 : memref<i1> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :93)
%3 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :112)
cbde.store %_userToken, %3 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :10 :112)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CleanCookies
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :12 :25) // Not a variable of known type: configuration
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :12 :40) // Not a variable of known type: response
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :12 :12) // CleanCookies(configuration, response) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :13 :32) // new CookieOptions() { HttpOnly = true, Secure = false, IsEssential = true } (ObjectCreationExpression)
%8 = constant 1 : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :13 :65) // true
%9 = constant 0 : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :13 :80) // false
%10 = constant 1 : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :13 :101) // true
%12 = cbde.load %2 : memref<i1> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :14 :16)
cond_br %12, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :14 :16)

^1: // SimpleBlock
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :16) // Not a variable of known type: CookieOptions
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :16) // CookieOptions.MaxAge (SimpleMemberAccessExpression)
// Entity from another assembly: TimeSpan
// Entity from another assembly: Convert
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :74) // Not a variable of known type: configuration
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :88) // "CookieExpireDays" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :74) // configuration["CookieExpireDays"] (ElementAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :57) // Convert.ToDouble(configuration["CookieExpireDays"]) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :16 :39) // TimeSpan.FromDays(Convert.ToDouble(configuration["CookieExpireDays"])) (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :16) // Not a variable of known type: response
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :16) // response.Cookies (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :40) // Not a variable of known type: configuration
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :54) // "TokenCookieName" (StringLiteralExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :40) // configuration["TokenCookieName"] (ElementAccessExpression)
// Entity from another assembly: JsonConvert
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :102) // Not a variable of known type: userToken
%26 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :74) // JsonConvert.SerializeObject(userToken) (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :114) // Not a variable of known type: CookieOptions
%28 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :17 :16) // response.Cookies.Append(configuration["TokenCookieName"], JsonConvert.SerializeObject(userToken), CookieOptions) (InvocationExpression)
%29 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :16) // Not a variable of known type: response
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :16) // response.Cookies (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :40) // Not a variable of known type: configuration
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :54) // "IsPersistentCookieName" (StringLiteralExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :40) // configuration["IsPersistentCookieName"] (ElementAccessExpression)
%34 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :81) // "true" (StringLiteralExpression)
%35 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :18 :16) // response.Cookies.Append(configuration["IsPersistentCookieName"], "true") (InvocationExpression)
br ^3

^2: // SimpleBlock
%36 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :16) // Not a variable of known type: response
%37 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :16) // response.Cookies (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :40) // Not a variable of known type: configuration
%39 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :54) // "TokenCookieName" (StringLiteralExpression)
%40 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :40) // configuration["TokenCookieName"] (ElementAccessExpression)
// Entity from another assembly: JsonConvert
%41 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :102) // Not a variable of known type: userToken
%42 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :74) // JsonConvert.SerializeObject(userToken) (InvocationExpression)
%43 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :114) // Not a variable of known type: CookieOptions
%44 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :22 :16) // response.Cookies.Append(configuration["TokenCookieName"], JsonConvert.SerializeObject(userToken), CookieOptions) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_Application.Helpers.CookieHelper.RefreshCookie$Microsoft.Extensions.Configuration.IConfiguration.Microsoft.AspNetCore.Http.HttpRequest.Microsoft.AspNetCore.Http.HttpResponse.Application.DTO.User.UserTokenDto$(none, none, none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :8) {
^entry (%_configuration : none, %_request : none, %_response : none, %_userToken : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :41)
cbde.store %_configuration, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :41)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :71)
cbde.store %_request, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :71)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :92)
cbde.store %_response, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :92)
%3 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :115)
cbde.store %_userToken, %3 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :26 :115)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :31) // Not a variable of known type: request
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :31) // request.Cookies (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :59) // Not a variable of known type: configuration
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :73) // "IsPersistentCookieName" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :59) // configuration["IsPersistentCookieName"] (ElementAccessExpression)
%9 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :31) // request.Cookies.ContainsKey(configuration["IsPersistentCookieName"]) (InvocationExpression)
%10 = cbde.alloca i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :16) // isPersistent
cbde.store %9, %10 : memref<i1> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :28 :16)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateCookie
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :29 :25) // Not a variable of known type: configuration
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :29 :40) // Not a variable of known type: response
%13 = cbde.load %10 : memref<i1> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :29 :50)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :29 :64) // Not a variable of known type: userToken
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :29 :12) // CreateCookie(configuration, response, isPersistent, userToken) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Application.Helpers.CookieHelper.GetTokenValue$Microsoft.Extensions.Configuration.IConfiguration.Microsoft.AspNetCore.Http.HttpRequest$(none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :32 :8) {
^entry (%_configuration : none, %_request : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :32 :49)
cbde.store %_configuration, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :32 :49)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :32 :79)
cbde.store %_request, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :32 :79)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :34 :30) // Not a variable of known type: request
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :34 :30) // request.Cookies (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :34 :46) // Not a variable of known type: configuration
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :34 :60) // "TokenCookieName" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :34 :46) // configuration["TokenCookieName"] (ElementAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :34 :30) // request.Cookies[configuration["TokenCookieName"]] (ElementAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :35 :17) // string (PredefinedType)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :35 :38) // Not a variable of known type: cookieValue
%11 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :35 :17) // string.IsNullOrEmpty(cookieValue) (InvocationExpression)
%12 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :35 :16) // !string.IsNullOrEmpty(cookieValue) (LogicalNotExpression)
cond_br %12, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :35 :16)

^1: // JumpBlock
// Entity from another assembly: JsonConvert
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :37 :67) // Not a variable of known type: cookieValue
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :37 :23) // JsonConvert.DeserializeObject<UserTokenDto>(cookieValue) (InvocationExpression)
return %14 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :37 :16)

^2: // JumpBlock
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :39 :19) // null (NullLiteralExpression)
return %15 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :39 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Application.Helpers.CookieHelper.CleanCookies$Microsoft.Extensions.Configuration.IConfiguration.Microsoft.AspNetCore.Http.HttpResponse$(none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :42 :8) {
^entry (%_configuration : none, %_response : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :42 :40)
cbde.store %_configuration, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :42 :40)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :42 :70)
cbde.store %_response, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :42 :70)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :44 :12) // Not a variable of known type: response
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :44 :12) // response.Cookies (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :44 :36) // Not a variable of known type: configuration
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :44 :50) // "IsPersistentCookieName" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :44 :36) // configuration["IsPersistentCookieName"] (ElementAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :44 :12) // response.Cookies.Delete(configuration["IsPersistentCookieName"]) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :45 :12) // Not a variable of known type: response
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :45 :12) // response.Cookies (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :45 :36) // Not a variable of known type: configuration
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :45 :50) // "TokenCookieName" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :45 :36) // configuration["TokenCookieName"] (ElementAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :45 :12) // response.Cookies.Delete(configuration["TokenCookieName"]) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :46 :12) // Not a variable of known type: response
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :46 :12) // response.Cookies (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :46 :36) // Not a variable of known type: configuration
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :46 :50) // "IdentityCookieName" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :46 :36) // configuration["IdentityCookieName"] (ElementAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Helpers\\CookieHelper.cs" :46 :12) // response.Cookies.Delete(configuration["IdentityCookieName"]) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
