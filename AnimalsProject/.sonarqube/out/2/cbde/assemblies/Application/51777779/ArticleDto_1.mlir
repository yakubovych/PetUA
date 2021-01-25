// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Application.DTO.Article.ArticleDto.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Article\\ArticleDto.cs" :24 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Article\\ArticleDto.cs" :26 :19) // Not a variable of known type: Id
%1 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Article\\ArticleDto.cs" :26 :19) // Id.GetHashCode() (InvocationExpression)
return %1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Article\\ArticleDto.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
