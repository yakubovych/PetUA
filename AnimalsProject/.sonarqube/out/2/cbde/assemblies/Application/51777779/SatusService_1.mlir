func @_Application.Services.StatusService.GetAllAnimalStatuses$$() -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :11 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Enum
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :13 :47) // typeof(AnimalStatus) (TypeOfExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :13 :33) // Enum.GetNames(typeof(AnimalStatus)) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :14 :19) // Not a variable of known type: animalStatuses
return %3 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :14 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Application.Services.StatusService.GetAllOrderStatuses$$() -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :17 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Enum
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :19 :46) // typeof(OrderStatus) (TypeOfExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :19 :32) // Enum.GetNames(typeof(OrderStatus)) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :20 :19) // Not a variable of known type: orderStatuses
return %3 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\SatusService.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
