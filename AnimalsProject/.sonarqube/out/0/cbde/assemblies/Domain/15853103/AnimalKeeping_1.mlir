// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.AnimalKeeping.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalKeeping.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: HashCode
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalKeeping.cs" :20 :36) // Not a variable of known type: AnimalId
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalKeeping.cs" :20 :46) // Not a variable of known type: KeepingId
%2 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalKeeping.cs" :20 :19) // HashCode.Combine(AnimalId, KeepingId) (InvocationExpression)
return %2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalKeeping.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
