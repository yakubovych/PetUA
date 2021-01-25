// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_Application.DTO.Processing.ProcessingDto.GetHashCode$$() -> i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Proccessing\\ProcessingDto.cs" :26 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Proccessing\\ProcessingDto.cs" :28 :19) // Not a variable of known type: Id
%1 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Proccessing\\ProcessingDto.cs" :28 :19) // Id.GetHashCode() (InvocationExpression)
return %1 : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\DTO\\Proccessing\\ProcessingDto.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
