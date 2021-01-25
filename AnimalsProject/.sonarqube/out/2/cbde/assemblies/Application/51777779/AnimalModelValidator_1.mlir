func @_Application.Validators.ModelValidators.AnimalModelValidator.ValidateModel$$() -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :29 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :31 :12) // Not a variable of known type: StringValidator
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :31 :12) // StringValidator.Validate() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :33 :16) // Not a variable of known type: Model
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :33 :16) // Model.AddressId (SimpleMemberAccessExpression)
%4 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :33 :34)
%5 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :33 :16) // comparison of unknown type: Model.AddressId < MIN_ID
cond_br %5, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :33 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :34 :46) // ValidationStrings.InvalidAddressId (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :34 :22) // new ValidationException(ValidationStrings.InvalidAddressId) (ObjectCreationExpression)
cbde.throw %7 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :34 :16)

^2: // BinaryBranchBlock
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :35 :16) // Not a variable of known type: Model
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :35 :16) // Model.CategoryId (SimpleMemberAccessExpression)
%10 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :35 :35)
%11 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :35 :16) // comparison of unknown type: Model.CategoryId < MIN_ID
cond_br %11, ^3, ^4 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :35 :16)

^3: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :36 :46) // ValidationStrings.InvalidAddressId (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :36 :22) // new ValidationException(ValidationStrings.InvalidAddressId) (ObjectCreationExpression)
cbde.throw %13 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :36 :16)

^4: // BinaryBranchBlock
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :37 :16) // Not a variable of known type: Model
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :37 :16) // Model.DateOfBirth (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :37 :37) // DateTime.Now (SimpleMemberAccessExpression)
%17 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :37 :16) // comparison of unknown type: Model.DateOfBirth >= DateTime.Now
cond_br %17, ^5, ^6 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :37 :16)

^5: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :38 :46) // ValidationStrings.InvalidDateOfBirth (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :38 :22) // new ValidationException(ValidationStrings.InvalidDateOfBirth) (ObjectCreationExpression)
cbde.throw %19 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :38 :16)

^6: // BinaryBranchBlock
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :39 :16) // Not a variable of known type: Model
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :39 :16) // Model.FoundDate (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :39 :35) // DateTime.Now (SimpleMemberAccessExpression)
%23 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :39 :16) // comparison of unknown type: Model.FoundDate >= DateTime.Now
cond_br %23, ^7, ^8 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :39 :16)

^7: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%24 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :40 :46) // ValidationStrings.InvalidFoundDate (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :40 :22) // new ValidationException(ValidationStrings.InvalidFoundDate) (ObjectCreationExpression)
cbde.throw %25 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :40 :16)

^8: // BinaryBranchBlock
%26 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :41 :16) // Not a variable of known type: Model
%27 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :41 :16) // Model.Weight (SimpleMemberAccessExpression)
%28 = constant unit loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :41 :32) // MIN_WEIGHT (IdentifierName)
%29 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :41 :16) // comparison of unknown type: Model.Weight <= MIN_WEIGHT
cond_br %29, ^9, ^10 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :41 :16)

^9: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%30 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :42 :46) // ValidationStrings.InvalidWeight (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :42 :22) // new ValidationException(ValidationStrings.InvalidWeight) (ObjectCreationExpression)
cbde.throw %31 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :42 :16)

^10: // BinaryBranchBlock
%32 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :43 :16) // Not a variable of known type: Model
%33 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :43 :16) // Model.WithersHeight (SimpleMemberAccessExpression)
%34 = constant unit loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :43 :38) // MIN_HEIGHT (IdentifierName)
%35 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :43 :16) // comparison of unknown type: Model.WithersHeight < MIN_HEIGHT
cond_br %35, ^11, ^12 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :43 :16)

^11: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationStrings
%36 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :44 :46) // ValidationStrings.InvalidWithersHeight (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :44 :22) // new ValidationException(ValidationStrings.InvalidWithersHeight) (ObjectCreationExpression)
cbde.throw %37 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Validators\\ModelValidators\\AnimalModelValidator.cs" :44 :16)

^12: // ExitBlock
return

}
