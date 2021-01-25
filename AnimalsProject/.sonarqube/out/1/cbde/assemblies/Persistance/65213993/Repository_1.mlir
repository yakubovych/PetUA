// Skipping function AddAsync(none), it contains poisonous unsupported syntaxes

// Skipping function AddRangeAsync(none), it contains poisonous unsupported syntaxes

func @_Persistance.Repositories.Repository$TEntity$.Find$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :36 :8) {
^entry (%_predicate : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :36 :41)
cbde.store %_predicate, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :36 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :38 :19) // Not a variable of known type: context
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :38 :19) // context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :38 :48) // Not a variable of known type: predicate
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :38 :19) // context.Set<TEntity>().Where(predicate) (InvocationExpression)
return %4 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Persistance.Repositories.Repository$TEntity$.GetAllQueryable$$() -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :41 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :43 :19) // Not a variable of known type: context
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :43 :19) // context.Set<TEntity>() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :43 :19) // context.Set<TEntity>().AsQueryable() (InvocationExpression)
return %2 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :43 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetAllAsync(), it contains poisonous unsupported syntaxes

// Skipping function GetByIdAsync(none), it contains poisonous unsupported syntaxes

// Skipping function Remove(none), it contains poisonous unsupported syntaxes

// Skipping function RemoveRange(none), it contains poisonous unsupported syntaxes

// Skipping function SingleOrDefaultAsync(none), it contains poisonous unsupported syntaxes

// Skipping function SaveAsync(), it contains poisonous unsupported syntaxes

func @_Persistance.Repositories.Repository$TEntity$.Update$TEntity$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :78 :8) {
^entry (%_obj : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :78 :27)
cbde.store %_obj, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :78 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :80 :12) // Not a variable of known type: context
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :80 :27) // Not a variable of known type: obj
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :80 :12) // context.Update(obj) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Persistance.Repositories.Repository$TEntity$.TryUpdateManyToMany$TKey$$System.Collections.Generic.IEnumerable$TEntity$.System.Collections.Generic.IEnumerable$TEntity$.System.Func$TEntity.TKey$$(none, none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :8) {
^entry (%_currentItems : none, %_newItems : none, %_funcKey : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :46)
cbde.store %_currentItems, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :46)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :81)
cbde.store %_newItems, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :81)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :112)
cbde.store %_funcKey, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :83 :112)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :85 :12) // Not a variable of known type: context
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :85 :40) // Not a variable of known type: currentItems
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :85 :54) // Not a variable of known type: newItems
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :85 :64) // Not a variable of known type: funcKey
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :85 :12) // context.TryUpdateManyToMany(currentItems, newItems, funcKey) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Persistance.Repositories.Repository$TEntity$.TryUpdateManyToMany$TKey1.TKey2$$System.Collections.Generic.IEnumerable$TEntity$.System.Collections.Generic.IEnumerable$TEntity$.System.Func$TEntity.TKey1$.System.Func$TEntity.TKey2$$(none, none, none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :8) {
^entry (%_currentItems : none, %_newItems : none, %_funcKey1 : none, %_funcKey2 : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :54)
cbde.store %_currentItems, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :54)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :89)
cbde.store %_newItems, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :89)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :120)
cbde.store %_funcKey1, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :120)
%3 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :151)
cbde.store %_funcKey2, %3 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :87 :151)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :89 :12) // Not a variable of known type: context
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :89 :40) // Not a variable of known type: currentItems
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :89 :54) // Not a variable of known type: newItems
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :89 :64) // Not a variable of known type: funcKey1
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :89 :74) // Not a variable of known type: funcKey2
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :89 :12) // context.TryUpdateManyToMany(currentItems, newItems, funcKey1, funcKey2) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Persistance.Repositories.Repository$TEntity$.TryUpdateManyToMany$TKey1.TKey2.TKey3$$System.Collections.Generic.IEnumerable$TEntity$.System.Collections.Generic.IEnumerable$TEntity$.System.Func$TEntity.TKey1$.System.Func$TEntity.TKey2$.System.Func$TEntity.TKey3$$(none, none, none, none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :8) {
^entry (%_currentItems : none, %_newItems : none, %_funcKey1 : none, %_funcKey2 : none, %_funcKey3 : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :61)
cbde.store %_currentItems, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :61)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :96)
cbde.store %_newItems, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :96)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :127)
cbde.store %_funcKey1, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :127)
%3 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :158)
cbde.store %_funcKey2, %3 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :158)
%4 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :189)
cbde.store %_funcKey3, %4 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :91 :189)
br ^0

^0: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :12) // Not a variable of known type: context
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :40) // Not a variable of known type: currentItems
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :54) // Not a variable of known type: newItems
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :64) // Not a variable of known type: funcKey1
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :74) // Not a variable of known type: funcKey2
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :84) // Not a variable of known type: funcKey3
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :93 :12) // context.TryUpdateManyToMany(currentItems, newItems, funcKey1, funcKey2, funcKey3) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Persistance.Repositories.Repository$TEntity$.TryCreateManyToMany$System.Collections.Generic.IEnumerable$TEntity$$(none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :95 :8) {
^entry (%_newItems : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :95 :40)
cbde.store %_newItems, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :95 :40)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :97 :12) // Not a variable of known type: context
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :97 :40) // Not a variable of known type: newItems
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :97 :12) // context.TryCreateManyToMany(newItems) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Persistance.Repositories.Repository$TEntity$.SaveChanges$$() -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :100 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :102 :12) // Not a variable of known type: context
%1 = cbde.unknown : i32 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Persistance\\Repositories\\Repository.cs" :102 :12) // context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function BeginTransactionAsync(), it contains poisonous unsupported syntaxes

