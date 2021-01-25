func @_Persistance.Extension.StringExtension.Base64UrlDecodeString$string$(none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :7 :8) {
^entry (%_encodedString : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :7 :51)
cbde.store %_encodedString, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :7 :51)
br ^0

^0: // JumpBlock
// Entity from another assembly: WebEncoders
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :9 :64) // Not a variable of known type: encodedString
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :9 :36) // WebEncoders.Base64UrlDecode(encodedString) (InvocationExpression)
// Entity from another assembly: Encoding
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :11 :19) // Encoding.UTF8 (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :11 :43) // Not a variable of known type: encodedCharacters
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :11 :19) // Encoding.UTF8.GetString(encodedCharacters) (InvocationExpression)
return %6 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :11 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Persistance.Extension.StringExtension.Base64UrlEncodeString$string$(none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :14 :8) {
^entry (%_str : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :14 :51)
cbde.store %_str, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :14 :51)
br ^0

^0: // JumpBlock
// Entity from another assembly: Encoding
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :16 :37) // Encoding.UTF8 (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :16 :60) // Not a variable of known type: str
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :16 :37) // Encoding.UTF8.GetBytes(str) (InvocationExpression)
// Entity from another assembly: WebEncoders
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :18 :47) // Not a variable of known type: encodedCharacters
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :18 :19) // WebEncoders.Base64UrlEncode(encodedCharacters) (InvocationExpression)
return %6 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Persistance.Extension.StringExtension.ToLowerCaseWithFirstLetterInUpper$string$(none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :21 :8) {
^entry (%_str : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :21 :63)
cbde.store %_str, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :21 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :19) // char (PredefinedType)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :32) // Not a variable of known type: str
%3 = constant 0 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :36)
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :32) // str[0] (ElementAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :19) // char.ToUpper(str[0]) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :42) // Not a variable of known type: str
%7 = constant 1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :56)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :42) // str.Substring(1) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :42) // str.Substring(1).ToLower() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :19) // Binary expression on unsupported types char.ToUpper(str[0]) + str.Substring(1).ToLower()
return %10 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Extension\\StringExtension.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
