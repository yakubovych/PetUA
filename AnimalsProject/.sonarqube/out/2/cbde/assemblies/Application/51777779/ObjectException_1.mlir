func @_Application.Exceptions.ObjectException.GetObjectData$System.Runtime.Serialization.SerializationInfo.System.Runtime.Serialization.StreamingContext$(none, none) -> () loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :42 :8) {
^entry (%_info : none, %_context : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :43 :43)
cbde.store %_info, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :43 :43)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :43 :67)
cbde.store %_context, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :43 :67)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :45 :16) // Not a variable of known type: info
%3 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :45 :24) // null (NullLiteralExpression)
%4 = cbde.unknown : i1  loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :45 :16) // comparison of unknown type: info == null
cond_br %4, ^1, ^2 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :45 :16)

^1: // JumpBlock
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :47 :48) // "info" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :47 :22) // new ArgumentNullException("info") (ObjectCreationExpression)
cbde.throw %6 :  none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :47 :16)

^2: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :50 :12) // Not a variable of known type: info
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :50 :26) // "ObjectIdentifier" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :50 :46) // Not a variable of known type: ObjectIdentifier
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :50 :12) // info.AddValue("ObjectIdentifier", ObjectIdentifier) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :52 :12) // base (BaseExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :52 :31) // Not a variable of known type: info
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :52 :37) // Not a variable of known type: context
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Exceptions\\ObjectException.cs" :52 :12) // base.GetObjectData(info, context) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function ToString(), it contains poisonous unsupported syntaxes

