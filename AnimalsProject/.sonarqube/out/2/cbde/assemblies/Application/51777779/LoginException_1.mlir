func @_Application.Exceptions.LoginException.GetObjectData$System.Runtime.Serialization.SerializationInfo.System.Runtime.Serialization.StreamingContext$(none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :38 :8) {
^entry (%_info : none, %_context : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :39 :43)
cbde.store %_info, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :39 :43)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :39 :67)
cbde.store %_context, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :39 :67)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :41 :16) // Not a variable of known type: info
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :41 :24) // null (NullLiteralExpression)
%4 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :41 :16) // comparison of unknown type: info == null
cond_br %4, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :41 :16)

^1: // JumpBlock
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :43 :48) // "info" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :43 :22) // new ArgumentNullException("info") (ObjectCreationExpression)
cbde.throw %6 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :43 :16)

^2: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :46 :12) // base (BaseExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :46 :31) // Not a variable of known type: info
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :46 :37) // Not a variable of known type: context
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\LoginException.cs" :46 :12) // base.GetObjectData(info, context) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
