func @_Application.Validators.ParameterValidators.PhoneNumberValidator.Validate$$() -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :18 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Regex
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :20 :29) // Not a variable of known type: PhoneNumber
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :20 :42) // @"^([0-9]{10})$" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :20 :17) // Regex.Match(PhoneNumber, @"^([0-9]{10})$") (InvocationExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :20 :17) // Regex.Match(PhoneNumber, @"^([0-9]{10})$").Success (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :20 :16) // !Regex.Match(PhoneNumber, @"^([0-9]{10})$").Success (LogicalNotExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :20 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :21 :46) // ValidationStrings.InvalidPhoneNumber (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :21 :22) // new ValidationException(ValidationStrings.InvalidPhoneNumber) (ObjectCreationExpression)
cbde.throw %6 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ParameterValidators\\PhoneNumberValidator.cs" :21 :16)

^2: // ExitBlock
return

}
