// Skipping function CreateImagesWithExistingAnimal(none, none), it contains poisonous unsupported syntaxes

func @_Application.Services.AnimalImageService.CreateImageWithExistingAnimal$long.string.string$(none, none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :8) {
^entry (%_animalId : none, %_filePath : none, %_fileName : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :50)
cbde.store %_animalId, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :50)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :65)
cbde.store %_filePath, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :65)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :82)
cbde.store %_fileName, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :32 :82)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :34 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %3 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\AnimalImageService.cs" :34 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function CreateImageWithExistingAnimal(none, none), it contains poisonous unsupported syntaxes

// Skipping function Delete(none), it contains poisonous unsupported syntaxes

