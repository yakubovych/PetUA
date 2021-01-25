func @_Application.Services.ArticleFilterService.AddAllFiltersQuery$Application.Queries.ArticleQuery.System.Linq.IQueryable$Domain.Models.Article$$(none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :10 :8) {
^entry (%_filter : none, %_queryable : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :10 :54)
cbde.store %_filter, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :10 :54)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :10 :75)
cbde.store %_queryable, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :10 :75)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddContentFilter
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :36) // Not a variable of known type: filter
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :36) // filter.TitleOrContent (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddTagFilter
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :72) // Not a variable of known type: filter
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :72) // filter.Tag (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :84) // Not a variable of known type: queryable
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :59) // AddTagFilter(filter.Tag, queryable) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :19) // AddContentFilter(filter.TitleOrContent, AddTagFilter(filter.Tag, queryable)) (InvocationExpression)
return %8 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\ArticleFilterService.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddContentFilter(none, none), it contains poisonous unsupported syntaxes

// Skipping function AddTagFilter(none, none), it contains poisonous unsupported syntaxes

