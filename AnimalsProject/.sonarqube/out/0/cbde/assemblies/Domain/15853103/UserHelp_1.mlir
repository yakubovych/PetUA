// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.UserHelp.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :22 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :24 :19) // Not a variable of known type: UserId
%1 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :24 :19) // UserId.GetHashCode() (InvocationExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :24 :42) // Not a variable of known type: HelpId
%3 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :24 :42) // HelpId.GetHashCode() (InvocationExpression)
%4 = addi %1, %3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :24 :19)
return %4 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\UserHelp.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
