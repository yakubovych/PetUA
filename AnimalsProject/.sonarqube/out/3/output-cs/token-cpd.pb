ÑD
UC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\AdminVaccineNotification.cs
	namespace 	
AzureFunctions
 
{ 
public 

static 
class $
AdminVaccineNotification 0
{ 
[ 	
FunctionName	 
( 
$str +
)+ ,
], -
public 
static 
async 
Task  
RunAsync! )
() *
[* +
TimerTrigger+ 7
(7 8
$str8 G
)G H
]H I
	TimerInfoI R
myTimerS Z
,Z [
ILogger\ c
logd g
)g h
{ 	
var 
connectionStr 
= 
Environment  +
.+ ,"
GetEnvironmentVariable, B
(B C
$strC U
)U V
;V W
using 
( 
SqlConnection  
conn! %
=& '
new( +
SqlConnection, 9
(9 :
connectionStr: G
)G H
)H I
{ 
conn 
. 
Open 
( 
) 
; 
log 
. 
LogInformation "
(" #
$str# =
)= >
;> ?
var 
text 
= 
$str	 ó
+ 
$str	 ©
+ 
$str	 ú
+ 
$str 7
+ 
$str [
;[ \
using 
( 

SqlCommand !
cmd" %
=& '
new( +

SqlCommand, 6
(6 7
text7 ;
,; <
conn= A
)A B
)B C
{ 
log 
. 
LogInformation &
(& '
$str' >
)> ?
;? @
var   
reader   
=    
await  ! &
cmd  ' *
.  * +
ExecuteReaderAsync  + =
(  = >
)  > ?
;  ? @
var!!  
vaccineNotifications!! ,
=!!- .
new!!/ 2
List!!3 7
<!!7 8
VaccineNotification!!8 K
>!!K L
(!!L M
)!!M N
;!!N O
while"" 
("" 
reader"" !
.""! "
Read""" &
(""& '
)""' (
)""( )
{##  
vaccineNotifications$$ ,
.$$, -
Add$$- 0
($$0 1
new$$1 4
VaccineNotification$$5 H
{%% 

AnimalName&& &
=&&' (
reader&&) /
[&&/ 0
$str&&0 6
]&&6 7
.&&7 8
ToString&&8 @
(&&@ A
)&&A B
,&&B C
VaccineName'' '
=''( )
reader''* 0
[''0 1
$str''1 >
]''> ?
.''? @
ToString''@ H
(''H I
)''I J
,''J K
VaccineType(( '
=((( )
reader((* 0
[((0 1
$str((1 >
]((> ?
.((? @
ToString((@ H
(((H I
)((I J
,((J K
NextVaccineDate)) +
=)), -
reader)). 4
[))4 5
$str))5 J
]))J K
.))K L
ToString))L T
())T U
)))U V
}** 
)** 
;** 
},, 
reader-- 
.-- 
Close--  
(--  !
)--! "
;--" #
log.. 
... 
LogInformation.. &
(..& '
$str..' ^
+.._ ` 
vaccineNotifications..a u
...u v
Count..v {
)..{ |
;..| }
if// 
(//  
vaccineNotifications// ,
.//, -
Count//- 2
>//3 4
$num//5 6
)//6 7
{00 
var11 
listOfNotification11 .
=11/ 0
$str111 :
;11: ;
foreach22 
(22  !
var22! $
vaccineNotification22% 8
in229 ; 
vaccineNotifications22< P
)22P Q
{33 
listOfNotification44 .
+=44/ 1
$"442 4
<li>Animal name: 444 E
{44E F
vaccineNotification44F Y
.44Y Z

AnimalName44Z d
}44d e
; Vaccine type: 44e u
{44u v 
vaccineNotification	44v â
.
44â ä
VaccineType
44ä ï
}
44ï ñ
;
44ñ ó
"
44ó ò
+552 3
$"554 6
 Vaccine name: 556 E
{55E F
vaccineNotification55F Y
.55Y Z
VaccineName55Z e
}55e f 
; Vaccination date: 55f z
{55z { 
vaccineNotification	55{ é
.
55é è
NextVaccineDate
55è û
}
55û ü
</li>
55ü §
"
55§ •
;
55• ¶
}66 
listOfNotification77 *
+=77+ -
$str77. 9
;779 :
var99 
content99 #
=99$ %
Environment99& 1
.991 2"
GetEnvironmentVariable992 H
(99H I
$str99I Y
)99Y Z
+99[ \
listOfNotification99] o
;99o p
var:: 
to:: 
=::  
Environment::! ,
.::, -"
GetEnvironmentVariable::- C
(::C D
$str::D K
)::K L
;::L M
var;; 
subject;; #
=;;$ %
Environment;;& 1
.;;1 2"
GetEnvironmentVariable;;2 H
(;;H I
$str;;I Y
);;Y Z
;;;Z [
var== 
response== $
===% &
await==' ,
SendEmailAsync==- ;
(==; <
to==< >
,==> ?
subject==@ G
,==G H
content==I P
)==P Q
;==Q R
log?? 
.?? 
LogInformation?? *
(??* +
$"??+ -B
6Email with vaccine notification to admin has been sent??- c
"??c d
)??d e
;??e f
var@@ 
responseString@@ *
=@@+ ,
response@@- 5
.@@5 6

StatusCode@@6 @
.@@@ A
ToString@@A I
(@@I J
)@@J K
;@@K L
logAA 
.AA 
LogInformationAA *
(AA* +
$"AA+ -

Response: AA- 7
{AA7 8
responseStringAA8 F
}AAF G
"AAG H
)AAH I
;AAI J
}BB 
}CC 
}DD 
}EE 	
publicFF 
staticFF 
asyncFF 
TaskFF  
<FF  !
ResponseFF! )
>FF) *
SendEmailAsyncFF+ 9
(FF9 :
stringFF: @
toFFA C
,FFC D
stringFFE K
subjectFFL S
,FFS T
stringFFU [
messageFF\ c
)FFc d
{GG 	
varHH 
keyHH 
=HH 
EnvironmentHH !
.HH! ""
GetEnvironmentVariableHH" 8
(HH8 9
$strHH9 F
)HHF G
;HHG H
varII 
userII 
=II 
EnvironmentII "
.II" #"
GetEnvironmentVariableII# 9
(II9 :
$strII: H
)IIH I
;III J
varJJ 
fromJJ 
=JJ 
EnvironmentJJ "
.JJ" #"
GetEnvironmentVariableJJ# 9
(JJ9 :
$strJJ: G
)JJG H
;JJH I
varKK 
clientKK 
=KK 
newKK 
SendGridClientKK +
(KK+ ,
keyKK, /
)KK/ 0
;KK0 1
varLL 
msgLL 
=LL 
newLL 
SendGridMessageLL )
(LL) *
)LL* +
{MM 
FromNN 
=NN 
newNN 
EmailAddressNN '
(NN' (
fromNN( ,
,NN, -
userNN. 2
)NN2 3
,NN3 4
SubjectOO 
=OO 
subjectOO !
,OO! "
PlainTextContentPP  
=PP! "
messagePP# *
,PP* +
HtmlContentQQ 
=QQ 
messageQQ %
}RR 
;RR 
msgSS 
.SS 
AddToSS 
(SS 
newSS 
EmailAddressSS &
(SS& '
toSS' )
)SS) *
)SS* +
;SS+ ,
msgTT 
.TT 
SetClickTrackingTT  
(TT  !
falseTT! &
,TT& '
falseTT( -
)TT- .
;TT. /
returnVV 
awaitVV 
clientVV 
.VV  
SendEmailAsyncVV  .
(VV. /
msgVV/ 2
)VV2 3
;VV3 4
}WW 	
}XX 
}YY Ÿ
TC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\AnimalAdoptRequestCheck.cs
	namespace

 	
AzureFunctions


 
{ 
public 

class #
AnimalAdoptRequestCheck (
{ 
private 
readonly 
IRepository $
<$ %

AdoptOrder% /
>/ 0
_adoptRepository1 A
;A B
public #
AnimalAdoptRequestCheck &
(& '
IRepository' 2
<2 3

AdoptOrder3 =
>= >
adoptRepository? N
)N O
{ 	
_adoptRepository 
= 
adoptRepository .
;. /
} 	
[ 	
FunctionName	 
( 
$str /
)/ 0
]0 1
public 
async 
Task 
Run 
( 
[ 
TimerTrigger +
(+ ,
$str, ;
); <
]< =
	TimerInfo= F
myTimerG N
,N O
ILoggerP W
logX [
)[ \
{ 	
var 
adoptOrders 
= 
_adoptRepository .
.. /
GetAllQueryable/ >
(> ?
)? @
.. /
Include/ 6
(6 7
a7 8
=>9 ;
a< =
.= >
Animal> D
)D E
;E F
foreach 
( 
var 
item 
in  
adoptOrders! ,
), -
{ 
if 
( 
DateTime 
. 
Now 
<  !
item" &
.& '

EndingDate' 1
&&2 4
item5 9
.9 :
Animal: @
.@ A
StatusA G
==H J
AnimalStatusK W
.W X
BookedX ^
)^ _
{ 
item 
. 
Status 
=  !
OrderStatus" -
.- .
Declined. 6
;6 7
item 
. 
Animal 
.  
Status  &
=' (
AnimalStatus) 5
.5 6
None6 :
;: ;
_adoptRepository $
.$ %
Update% +
(+ ,
item, 0
)0 1
;1 2
} 
}   
await!! 
_adoptRepository!! "
.!!" #
	SaveAsync!!# ,
(!!, -
)!!- .
;!!. /
log"" 
."" 
LogInformation"" 
("" 
$""" !3
'C# Timer trigger function executed at: ""! H
{""H I
DateTime""I Q
.""Q R
Now""R U
}""U V
"""V W
)""W X
;""X Y
}## 	
}$$ 
}%% –
QC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\AnimalNewStatusCheck.cs
	namespace

 	
AzureFunctions


 
{ 
public 

class  
AnimalNewStatusCheck %
{ 
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_repository- 8
;8 9
private 
readonly 
IIsNewService &
_isNewService' 4
;4 5
public  
AnimalNewStatusCheck #
(# $
IRepository$ /
</ 0
Animal0 6
>6 7

repository8 B
,B C
IIsNewServiceD Q
isNewServiceR ^
)^ _
{ 	
_repository 
= 

repository $
;$ %
_isNewService 
= 
isNewService (
;( )
} 	
[ 	
FunctionName	 
( 
$str ,
), -
]- .
public 
async 
Task 
Run 
( 
[ 
TimerTrigger +
(+ ,
$str, <
)< =
]= >
	TimerInfo> G
myTimerH O
,O P
ILoggerQ X
logY \
)\ ]
{ 	
var 
animals 
= 
_repository %
.% &
GetAllQueryable& 5
(5 6
)6 7
;7 8
log 
. 
LogInformation 
( 
$" !#
Got all animals from db! 8
"8 9
)9 :
;: ;
await 
_isNewService 
.  
UpdateAndGetByNew  1
(1 2
animals2 9
.9 :
Where: ?
(? @
x@ A
=>B D
xE F
.F G
StatusG M
!=N P
AnimalStatusQ ]
.] ^
Adopted^ e
&&f h
!i j
xj k
.k l
IsHiddenl t
)t u
)u v
;v w
log 
. 
LogInformation 
( 
$" !
Update new status! 2
"2 3
)3 4
;4 5
} 	
} 
} Ò
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\AnimalProcessingNextDateCheck.cs
	namespace		 	
AzureFunctions		
 
{

 
public 

class )
AnimalProcessingNextDateCheck .
{ 
private 
readonly 
IRepository $
<$ %
AnimalProcessing% 5
>5 6!
_processingRepository7 L
;L M
public )
AnimalProcessingNextDateCheck ,
(, -
IRepository- 8
<8 9
AnimalProcessing9 I
>I J 
processingRepositoryK _
)_ `
{ 	!
_processingRepository !
=" # 
processingRepository$ 8
;8 9
} 	
[ 	
FunctionName	 
( 
$str 5
)5 6
]6 7
public 
async 
Task 
Run 
( 
[ 
TimerTrigger +
(+ ,
$str, ;
); <
]< =
	TimerInfo= F
myTimerG N
,N O
ILoggerP W
logX [
)[ \
{ 	
var 
animalProcessings !
=" #!
_processingRepository$ 9
.9 :
GetAllQueryable: I
(I J
)J K
.9 :
Include: A
(A B
pB C
=>D F
pG H
.H I

ProcessingI S
)S T
;T U
foreach 
( 
var 
animalProcessing )
in* ,
animalProcessings- >
)> ?
{ 
if 
( 
animalProcessing #
.# $
IsRepeat$ ,
&&- /
DateTime0 8
.8 9
Now9 <
>= >
animalProcessing? O
.O P
NextProcessingDateP b
)b c
{ 
if 
( 
animalProcessing (
.( )

Processing) 3
.3 4
Type4 8
==9 ;
$str< a
)a b
{ 
animalProcessing (
.( )
NextProcessingDate) ;
=< =
animalProcessing> N
.N O
NextProcessingDateO a
. 
AddDays $
($ %
int% (
.( )
Parse) .
(. /
Environment/ :
.: ;"
GetEnvironmentVariable; Q
(Q R
$str	R É
)
É Ñ
)
Ñ Ö
)
Ö Ü
;
Ü á
} 
if   
(   
animalProcessing   (
.  ( )

Processing  ) 3
.  3 4
Type  4 8
==  9 ;
$str  < S
)  S T
{!! 
animalProcessing"" (
.""( )
NextProcessingDate"") ;
=""< =
animalProcessing""> N
.""N O
NextProcessingDate""O a
.## 
AddDays## $
(##$ %
int##% (
.##( )
Parse##) .
(##. /
Environment##/ :
.##: ;"
GetEnvironmentVariable##; Q
(##Q R
$str##R v
)##v w
)##w x
)##x y
;##y z
}$$ !
_processingRepository%% )
.%%) *
Update%%* 0
(%%0 1
animalProcessing%%1 A
)%%A B
;%%B C
}&& 
}'' 
await(( !
_processingRepository(( '
.((' (
	SaveAsync((( 1
(((1 2
)((2 3
;((3 4
log)) 
.)) 
LogInformation)) 
()) 
$")) !3
'C# Timer trigger function executed at: ))! H
{))H I
DateTime))I Q
.))Q R
Now))R U
}))U V
"))V W
)))W X
;))X Y
}** 	
}++ 
},, µ
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\Models\VaccineNotification.cs
	namespace 	
AzureFunctions
 
. 
Models 
{ 
class 	
VaccineNotification
 
{ 
public 
string 
	UserEmail 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

AnimalName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
VaccineName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
VaccineType		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
NextVaccineDate

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
} 
} ”
DC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\Startup.cs
[ 
assembly 	
:	 

WebJobsStartup 
( 
typeof  
(  !
Startup! (
)( )
)) *
]* +
	namespace 	"
PhoneClaimsFunctionApp
  
{ 
public 

class 
Startup 
: 
IWebJobsStartup *
{ 
public 
void 
	Configure 
( 
IWebJobsBuilder -
builder. 5
)5 6
{ 	
builder 
. 
Services 
. 
	AddScoped &
(& '
typeof' -
(- .
IRepository. 9
<9 :
>: ;
); <
,< =
typeof> D
(D E

RepositoryE O
<O P
>P Q
)Q R
)R S
;S T
builder 
. 
Services 
. 
	AddScoped &
<& '
IIsNewService' 4
,4 5
IsNewService6 B
>B C
(C D
)D E
;E F
builder 
. 
Services 
. 
AddDbContext )
<) *
AnimalContext* 7
>7 8
(8 9
cfg9 <
=>= ?
{ 
cfg 
. 
UseSqlServer  
(  !
Environment 
.  "
GetEnvironmentVariable  6
(6 7
$str7 I
)I J
)J K
;K L
} 
) 
; 
} 	
} 
} §;
NC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\UserActivityCheck.cs
	namespace 	
ActivityCheck
 
{ 
public 

static 
class 
UserActivityCheck )
{ 
[ 	
FunctionName	 
( 
$str *
)* +
]+ ,
public 
static 
async 
Task  
Run! $
($ %
[% &
TimerTrigger& 2
(2 3
$str3 B
)B C
]C D
	TimerInfoD M
myTimerN U
,U V
ILoggerW ^
log_ b
)b c
{ 	
log 
. 
LogInformation 
( 
$" !-
!Users activity check started at: ! B
{B C
DateTimeC K
.K L
NowL O
}O P
"P Q
)Q R
;R S
var 
connectionStr 
= 
Environment  +
.+ ,"
GetEnvironmentVariable, B
(B C
$strC U
)U V
;V W
using 
( 
SqlConnection  
conn! %
=& '
new( +
SqlConnection, 9
(9 :
connectionStr: G
)G H
)H I
{ 
conn 
. 
Open 
( 
) 
; 
log 
. 
LogInformation "
(" #
$str# =
)= >
;> ?
var 
text 
= 
$str ;
+< =
$str L
;L M
using 
( 

SqlCommand !
cmd" %
=& '
new( +

SqlCommand, 6
(6 7
text7 ;
,; <
conn= A
)A B
)B C
{ 
log 
. 
LogInformation &
(& '
$str' >
)> ?
;? @
var 
reader 
=  
await! &
cmd' *
.* +
ExecuteReaderAsync+ =
(= >
)> ?
;? @
var 
unactiveUsers %
=& '
new( +
List, 0
<0 1
string1 7
>7 8
(8 9
)9 :
;: ;
while   
(   
reader   !
.  ! "
Read  " &
(  & '
)  ' (
)  ( )
{!! 
unactiveUsers"" %
.""% &
Add""& )
("") *
(""* +
(""+ ,
IDataRecord"", 7
)""7 8
reader""8 >
)""> ?
[""? @
$num""@ A
]""A B
.""B C
ToString""C K
(""K L
)""L M
)""M N
;""N O
}## 
reader$$ 
.$$ 
Close$$  
($$  !
)$$! "
;$$" #
log%% 
.%% 
LogInformation%% &
(%%& '
$str%%' ?
+%%@ A
unactiveUsers%%B O
.%%O P
Count%%P U
)%%U V
;%%V W
if&& 
(&& 
unactiveUsers&& %
.&&% &
Count&&& +
>&&, -
$num&&. /
)&&/ 0
{'' 
var(( 
listOfUsers(( '
=((( )
$str((* 3
;((3 4
foreach)) 
())  !
var))! $
user))% )
in))* ,
unactiveUsers))- :
))): ;
{** 
listOfUsers++ '
+=++( *
$"+++ -
<li>++- 1
{++1 2
user++2 6
}++6 7
</li>++7 <
"++< =
;++= >
},, 
listOfUsers-- #
+=--$ &
$str--' 2
;--2 3
var// 
content// #
=//$ %
Environment//& 1
.//1 2"
GetEnvironmentVariable//2 H
(//H I
$str//I R
)//R S
+//T U
listOfUsers//V a
;//a b
var00 
to00 
=00  
Environment00! ,
.00, -"
GetEnvironmentVariable00- C
(00C D
$str00D K
)00K L
;00L M
var11 
subject11 #
=11$ %
Environment11& 1
.111 2"
GetEnvironmentVariable112 H
(11H I
$str11I R
)11R S
;11S T
var33 
response33 $
=33% &
await33' ,
SendEmailAsync33- ;
(33; <
to33< >
,33> ?
subject33@ G
,33G H
content33I P
)33P Q
;33Q R
log55 
.55 
LogInformation55 *
(55* +
$"55+ -:
.Email with listed unactive users has been sent55- [
"55[ \
)55\ ]
;55] ^
var66 
responseString66 *
=66+ ,
response66- 5
.665 6

StatusCode666 @
.66@ A
ToString66A I
(66I J
)66J K
;66K L
log77 
.77 
LogInformation77 *
(77* +
$"77+ -

Response: 77- 7
{777 8
responseString778 F
}77F G
"77G H
)77H I
;77I J
}88 
}99 
}:: 
};; 	
public<< 
static<< 
async<< 
Task<<  
<<<  !
Response<<! )
><<) *
SendEmailAsync<<+ 9
(<<9 :
string<<: @
to<<A C
,<<C D
string<<E K
subject<<L S
,<<S T
string<<U [
message<<\ c
)<<c d
{== 	
var>> 
key>> 
=>> 
Environment>> !
.>>! ""
GetEnvironmentVariable>>" 8
(>>8 9
$str>>9 F
)>>F G
;>>G H
var?? 
user?? 
=?? 
Environment?? "
.??" #"
GetEnvironmentVariable??# 9
(??9 :
$str??: H
)??H I
;??I J
var@@ 
from@@ 
=@@ 
Environment@@ "
.@@" #"
GetEnvironmentVariable@@# 9
(@@9 :
$str@@: G
)@@G H
;@@H I
varAA 
clientAA 
=AA 
newAA 
SendGridClientAA +
(AA+ ,
keyAA, /
)AA/ 0
;AA0 1
varBB 
msgBB 
=BB 
newBB 
SendGridMessageBB )
(BB) *
)BB* +
{CC 
FromDD 
=DD 
newDD 
EmailAddressDD '
(DD' (
fromDD( ,
,DD, -
userDD. 2
)DD2 3
,DD3 4
SubjectEE 
=EE 
subjectEE !
,EE! "
PlainTextContentFF  
=FF! "
messageFF# *
,FF* +
HtmlContentGG 
=GG 
messageGG %
}HH 
;HH 
msgII 
.II 
AddToII 
(II 
newII 
EmailAddressII &
(II& '
toII' )
)II) *
)II* +
;II+ ,
msgJJ 
.JJ 
SetClickTrackingJJ  
(JJ  !
falseJJ! &
,JJ& '
falseJJ( -
)JJ- .
;JJ. /
returnLL 
awaitLL 
clientLL 
.LL  
SendEmailAsyncLL  .
(LL. /
msgLL/ 2
)LL2 3
;LL3 4
}MM 	
}NN 
}OO òE
UC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Azure\UserVaccineNotitfication.cs
	namespace 	
AzureFunctions
 
{ 
public 

static 
class #
UserVaccineNotification /
{ 
[ 	
FunctionName	 
( 
$str /
)/ 0
]0 1
public 
static 
async 
System "
." #
	Threading# ,
., -
Tasks- 2
.2 3
Task3 7
RunAsync8 @
(@ A
[A B
TimerTriggerB N
(N O
$strO ^
)^ _
]_ `
	TimerInfo` i
myTimerj q
,q r
ILoggers z
log{ ~
)~ 
{ 	
var 
connectionStr 
= 
Environment  +
.+ ,"
GetEnvironmentVariable, B
(B C
$strC U
)U V
;V W
using 
( 
SqlConnection  
conn! %
=& '
new( +
SqlConnection, 9
(9 :
connectionStr: G
)G H
)H I
{ 
conn 
. 
Open 
( 
) 
; 
log 
. 
LogInformation "
(" #
$str# =
)= >
;> ?
var 
text 
= 
$str	 Ø
+ 
$str	 ´
+ 
$str	 û
+ 
$str j
+ 
$str ]
+ 
$str e
+ 
$str 8
+ 
$str ]
+ 
$str q
;q r
using!! 
(!! 

SqlCommand!! !
cmd!!" %
=!!& '
new!!( +

SqlCommand!!, 6
(!!6 7
text!!7 ;
,!!; <
conn!!= A
)!!A B
)!!B C
{"" 
log## 
.## 
LogInformation## &
(##& '
$str##' >
)##> ?
;##? @
var$$ 
reader$$ 
=$$  
await$$! &
cmd$$' *
.$$* +
ExecuteReaderAsync$$+ =
($$= >
)$$> ?
;$$? @
var%%  
vaccineNotifications%% ,
=%%- .
new%%/ 2
List%%3 7
<%%7 8
VaccineNotification%%8 K
>%%K L
(%%L M
)%%M N
;%%N O
while&& 
(&& 
reader&& !
.&&! "
Read&&" &
(&&& '
)&&' (
)&&( )
{''  
vaccineNotifications(( ,
.((, -
Add((- 0
(((0 1
new((1 4
VaccineNotification((5 H
{)) 
	UserEmail** %
=**& '
reader**( .
[**. /
$str**/ :
]**: ;
.**; <
ToString**< D
(**D E
)**E F
,**F G

AnimalName++ &
=++' (
reader++) /
[++/ 0
$str++0 6
]++6 7
.++7 8
ToString++8 @
(++@ A
)++A B
,++B C
VaccineName,, '
=,,( )
reader,,* 0
[,,0 1
$str,,1 >
],,> ?
.,,? @
ToString,,@ H
(,,H I
),,I J
,,,J K
VaccineType-- '
=--( )
reader--* 0
[--0 1
$str--1 >
]--> ?
.--? @
ToString--@ H
(--H I
)--I J
,--J K
NextVaccineDate.. +
=.., -
reader... 4
[..4 5
$str..5 J
]..J K
...K L
ToString..L T
(..T U
)..U V
}// 
)// 
;// 
}11 
reader22 
.22 
Close22  
(22  !
)22! "
;22" #
log33 
.33 
LogInformation33 &
(33& '
$str33' ^
+33_ ` 
vaccineNotifications33a u
.33u v
Count33v {
)33{ |
;33| }
foreach55 
(55 
var55  
vaccineNotification55! 4
in555 7 
vaccineNotifications558 L
)55L M
{66 
var77 
NotificationContent77 /
=770 1
$"772 4
<p>Animal name: 774 D
{77D E
vaccineNotification77E X
.77X Y

AnimalName77Y c
}77c d
; Vaccine type: 77d t
{77t u 
vaccineNotification	77u à
.
77à â
VaccineType
77â î
}
77î ï
;
77ï ñ
"
77ñ ó
+88. /
$"880 2
 Vaccine name: 882 A
{88A B
vaccineNotification88B U
.88U V
VaccineName88V a
}88a b 
; Vaccination date: 88b v
{88v w 
vaccineNotification	88w ä
.
88ä ã
NextVaccineDate
88ã ö
}
88ö õ
</p>
88õ ü
"
88ü †
;
88† °
var:: 
content:: #
=::$ %
Environment::& 1
.::1 2"
GetEnvironmentVariable::2 H
(::H I
$str::I i
)::i j
+::k l 
NotificationContent	::m Ä
;
::Ä Å
var;; 
to;; 
=;;  
vaccineNotification;;! 4
.;;4 5
	UserEmail;;5 >
;;;> ?
var<< 
subject<< #
=<<$ %
Environment<<& 1
.<<1 2"
GetEnvironmentVariable<<2 H
(<<H I
$str<<I Y
)<<Y Z
;<<Z [
var>> 
response>> $
=>>% &
await>>' ,
SendEmailAsync>>- ;
(>>; <
to>>< >
,>>> ?
subject>>@ G
,>>G H
content>>I P
)>>P Q
;>>Q R
log@@ 
.@@ 
LogInformation@@ *
(@@* +
$"@@+ -/
#Email with vaccine notification to @@- P
{@@P Q
vaccineNotification@@Q d
.@@d e
	UserEmail@@e n
}@@n o
 has been sent@@o }
"@@} ~
)@@~ 
;	@@ Ä
varAA 
responseStringAA *
=AA+ ,
responseAA- 5
.AA5 6

StatusCodeAA6 @
.AA@ A
ToStringAAA I
(AAI J
)AAJ K
;AAK L
logBB 
.BB 
LogInformationBB *
(BB* +
$"BB+ -

Response: BB- 7
{BB7 8
responseStringBB8 F
}BBF G
"BBG H
)BBH I
;BBI J
}CC 
}DD 
}EE 
}FF 	
publicGG 
staticGG 
asyncGG 
TaskGG  
<GG  !
ResponseGG! )
>GG) *
SendEmailAsyncGG+ 9
(GG9 :
stringGG: @
toGGA C
,GGC D
stringGGE K
subjectGGL S
,GGS T
stringGGU [
messageGG\ c
)GGc d
{HH 	
varII 
keyII 
=II 
EnvironmentII !
.II! ""
GetEnvironmentVariableII" 8
(II8 9
$strII9 F
)IIF G
;IIG H
varJJ 
userJJ 
=JJ 
EnvironmentJJ "
.JJ" #"
GetEnvironmentVariableJJ# 9
(JJ9 :
$strJJ: H
)JJH I
;JJI J
varKK 
fromKK 
=KK 
EnvironmentKK "
.KK" #"
GetEnvironmentVariableKK# 9
(KK9 :
$strKK: G
)KKG H
;KKH I
varLL 
clientLL 
=LL 
newLL 
SendGridClientLL +
(LL+ ,
keyLL, /
)LL/ 0
;LL0 1
varMM 
msgMM 
=MM 
newMM 
SendGridMessageMM )
(MM) *
)MM* +
{NN 
FromOO 
=OO 
newOO 
EmailAddressOO '
(OO' (
fromOO( ,
,OO, -
userOO. 2
)OO2 3
,OO3 4
SubjectPP 
=PP 
subjectPP !
,PP! "
PlainTextContentQQ  
=QQ! "
messageQQ# *
,QQ* +
HtmlContentRR 
=RR 
messageRR %
}SS 
;SS 
msgTT 
.TT 
AddToTT 
(TT 
newTT 
EmailAddressTT &
(TT& '
toTT' )
)TT) *
)TT* +
;TT+ ,
msgUU 
.UU 
SetClickTrackingUU  
(UU  !
falseUU! &
,UU& '
falseUU( -
)UU- .
;UU. /
returnWW 
awaitWW 
clientWW 
.WW  
SendEmailAsyncWW  .
(WW. /
msgWW/ 2
)WW2 3
;WW3 4
}XX 	
}YY 
}ZZ 