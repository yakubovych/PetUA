// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.AnimalAttitudeTo.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalAttitudeTo.cs" :22 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: HashCode
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalAttitudeTo.cs" :24 :36) // Not a variable of known type: AnimalId
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalAttitudeTo.cs" :24 :46) // Not a variable of known type: AttitudeId
%2 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalAttitudeTo.cs" :24 :19) // HashCode.Combine(AnimalId, AttitudeId) (InvocationExpression)
return %2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalAttitudeTo.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
