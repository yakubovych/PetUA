func @_Application.Services.AnimalFilterService.AddAllFiltersQuery$Application.Queries.AnimalQuery.System.Linq.IQueryable$Domain.Models.Animal$$(none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :18 :8) {
^entry (%_filter : none, %_queryable : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :18 :53)
cbde.store %_filter, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :18 :53)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :18 :73)
cbde.store %_queryable, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :18 :73)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddDisabledsFiltersQuery
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :20 :44) // Not a variable of known type: filter
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :20 :44) // filter.IsDisabled (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddIsNewFiltersQuery
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :21 :64) // Not a variable of known type: filter
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :21 :64) // filter.IsNew (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddCategoryFiltersQuery
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :22 :67) // Not a variable of known type: filter
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :22 :67) // filter.Category (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddGenderFiltersQuery
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :23 :65) // Not a variable of known type: filter
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :23 :65) // filter.Gender (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddDateOfBirthsFiltersQuery
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :24 :71) // Not a variable of known type: filter
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :24 :71) // filter.DateOfBirth (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddWeightFiltersQuery
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :25 :65) // Not a variable of known type: filter
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :25 :65) // filter.Weight (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :25 :80) // Not a variable of known type: queryable
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :25 :43) // AddWeightFiltersQuery(filter.Weight, queryable) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :24 :43) // AddDateOfBirthsFiltersQuery(filter.DateOfBirth,                                             AddWeightFiltersQuery(filter.Weight, queryable)) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :23 :43) // AddGenderFiltersQuery(filter.Gender,                                             AddDateOfBirthsFiltersQuery(filter.DateOfBirth,                                             AddWeightFiltersQuery(filter.Weight, queryable))) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :22 :43) // AddCategoryFiltersQuery(filter.Category,                                             AddGenderFiltersQuery(filter.Gender,                                             AddDateOfBirthsFiltersQuery(filter.DateOfBirth,                                             AddWeightFiltersQuery(filter.Weight, queryable)))) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :21 :43) // AddIsNewFiltersQuery(filter.IsNew,                                             AddCategoryFiltersQuery(filter.Category,                                             AddGenderFiltersQuery(filter.Gender,                                             AddDateOfBirthsFiltersQuery(filter.DateOfBirth,                                             AddWeightFiltersQuery(filter.Weight, queryable))))) (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :20 :19) // AddDisabledsFiltersQuery(filter.IsDisabled,                                             AddIsNewFiltersQuery(filter.IsNew,                                             AddCategoryFiltersQuery(filter.Category,                                             AddGenderFiltersQuery(filter.Gender,                                             AddDateOfBirthsFiltersQuery(filter.DateOfBirth,                                             AddWeightFiltersQuery(filter.Weight, queryable)))))) (InvocationExpression)
return %20 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalFilterService.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddWeightFiltersQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddDateOfBirthsFiltersQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddCategoryFiltersQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddDisabledsFiltersQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddGenderFiltersQuery(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddIsNewFiltersQuery(none, none), it contains poisonous unsupported syntaxes

