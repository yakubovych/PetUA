// Skipping function SendEmailAsync(none, none, none), it contains poisonous unsupported syntaxes

func @_Application.Services.EmailService.Execute$string.string.string.string$(none, none, none, none) -> none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :8) {
^entry (%_apiKey : none, %_subject : none, %_message : none, %_email : none):
%0 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :39)
cbde.store %_apiKey, %0 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :39)
%1 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :54)
cbde.store %_subject, %1 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :54)
%2 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :70)
cbde.store %_message, %2 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :70)
%3 = cbde.alloca none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :86)
cbde.store %_email, %3 : memref<none> loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :30 :86)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :32 :44) // Not a variable of known type: apiKey
%5 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :32 :25) // new SendGridClient(apiKey) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :33 :22) // new SendGridMessage()              {                  From = new EmailAddress(Configuration["SendGrid:SenderEmail"], Configuration["SendGrid:SendGridUser"]),                  Subject = subject,                  PlainTextContent = message,                  HtmlContent = message              } (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :40) // Not a variable of known type: Configuration
%9 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :54) // "SendGrid:SenderEmail" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :40) // Configuration["SendGrid:SenderEmail"] (ElementAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :79) // Not a variable of known type: Configuration
%12 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :93) // "SendGrid:SendGridUser" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :79) // Configuration["SendGrid:SendGridUser"] (ElementAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :35 :23) // new EmailAddress(Configuration["SendGrid:SenderEmail"], Configuration["SendGrid:SendGridUser"]) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :36 :26) // Not a variable of known type: subject
%16 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :37 :35) // Not a variable of known type: message
%17 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :38 :30) // Not a variable of known type: message
%19 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :40 :12) // Not a variable of known type: msg
%20 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :40 :39) // Not a variable of known type: email
%21 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :40 :22) // new EmailAddress(email) (ObjectCreationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :40 :12) // msg.AddTo(new EmailAddress(email)) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :41 :12) // Not a variable of known type: msg
%24 = constant 0 : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :41 :33) // false
%25 = constant 0 : i1 loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :41 :40) // false
%26 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :41 :12) // msg.SetClickTracking(false, false) (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :43 :19) // Not a variable of known type: client
%28 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :43 :41) // Not a variable of known type: msg
%29 = cbde.unknown : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :43 :19) // client.SendEmailAsync(msg) (InvocationExpression)
return %29 : none loc("C:\\Users\\Admin\\Desktop\\lv-epmrduapap\\AnimalsProject\\Application\\Services\\EmailService.cs" :43 :12)

^1: // ExitBlock
cbde.unreachable

}
