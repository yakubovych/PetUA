// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Domain.Models.AnimalProcessing.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalProcessing.cs" :25 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: HashCode
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalProcessing.cs" :27 :36) // Not a variable of known type: AnimalId
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalProcessing.cs" :27 :46) // Not a variable of known type: ProcessingId
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalProcessing.cs" :27 :60) // Not a variable of known type: NextProcessingDate
%3 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalProcessing.cs" :27 :19) // HashCode.Combine(AnimalId, ProcessingId, NextProcessingDate) (InvocationExpression)
return %3 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Domain\\Models\\AnimalProcessing.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
