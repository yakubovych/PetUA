func @_Application.Services.UriService.GetAllPostUri$string.Application.Queries.AnimalPaginationQuery.Application.Queries.AnimalQuery$(none, none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :8) {
^entry (%_specificUrl : none, %_pagination : none, %_query : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :33)
cbde.store %_specificUrl, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :33)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :53)
cbde.store %_pagination, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :53)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :87)
cbde.store %_query, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :15 :87)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :17 :31) // Not a variable of known type: _baseUri
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :18 :12) // Not a variable of known type: _baseUri
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :18 :24) // Not a variable of known type: specificUrl
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :18 :12) // Binary expression on unsupported types _baseUri += specificUrl
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :19 :30) // Not a variable of known type: _baseUri
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :19 :22) // new Uri(_baseUri) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :20 :30) // Not a variable of known type: _baseUri
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :21 :17) // string (PredefinedType)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :21 :43) // Not a variable of known type: query
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :21 :43) // query.Weight (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :21 :17) // string.IsNullOrWhiteSpace(query.Weight) (InvocationExpression)
%17 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :21 :16) // !string.IsNullOrWhiteSpace(query.Weight) (LogicalNotExpression)
cond_br %17, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :21 :16)

^1: // SimpleBlock
// Entity from another assembly: QueryHelpers
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :22 :58) // Not a variable of known type: modifiedUrl
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :22 :71) // "weight" (StringLiteralExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :22 :81) // Not a variable of known type: query
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :22 :81) // query.Weight (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :22 :30) // QueryHelpers.AddQueryString(modifiedUrl, "weight", query.Weight) (InvocationExpression)
br ^2

^2: // BinaryBranchBlock
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :23 :17) // string (PredefinedType)
%24 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :23 :43) // Not a variable of known type: query
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :23 :43) // query.IsNew (SimpleMemberAccessExpression)
%26 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :23 :17) // string.IsNullOrWhiteSpace(query.IsNew) (InvocationExpression)
%27 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :23 :16) // !string.IsNullOrWhiteSpace(query.IsNew) (LogicalNotExpression)
cond_br %27, ^3, ^4 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :23 :16)

^3: // SimpleBlock
// Entity from another assembly: QueryHelpers
%28 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :24 :58) // Not a variable of known type: modifiedUrl
%29 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :24 :71) // "isNew" (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :24 :80) // Not a variable of known type: query
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :24 :80) // query.IsNew (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :24 :30) // QueryHelpers.AddQueryString(modifiedUrl, "isNew", query.IsNew) (InvocationExpression)
br ^4

^4: // BinaryBranchBlock
%33 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :25 :17) // string (PredefinedType)
%34 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :25 :43) // Not a variable of known type: query
%35 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :25 :43) // query.IsDisabled (SimpleMemberAccessExpression)
%36 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :25 :17) // string.IsNullOrWhiteSpace(query.IsDisabled) (InvocationExpression)
%37 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :25 :16) // !string.IsNullOrWhiteSpace(query.IsDisabled) (LogicalNotExpression)
cond_br %37, ^5, ^6 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :25 :16)

^5: // SimpleBlock
// Entity from another assembly: QueryHelpers
%38 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :26 :58) // Not a variable of known type: modifiedUrl
%39 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :26 :71) // "isDisabled" (StringLiteralExpression)
%40 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :26 :85) // Not a variable of known type: query
%41 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :26 :85) // query.IsDisabled (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :26 :30) // QueryHelpers.AddQueryString(modifiedUrl, "isDisabled", query.IsDisabled) (InvocationExpression)
br ^6

^6: // BinaryBranchBlock
%43 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :27 :17) // string (PredefinedType)
%44 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :27 :43) // Not a variable of known type: query
%45 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :27 :43) // query.Gender (SimpleMemberAccessExpression)
%46 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :27 :17) // string.IsNullOrWhiteSpace(query.Gender) (InvocationExpression)
%47 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :27 :16) // !string.IsNullOrWhiteSpace(query.Gender) (LogicalNotExpression)
cond_br %47, ^7, ^8 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :27 :16)

^7: // SimpleBlock
// Entity from another assembly: QueryHelpers
%48 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :28 :58) // Not a variable of known type: modifiedUrl
%49 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :28 :71) // "gender" (StringLiteralExpression)
%50 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :28 :81) // Not a variable of known type: query
%51 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :28 :81) // query.Gender (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :28 :30) // QueryHelpers.AddQueryString(modifiedUrl, "gender", query.Gender) (InvocationExpression)
br ^8

^8: // BinaryBranchBlock
%53 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :29 :17) // string (PredefinedType)
%54 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :29 :43) // Not a variable of known type: query
%55 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :29 :43) // query.Category (SimpleMemberAccessExpression)
%56 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :29 :17) // string.IsNullOrWhiteSpace(query.Category) (InvocationExpression)
%57 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :29 :16) // !string.IsNullOrWhiteSpace(query.Category) (LogicalNotExpression)
cond_br %57, ^9, ^10 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :29 :16)

^9: // SimpleBlock
// Entity from another assembly: QueryHelpers
%58 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :30 :58) // Not a variable of known type: modifiedUrl
%59 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :30 :71) // "category" (StringLiteralExpression)
%60 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :30 :83) // Not a variable of known type: query
%61 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :30 :83) // query.Category (SimpleMemberAccessExpression)
%62 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :30 :30) // QueryHelpers.AddQueryString(modifiedUrl, "category", query.Category) (InvocationExpression)
br ^10

^10: // BinaryBranchBlock
%63 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :31 :17) // string (PredefinedType)
%64 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :31 :43) // Not a variable of known type: query
%65 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :31 :43) // query.DateOfBirth (SimpleMemberAccessExpression)
%66 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :31 :17) // string.IsNullOrWhiteSpace(query.DateOfBirth) (InvocationExpression)
%67 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :31 :16) // !string.IsNullOrWhiteSpace(query.DateOfBirth) (LogicalNotExpression)
cond_br %67, ^11, ^12 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :31 :16)

^11: // SimpleBlock
// Entity from another assembly: QueryHelpers
%68 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :32 :58) // Not a variable of known type: modifiedUrl
%69 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :32 :71) // "dateOfBirth" (StringLiteralExpression)
%70 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :32 :86) // Not a variable of known type: query
%71 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :32 :86) // query.DateOfBirth (SimpleMemberAccessExpression)
%72 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :32 :30) // QueryHelpers.AddQueryString(modifiedUrl, "dateOfBirth", query.DateOfBirth) (InvocationExpression)
br ^12

^12: // BinaryBranchBlock
%73 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :34 :16) // Not a variable of known type: pagination
%74 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :34 :30) // null (NullLiteralExpression)
%75 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :34 :16) // comparison of unknown type: pagination == null
cond_br %75, ^13, ^14 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :34 :16)

^13: // JumpBlock
%76 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :36 :23) // Not a variable of known type: uri
return %76 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :36 :16)

^14: // JumpBlock
// Entity from another assembly: QueryHelpers
%77 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :38 :54) // Not a variable of known type: modifiedUrl
%78 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :38 :67) // "pageNumber" (StringLiteralExpression)
%79 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :38 :81) // Not a variable of known type: pagination
%80 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :38 :81) // pagination.PageNumber (SimpleMemberAccessExpression)
%81 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :38 :81) // pagination.PageNumber.ToString() (InvocationExpression)
%82 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :38 :26) // QueryHelpers.AddQueryString(modifiedUrl, "pageNumber", pagination.PageNumber.ToString()) (InvocationExpression)
// Entity from another assembly: QueryHelpers
%83 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :39 :54) // Not a variable of known type: modifiedUrl
%84 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :39 :67) // "pageSize" (StringLiteralExpression)
%85 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :39 :79) // Not a variable of known type: pagination
%86 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :39 :79) // pagination.PageSize (SimpleMemberAccessExpression)
%87 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :39 :79) // pagination.PageSize.ToString() (InvocationExpression)
%88 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :39 :26) // QueryHelpers.AddQueryString(modifiedUrl, "pageSize", pagination.PageSize.ToString()) (InvocationExpression)
%89 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :41 :23) // Not a variable of known type: stringHelper
%90 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :43 :27) // Not a variable of known type: modifiedUrl
%91 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :43 :19) // new Uri(modifiedUrl) (ObjectCreationExpression)
return %91 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :43 :12)

^15: // ExitBlock
cbde.unreachable

}
func @_Application.Services.UriService.GetAllPostUri$string.Application.Queries.ArticlePaginationQuery.Application.Queries.ArticleQuery$(none, none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :8) {
^entry (%_specificUrl : none, %_pagination : none, %_query : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :33)
cbde.store %_specificUrl, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :33)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :53)
cbde.store %_pagination, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :53)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :88)
cbde.store %_query, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :46 :88)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :48 :31) // Not a variable of known type: _baseUri
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :49 :12) // Not a variable of known type: _baseUri
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :49 :24) // Not a variable of known type: specificUrl
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :49 :12) // Binary expression on unsupported types _baseUri += specificUrl
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :50 :30) // Not a variable of known type: _baseUri
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :50 :22) // new Uri(_baseUri) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :51 :30) // Not a variable of known type: _baseUri
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :52 :17) // string (PredefinedType)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :52 :43) // Not a variable of known type: query
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :52 :43) // query.TitleOrContent (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :52 :17) // string.IsNullOrWhiteSpace(query.TitleOrContent) (InvocationExpression)
%17 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :52 :16) // !string.IsNullOrWhiteSpace(query.TitleOrContent) (LogicalNotExpression)
cond_br %17, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :52 :16)

^1: // SimpleBlock
// Entity from another assembly: QueryHelpers
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :53 :58) // Not a variable of known type: modifiedUrl
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :53 :71) // "titleOrContent" (StringLiteralExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :53 :89) // Not a variable of known type: query
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :53 :89) // query.TitleOrContent (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :53 :30) // QueryHelpers.AddQueryString(modifiedUrl, "titleOrContent", query.TitleOrContent) (InvocationExpression)
br ^2

^2: // BinaryBranchBlock
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :54 :17) // string (PredefinedType)
%24 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :54 :43) // Not a variable of known type: query
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :54 :43) // query.Tag (SimpleMemberAccessExpression)
%26 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :54 :17) // string.IsNullOrWhiteSpace(query.Tag) (InvocationExpression)
%27 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :54 :16) // !string.IsNullOrWhiteSpace(query.Tag) (LogicalNotExpression)
cond_br %27, ^3, ^4 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :54 :16)

^3: // SimpleBlock
// Entity from another assembly: QueryHelpers
%28 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :55 :58) // Not a variable of known type: modifiedUrl
%29 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :55 :71) // "tag" (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :55 :78) // Not a variable of known type: query
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :55 :78) // query.Tag (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :55 :30) // QueryHelpers.AddQueryString(modifiedUrl, "tag", query.Tag) (InvocationExpression)
br ^4

^4: // BinaryBranchBlock
%33 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :57 :16) // Not a variable of known type: pagination
%34 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :57 :30) // null (NullLiteralExpression)
%35 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :57 :16) // comparison of unknown type: pagination == null
cond_br %35, ^5, ^6 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :57 :16)

^5: // JumpBlock
%36 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :59 :23) // Not a variable of known type: uri
return %36 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :59 :16)

^6: // JumpBlock
// Entity from another assembly: QueryHelpers
%37 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :61 :54) // Not a variable of known type: modifiedUrl
%38 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :61 :67) // "pageNumber" (StringLiteralExpression)
%39 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :61 :81) // Not a variable of known type: pagination
%40 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :61 :81) // pagination.PageNumber (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :61 :81) // pagination.PageNumber.ToString() (InvocationExpression)
%42 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :61 :26) // QueryHelpers.AddQueryString(modifiedUrl, "pageNumber", pagination.PageNumber.ToString()) (InvocationExpression)
// Entity from another assembly: QueryHelpers
%43 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :62 :54) // Not a variable of known type: modifiedUrl
%44 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :62 :67) // "pageSize" (StringLiteralExpression)
%45 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :62 :79) // Not a variable of known type: pagination
%46 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :62 :79) // pagination.PageSize (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :62 :79) // pagination.PageSize.ToString() (InvocationExpression)
%48 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :62 :26) // QueryHelpers.AddQueryString(modifiedUrl, "pageSize", pagination.PageSize.ToString()) (InvocationExpression)
%49 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :64 :23) // Not a variable of known type: stringHelper
%50 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :66 :27) // Not a variable of known type: modifiedUrl
%51 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :66 :19) // new Uri(modifiedUrl) (ObjectCreationExpression)
return %51 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :66 :12)

^7: // ExitBlock
cbde.unreachable

}
func @_Application.Services.UriService.GetPostUri$long$(none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :69 :8) {
^entry (%_animalId : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :69 :30)
cbde.store %_animalId, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :69 :30)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :71 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\UriService.cs" :71 :12)

^1: // ExitBlock
cbde.unreachable

}
