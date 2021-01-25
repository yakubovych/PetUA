func @_Application.Validators.StringArgumentValidator.IsNullOrEmpty$string.string$(none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :7 :8) {
^entry (%_param : none, %_paramName : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :7 :41)
cbde.store %_param, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :7 :41)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :7 :55)
cbde.store %_paramName, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :7 :55)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :9 :16) // string (PredefinedType)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :9 :37) // Not a variable of known type: param
%4 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :9 :16) // string.IsNullOrEmpty(param) (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :9 :16)

^1: // JumpBlock
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :11 :48) // Not a variable of known type: paramName
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ExceptionStrings
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :11 :59) // ExceptionStrings.NullArgumentStringException (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :11 :22) // new ArgumentNullException(paramName, ExceptionStrings.NullArgumentStringException) (ObjectCreationExpression)
cbde.throw %7 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\StringArgumentValidator.cs" :11 :16)

^2: // ExitBlock
return

}
