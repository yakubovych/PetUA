// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.User.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :45 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :47 :28) // new HashCode() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :48 :12) // Not a variable of known type: hash
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :48 :21) // Identifier from another assembly: Id
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :48 :12) // hash.Add(Id) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :49 :12) // Not a variable of known type: hash
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :49 :21) // Not a variable of known type: FullName
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :49 :12) // hash.Add(FullName) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :50 :12) // Not a variable of known type: hash
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :50 :21) // Identifier from another assembly: UserName
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :50 :12) // hash.Add(UserName) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :51 :12) // Not a variable of known type: hash
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :51 :21) // Identifier from another assembly: Email
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :51 :12) // hash.Add(Email) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :52 :12) // Not a variable of known type: hash
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :52 :21) // Identifier from another assembly: PhoneNumber
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :52 :12) // hash.Add(PhoneNumber) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :53 :12) // Not a variable of known type: hash
%18 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :53 :21) // Not a variable of known type: AddressId
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :53 :12) // hash.Add(AddressId) (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :54 :12) // Not a variable of known type: hash
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :54 :21) // Not a variable of known type: LastActive
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :54 :12) // hash.Add(LastActive) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :55 :19) // Not a variable of known type: hash
%24 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :55 :19) // hash.ToHashCode() (InvocationExpression)
return %24 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\User.cs" :55 :12)

^1: // ExitBlock
cbde.unreachable

}
