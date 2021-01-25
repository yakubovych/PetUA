func @_Application.Validators.ParameterValidators.PasswordValidator.Validate$$() -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :27 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidateLength
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :29 :12) // ValidateLength() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IncludesArabicNumeral
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :30 :12) // IncludesArabicNumeral() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IncludesLatinLetter
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :31 :12) // IncludesLatinLetter() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IncludesLowerCase
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :32 :12) // IncludesLowerCase() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IncludesUpperCase
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :33 :12) // IncludesUpperCase() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IncludesNonAlphanumeric
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :34 :12) // IncludesNonAlphanumeric() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Match
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :35 :12) // Match() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Application.Validators.ParameterValidators.PasswordValidator.ValidateLength$$() -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :38 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :40 :16) // Not a variable of known type: Password
%1 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :40 :16) // Password.Length (SimpleMemberAccessExpression)
%2 = constant 8 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :40 :34)
%3 = cmpi "slt", %1, %2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :40 :16)
cond_br %3, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :40 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :41 :46) // ValidationStrings.PasswordLength (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :41 :22) // new ValidationException(ValidationStrings.PasswordLength) (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :41 :16)

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :42 :16) // Not a variable of known type: Password
%7 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :42 :16) // Password.Length (SimpleMemberAccessExpression)
%8 = constant 100 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :42 :34)
%9 = cmpi "sgt", %7, %8 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :42 :16)
cond_br %9, ^3, ^4 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :42 :16)

^3: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :43 :46) // ValidationStrings.PasswordLengthExceed (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :43 :22) // new ValidationException(ValidationStrings.PasswordLengthExceed) (ObjectCreationExpression)
cbde.throw %11 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :43 :16)

^4: // ExitBlock
return

}
// Skipping function IncludesLatinLetter(), it contains poisonous unsupported syntaxes

// Skipping function IncludesArabicNumeral(), it contains poisonous unsupported syntaxes

// Skipping function IncludesUpperCase(), it contains poisonous unsupported syntaxes

// Skipping function IncludesLowerCase(), it contains poisonous unsupported syntaxes

// Skipping function IncludesNonAlphanumeric(), it contains poisonous unsupported syntaxes

func @_Application.Validators.ParameterValidators.PasswordValidator.Match$$() -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :78 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :80 :17) // Not a variable of known type: Password
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :80 :33) // Not a variable of known type: ConfirmPassword
%2 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :80 :17) // Password.Equals(ConfirmPassword) (InvocationExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :80 :16) // !Password.Equals(ConfirmPassword) (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :80 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :81 :50) // ValidationStrings.PasswordsDoNotMatch (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :81 :26) // new ValidationException(ValidationStrings.PasswordsDoNotMatch) (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PasswordValidator.cs" :81 :20)

^2: // ExitBlock
return

}
