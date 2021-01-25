// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.AdoptOrder.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AdoptOrder.cs" :25 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: HashCode
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AdoptOrder.cs" :27 :36) // Not a variable of known type: AnimalId
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AdoptOrder.cs" :27 :46) // Not a variable of known type: UserId
%2 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AdoptOrder.cs" :27 :19) // HashCode.Combine(AnimalId, UserId) (InvocationExpression)
return %2 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AdoptOrder.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
