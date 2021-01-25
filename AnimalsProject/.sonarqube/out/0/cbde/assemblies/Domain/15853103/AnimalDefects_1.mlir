// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.AnimalDefects.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalDefects.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: HashCode
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalDefects.cs" :20 :36) // Not a variable of known type: AnimalId
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalDefects.cs" :20 :46) // Not a variable of known type: DefectsId
%2 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalDefects.cs" :20 :19) // HashCode.Combine(AnimalId, DefectsId) (InvocationExpression)
return %2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalDefects.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
