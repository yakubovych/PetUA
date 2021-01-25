ã
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\ActionFilter\AnimalStatisticFilter.cs
	namespace 	
Application
 
. 
ActionFilter "
{ 
public

 

class

 !
AnimalStatisticFilter

 &
:

' (
	Attribute

) 2
,

2 3
IAsyncActionFilter

4 F
{ 
private 
readonly 
IStatisticService *
<* +
Animal+ 1
>1 2
_statisticService3 D
;D E
private 
readonly &
IAnimalViewLocationService 3
_locationService4 D
;D E
public !
AnimalStatisticFilter $
($ %
IStatisticService% 6
<6 7
Animal7 =
>= >
statisticService? O
,O P&
IAnimalViewLocationServiceQ k
locationServicel {
){ |
{ 	
_statisticService 
= 
statisticService  0
??1 3
throw4 9
new: =!
ArgumentNullException> S
(S T
nameofT Z
(Z [
statisticService[ k
)k l
)l m
;m n
_locationService 
= 
locationService .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
locationServiceY h
)h i
)i j
;j k
} 	
public 
async 
Task "
OnActionExecutionAsync 0
(0 1"
ActionExecutingContext1 G
contextH O
,O P#
ActionExecutionDelegateQ h
nexti m
)m n
{ 	
object 
	routeData 
; 
context 
. 
	RouteData 
. 
Values $
.$ %
TryGetValue% 0
(0 1
$str1 5
,5 6
out7 :
	routeData; D
)D E
;E F
long 
animalId 
= 
$num 
; 
if 
( 
long 
. 
TryParse 
( 
	routeData &
.& '
ToString' /
(/ 0
)0 1
,1 2
out3 6
animalId7 ?
)? @
)@ A
{ 
try 
{ 
await   
_statisticService   +
.  + ,
UpdateStatistic  , ;
(  ; <
animalId  < D
)  D E
;  E F
await!! 
_locationService!! *
.!!* +#
UpdateViewLocationAsync!!+ B
(!!B C
animalId!!C K
)!!K L
;!!L M
}"" 
catch## 
(## 
	Exception##  
)##  !
{$$ 
await%% 
next%% 
(%% 
)%%  
;%%  !
}&& 
}'' 
await(( 
next(( 
((( 
)(( 
;(( 
})) 	
}** 
}++ ˙
fC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\ActionFilter\ArticleStatisticFilter.cs
	namespace 	
Application
 
. 
ActionFilter "
{ 
public		 

class		 "
ArticleStatisticFilter		 '
:		( )
	Attribute		* 3
,		3 4
IAsyncActionFilter		5 G
{

 
private 
readonly 
IStatisticService *
<* +
Article+ 2
>2 3
_statisticService4 E
;E F
public "
ArticleStatisticFilter %
(% &
IStatisticService& 7
<7 8
Article8 ?
>? @
statisticServiceA Q
)Q R
{ 	
_statisticService 
= 
statisticService  0
??1 3
throw4 9
new: =!
ArgumentNullException> S
(S T
nameofT Z
(Z [
statisticService[ k
)k l
)l m
;m n
} 	
public 
async 
Task "
OnActionExecutionAsync 0
(0 1"
ActionExecutingContext1 G
contextH O
,O P#
ActionExecutionDelegateQ h
nexti m
)m n
{ 	
object 
	routeData 
; 
context 
. 
	RouteData 
. 
Values $
.$ %
TryGetValue% 0
(0 1
$str1 5
,5 6
out7 :
	routeData; D
)D E
;E F
long 
	articleId 
= 
$num 
; 
if 
( 
long 
. 
TryParse 
( 
	routeData '
.' (
ToString( 0
(0 1
)1 2
,2 3
out4 7
	articleId8 A
)A B
)B C
{ 
try 
{ 
await 
_statisticService +
.+ ,
UpdateStatistic, ;
(; <
	articleId< E
)E F
;F G
} 
catch 
( 
	Exception  
)  !
{ 
await   
next   
(   
)    
;    !
}!! 
}"" 
await## 
next## 
(## 
)## 
;## 
}$$ 	
}%% 
}&& Ì
dC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Constants\ExceptionStrings.cs
	namespace 	
Application
 
. 
Common 
. 
	Constants &
{ 
public 

static 
class 
ExceptionStrings (
{ 
public 
const 
string !
NullArgumentException 1
=2 3
$str4 c
;c d
public 
const 
string '
NullArgumentStringException 7
=8 9
$str: y
;y z
public 
const 
string )
MinMaxNumberArgumentException 9
=: ;
$str< q
;q r
public 
const 
string )
NegativeIntegerValueException 9
=: ;
$str< R
;R S
public		 
const		 
string		 #
ObjectNotFoundException		 3
=		4 5
$str		6 b
;		b c
public

 
const

 
string

 !
ObjectUpdateException

 1
=

2 3
$str

4 g
;

g h
public 
const 
string !
ObjectCreateException 1
=2 3
$str4 g
;g h
public 
const 
string !
ObjectDeleteException 1
=2 3
$str4 R
;R S
public 
const 
string  
RolePromoteException 0
=0 1
$str2 L
;L M
public 
const 
string 
RoleDemoteException /
=0 1
$str2 K
;K L
public 
const 
string !
RoleNotFoundException 1
=2 3
$str4 U
;U V
public 
const 
string 
AddToRoleException .
=/ 0
$str1 O
;O P
public 
const 
string !
EmailConfirmException 1
=2 3
$str4 O
;O P
public 
const 
string "
ResetPasswordException 2
=3 4
$str5 Q
;Q R
public 
const 
string !
UserNotFoundException 1
=2 3
$str4 ]
;] ^
public 
const 
string 
UserUpdateException /
=0 1
$str2 ^
;^ _
public 
const 
string 
LoginException *
=+ ,
$str- c
;c d
public 
const 
string 
CreateUserException /
=0 1
$str	2 à
;
à â
public 
const 
string #
CreateUserHelpException 3
=4 5
$str	6 ç
;
ç é
public 
const 
string (
InvalidRefreshTokenException 8
=9 :
$str; T
;T U
public 
const 
string '
InvalidAccessTokenException 7
=8 9
$str: R
;R S
public 
const 
string 
SendEmailException .
=/ 0
$str1 L
;L M
public 
const 
string 
RevokeException +
=, -
$str. _
;_ `
public 
const 
string 
RefreshException ,
=- .
$str/ b
;b c
public 
const 
string 
UserDeleteException /
=0 1
$str2 N
;N O
public 
const 
string $
MainAdminDeleteException 4
=5 6
$str	7 ñ
;
ñ ó
} 
}   í
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Constants\Roles.cs
	namespace 	
Application
 
. 
Common 
. 
	Constants &
{ 
public 

static 
class 
Roles 
{ 
public 
static 
readonly 
string %
[% &
]& '
RoleStrings( 3
=4 5
{6 7
$str8 >
,> ?
$str@ J
,J K
$strL S
,S T
$strU a
}a b
;b c
} 
} Å
rC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Constants\StandardMessageLengthConstants.cs
	namespace 	
Application
 
. 
Common 
. 
	Constants &
{ 
public 

static 
class *
StandardMessageLengthConstants 6
{ 
public 
const 
int 

IDENTIFIER #
=$ %
$num& (
;( )
public 
const 
int 
ROLE 
= 
$num  !
;! "
public 
const 
int 
VALUE 
=  
$num! "
;" #
public 
const 
int 
UPDATE_VALUE %
=& '
$num( *
;* +
}		 
}

 ó
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Constants\ValidationStrings.cs
	namespace 	
Application
 
. 
Common 
. 
	Constants &
{ 
public 

static 
class 
ValidationStrings )
{ 
public 
static 
readonly 
string %
PasswordLength& 4
=5 6
$str7 j
;j k
public 
static 
readonly 
string % 
PasswordLengthExceed& :
=; <
$str= q
;q r
public 
static 
readonly 
string %"
PasswordArabicNumerals& <
== >
$str? u
;u v
public 
static 
readonly 
string %
PasswordLatinLetter& 9
=: ;
$str< o
;o p
public		 
static		 
readonly		 
string		 %
PasswordLowerCase		& 7
=		8 9
$str		: r
;		r s
public

 
static

 
readonly

 
string

 %
PasswordUpperCase

& 7
=

8 9
$str

: r
;

r s
public 
static 
readonly 
string % 
PasswordAlphanumeric& :
=; <
$str= {
;{ |
public 
static 
readonly 
string %
PasswordsDoNotMatch& 9
=: ;
$str< V
;V W
public 
static 
readonly 
string %
InvalidEmail& 2
=3 4
$str	5 Ñ
;
Ñ Ö
public 
static 
readonly 
string %
InvalidPhoneNumber& 8
=9 :
$str	; Æ
;
Æ Ø
public 
static 
readonly 
string %!
InvalidUserNameNumber& ;
=< =
$str> S
;S T
public 
static 
readonly 
string %
PhoneNumberLength& 7
=8 9
$str: j
;j k
public 
static 
readonly 
string %
AnimalNameRequired& 8
=9 :
$str; \
;\ ]
public 
static 
readonly 
string %
AnimalNameLength& 6
=7 8
$str9 u
;u v
public 
static 
readonly 
string %
InvalidCategoryId& 7
=8 9
$str: Q
;Q R
public 
static 
readonly 
string %
InvalidAddressId& 6
=7 8
$str9 O
;O P
public 
static 
readonly 
string %
InvalidDateOfBirth& 8
=9 :
$str; |
;| }
public 
static 
readonly 
string %
InvalidFoundDate& 6
=7 8
$str	9 á
;
á à
public 
static 
readonly 
string %
InvalidWeight& 3
=4 5
$str6 ^
;^ _
public 
static 
readonly 
string % 
InvalidWithersHeight& :
=; <
$str= g
;g h
} 
} Ê
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Interfaces\IEmailHelper.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
{ 
public 

	interface 
IEmailHelper !
{ 
Task 
GetDataAndSendAsync  
(  !
string! '
emailReceiver( 5
,5 6
string7 =#
PathToEmailBodyTempalte> U
,U V
stringW ]
emailSubjectTemlate^ q
,q r
paramss y
string	z Ä
[
Ä Å
]
Å Ç
links
É à
)
à â
;
â ä
} 
}		 ∏
dC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Interfaces\IModelValidator.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
{ 
public 

	interface 
IModelValidator $
{ 
void 
ValidateModel 
( 
) 
; 
} 
} ©
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Common\Interfaces\IValidator.cs
	namespace 	
Application
 
. 
Common 
. 

Interfaces '
{ 
public 

	interface 

IValidator 
{ 
void 
Validate 
( 
) 
; 
} 
} 
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Address\AddressDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Address !
{ 
public 

class 

AddressDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 º
hC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\AdoptBookRequest\AdoptBookRequest.cs
	namespace 	
Application
 
. 
DTO 
. 
AdoptBookRequest *
{ 
public 

class 
AdoptBookRequest !
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
PetName 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
long		 
AnimalId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Type

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
DateTime 
Created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
AdminComment "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
UserMotivation $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} †
qC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\AdoptBookRequest\AdoptBookRequestForDelete.cs
	namespace 	
Application
 
. 
DTO 
. 
AdoptBookRequest *
{ 
public 

class %
AdoptBookRequestForDelete *
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
} µ
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\AdoptOrder\AdoptOrderDto.cs
	namespace 	
Application
 
. 
DTO 
. 

AdoptOrder $
{ 
public 

class 
AdoptOrderDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
long 
AnimalId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
UserId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Status

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
UserMotivation $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AdminComment "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
ClosingDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 

EndingDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ò
iC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\AdoptOrder\AdoptOrderForApproveDto.cs
	namespace 	
Application
 
. 
DTO 
. 

AdoptOrder $
{ 
public 

class #
AdoptOrderForApproveDto (
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 

EndingDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
}

 Ñ
oC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\AdoptOrder\AdoptOrderForApproveFinalyDto.cs
	namespace 	
Application
 
. 
DTO 
. 

AdoptOrder $
{ 
public 

class )
AdoptOrderForApproveFinalyDto .
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
} 
}		 ò
iC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\AdoptOrder\AdoptOrderForDeclineDto.cs
	namespace 	
Application
 
. 
DTO 
. 

AdoptOrder $
{ 
public 

class #
AdoptOrderForDeclineDto (
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
AdminComment "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
}

 Á
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalApprovedDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class 
AnimalApprovedDto "
{ 
public 
AnimalApprovedDto  
(  !
)! "
{ 	
Images		 
=		 
new		 
HashSet		  
<		  !
ImageDto		! )
>		) *
(		* +
)		+ ,
;		, -
}

 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
public 
HashSet 
< 
ImageDto 
>  
Images! '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ó
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalBookingTimeDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class  
AnimalBookingTimeDto %
{ 
public 
	AnimalDto 
Animal 
{  !
get" %
;% &
set' *
;* +
}, -
public 
double 
MinutesRemaining &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
}		 Ä1
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalDTO.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class 
	AnimalDto 
{ 
public 
	AnimalDto 
( 
) 
{ 	
Vaccinations 
= 
new 
HashSet &
<& '
VaccinationFullDto' 9
>9 :
(: ;
); <
;< =
	Attitudes 
= 
new 
HashSet #
<# $
AttitudeToDto$ 1
>1 2
(2 3
)3 4
;4 5
Needs 
= 
new 
HashSet 
<  
NeedsDto  (
>( )
() *
)* +
;+ ,
Keepings 
= 
new 
HashSet "
<" #

KeepingDto# -
>- .
(. /
)/ 0
;0 1
Processings 
= 
new 
HashSet %
<% &
ProcessingDto& 3
>3 4
(4 5
)5 6
;6 7
Defects 
= 
new 
HashSet !
<! "
	DefectDto" +
>+ ,
(, -
)- .
;. /
Images 
= 
new 
HashSet  
<  !
ImageDto! )
>) *
(* +
)+ ,
;, -
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 
Weight 
{ 
get "
;" #
set$ '
;' (
}) *
public 
double 
WithersHeight #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 
NeckCircumference '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public   
string   
Comment   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public!! 
int!! 
Status!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
public"" 
bool"" 
IsHidden"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public## 
bool## 
IsNew## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
public$$ 
DateTime$$ 
	FoundDate$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public%% 
bool%% $
ContinuatitonOfTreatment%% ,
{%%- .
get%%/ 2
;%%2 3
set%%4 7
;%%7 8
}%%9 :
public&& 
long&& 

ChipNumber&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public'' 
int'' 
Gender'' 
{'' 
get'' 
;''  
set''! $
;''$ %
}''& '
public(( 
int(( 
Sterialization(( !
{((" #
get(($ '
;((' (
set(() ,
;((, -
}((. /
public)) 
long)) 
	AddressId)) 
{)) 
get))  #
;))# $
set))% (
;))( )
}))* +
public** 
long** 

CategoryId** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
public++ 
long++ 
FoodId++ 
{++ 
get++  
;++  !
set++" %
;++% &
}++' (
public,, 
DescriptionDto,, 
Description,, )
{,,* +
get,,, /
;,,/ 0
set,,1 4
;,,4 5
},,6 7
public-- 
BreedDto-- 
Breed-- 
{-- 
get--  #
;--# $
set--% (
;--( )
}--* +
public.. 
HashSet.. 
<.. 
VaccinationFullDto.. )
>..) *
Vaccinations..+ 7
{..8 9
get..: =
;..= >
set..? B
;..B C
}..D E
public// 
HashSet// 
<// 
AttitudeToDto// $
>//$ %
	Attitudes//& /
{//0 1
get//3 6
;//6 7
set//8 ;
;//; <
}//= >
public00 
HashSet00 
<00 
	DefectDto00  
>00  !
Defects00" )
{00* +
get00, /
;00/ 0
set001 4
;004 5
}006 7
public11 
HashSet11 
<11 

KeepingDto11 !
>11! "
Keepings11# +
{11, -
get11. 1
;111 2
set113 6
;116 7
}118 9
public22 
HashSet22 
<22 
ProcessingDto22 $
>22$ %
Processings22& 1
{222 3
get224 7
;227 8
set229 <
;22< =
}22> ?
public33 
HashSet33 
<33 
NeedsDto33 
>33  
Needs33! &
{33' (
get33) ,
;33, -
set33. 1
;331 2
}333 4
public44 
HashSet44 
<44 
ImageDto44 
>44  
Images44! '
{44( )
get44* -
;44- .
set44/ 2
;442 3
}444 5
}55 
}66 é+
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class  
AnimalForCreationDto %
{ 
public  
AnimalForCreationDto #
(# $
)$ %
{ 	
Vaccinations 
= 
new 
HashSet &
<& ')
VaccinationFullForCreationDto' D
>D E
(E F
)F G
;G H
	Attitudes 
= 
new 
HashSet #
<# $
AttitudeToDto$ 1
>1 2
(2 3
)3 4
;4 5
Needs 
= 
new 
HashSet 
<  
NeedsDto  (
>( )
() *
)* +
;+ ,
Keepings 
= 
new 
HashSet "
<" #

KeepingDto# -
>- .
(. /
)/ 0
;0 1
Processings 
= 
new 
HashSet %
<% &
ProcessingDto& 3
>3 4
(4 5
)5 6
;6 7
Defects 
= 
new 
HashSet !
<! "
	DefectDto" +
>+ ,
(, -
)- .
;. /
} 	
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 
Weight 
{ 
get "
;" #
set$ '
;' (
}) *
public 
double 
WithersHeight #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
double 
NeckCircumference '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
IsHidden 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsNew 
{ 
get 
;  
set! $
;$ %
}& '
public   
DateTime   
	FoundDate   !
{  " #
get  $ '
;  ' (
set  ) ,
;  , -
}  . /
public!! 
bool!! $
ContinuatitonOfTreatment!! ,
{!!- .
get!!/ 2
;!!2 3
set!!4 7
;!!7 8
}!!9 :
public"" 
long"" 

ChipNumber"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public## 
int## 
Gender## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
public$$ 
int$$ 
Sterialization$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public%% 
long%% 
	AddressId%% 
{%% 
get%%  #
;%%# $
set%%% (
;%%( )
}%%* +
public&& 
long&& 

CategoryId&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public'' 
long'' 
FoodId'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
public(( 
BreedForCreationDto(( "
Breed((# (
{(() *
get((+ .
;((. /
set((0 3
;((3 4
}((5 6
public)) %
DescriptionForCreationDto)) (
Description))) 4
{))5 6
get))7 :
;)): ;
set))< ?
;))? @
}))A B
public** 
HashSet** 
<** )
VaccinationFullForCreationDto** 4
>**4 5
Vaccinations**6 B
{**C D
get**E H
;**H I
set**J M
;**M N
}**O P
public++ 
HashSet++ 
<++ 
AttitudeToDto++ $
>++$ %
	Attitudes++& /
{++0 1
get++2 5
;++5 6
set++7 :
;++: ;
}++< =
public,, 
HashSet,, 
<,, 
	DefectDto,,  
>,,  !
Defects,," )
{,,* +
get,,, /
;,,/ 0
set,,1 4
;,,4 5
},,6 7
public-- 
HashSet-- 
<-- 

KeepingDto-- !
>--! "
Keepings--# +
{--, -
get--. 1
;--1 2
set--3 6
;--6 7
}--8 9
public.. 
HashSet.. 
<.. 
ProcessingDto.. $
>..$ %
Processings..& 1
{..2 3
get..4 7
;..7 8
set..9 <
;..< =
}..> ?
public// 
HashSet// 
<// 
NeedsDto// 
>//  
Needs//! &
{//' (
get//) ,
;//, -
set//. 1
;//1 2
}//3 4
}00 
}11 Ä
gC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalImageForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class %
AnimalImageForCreationDto *
{ 
public 
	IFormFile 
	ImageData "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 ñ3
dC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalIncludeValuesDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class "
AnimalIncludeValuesDto '
{ 
public "
AnimalIncludeValuesDto %
(% &
)& '
{ 	
Vaccinations 
= 
new 
HashSet &
<& '
VaccinationFullDto' 9
>9 :
(: ;
); <
;< =
	Attitudes 
= 
new 
HashSet #
<# $
AttitudeToDto$ 1
>1 2
(2 3
)3 4
;4 5
Needs 
= 
new 
HashSet 
<  
NeedsDto  (
>( )
() *
)* +
;+ ,
Keepings 
= 
new 
HashSet "
<" #

KeepingDto# -
>- .
(. /
)/ 0
;0 1
Processings 
= 
new 
HashSet %
<% &
ProcessingDto& 3
>3 4
(4 5
)5 6
;6 7
Defects 
= 
new 
HashSet !
<! "
	DefectDto" +
>+ ,
(, -
)- .
;. /
Videos 
= 
new 
HashSet  
<  !
AnimalVideoDto! /
>/ 0
(0 1
)1 2
;2 3
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
double   
Weight   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public!! 
double!! 
WithersHeight!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
public"" 
double"" 
NeckCircumference"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
public## 
string## 
Comment## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
public$$ 
bool$$ 
IsHidden$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
public%% 
bool%% 
IsNew%% 
{%% 
get%% 
;%%  
set%%! $
;%%$ %
}%%& '
public&& 
DateTime&& 
	FoundDate&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
public'' 
bool'' $
ContinuatitonOfTreatment'' ,
{''- .
get''/ 2
;''2 3
set''4 7
;''7 8
}''9 :
public(( 
long(( 

ChipNumber(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public)) 
string)) 
Gender)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public** 
string** 
Sterialization** $
{**% &
get**' *
;*** +
set**, /
;**/ 0
}**1 2
public++ 

AddressDto++ 
Address++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
public,, 
CategoryDto,, 
Category,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
public-- 
FoodDto-- 
Food-- 
{-- 
get-- !
;--! "
set--# &
;--& '
}--( )
public.. 
string.. 
Status.. 
{.. 
get.. "
;.." #
set..$ '
;..' (
}..) *
public// 
DescriptionDto// 
Description// )
{//* +
get//, /
;/// 0
set//1 4
;//4 5
}//6 7
public00 
BreedDto00 
Breeds00 
{00  
get00! $
;00$ %
set00& )
;00) *
}00+ ,
public11 
HashSet11 
<11 
VaccinationFullDto11 )
>11) *
Vaccinations11+ 7
{118 9
get11: =
;11= >
set11? B
;11B C
}11D E
public22 
HashSet22 
<22 
AttitudeToDto22 $
>22$ %
	Attitudes22& /
{220 1
get222 5
;225 6
set227 :
;22: ;
}22< =
public33 
HashSet33 
<33 
	DefectDto33  
>33  !
Defects33" )
{33* +
get33, /
;33/ 0
set331 4
;334 5
}336 7
public44 
HashSet44 
<44 

KeepingDto44 !
>44! "
Keepings44# +
{44, -
get44. 1
;441 2
set443 6
;446 7
}448 9
public55 
HashSet55 
<55 
ProcessingDto55 $
>55$ %
Processings55& 1
{552 3
get554 7
;557 8
set559 <
;55< =
}55> ?
public66 
HashSet66 
<66 
NeedsDto66 
>66  
Needs66! &
{66' (
get66) ,
;66, -
set66. 1
;661 2
}663 4
public77 
HashSet77 
<77 
ImageDto77 
>77  
Images77! '
{77( )
get77* -
;77- .
set77/ 2
;772 3
}774 5
public88 
HashSet88 
<88 
AnimalVideoDto88 %
>88% &
Videos88' -
{88. /
get880 3
;883 4
set885 8
;888 9
}88: ;
}99 
}:: ó
fC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalLocationHistoryDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class $
AnimalLocationHistoryDto )
{ 
public 

AddressDto 
Address !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 
DateTime

 
Date

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
} 
} ﬁ
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalRecommended.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class 
AnimalRecommended "
{ 
public "
AnimalIncludeValuesDto %

mainAnimal& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
IEnumerable 
< 
	AnimalDto $
>$ %
recommendedAnimals& 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
}		 
}

 ª
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalStatisticDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class 
AnimalStatisticDto #
:$ %
StatisticDto& 2
{		 
public

 
AnimalStatisticDto

 !
(

! "
)

" #
{ 	
ViewLocations 
= 
new 
List  $
<$ %!
AnimalViewLocationDto% :
>: ;
(; <
)< =
;= >
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
	FoundDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
IsHidden 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
IsNew 
{ 
get 
;  
set! $
;$ %
}& '
public 
IList 
< !
AnimalViewLocationDto *
>* +
ViewLocations, 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
} Ù
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalVideoDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class 
AnimalVideoDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Ä
gC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\AnimalVideoForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class %
AnimalVideoForCreationDto *
{ 
public 
	IFormFile 
	VideoFile "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 Ô
VC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Animal\ImageDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Animal  
{ 
public 

class 
ImageDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
	ImageData 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} †
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Article\ArticleDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Article !
{ 
public 

class 

ArticleDto 
{ 
public 

ArticleDto 
( 
) 
{		 	
Images

 
=

 
new

 
List

 
<

 
ArticleImageDto

 -
>

- .
(

. /
)

/ 0
;

0 1
Tags 
= 
new 
List 
< 
TagDto "
>" #
(# $
)$ %
;% &
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	UserEmall 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
	ViewCount 
{ 
get "
;" #
set$ '
;' (
}) *
public 
IList 
< 
ArticleImageDto $
>$ %
Images& ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IList 
< 
TagDto 
> 
Tags !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
return 
obj 
is 

ArticleDto $
dto% (
&&) +
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} Ö
dC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Article\ArticleForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Article !
{ 
public 

class !
ArticleForCreationDto &
{ 
public !
ArticleForCreationDto $
($ %
)% &
{		 	
Images

 
=

 
new

 
List

 
<

 &
ArticleImageForCreationDto

 8
>

8 9
(

9 :
)

: ;
;

; <
Tags 
= 
new 
List 
< 
TagDto "
>" #
(# $
)$ %
;% &
} 	
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IList 
< &
ArticleImageForCreationDto /
>/ 0
Images1 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
IList 
< 
TagDto 
> 
Tags !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˝
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Article\ArticleForUpdateDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Article !
{ 
public 

class 
ArticleForUpdateDto $
{ 
public 
ArticleForUpdateDto "
(" #
)# $
{		 	
Images

 
=

 
new

 
List

 
<

 
ArticleImageDto

 -
>

- .
(

. /
)

/ 0
;

0 1
Tags 
= 
new 
List 
< 
TagDto "
>" #
(# $
)$ %
;% &
} 	
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IList 
< 
ArticleImageDto $
>$ %
Images& ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IList 
< 
TagDto 
> 
Tags !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˇ
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Article\ArticleImageDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Article !
{ 
public 

class 
ArticleImageDto  
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
	ImageData 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Å
iC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Article\ArticleImageForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Article !
{ 
public 

class &
ArticleImageForCreationDto +
{ 
public 
string 
	ImageData 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} µ
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Article\ArticleStatisticDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Article !
{ 
public 

class 
ArticleStatisticDto $
:% &
StatisticDto' 3
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	UserEmall 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ﬂ
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Attitude\AttitudeToDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Attitude "
{ 
public 

class 
AttitudeToDto 
{ 
public 
AttitudeToDto 
( 

AttitudeTo '

attitudeTo( 2
,2 3
int4 7
mark8 <
)< =
{ 	
Id		 
=		 

attitudeTo		 
.		 
Id		 
;		 
Name

 
=

 

attitudeTo

 
.

 
Name

 "
;

" #
Mark 
= 
mark 
; 
} 	
public 
AttitudeToDto 
( 
) 
{ 
}  
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Mark 
{ 
get 
; 
set "
;" #
}$ %
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
return 
obj 
is 
AttitudeToDto '
dto( +
&&, .
Id 
== 
dto 
. 
Id 
;  
} 	
} 
} ¥
RC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\BlobInfoDto.cs
	namespace 	
Domain
 
. 
Models 
{ 
public 

class 
BlobInfoDto 
{ 
public 
BlobInfoDto 
( 
Stream !
stream" (
,( )
string* 0
contentType1 <
)< =
{ 	
Stream		 
=		 
stream		 
;		 
ContentType

 
=

 
contentType

 %
;

% &
} 	
public 
Stream 
Stream 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ì
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\BookOrder\BookOrderDto.cs
	namespace 	
Application
 
. 
DTO 
. 
	BookOrder #
{ 
public 

class 
BookOrderDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
long 
AnimalId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
	UserEmail		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
Status

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
UserMotivation $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AdminComment "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 

EndingDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} î
gC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\BookOrder\BookOrderForApproveDto.cs
	namespace 	
Application
 
. 
DTO 
. 
	BookOrder #
{ 
public 

class "
BookOrderForApproveDto '
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 

EndingDate "
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 î
gC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\BookOrder\BookOrderForDeclineDto.cs
	namespace 	
Application
 
. 
DTO 
. 
	BookOrder #
{ 
public 

class "
BookOrderForDeclineDto '
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
AdminComment "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 ë
UC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Breed\BreedDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Breed 
{ 
public 

class 
BreedDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 

LanguageUa  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

LanguageEn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{		 	
return

 
obj

 
is

 
BreedDto

 "
dto

# &
&&

' )
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} é
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Breed\BreedForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Breed 
{ 
public 

class 
BreedForCreationDto $
{ 
public 
string 

LanguageUa  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

LanguageEn  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ù
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Category\CategoryDTO.cs
	namespace 	
Application
 
. 
DTO 
. 
Category "
{ 
public 

class 
CategoryDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 Ú	
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Defect\DefectDTO.cs
	namespace 	
Application
 
. 
DTO 
. 
Defect  
{ 
public 

class 
	DefectDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{		 	
return

 
obj

 
is

 
	DefectDto

 #
dto

$ '
&&

( *
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} Ó
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Defect\DefectForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Defect  
{ 
public 

class  
DefectForCreationDto %
{ 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ø
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Description\DescriptionDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Description %
{ 
public 

class 
DescriptionDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 

LanguageUa  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

LanguageEn  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{		 	
return

 
obj

 
is

 
DescriptionDto

 (
dto

) ,
&&

- /
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} ¶
lC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Description\DescriptionForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Description %
{ 
public 

class %
DescriptionForCreationDto *
{ 
public 
string 

LanguageUa  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

LanguageEn  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ‰
SC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Food\FoodDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Food 
{ 
public 

class 
FoodDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 È
SC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Help\HelpDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Help 
{ 
public 

class 
HelpDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 

KindOfHelp  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 í
dC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Incoming\UploadFileRequestDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Incoming "
{ 
public 

class  
UploadFileRequestDto %
{ 
public 
string 
FilePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ˜	
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Keeping\KeepingDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Keeping !
{ 
public 

class 

KeepingDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
override		 
bool		 
Equals		 #
(		# $
object		$ *
obj		+ .
)		. /
{

 	
return 
obj 
is 

KeepingDto $
dto% (
&&) +
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} Ì	
UC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Needs\NeedsDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Needs 
{ 
public 

class 
NeedsDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
override		 
bool		 
Equals		 #
(		# $
object		$ *
obj		+ .
)		. /
{

 	
return 
obj 
is 
NeedsDto "
dto# &
&&' )
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} é
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Order\OrderForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Order 
{ 
public 

class 
OrderForCreationDto $
{ 
public 
long 
AnimalId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
UserMotivation $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ƒ
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Proccessing\ProcessingDto.cs
	namespace 	
Application
 
. 
DTO 
. 

Processing $
{ 
public 

class 
ProcessingDto 
{ 
public 
ProcessingDto 
( 
Domain #
.# $
Models$ *
.* +

Processing+ 5
proccessing6 A
,A B
DateTimeC K
processingDateL Z
,Z [
DateTime\ d
nextProcessingDatee w
)w x
{		 	
Id

 
=

 
proccessing

 
.

 
Id

 
;

  
Type 
= 
proccessing 
. 
Type #
;# $
ProcessingDate 
= 
processingDate +
;+ ,
NextProcessingDate 
=  
nextProcessingDate! 3
;3 4
} 	
public 
ProcessingDto 
( 
) 
{ 
}  
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
IsRepeat 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
ProcessingDate &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
NextProcessingDate *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
return 
obj 
is 
ProcessingDto '
dto( +
&&, .
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
}   ◊
lC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\ResetPassword\ResetPasswordConfirmDto.cs
	namespace 	
Application
 
. 
DTO 
. 
ResetPassword '
{ 
public 

class #
ResetPasswordConfirmDto (
{ 
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public		 
string		 
Password		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Compare	 
( 
$str 
, 
ErrorMessage )
=* +
$str, b
)b c
]c d
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ·
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\ResetPassword\ResetPasswordDto.cs
	namespace 	
Application
 
. 
DTO 
. 
ResetPassword '
{ 
public 

class 
ResetPasswordDto !
{ 
[ 	
Required	 
] 
[ 	
EmailAddress	 
] 
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} ô
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Statistic\StatisticDto.cs
	namespace 	
Application
 
. 
DTO 
. 
	Statistic #
{ 
public 

abstract 
class 
StatisticDto &
{ 
public 
int 
	ViewCount 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
DateTime		 
Created		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} Ó
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Status\StatusDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Status  
{ 
public 

class 
	StatusDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
}

 ‡
QC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Tag\TagDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Tag 
{ 
public 

class 
TagDto 
{ 
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 ﬁ
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\Tag\TagForCreateDto.cs
	namespace 	
Application
 
. 
DTO 
. 
Tag 
{ 
public 

class 
TagForCreateDto  
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ω
SC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserDto 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
FullName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public		 
long		 
	AddressId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
}

 
} §
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserHelpDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserHelpDto 
{ 
public 
List 
< 
HelpDto 
> 
Help !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 
string

 
Comment

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} Ó

YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserHelpInDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserHelpInDto 
{ 
public 
int 
HelpId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
override		 
bool		 
Equals		 #
(		# $
object		$ *
obj		+ .
)		. /
{

 	
var 
dto 
= 
obj 
as 
UserHelpInDto *
;* +
return 
dto 
!= 
null 
&& !
HelpId" (
==) +
dto, /
./ 0
HelpId0 6
;6 7
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
HelpId 
. 
GetHashCode %
(% &
)& '
;' (
} 	
} 
} •
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserHelpLSetInDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserHelpSetInDto !
{ 
public 
IEnumerable 
< 
UserHelpInDto (
>( )
userHelp* 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
}		 ˙
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserHelpOutDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserHelpOutDto 
{ 
public 
UserDto 
User 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 ¡
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserIncludeValuesDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public		 

class		  
UserIncludeValuesDto		 %
{

 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
FullName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 

AddressDto 
Address !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
IEnumerable 
< 
UserHelpInDto (
>( )
Helps* /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
IEnumerable 
< 
AdoptOrderDto (
>( )
AdoptOrders* 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
IEnumerable 
< 
BookOrderDto '
>' (

BookOrders) 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
IEnumerable 
< 

ArticleDto %
>% &
Articles' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ì
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserLoginDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserLoginDto 
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
bool		 

RememberMe		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} ˛	
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserRegistrationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserRegistrationDto $
{ 
public 
string 
FullName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public 
long 
	AddressId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ò
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserRoleDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserRoleDto 
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 Å
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\User\UserTokenDto.cs
	namespace 	
Application
 
. 
DTO 
. 
User 
{ 
public 

class 
UserTokenDto 
{ 
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
RefreshToken "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 œ
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\VaccinationDtos\VaccinationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
VaccinationDtos )
{ 
public 

class 
VaccinationDto 
{ 
public 
VaccinationDto 
( 
Vaccination )
vac* -
)- .
{ 	
Id		 
=		 
vac		 
.		 
Id		 
;		 
Name

 
=

 
vac

 
.

 
Name

 
;

 
Type 
= 
vac 
. 
Type 
; 
} 	
public 
VaccinationDto 
( 
) 
{  !
}" #
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
return 
obj 
is 
VaccinationDto (
dto) ,
&&- /
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
} 
} ˛
pC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\VaccinationDtos\VaccinationForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
VaccinationDtos )
{ 
public 

class %
VaccinationForCreationDto *
{ 
public %
VaccinationForCreationDto (
(( )
Vaccination) 4
vac5 8
)8 9
{ 	
Name		 
=		 
vac		 
.		 
Name		 
;		 
Type

 
=

 
vac

 
.

 
Type

 
;

 
} 	
public %
VaccinationForCreationDto (
(( )
)) *
{+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ò
iC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\VaccinationDtos\VaccinationFullDto.cs
	namespace 	
Application
 
. 
DTO 
. 
VaccinationDtos )
{ 
public 

class 
VaccinationFullDto #
{ 
public 
VaccinationFullDto !
(! "
Vaccination" -
vac. 1
,1 2
DateTime3 ;
vaccinationDate< K
,K L
DateTimeM U
nextVaccinationDateV i
)i j
{		 	
Id

 
=

 
vac

 
.

 
Id

 
;

 
Name 
= 
vac 
. 
Name 
; 
Type 
= 
vac 
. 
Type 
; 
VaccinationDate 
= 
vaccinationDate -
;- .
NextVaccinationDate 
=  !
nextVaccinationDate" 5
;5 6
} 	
public 
VaccinationFullDto !
(! "
)" #
{# $
}$ %
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
VaccinationDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DateTime 
NextVaccinationDate +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
return 
obj 
is 
VaccinationFullDto ,
dto- 0
&&1 3
Id 
== 
dto 
. 
Id 
;  
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Id 
. 
GetHashCode !
(! "
)" #
;# $
} 	
}   
}!! ø
tC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\VaccinationDtos\VaccinationFullForCreationDto.cs
	namespace 	
Application
 
. 
DTO 
. 
VaccinationDtos )
{ 
public 

class )
VaccinationFullForCreationDto .
{ 
public )
VaccinationFullForCreationDto ,
(, -
Vaccination- 8
vac9 <
,< =
DateTime> F
vaccinationDateG V
)V W
{		 	
Id

 
=

 
vac

 
.

 
Id

 
;

 
Name 
= 
vac 
. 
Name 
; 
Type 
= 
vac 
. 
Type 
; 
VaccinationDate 
= 
vaccinationDate -
;- .
} 	
public )
VaccinationFullForCreationDto ,
(, -
)- .
{/ 0
}1 2
public 
long 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
VaccinationDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ˆ
iC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\ViewLocation\AnimalViewLocationDto.cs
	namespace 	
Application
 
. 
ViewLocation "
{ 
public 

class !
AnimalViewLocationDto &
{ 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
}		 ˆ
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\DTO\ViewLocation\Location.cs
	namespace 	
Application
 
. 
DTO 
. 
ViewLocation &
{ 
public 

class 
Location 
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 3
)3 4
]4 5
public		 
string		 
Country		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
}

 
} •
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\LoginException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public 

class 
LoginException 
:  
ObjectException! 0
{		 
public

 
LoginException

 
(

 
)

 
{ 	
} 	
public 
LoginException 
( 
string $
message% ,
), -
: 
base 
( 
message 
) 
{ 	
} 	
public 
LoginException 
( 
string $
message% ,
,, -
string. 4
objectIdentifier5 E
)E F
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
} 	
public 
LoginException 
( 
string $
message% ,
,, -
string. 4
objectIdentifier5 E
,E F
	ExceptionG P
innerQ V
)V W
: 
base 
( 
message 
, 
objectIdentifier ,
,, -
inner. 3
)3 4
{ 	
} 	
public 
LoginException 
( 
string $
message% ,
,, -
	Exception. 7
inner8 =
)= >
: 
base 
( 
message 
, 
inner !
)! "
{ 	
}   	
	protected"" 
LoginException""  
(""  !
SerializationInfo""! 2
info""3 7
,""7 8
StreamingContext""9 I
context""J Q
)""Q R
:## 
base## 
(## 
info## 
,## 
context## 
)##  
{$$ 	
}%% 	
['' 	
SecurityPermission''	 
('' 
SecurityAction'' *
.''* +
Demand''+ 1
,''1 2"
SerializationFormatter''3 I
=''J K
true''L P
)''P Q
]''Q R
public(( 
override(( 
void(( 
GetObjectData(( *
(((* +
SerializationInfo((+ <
info((= A
,((A B
StreamingContext((C S
context((T [
)(([ \
{)) 	
if** 
(** 
info** 
==** 
null** 
)** 
{++ 
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
$str,,0 6
),,6 7
;,,7 8
}-- 
base// 
.// 
GetObjectData// 
(// 
info// #
,//# $
context//% ,
)//, -
;//- .
}00 	
}11 
}22 ‚
cC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\ObjectCreateException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public 

class !
ObjectCreateException &
:' (
ObjectException) 8
{		 
public

 !
ObjectCreateException

 $
(

$ %
)

% &
{ 	
} 	
public !
ObjectCreateException $
($ %
string% +
message, 3
)3 4
: 
base 
( 
message 
) 
{ 	
} 	
public !
ObjectCreateException $
($ %
string% +
message, 3
,3 4
	Exception5 >
inner? D
)D E
: 
base 
( 
message 
, 
inner !
)! "
{ 	
} 	
public !
ObjectCreateException $
($ %
string% +
message, 3
,3 4
string5 ;
objectIdentifier< L
)L M
:N O
baseP T
(T U
messageU \
,\ ]
objectIdentifier^ n
)n o
{ 	
} 	
public !
ObjectCreateException $
($ %
string% +
message, 3
,3 4
string5 ;
objectIdentifier< L
,L M
	ExceptionN W
innerX ]
)] ^
:_ `
basea e
(e f
messagef m
,m n
objectIdentifiero 
,	 Ä
inner
Å Ü
)
Ü á
{ 	
} 	
	protected   !
ObjectCreateException   '
(  ' (
SerializationInfo  ( 9
info  : >
,  > ?
StreamingContext  @ P
context  Q X
)  X Y
:!! 
base!! 
(!! 
info!! 
,!! 
context!! 
)!!  
{"" 	
}## 	
[%% 	
SecurityPermission%%	 
(%% 
SecurityAction%% *
.%%* +
Demand%%+ 1
,%%1 2"
SerializationFormatter%%3 I
=%%J K
true%%L P
)%%P Q
]%%Q R
public&& 
override&& 
void&& 
GetObjectData&& *
(&&* +
SerializationInfo&&+ <
info&&= A
,&&A B
StreamingContext&&C S
context&&T [
)&&[ \
{'' 	
if(( 
((( 
info(( 
==(( 
null(( 
)(( 
{)) 
throw** 
new** !
ArgumentNullException** /
(**/ 0
$str**0 6
)**6 7
;**7 8
}++ 
base-- 
.-- 
GetObjectData-- 
(-- 
info-- #
,--# $
context--% ,
)--, -
;--- .
}.. 	
}// 
}00 ›
cC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\ObjectDeleteException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public 

class !
ObjectDeleteException &
:' (
ObjectException) 8
{		 
public

 !
ObjectDeleteException

 $
(

$ %
)

% &
{ 	
} 	
public !
ObjectDeleteException $
($ %
string% +
message, 3
)3 4
: 
base 
( 
message 
) 
{ 	
} 	
public !
ObjectDeleteException $
($ %
string% +
message, 3
,3 4
string5 ;
objectIdentifier< L
)L M
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
} 	
public !
ObjectDeleteException $
($ %
string% +
message, 3
,3 4
string5 ;
objectIdentifier< L
,L M
	ExceptionN W
innerX ]
)] ^
: 
base 
( 
message 
, 
objectIdentifier ,
,, -
inner. 3
)3 4
{ 	
} 	
public !
ObjectDeleteException $
($ %
string% +
message, 3
,3 4
	Exception5 >
inner? D
)D E
: 
base 
( 
message 
, 
inner !
)! "
{ 	
}   	
	protected"" !
ObjectDeleteException"" '
(""' (
SerializationInfo""( 9
info"": >
,""> ?
StreamingContext""@ P
context""Q X
)""X Y
:## 
base## 
(## 
info## 
,## 
context## 
)##  
{$$ 	
}%% 	
['' 	
SecurityPermission''	 
('' 
SecurityAction'' *
.''* +
Demand''+ 1
,''1 2"
SerializationFormatter''3 I
=''J K
true''L P
)''P Q
]''Q R
public(( 
override(( 
void(( 
GetObjectData(( *
(((* +
SerializationInfo((+ <
info((= A
,((A B
StreamingContext((C S
context((T [
)(([ \
{)) 	
if** 
(** 
info** 
==** 
null** 
)** 
{++ 
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
$str,,0 6
),,6 7
;,,7 8
}-- 
base// 
.// 
GetObjectData// 
(// 
info// #
,//# $
context//% ,
)//, -
;//- .
}00 	
}11 
}22 Ÿ!
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\ObjectException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public		 

class		 
ObjectException		  
:		! "
	Exception		# ,
{

 
public 
string 
ObjectIdentifier &
{' (
get) ,
;, -
}. /
=0 1
$str2 @
;@ A
public 
ObjectException 
( 
)  
{ 	
} 	
public 
ObjectException 
( 
string %
message& -
)- .
: 
base 
( 
message 
) 
{ 	
} 	
public 
ObjectException 
( 
string %
message& -
,- .
	Exception/ 8
inner9 >
)> ?
: 
base 
( 
message 
, 
inner !
)! "
{ 	
} 	
public 
ObjectException 
( 
string %
message& -
,- .
string/ 5
objectIdentifier6 F
)F G
:H I
baseJ N
(N O
messageO V
)V W
{ 	
ObjectIdentifier 
+= 
objectIdentifier  0
;0 1
} 	
public   
ObjectException   
(   
string   %
message  & -
,  - .
string  / 5
objectIdentifier  6 F
,  F G
	Exception  H Q
inner  R W
)  W X
:  Y Z
base  [ _
(  _ `
message  ` g
,  g h
inner  i n
)  n o
{!! 	
ObjectIdentifier"" 
+="" 
objectIdentifier""  0
;""0 1
}## 	
	protected%% 
ObjectException%% !
(%%! "
SerializationInfo%%" 3
info%%4 8
,%%8 9
StreamingContext%%: J
context%%K R
)%%R S
:&& 
base&& 
(&& 
info&& 
,&& 
context&& 
)&&  
{'' 	
ObjectIdentifier(( 
=(( 
info(( #
.((# $
	GetString(($ -
(((- .
$str((. @
)((@ A
;((A B
})) 	
[++ 	
SecurityPermission++	 
(++ 
SecurityAction++ *
.++* +
Demand+++ 1
,++1 2"
SerializationFormatter++3 I
=++J K
true++L P
)++P Q
]++Q R
public,, 
override,, 
void,, 
GetObjectData,, *
(,,* +
SerializationInfo,,+ <
info,,= A
,,,A B
StreamingContext,,C S
context,,T [
),,[ \
{-- 	
if.. 
(.. 
info.. 
==.. 
null.. 
).. 
{// 
throw00 
new00 !
ArgumentNullException00 /
(00/ 0
$str000 6
)006 7
;007 8
}11 
info33 
.33 
AddValue33 
(33 
$str33 ,
,33, -
ObjectIdentifier33. >
)33> ?
;33? @
base55 
.55 
GetObjectData55 
(55 
info55 #
,55# $
context55% ,
)55, -
;55- .
}66 	
public88 
override88 
string88 
ToString88 '
(88' (
)88( )
{99 	
var:: 
objectIdentifier::  
=::! "
ObjectIdentifier::# 3
.::3 4
Length::4 :
>::; <*
StandardMessageLengthConstants::= [
.::[ \

IDENTIFIER::\ f
?::g h
ObjectIdentifier::i y
+::z {
$str	::| Ä
:
::Å Ç
$str
::É Ö
;
::Ö Ü
return<< 
Message<< 
+<< 
objectIdentifier<< -
;<<- .
}== 	
}>> 
}?? Ì
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\ObjectNotFoundException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public 

class #
ObjectNotFoundException (
:) *
ObjectException+ :
{		 
public

 #
ObjectNotFoundException

 &
(

& '
)

' (
{ 	
} 	
public #
ObjectNotFoundException &
(& '
string' -
message. 5
)5 6
: 
base 
( 
message 
) 
{ 	
} 	
public #
ObjectNotFoundException &
(& '
string' -
message. 5
,5 6
string7 =
objectIdentifier> N
)N O
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
} 	
public #
ObjectNotFoundException &
(& '
string' -
message. 5
,5 6
string7 =
objectIdentifier> N
,N O
	ExceptionP Y
innerZ _
)_ `
: 
base 
( 
message 
, 
objectIdentifier ,
,, -
inner. 3
)3 4
{ 	
} 	
public #
ObjectNotFoundException &
(& '
string' -
message. 5
,5 6
	Exception7 @
innerA F
)F G
: 
base 
( 
message 
, 
inner !
)! "
{ 	
}   	
	protected"" #
ObjectNotFoundException"" )
("") *
SerializationInfo""* ;
info""< @
,""@ A
StreamingContext""B R
context""S Z
)""Z [
:## 
base## 
(## 
info## 
,## 
context## 
)##  
{$$ 	
}%% 	
['' 	
SecurityPermission''	 
('' 
SecurityAction'' *
.''* +
Demand''+ 1
,''1 2"
SerializationFormatter''3 I
=''J K
true''L P
)''P Q
]''Q R
public(( 
override(( 
void(( 
GetObjectData(( *
(((* +
SerializationInfo((+ <
info((= A
,((A B
StreamingContext((C S
context((T [
)(([ \
{)) 	
if** 
(** 
info** 
==** 
null** 
)** 
{++ 
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
$str,,0 6
),,6 7
;,,7 8
}-- 
base// 
.// 
GetObjectData// 
(// 
info// #
,//# $
context//% ,
)//, -
;//- .
}00 	
}11 
}22 œ,
cC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\ObjectUpdateException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public		 

class		 !
ObjectUpdateException		 &
:		' (
ObjectException		) 8
{

 
public 
string 
UpdateValue !
{" #
get$ '
;' (
}) *
=+ ,
$str- L
;L M
public !
ObjectUpdateException $
($ %
)% &
{ 	
} 	
public !
ObjectUpdateException $
($ %
string% +
message, 3
)3 4
: 
base 
( 
message 
) 
{ 	
} 	
public !
ObjectUpdateException $
($ %
string% +
message, 3
,3 4
string5 ;
objectIdentifier< L
)L M
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
} 	
public !
ObjectUpdateException $
($ %
string% +
message, 3
,3 4
string5 ;
objectIdentifier< L
,L M
stringN T
updateValueU `
)` a
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
UpdateValue 
+= 
updateValue &
;& '
} 	
public!! !
ObjectUpdateException!! $
(!!$ %
string!!% +
message!!, 3
,!!3 4
string!!5 ;
objectIdentifier!!< L
,!!L M
	Exception!!N W
inner!!X ]
)!!] ^
:"" 
base"" 
("" 
message"" 
,"" 
objectIdentifier"" ,
,"", -
inner"". 3
)""3 4
{## 	
}$$ 	
public&& !
ObjectUpdateException&& $
(&&$ %
string&&% +
message&&, 3
,&&3 4
string&&5 ;
objectIdentifier&&< L
,&&L M
string&&N T
updateValue&&U `
,&&` a
	Exception&&b k
inner&&l q
)&&q r
:'' 
base'' 
('' 
message'' 
,'' 
objectIdentifier'' ,
,'', -
inner''. 3
)''3 4
{(( 	
UpdateValue)) 
+=)) 
updateValue)) &
;))& '
}** 	
public,, !
ObjectUpdateException,, $
(,,$ %
string,,% +
message,,, 3
,,,3 4
	Exception,,5 >
inner,,? D
),,D E
:-- 
base-- 
(-- 
message-- 
,-- 
inner-- !
)--! "
{.. 	
}// 	
	protected11 !
ObjectUpdateException11 '
(11' (
SerializationInfo11( 9
info11: >
,11> ?
StreamingContext11@ P
context11Q X
)11X Y
:22 
base22 
(22 
info22 
,22 
context22 
)22  
{33 	
UpdateValue44 
=44 
info44 
.44 
	GetString44 (
(44( )
$str44) 6
)446 7
;447 8
}55 	
[77 	
SecurityPermission77	 
(77 
SecurityAction77 *
.77* +
Demand77+ 1
,771 2"
SerializationFormatter773 I
=77J K
true77L P
)77P Q
]77Q R
public88 
override88 
void88 
GetObjectData88 *
(88* +
SerializationInfo88+ <
info88= A
,88A B
StreamingContext88C S
context88T [
)88[ \
{99 	
if:: 
(:: 
info:: 
==:: 
null:: 
):: 
{;; 
throw<< 
new<< !
ArgumentNullException<< /
(<</ 0
$str<<0 6
)<<6 7
;<<7 8
}== 
info?? 
.?? 
AddValue?? 
(?? 
$str?? '
,??' (
UpdateValue??) 4
)??4 5
;??5 6
baseAA 
.AA 
GetObjectDataAA 
(AA 
infoAA #
,AA# $
contextAA% ,
)AA, -
;AA- .
}BB 	
publicDD 
overrideDD 
stringDD 
ToStringDD '
(DD' (
)DD( )
{EE 	
varFF 
objectIdentifierFF  
=FF! "
ObjectIdentifierFF# 3
.FF3 4
LengthFF4 :
>FF; <*
StandardMessageLengthConstantsFF= [
.FF[ \

IDENTIFIERFF\ f
?FFg h
ObjectIdentifierFFi y
+FFz {
$str	FF| Ä
:
FFÅ Ç
$str
FFÉ Ö
;
FFÖ Ü
varGG 
updateValueGG 
=GG 
UpdateValueGG )
.GG) *
LengthGG* 0
>GG1 2*
StandardMessageLengthConstantsGG3 Q
.GGQ R
UPDATE_VALUEGGR ^
?GG_ `
UpdateValueGGa l
+GGm n
$strGGo s
:GGt u
$strGGv x
;GGx y
returnII 
MessageII 
+II 
objectIdentifierII -
+II. /
updateValueII0 ;
;II; <
}JJ 	
}KK 
}LL Ω
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\RegisterException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public 

class 
RegisterException "
:# $
ObjectException% 4
{		 
public

 
RegisterException

  
(

  !
)

! "
{ 	
} 	
public 
RegisterException  
(  !
string! '
message( /
)/ 0
: 
base 
( 
message 
) 
{ 	
} 	
public 
RegisterException  
(  !
string! '
message( /
,/ 0
string1 7
objectIdentifier8 H
)H I
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
} 	
public 
RegisterException  
(  !
string! '
message( /
,/ 0
string1 7
objectIdentifier8 H
,H I
	ExceptionJ S
innerT Y
)Y Z
: 
base 
( 
message 
, 
objectIdentifier ,
,, -
inner. 3
)3 4
{ 	
} 	
public 
RegisterException  
(  !
string! '
message( /
,/ 0
	Exception1 :
inner; @
)@ A
: 
base 
( 
message 
, 
inner !
)! "
{ 	
}   	
	protected"" 
RegisterException"" #
(""# $
SerializationInfo""$ 5
info""6 :
,"": ;
StreamingContext""< L
context""M T
)""T U
:## 
base## 
(## 
info## 
,## 
context## 
)##  
{$$ 	
}%% 	
['' 	
SecurityPermission''	 
('' 
SecurityAction'' *
.''* +
Demand''+ 1
,''1 2"
SerializationFormatter''3 I
=''J K
true''L P
)''P Q
]''Q R
public(( 
override(( 
void(( 
GetObjectData(( *
(((* +
SerializationInfo((+ <
info((= A
,((A B
StreamingContext((C S
context((T [
)(([ \
{)) 	
if** 
(** 
info** 
==** 
null** 
)** 
{++ 
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
$str,,0 6
),,6 7
;,,7 8
}-- 
base// 
.// 
GetObjectData// 
(// 
info// #
,//# $
context//% ,
)//, -
;//- .
}00 	
}11 
}22 Ø+
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\RoleException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public		 

class		 
RoleException		 
:		 
ObjectException		  /
{

 
public 
string 
Role 
{ 
get  
;  !
}" #
=$ %
$str& .
;. /
public 
RoleException 
( 
) 
{ 	
} 	
public 
RoleException 
( 
string #
message$ +
)+ ,
: 
base 
( 
message 
) 
{ 	
} 	
public 
RoleException 
( 
string #
message$ +
,+ ,
	Exception- 6
inner7 <
)< =
: 
base 
( 
message 
, 
inner !
)! "
{ 	
} 	
public 
RoleException 
( 
string #
message$ +
,+ ,
string- 3
role4 8
,8 9
	Exception: C
innerD I
)I J
:K L
baseM Q
(Q R
messageR Y
,Y Z
inner[ `
)` a
{ 	
Role 
+= 
role 
; 
} 	
public   
RoleException   
(   
string   #
message  $ +
,  + ,
string  - 3
role  4 8
)  8 9
:  : ;
base  < @
(  @ A
message  A H
)  H I
{!! 	
Role"" 
+="" 
role"" 
;"" 
}## 	
public%% 
RoleException%% 
(%% 
string%% #
message%%$ +
,%%+ ,
string%%- 3
userIdentifier%%4 B
,%%B C
string%%D J
role%%K O
)%%O P
:%%Q R
base%%S W
(%%W X
message%%X _
,%%_ `
userIdentifier%%a o
)%%o p
{&& 	
Role'' 
+='' 
role'' 
;'' 
}(( 	
public** 
RoleException** 
(** 
string** #
message**$ +
,**+ ,
string**- 3
userIdentifier**4 B
,**B C
string**D J
role**K O
,**O P
	Exception**Q Z
inner**[ `
)**` a
:**b c
base**d h
(**h i
message**i p
,**p q
userIdentifier	**r Ä
,
**Ä Å
inner
**Ç á
)
**á à
{++ 	
Role,, 
+=,, 
role,, 
;,, 
}-- 	
	protected// 
RoleException// 
(//  
SerializationInfo//  1
info//2 6
,//6 7
StreamingContext//8 H
context//I P
)//P Q
:00 
base00 
(00 
info00 
,00 
context00 
)00  
{11 	
Role22 
=22 
info22 
.22 
	GetString22 !
(22! "
$str22" (
)22( )
;22) *
}33 	
[55 	
SecurityPermission55	 
(55 
SecurityAction55 *
.55* +
Demand55+ 1
,551 2"
SerializationFormatter553 I
=55J K
true55L P
)55P Q
]55Q R
public66 
override66 
void66 
GetObjectData66 *
(66* +
SerializationInfo66+ <
info66= A
,66A B
StreamingContext66C S
context66T [
)66[ \
{77 	
if88 
(88 
info88 
==88 
null88 
)88 
{99 
throw:: 
new:: !
ArgumentNullException:: /
(::/ 0
$str::0 6
)::6 7
;::7 8
};; 
info== 
.== 
AddValue== 
(== 
$str==  
,==  !
Role==" &
)==& '
;==' (
base?? 
.?? 
GetObjectData?? 
(?? 
info?? #
,??# $
context??% ,
)??, -
;??- .
}@@ 	
publicBB 
overrideBB 
stringBB 
ToStringBB '
(BB' (
)BB( )
{CC 	
varDD 
objectIdentifierDD  
=DD! "
ObjectIdentifierDD# 3
.DD3 4
LengthDD4 :
>DD; <*
StandardMessageLengthConstantsDD= [
.DD[ \

IDENTIFIERDD\ f
?DDg h
ObjectIdentifierDDi y
+DDz {
$str	DD| Ä
:
DDÅ Ç
$str
DDÉ Ö
;
DDÖ Ü
varEE 
roleEE 
=EE 
RoleEE 
.EE 
LengthEE "
>EE# $*
StandardMessageLengthConstantsEE% C
.EEC D
ROLEEED H
?EEI J
RoleEEK O
+EEP Q
$strEER V
:EEW X
$strEEY [
;EE[ \
returnGG 
MessageGG 
+GG 
objectIdentifierGG -
+GG. /
roleGG0 4
;GG4 5
}HH 	
}II 
}JJ æ
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\SendEmailException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public 

class 
SendEmailException #
:$ %
ObjectException& 5
{		 
public

 
SendEmailException

 !
(

! "
)

" #
{ 	
} 	
public 
SendEmailException !
(! "
string" (
message) 0
)0 1
: 
base 
( 
message 
) 
{ 	
} 	
public 
SendEmailException !
(! "
string" (
message) 0
,0 1
	Exception2 ;
inner< A
)A B
: 
base 
( 
message 
, 
inner !
)! "
{ 	
} 	
public 
SendEmailException !
(! "
string" (
message) 0
,0 1
string2 8
userIdentifier9 G
)G H
:I J
baseK O
(O P
messageP W
,W X
userIdentifierY g
)g h
{i j
}k l
public 
SendEmailException !
(! "
string" (
message) 0
,0 1
string2 8
userIdentifier9 G
,G H
	ExceptionI R
innerS X
)X Y
:Z [
base\ `
(` a
messagea h
,h i
userIdentifierj x
,x y
innerz 
)	 Ä
{ 	
} 	
	protected 
SendEmailException $
($ %
SerializationInfo% 6
info7 ;
,; <
StreamingContext= M
contextN U
)U V
:   
base   
(   
info   
,   
context   
)    
{!! 	
}"" 	
[$$ 	
SecurityPermission$$	 
($$ 
SecurityAction$$ *
.$$* +
Demand$$+ 1
,$$1 2"
SerializationFormatter$$3 I
=$$J K
true$$L P
)$$P Q
]$$Q R
public%% 
override%% 
void%% 
GetObjectData%% *
(%%* +
SerializationInfo%%+ <
info%%= A
,%%A B
StreamingContext%%C S
context%%T [
)%%[ \
{&& 	
if'' 
('' 
info'' 
=='' 
null'' 
)'' 
{(( 
throw)) 
new)) !
ArgumentNullException)) /
())/ 0
$str))0 6
)))6 7
;))7 8
}** 
base,, 
.,, 
GetObjectData,, 
(,, 
info,, #
,,,# $
context,,% ,
),,, -
;,,- .
}-- 	
}.. 
}// õ,
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Exceptions\ValidationException.cs
	namespace 	
Application
 
. 

Exceptions  
{ 
[ 
Serializable 
] 
public		 

class		 
ValidationException		 $
:		% &
ObjectException		' 6
{

 
public 
string 
Value 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
=2 3
$str4 =
;= >
public 
ValidationException "
(" #
)# $
{ 	
} 	
public 
ValidationException "
(" #
string# )
message* 1
)1 2
: 
base 
( 
message 
) 
{ 	
} 	
public 
ValidationException "
(" #
string# )
message* 1
,1 2
string3 9
objectIdentifier: J
)J K
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
} 	
public 
ValidationException "
(" #
string# )
message* 1
,1 2
string3 9
objectIdentifier: J
,J K
stringL R
valueS X
)X Y
: 
base 
( 
message 
, 
objectIdentifier ,
), -
{ 	
Value 
+= 
value 
; 
} 	
public!! 
ValidationException!! "
(!!" #
string!!# )
message!!* 1
,!!1 2
string!!3 9
objectIdentifier!!: J
,!!J K
string!!L R
value!!S X
,!!X Y
	Exception!!Z c
inner!!d i
)!!i j
:"" 
base"" 
("" 
message"" 
,"" 
objectIdentifier"" ,
,"", -
inner"". 3
)""3 4
{## 	
Value$$ 
+=$$ 
value$$ 
;$$ 
}%% 	
public'' 
ValidationException'' "
(''" #
string''# )
message''* 1
,''1 2
string''3 9
objectIdentifier'': J
,''J K
	Exception''L U
inner''V [
)''[ \
:(( 
base(( 
((( 
message(( 
,(( 
objectIdentifier(( ,
,((, -
inner((. 3
)((3 4
{)) 	
}** 	
public,, 
ValidationException,, "
(,," #
string,,# )
message,,* 1
,,,1 2
	Exception,,3 <
inner,,= B
),,B C
:-- 
base-- 
(-- 
message-- 
,-- 
inner-- !
)--! "
{.. 	
}// 	
	protected11 
ValidationException11 %
(11% &
SerializationInfo11& 7
info118 <
,11< =
StreamingContext11> N
context11O V
)11V W
:22 
base22 
(22 
info22 
,22 
context22 
)22  
{33 	
Value44 
=44 
info44 
.44 
	GetString44 "
(44" #
$str44# *
)44* +
;44+ ,
}55 	
[77 	
SecurityPermission77	 
(77 
SecurityAction77 *
.77* +
Demand77+ 1
,771 2"
SerializationFormatter773 I
=77J K
true77L P
)77P Q
]77Q R
public88 
override88 
void88 
GetObjectData88 *
(88* +
SerializationInfo88+ <
info88= A
,88A B
StreamingContext88C S
context88T [
)88[ \
{99 	
if:: 
(:: 
info:: 
==:: 
null:: 
):: 
{;; 
throw<< 
new<< !
ArgumentNullException<< /
(<</ 0
$str<<0 6
)<<6 7
;<<7 8
}== 
info?? 
.?? 
AddValue?? 
(?? 
$str?? !
,??! "
Value??# (
)??( )
;??) *
baseAA 
.AA 
GetObjectDataAA 
(AA 
infoAA #
,AA# $
contextAA% ,
)AA, -
;AA- .
}BB 	
publicDD 
overrideDD 
stringDD 
ToStringDD '
(DD' (
)DD( )
{EE 	
varFF 
objectIdentifierFF  
=FF! "
ObjectIdentifierFF# 3
.FF3 4
LengthFF4 :
>FF; <*
StandardMessageLengthConstantsFF= [
.FF[ \

IDENTIFIERFF\ f
?FFg h
ObjectIdentifierFFi y
+FFz {
$str	FF| Ä
:
FFÅ Ç
$str
FFÉ Ö
;
FFÖ Ü
varGG 
valueGG 
=GG 
ValueGG 
.GG 
LengthGG $
>GG% &*
StandardMessageLengthConstantsGG' E
.GGE F
VALUEGGF K
?GGL M
ValueGGN S
+GGT U
$strGGV Z
:GGZ [
$strGG\ ^
;GG^ _
returnII 
MessageII 
+II 
objectIdentifierII -
+II. /
valueII0 5
;II5 6
}JJ 	
}KK 
}LL  	
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Filters\AnimalFilter.cs
	namespace 	
Application
 
. 
Filters 
{ 
public 

class 
AnimalFilter 
{ 
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Weight 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DateOfBirth !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 

IsDisabled		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
IsNew

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} Ã
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Filters\AnimalPaginationFilter.cs
	namespace 	
Application
 
. 
Filters 
{ 
public 

class "
AnimalPaginationFilter '
{ 
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, .
;. /
} 
} ﬂ
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Filters\ArticleFilter.cs
	namespace 	
Application
 
. 
Filters 
{ 
public 

class 
ArticleFilter 
{ 
public 
string 
TitleOrContent $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Tag 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Œ
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Filters\ArticlePaginationFilter.cs
	namespace 	
Application
 
. 
Filters 
{ 
public 

class #
ArticlePaginationFilter (
{ 
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} «
VC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Filters\UserFilters.cs
	namespace 	
Application
 
. 
Filters 
{ 
public 

class 
UserFilters 
{ 
public 
string 
VolunteerCriteria '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ˇ*
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Helpers\CookieHelper.cs
	namespace 	
Application
 
. 
Helpers 
{ 
public		 

static		 
class		 
CookieHelper		 $
{

 
public 
static 
void 
CreateCookie '
(' (
IConfiguration( 6
configuration7 D
,D E
HttpResponseF R
responseS [
,[ \
bool] a
isPersistentb n
,n o
UserTokenDtop |
	userToken	} Ü
)
Ü á
{ 	
CleanCookies 
( 
configuration &
,& '
response( 0
)0 1
;1 2
var 
CookieOptions 
= 
new  #
CookieOptions$ 1
(1 2
)2 3
{4 5
HttpOnly6 >
=? @
trueA E
,E F
SecureG M
=N O
falseP U
,U V
IsEssentialW b
=c d
truee i
}j k
;k l
if 
( 
isPersistent 
) 
{ 
CookieOptions 
. 
MaxAge $
=% &
TimeSpan' /
./ 0
FromDays0 8
(8 9
Convert9 @
.@ A
ToDoubleA I
(I J
configurationJ W
[W X
$strX j
]j k
)k l
)l m
;m n
response 
. 
Cookies  
.  !
Append! '
(' (
configuration( 5
[5 6
$str6 G
]G H
,H I
JsonConvertJ U
.U V
SerializeObjectV e
(e f
	userTokenf o
)o p
,p q
CookieOptionsr 
)	 Ä
;
Ä Å
response 
. 
Cookies  
.  !
Append! '
(' (
configuration( 5
[5 6
$str6 N
]N O
,O P
$strQ W
)W X
;X Y
} 
else 
{ 
response 
. 
Cookies  
.  !
Append! '
(' (
configuration( 5
[5 6
$str6 G
]G H
,H I
JsonConvertJ U
.U V
SerializeObjectV e
(e f
	userTokenf o
)o p
,p q
CookieOptionsr 
)	 Ä
;
Ä Å
} 
} 	
public 
static 
void 
RefreshCookie (
(( )
IConfiguration) 7
configuration8 E
,E F
HttpRequestG R
requestS Z
,Z [
HttpResponse\ h
responsei q
,q r
UserTokenDtos 
	userToken
Ä â
)
â ä
{ 	
var 
isPersistent 
= 
request &
.& '
Cookies' .
.. /
ContainsKey/ :
(: ;
configuration; H
[H I
$strI a
]a b
)b c
;c d
CreateCookie 
( 
configuration &
,& '
response( 0
,0 1
isPersistent2 >
,> ?
	userToken@ I
)I J
;J K
} 	
public!! 
static!! 
UserTokenDto!! "
GetTokenValue!!# 0
(!!0 1
IConfiguration!!1 ?
configuration!!@ M
,!!M N
HttpRequest!!O Z
request!![ b
)!!b c
{"" 	
var## 
cookieValue## 
=## 
request## %
.##% &
Cookies##& -
[##- .
configuration##. ;
[##; <
$str##< M
]##M N
]##N O
;##O P
if$$ 
($$ 
!$$ 
string$$ 
.$$ 
IsNullOrEmpty$$ %
($$% &
cookieValue$$& 1
)$$1 2
)$$2 3
{%% 
return&& 
JsonConvert&& "
.&&" #
DeserializeObject&&# 4
<&&4 5
UserTokenDto&&5 A
>&&A B
(&&B C
cookieValue&&C N
)&&N O
;&&O P
}'' 
return(( 
null(( 
;(( 
})) 	
public++ 
static++ 
void++ 
CleanCookies++ '
(++' (
IConfiguration++( 6
configuration++7 D
,++D E
HttpResponse++F R
response++S [
)++[ \
{,, 	
response-- 
.-- 
Cookies-- 
.-- 
Delete-- #
(--# $
configuration--$ 1
[--1 2
$str--2 J
]--J K
)--K L
;--L M
response.. 
... 
Cookies.. 
... 
Delete.. #
(..# $
configuration..$ 1
[..1 2
$str..2 C
]..C D
)..D E
;..E F
response// 
.// 
Cookies// 
.// 
Delete// #
(//# $
configuration//$ 1
[//1 2
$str//2 F
]//F G
)//G H
;//H I
}00 	
}11 
}22 ô
VC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Helpers\EmailHelper.cs
	namespace 	
Application
 
. 
Helpers 
{		 
public

 

class

 
EmailHelper

 
:

 
IEmailHelper

 *
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IEmailService &
_emailService' 4
;4 5
private 
readonly 
IHostingEnvironment ,
_environment- 9
;9 :
public 
EmailHelper 
( 
IConfiguration )
configuration* 7
,7 8
IEmailService9 F
emailServiceG S
,S T
IHostingEnvironmentU h
environmenti t
)t u
{ 	
_configuration 
= 
configuration *
;* +
_emailService 
= 
emailService (
;( )
_environment 
= 
environment &
;& '
} 	
public 
async 
Task 
GetDataAndSendAsync -
(- .
string. 4
emailReceiver5 B
,B C
stringD J#
PathToEmailBodyTempalteK b
,b c
stringd j
emailSubjectTemlatek ~
,~ 
params
Ä Ü
string
á ç
[
ç é
]
é è
links
ê ï
)
ï ñ
{ 	
var 
pathToTemplate 
=  
_environment! -
.- .
WebRootPath. 9
+: ;
_configuration< J
[J K#
PathToEmailBodyTempalteK b
]b c
;c d
string 
content 
= 
string #
.# $
Empty$ )
;) *
using 
( 

TextReader 
reader $
=% &
new' *
StreamReader+ 7
(7 8
pathToTemplate8 F
)F G
)G H
{ 
content 
= 
await 
reader  &
.& '
ReadToEndAsync' 5
(5 6
)6 7
;7 8
}   
var"" #
formatedTemplateContent"" '
=""( )
string""* 0
.""0 1
Format""1 7
(""7 8
content""8 ?
,""? @
links""A F
)""F G
;""G H
var## 
emailSubject## 
=## 
_configuration## -
[##- .
emailSubjectTemlate##. A
]##A B
;##B C
await%% 
_emailService%% 
.%%  
SendEmailAsync%%  .
(%%. /
emailReceiver%%/ <
,%%< =
emailSubject%%> J
,%%J K#
formatedTemplateContent%%L c
)%%c d
;%%d e
}&& 	
}'' 
}(( ΩF
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Helpers\PaginationHelper.cs
	namespace 	
Application
 
. 
Helpers 
{		 
public

 

static

 
class

 
PaginationHelper

 (
{ 
public 
static 

Pagination  
<  !
T! "
>" ##
CreatePaginatedResponse$ ;
<; <
T< =
,= >
K> ?
>? @
(@ A
IUriServiceA L

uriServiceM W
,W X!
AnimalPaginationQueryY n
paginationQueryo ~
,~ 
ICollection 
< 
T 
> 
response #
,# $
ICollection% 0
<0 1
K1 2
>2 3

allAnimals4 >
,> ?
string@ F
specificUrlG R
,R S
AnimalQueryT _
query` e
)e f
{ 	
var 

totalPages 
= 
Math !
.! "
Ceiling" )
() *
(* +
double+ 1
)1 2

allAnimals2 <
.< =
Count= B
/C D
paginationQueryE T
.T U
PageSizeU ]
)] ^
;^ _
var 
nextPage 
= 
( 
paginationQuery +
.+ ,

PageNumber, 6
>=7 9
$num: ;
&&< >
paginationQuery? N
.N O

PageNumberO Y
<Z [

totalPages\ f
)f g
? 

uriService 
. 
GetAllPostUri )
() *
specificUrl* 5
,5 6
new7 :!
AnimalPaginationQuery; P
(P Q
)Q R
{ 

PageNumber 
= 
paginationQuery  /
./ 0

PageNumber0 :
+; <
$num= >
,> ?
PageSize 
= 
paginationQuery -
.- .
PageSize. 6
} 
, 
query 
) 
. 
ToString  
(  !
)! "
: 
null 
; 
var 
previousPage 
= 
paginationQuery .
.. /

PageNumber/ 9
-: ;
$num< =
>=> @
$numA B
? 

uriService 
. 
GetAllPostUri )
() *
specificUrl* 5
,5 6
new7 :!
AnimalPaginationQuery; P
(P Q
)Q R
{ 

PageNumber 
= 
paginationQuery  /
./ 0

PageNumber0 :
-; <
$num= >
,> ?
PageSize 
= 
paginationQuery -
.- .
PageSize. 6
} 
, 
query 
) 
. 
ToString !
(! "
)" #
: 
null 
; 
var 
paginationResponse "
=# $
new% (

Pagination) 3
<3 4
T4 5
>5 6
{   
Data!! 
=!! 
response!! 
.!!  
AsEnumerable!!  ,
(!!, -
)!!- .
,!!. /

PageNumber"" 
="" 
paginationQuery"" ,
."", -

PageNumber""- 7
>=""8 :
$num""; <
?""= >
paginationQuery""? N
.""N O

PageNumber""O Y
:""Z [
(""\ ]
int""] `
?""` a
)""a b
null""b f
,""f g
PageSize## 
=## 
paginationQuery## *
.##* +
PageSize##+ 3
>=##4 6
$num##7 8
?##9 :
paginationQuery##; J
.##J K
PageSize##K S
:##T U
(##V W
int##W Z
?##Z [
)##[ \
null##\ `
,##` a
NextPage$$ 
=$$ 
response$$ #
.$$# $
Any$$$ '
($$' (
)$$( )
?$$* +
nextPage$$, 4
:$$5 6
null$$7 ;
,$$; <
PreviousPage%% 
=%% 
previousPage%% +
,%%+ ,

TotalPages&& 
=&& 

totalPages&& '
}'' 
;'' 
return)) 
paginationResponse)) %
;))% &
}** 	
public,, 
static,, 

Pagination,,  
<,,  !
T,,! "
>,," ##
CreatePaginatedResponse,,$ ;
<,,; <
T,,< =
,,,= >
K,,? @
>,,@ A
(,,A B
IUriService,,B M

uriService,,N X
,,,X Y"
ArticlePaginationQuery,,Z p
paginationQuery	,,q Ä
,
,,Ä Å
ICollection-- 
<-- 
T-- 
>-- 
response-- #
,--# $
ICollection--% 0
<--0 1
K--1 2
>--2 3
allArticles--4 ?
,--? @
string--A G
specificUrl--H S
,--S T
ArticleQuery--U a
query--b g
)--g h
{.. 	
var// 

totalPages// 
=// 
Math// !
.//! "
Ceiling//" )
(//) *
(//* +
double//+ 1
)//1 2
allArticles//2 =
.//= >
Count//> C
///D E
paginationQuery//F U
.//U V
PageSize//V ^
)//^ _
;//_ `
var00 
nextPage00 
=00 
(00 
paginationQuery00 +
.00+ ,

PageNumber00, 6
>=007 9
$num00: ;
&&00< >
paginationQuery00? N
.00N O

PageNumber00O Y
<00Z [

totalPages00\ f
)00f g
?11 

uriService11 
.11 
GetAllPostUri11 )
(11) *
specificUrl11* 5
,115 6
new117 :"
ArticlePaginationQuery11; Q
(11Q R
)11R S
{22 

PageNumber33 
=33 
paginationQuery33  /
.33/ 0

PageNumber330 :
+33; <
$num33= >
,33> ?
PageSize44 
=44 
paginationQuery44 -
.44- .
PageSize44. 6
}55 
,55 
query55 
)55 
.55 
ToString55 !
(55! "
)55" #
:66 
null66 
;66 
var77 
previousPage77 
=77 
paginationQuery77 .
.77. /

PageNumber77/ 9
-77: ;
$num77< =
>=77> @
$num77A B
?88 

uriService88 
.88 
GetAllPostUri88 )
(88) *
specificUrl88* 5
,885 6
new887 :"
ArticlePaginationQuery88; Q
(88Q R
)88R S
{99 

PageNumber:: 
=:: 
paginationQuery::  /
.::/ 0

PageNumber::0 :
-::; <
$num::= >
,::> ?
PageSize;; 
=;; 
paginationQuery;; -
.;;- .
PageSize;;. 6
}<< 
,<< 
query<< 
)<< 
.<< 
ToString<< !
(<<! "
)<<" #
:== 
null== 
;== 
var?? 
paginationResponse?? "
=??# $
new??% (

Pagination??) 3
<??3 4
T??4 5
>??5 6
{@@ 
DataAA 
=AA 
responseAA 
.AA  
AsEnumerableAA  ,
(AA, -
)AA- .
,AA. /

PageNumberBB 
=BB 
paginationQueryBB ,
.BB, -

PageNumberBB- 7
>=BB8 :
$numBB; <
?BB= >
paginationQueryBB? N
.BBN O

PageNumberBBO Y
:BBZ [
(BB\ ]
intBB] `
?BB` a
)BBa b
nullBBb f
,BBf g
PageSizeCC 
=CC 
paginationQueryCC *
.CC* +
PageSizeCC+ 3
>=CC4 6
$numCC7 8
?CC9 :
paginationQueryCC; J
.CCJ K
PageSizeCCK S
:CCT U
(CCV W
intCCW Z
?CCZ [
)CC[ \
nullCC\ `
,CC` a
NextPageDD 
=DD 
responseDD #
.DD# $
AnyDD$ '
(DD' (
)DD( )
?DD* +
nextPageDD, 4
:DD5 6
nullDD7 ;
,DD; <
PreviousPageEE 
=EE 
previousPageEE +
,EE+ ,

TotalPagesFF 
=FF 

totalPagesFF '
}GG 
;GG 
returnII 
paginationResponseII %
;II% &
}JJ 	
}KK 
}LL ˝
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAddressService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IAddressService $
{ 
Task		 
<		 
IEnumerable		 
<		 

AddressDto		 #
>		# $
>		$ %
GetAllAddresses		& 5
(		5 6
)		6 7
;		7 8
}

 
} ◊
fC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAdoptBookRequestService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface $
IAdoptBookRequestService -
{ 
Task		 
<		 
IEnumerable		 
<		 
AdoptBookRequest		 )
>		) *
>		* +'
GetAllAdoptBookRequestAsync		, G
(		G H
)		H I
;		I J
Task

 "
DeleteAdoptBookRequest

 #
(

# $%
AdoptBookRequestForDelete

$ =
adoptBookRequest

> N
)

N O
;

O P
Task 
< 
IEnumerable 
< 
AdoptBookRequest )
>) *
>* +/
#GetAllAdoptBookDeclinedRequestAsync, O
(O P
stringP V
	userEmailW `
)` a
;a b
} 
} è
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAdoptOrderService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IAdoptOrderService '
{ 
Task		 
<		 
IEnumerable		 
<		 
AdoptOrderDto		 &
>		& '
>		' (
GetAllAdoptOrders		) :
(		: ;
)		; <
;		< =
IEnumerable

 
<

 
AdoptOrderDto

 !
>

! "%
GetAllApprovedAdoptOrders

# <
(

< =
)

= >
;

> ?
IEnumerable 
< 
AdoptOrderDto !
>! "$
GetAllPendingAdoptOrders# ;
(; <
)< =
;= >
IEnumerable 
< 
AdoptOrderDto !
>! "%
GetAllAdoptOrdersByUserId# <
(< =
string= C
idD F
)F G
;G H
Task 
< 
AdoptOrderDto 
> 
GetById #
(# $
long$ (
id) +
)+ ,
;, -
Task 
ApproveAdoptOrder 
( #
AdoptOrderForApproveDto 6
order7 <
)< =
;= >
Task #
ApproveFinalyAdoptOrder $
($ %)
AdoptOrderForApproveFinalyDto% B
orderC H
)H I
;I J
Task 
Delete 
( 
long 
id 
) 
; 
Task 
DeclineAdoptOrder 
( #
AdoptOrderForDeclineDto 6
order7 <
)< =
;= >
} 
} ∑
kC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAnimalLocationHistoryService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface )
IAnimalLocationHistoryService 2
{		 
Task

 &
WriteAnimalLocationHistory

 '
(

' (
Animal

( .
animal

/ 5
)

5 6
;

6 7
IEnumerable 
< $
AnimalLocationHistoryDto ,
>, -$
GetAnimalLocationHistory. F
(F G
longG K
animalIdL T
)T U
;U V
} 
} 
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAnimalService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IAnimalService		 #
{

 

Pagination 
< 
	AnimalDto 
> 
GetAllAnimals +
(+ ,
AnimalFilter, 8
filter9 ?
=@ A
nullB F
,F G"
AnimalPaginationFilterH ^

pagination_ i
=j k
nulll p
)p q
;q r

Pagination 
< "
AnimalIncludeValuesDto )
>) *&
GetAllAnimalsIncludeValues+ E
(E F
AnimalFilterF R
filterS Y
=Z [
null\ `
,` a"
AnimalPaginationFilterb x

pagination	y É
=
Ñ Ö
null
Ü ä
)
ä ã
;
ã å
Task 
< 
IEnumerable 
< 
	AnimalDto "
>" #
># $ 
GetAllAdoptedAnimals% 9
(9 :
): ;
;; <
Task 
< 
IEnumerable 
< 
	AnimalDto "
>" #
># $
GetAllHiddenAnimals% 8
(8 9
)9 :
;: ;
Task 
< 
	AnimalDto 
> 
UpdateAnimal $
($ %
	AnimalDto% .
animal/ 5
)5 6
;6 7
Task  
UpdateApprovedAnimal !
(! "
AnimalApprovedDto" 3
animal4 :
): ;
;; <
Task 
< 
	AnimalDto 
> 
CreateAnimal $
($ % 
AnimalForCreationDto% 9
animal: @
)@ A
;A B
	AnimalDto 
GetById 
( 
long 
id !
)! "
;" #"
AnimalIncludeValuesDto  
GetByIdIncludeValues 3
(3 4
long4 8
id9 ;
); <
;< =
Task 
< 
IEnumerable 
< 
	AnimalDto "
>" #
># $
GetRecommendedPets% 7
(7 8"
AnimalIncludeValuesDto8 N
	animalDtoO X
)X Y
;Y Z
Task 
< 
	AnimalDto 
> 
Delete 
( 
long #
id$ &
)& '
;' (
Task 
< 
AnimalStatisticDto 
>  
GetStatistc! ,
(, -
long- 1
id2 4
)4 5
;5 6
Task 
< 
IEnumerable 
<  
AnimalBookingTimeDto -
>- .
>. /!
GetAnimalsBookingTime0 E
(E F
)F G
;G H
} 
} û
hC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAnimalViewLocationService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface &
IAnimalViewLocationService /
{ 
Task		 #
UpdateViewLocationAsync		 $
(		$ %
long		% )
id		* ,
)		, -
;		- .
IEnumerable

 
<

 !
AnimalViewLocationDto

 )
>

) *#
GetViewLocationByAnimal

+ B
(

B C
long

C G
id

H J
)

J K
;

K L
} 
} ù
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IArticleService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IArticleService $
{		 

Pagination

 
<

 

ArticleDto

 
>

 
GetAllArticles

 -
(

- .
ArticleFilter

. ;
filters

< C
=

D E
null

F J
,

J K#
ArticlePaginationFilter

L c

pagination

d n
=

o p
null

q u
)

u v
;

v w

ArticleDto 

GetArticle 
( 
long "
id# %
)% &
;& '
Task 
PublishArticle 
( !
ArticleForCreationDto 1
articleRequest2 @
)@ A
;A B
Task 
UpdateArticle 
( 
ArticleForUpdateDto .
article/ 6
)6 7
;7 8
Task 
< 

ArticleDto 
> 
DeleteArticle &
(& '
long' +
id, .
). /
;/ 0
Task 
< 
ArticleStatisticDto  
>  !
GetStatistc" -
(- .
long. 2
id3 5
)5 6
;6 7
} 
} ü
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IAttitudeToService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IAttitudeToService		 '
{

 
Task 
< 
IEnumerable 
< 
AttitudeToDto &
>& '
>' (
GetAllAttitudes) 8
(8 9
)9 :
;: ;
Task %
CreateAnimalWithAttitudes &
(& ' 
AnimalForCreationDto' ;
animal< B
,B C
AnimalD J
modelK P
)P Q
;Q R
Task %
UpdateAnimalWithAttitudes &
(& '
	AnimalDto' 0
animal1 7
,7 8
Animal9 ?
model@ E
)E F
;F G
} 
} ﬂ	
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IBlobService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IBlobService !
{		 
Task

 
<

 
IEnumerable

 
<

 
string

 
>

  
>

  !
ListBlobAsync

" /
(

/ 0
)

0 1
;

1 2
Task 
< 
BlobInfoDto 
> 
GetBlobsAsync '
(' (
string( .
name/ 3
)3 4
;4 5
Task 
< 
string 
> 
UploadFileBlobAsync (
(( )
string) /
filePath0 8
,8 9
string: @
fileNameA I
)I J
;J K
Task 
< 
string 
> 
UploadFileBlobAsync (
(( )
	IFormFile) 2
video3 8
)8 9
;9 :
Task 
DeleteBlobAsync 
( 
string #
blobName$ ,
), -
;- .
} 
} à
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IBookedTimeService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IBookedTimeService '
{ 
Task		 
UpdateBookedTime		 
(		 
IEnumerable		 )
<		) *
	BookOrder		* 3
>		3 4

bookOrders		5 ?
)		? @
;		@ A
Task

 
UpdateBookedTime

 
(

 
	BookOrder

 '
	bookOrder

( 1
)

1 2
;

2 3
} 
} ∑
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IBookOrderService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IBookOrderService &
{ 
Task		 
<		 
IEnumerable		 
<		 
BookOrderDto		 %
>		% &
>		& '
GetAllBookOrders		( 8
(		8 9
)		9 :
;		: ;
Task

 
<

 
IEnumerable

 
<

 
BookOrderDto

 %
>

% &
>

& '$
GetAllApprovedBookOrders

( @
(

@ A
)

A B
;

B C
IEnumerable 
< 
BookOrderDto  
>  !#
GetAllPendingBookOrders" 9
(9 :
): ;
;; <
IEnumerable 
< 
BookOrderDto  
>  !)
GetAllBookOrdersOfCurrentUser" ?
(? @
)@ A
;A B
IEnumerable 
< 
BookOrderDto  
>  !$
GetAllBookOrdersByUserId" :
(: ;
string; A
idB D
)D E
;E F
Task 
< 
BookOrderDto 
> 
GetById "
(" #
long# '
id( *
)* +
;+ ,
Task 
ApproveBookOrder 
( "
BookOrderForApproveDto 4
order5 :
): ;
;; <
Task 
Delete 
( 
long 
id 
) 
; 
Task 
DeclineBookOrder 
( "
BookOrderForDeclineDto 4
order5 :
): ;
;; <
} 
} Ø
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IBreedService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IBreedService		 "
{

 
Task 
< 
IEnumerable 
< 
BreedDto !
>! "
>" #
GetAllBreeds$ 0
(0 1
)1 2
;2 3
Task 
< 
BreedForCreationDto  
>  !
CreateBreed" -
(- .
BreedForCreationDto. A
breedB G
)G H
;H I
Task 
< 
long 
> !
CreateAnimalWithBreed (
(( ) 
AnimalForCreationDto) =
animal> D
,D E
AnimalF L
modelM R
)R S
;S T
Task !
UpdateAnimalWithBreed "
(" #
	AnimalDto# ,
animal- 3
,3 4
Animal5 ;
model< A
)A B
;B C
Task 
UpdateBreed 
( 
BreedDto !
breed" '
)' (
;( )
Task 
DeleteBreed 
( 
long 
breedId %
)% &
;& '
Task 
< 
BreedDto 
> 
GetBreedById #
(# $
long$ (
id) +
)+ ,
;, -
} 
} Å
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\ICategoryService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
ICategoryService %
{ 
Task		 
<		 
IEnumerable		 
<		 
CategoryDto		 $
>		$ %
>		% &
GetAllCategories		' 7
(		7 8
)		8 9
;		9 :
}

 
} –
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IDefectService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IDefectService		 #
{

 
Task 
< 
IEnumerable 
< 
	DefectDto "
>" #
># $
GetAllDefects% 2
(2 3
)3 4
;4 5
IEnumerable 
< 
	DefectDto 
> !
GetAllDefectsByAnimal 4
(4 5
long5 9
animalId: B
)B C
;C D
Task 
< 
	DefectDto 
> 
GetDefectById %
(% &
long& *
id+ -
)- .
;. /
Task 
<  
DefectForCreationDto !
>! "
CreateDefect# /
(/ 0 
DefectForCreationDto0 D
defectE K
)K L
;L M
Task #
CreateAnimalWithDefects $
($ % 
AnimalForCreationDto% 9
animal: @
,@ A
AnimalB H
modelI N
)N O
;O P
Task 
AddDefectToAnimal 
( 
long #
animalId$ ,
,, -
long. 2
defectId3 ;
); <
;< =
Task 
AddDefectsToAnimal 
(  
long  $
animalId% -
,- .
IEnumerable/ :
<: ;
	DefectDto; D
>D E
defectsF M
)M N
;N O
Task 
UpdateDefect 
( 
	DefectDto #
defect$ *
)* +
;+ ,
Task #
UpdateAnimalWithDefects $
($ %
	AnimalDto% .
animal/ 5
,5 6
Animal7 =
model> C
)C D
;D E
Task 
DeleteDefect 
( 
long 
defectId '
)' (
;( )
Task "
DeleteDefectFromAnimal #
(# $
long$ (
animalId) 1
,1 2
long3 7
defectId8 @
)@ A
;A B
} 
} ﬁ
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IDescriptionService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IDescriptionService (
{		 
Task

 '
CreateAnimalWithDescription

 (
(

( ) 
AnimalForCreationDto

) =
animal

> D
,

D E
Animal

F L
model

M R
)

R S
;

S T
Task 
< 
DescriptionDto 
> 
GetDescriptionById /
(/ 0
long0 4
id5 7
)7 8
;8 9
Task 
UpdateDescription 
( 
DescriptionDto -
description. 9
)9 :
;: ;
Task 
Delete 
( 
long 
descriptionId &
)& '
;' (
} 
} ¢
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IEmailService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IEmailService "
{ 
Task 
SendEmailAsync 
( 
string "
email# (
,( )
string* 0
subject1 8
,8 9
string: @
messageA H
)H I
;I J
} 
}		 »
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IFilterService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IFilterService #
<# $
FilterEntity$ 0
,0 1
Filter2 8
>8 9
{ 

IQueryable 
< 
FilterEntity 
>  
AddAllFiltersQuery! 3
(3 4
Filter4 :
filter; A
,A B

IQueryableC M
<M N
FilterEntityN Z
>Z [
	queryable\ e
)e f
;f g
}		 
}

 Î
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IFoodService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IFoodService !
{ 
Task		 
<		 
IEnumerable		 
<		 
FoodDto		  
>		  !
>		! "
GetAll		# )
(		) *
)		* +
;		+ ,
}

 
} ä
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IHelpService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IHelpService !
{ 
Task		 
<		 
IEnumerable		 
<		 
HelpDto		  
>		  !
>		! "
GetAll		# )
(		) *
)		* +
;		+ ,
Task 
< 
HelpDto 
> 
GetById 
( 
int !
id" $
)$ %
;% &
Task 
AddHelp 
( 
string 
help  
)  !
;! "
Task 

DeleteHelp 
( 
string 
help #
)# $
;$ %
} 
} ˜
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IImageService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IImageService "
{ 
Task		 )
CreateImageWithExistingAnimal		 *
(		* +
long		+ /
animalId		0 8
,		8 9
string		: @
filePath		A I
,		I J
string		K Q
fileName		R Z
)		Z [
;		[ \
Task

 )
CreateImageWithExistingAnimal

 *
(

* +
	IFormFile

+ 4
image

5 :
,

: ;
long

< @
animalId

A I
)

I J
;

J K
Task *
CreateImagesWithExistingAnimal +
(+ ,
IList, 1
<1 2
	IFormFile2 ;
>; <
images= C
,C D
longE I
animalIdJ R
)R S
;S T
Task 
Delete 
( 
long 
imageId  
)  !
;! "
} 
} Á
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IIsNewServices.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IIsNewService "
{		 
Task

 
<

 

IQueryable

 
<

 
Animal

 
>

 
>

  
UpdateAndGetByNew

! 2
(

2 3

IQueryable

3 =
<

= >
Animal

> D
>

D E
animals

F M
)

M N
;

N O
void 
UpdateIsNewCheckbox  
(  !
	AnimalDto! *
	animalDto+ 4
,4 5
Animal6 <
model= B
)B C
;C D
Task 
CreateCheckNewOld 
(  
AnimalForCreationDto 3
	animalDto4 =
,= >
Animal? E
modelF K
)K L
;L M
} 
} ã
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IKeepingService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IKeepingService		 $
{

 
Task 
< 
IEnumerable 
< 

KeepingDto #
># $
>$ %
GetAll& ,
(, -
)- .
;. /
Task $
CreateAnimalWithKeepings %
(% & 
AnimalForCreationDto& :
animal; A
,A B
AnimalC I
modelJ O
)O P
;P Q
Task $
UpdateAnimalWithKeepings %
(% &
	AnimalDto& /
animal0 6
,6 7
Animal8 >
model? D
)D E
;E F
} 
} è
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IMainAdminService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IMainAdminService &
{ 
Task		 

DeleteUser		 
(		 
string		 
id		 !
)		! "
;		" #
Task 
< 
IEnumerable 
<  
UserIncludeValuesDto -
>- .
>. /
GetUsersInRole0 >
(> ?
string? E
roleF J
)J K
;K L
IEnumerable 
<  
UserIncludeValuesDto (
>( )
GetUsers* 2
(2 3
)3 4
;4 5
IEnumerable 
<  
UserIncludeValuesDto (
>( )
GetUsersByName* 8
(8 9
string9 ?
name@ D
)D E
;E F
IEnumerable 
<  
UserIncludeValuesDto (
>( )
GetUsersByLocation* <
(< =
long= A

locationIdB L
)L M
;M N 
UserIncludeValuesDto  
GetUserByPhoneNumber 1
(1 2
string2 8
phoneNumber9 D
)D E
;E F 
UserIncludeValuesDto 
GetUserByEmail +
(+ ,
string, 2
email3 8
)8 9
;9 :
} 
} ˇ
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\INeedsService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
INeedsService		 "
{

 
Task 
< 
IEnumerable 
< 
NeedsDto !
>! "
>" #
GetAll$ *
(* +
)+ ,
;, -
Task !
CreateAnimalWithNeeds "
(" # 
AnimalForCreationDto# 7
animal8 >
,> ?
Animal@ F
modelG L
)L M
;M N
Task !
UpdateAnimalWithNeeds "
(" #
	AnimalDto# ,
animal- 3
,3 4
Animal5 ;
model< A
)A B
;B C
} 
} —
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IOrderService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IOrderService "
{ 
Task 
CreateAdoptOrder 
( 
OrderForCreationDto 1
order2 7
)7 8
;8 9
Task		 
CreateBookOrder		 
(		 
OrderForCreationDto		 0
order		1 6
)		6 7
;		7 8
}

 
} ò
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IProcessingService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IProcessingService		 '
{

 
Task 
< 
IEnumerable 
< 
ProcessingDto &
>& '
>' (
GetAll) /
(/ 0
)0 1
;1 2
Task &
CreateAnimalWithProcessing '
(' ( 
AnimalForCreationDto( <
animal= C
,C D
AnimalE K
modelL Q
)Q R
;R S
Task &
UpdateAnimalWithProcessing '
(' (
	AnimalDto( 1
animal2 8
,8 9
Animal: @
modelA F
)F G
;G H
} 
} ¡
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IRoleService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IRoleService !
{ 
Task 
PromoteToRole 
( 
UserRoleDto &
userRole' /
)/ 0
;0 1
Task

 
DemoteFromRole

 
(

 
UserRoleDto

 '
userRole

( 0
)

0 1
;

1 2
} 
} Í
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IStatisticService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IStatisticService &
<& '
	TViewable' 0
>0 1
where2 7
	TViewable8 A
:B C
ViewableD L
{ 
Task 
UpdateStatistic 
( 
long !
id" $
)$ %
;% &
Task		 
<		 
	TViewable		 
>		 
GetStatistic		 $
(		$ %
long		% )
id		* ,
)		, -
;		- .
}

 
} ı
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IStatusService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IStatusService #
{ 
Array 
GetAllOrderStatuses !
(! "
)" #
;# $
Array  
GetAllAnimalStatuses "
(" #
)# $
;$ %
}

 
} ƒ
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\ITokenService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
ITokenService "
{ 
Task		 
<		 
string		 
>		 
GenerateAccessToken		 (
(		( )
User		) -
user		. 2
)		2 3
;		3 4
string  
GenerateRefreshToken #
(# $
)$ %
;% &
Task 
< 
User 
> #
GetUserFromExpiredToken *
(* +
string+ 1
token2 7
)7 8
;8 9
Task 
< 
UserTokenDto 
> 
RefreshToken '
(' (
UserTokenDto( 4
	userToken5 >
)> ?
;? @
Task 
Revoke 
( 
string 
	userEmail $
)$ %
;% &
} 
} ¬
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IUriService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IUriService  
{ 
Uri 
GetAllPostUri 
( 
string  
specificUrl! ,
,, -!
AnimalPaginationQuery. C

paginationD N
,N O
AnimalQueryP [
query\ a
)a b
;b c
Uri		 
GetAllPostUri		 
(		 
string		  
specificUrl		! ,
,		, -"
ArticlePaginationQuery		. D

pagination		E O
,		O P
ArticleQuery		Q ]
query		^ c
)		c d
;		d e
Uri

 

GetPostUri

 
(

 
long

 
animalId

 $
)

$ %
;

% &
} 
} ö	
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IUserHelpService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IUserHelpService %
{ 
Task		 
Add		 
(		 
IEnumerable		 
<		 
UserHelpInDto		 *
>		* +
userHelp		, 4
,		4 5
string		6 <
	userEmail		= F
)		F G
;		G H
Task 
< 
UserHelpDto 
> 
GetHelpByUser '
(' (
string( .
	userEmail/ 8
)8 9
;9 :
IEnumerable 
< 
UserHelpOutDto "
>" #
GetUsersByHelp$ 2
(2 3
int3 6
helpId7 =
)= >
;> ?
Task 
Update 
( 
IEnumerable 
<  
UserHelpInDto  -
>- .
userHelp/ 7
,7 8
string9 ?
	userEmail@ I
)I J
;J K
} 
} ¥
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IUserService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IUserService !
{		 
Task

 
UpdateProfile

 
(

 
UserDto

 "
model

# (
,

( )
string

* 0
	returnUrl

1 :
)

: ;
;

; <
Task 
RegisterAsync 
( 
UserRegistrationDto .
model/ 4
,4 5
string6 <
	returnUrl= F
)F G
;G H
Task 
< 
UserTokenDto 
> 

LoginAsync %
(% &
UserLoginDto& 2
model3 8
)8 9
;9 :
Task 
ConfirmEmailAsync 
( 
string %
userId& ,
,, -
string. 4
token5 :
): ;
;; <
Task 
ForgotPasswordAsync  
(  !
ResetPasswordDto! 1
model2 7
,7 8
string9 ?
	returnUrl@ I
)I J
;J K
Task 
ResetPasswordAsync 
(  #
ResetPasswordConfirmDto  7
model8 =
)= >
;> ?
Task 
< 
IList 
< 
string 
> 
> 
GetUserRoles (
(( )
string) /
	userEmail0 9
)9 :
;: ;
Task 
< 
string 
> 
GetUserIdByUsername (
(( )
string) /
userName0 8
)8 9
;9 :
Task 
DeleteProfile 
( 
string !
	userEmail" +
)+ ,
;, -
} 
} ≠
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IVaccinationService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public		 

	interface		 
IVaccinationService		 (
{

 
Task 
< 
IEnumerable 
< 
VaccinationDto '
>' (
>( )
GetAll* 0
(0 1
)1 2
;2 3
Task 
< 
VaccinationDto 
> 
GetById $
($ %
long% )
id* ,
), -
;- .
Task 
< %
VaccinationForCreationDto &
>& '
Create( .
(. /%
VaccinationForCreationDto/ H
vaccinationI T
)T U
;U V
Task '
CreateAnimalWithVaccination (
(( ) 
AnimalForCreationDto) =
animal> D
,D E
AnimalF L
modelM R
)R S
;S T
Task 
Update 
( 
VaccinationDto "
vaccination# .
). /
;/ 0
Task '
UpdateAnimalWithVaccination (
(( )
	AnimalDto) 2
animal3 9
,9 :
Animal; A
modelB G
)G H
;H I
Task 
Delete 
( 
long 
vaccinationId &
)& '
;' (
} 
} ˜
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Interfaces\IVideoService.cs
	namespace 	
Application
 
. 

Interfaces  
{ 
public 

	interface 
IVideoService "
{ 
Task		 )
CreateVideoWithExistingAnimal		 *
(		* +
long		+ /
animalId		0 8
,		8 9
string		: @
filePath		A I
,		I J
string		K Q
fileName		R Z
)		Z [
;		[ \
Task

 )
CreateVideoWithExistingAnimal

 *
(

* +
	IFormFile

+ 4
video

5 :
,

: ;
long

< @
animalId

A I
)

I J
;

J K
Task *
CreateVideosWithExistingAnimal +
(+ ,
IList, 1
<1 2
	IFormFile2 ;
>; <
videos= C
,C D
longE I
animalIdJ R
)R S
;S T
Task 
Delete 
( 
long 
videoId  
)  !
;! "
} 
} ß¿
VC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Mapper\AnimalMapper.cs
	namespace 	
Application
 
. 
Mapper 
{ 
public 

class 
AnimalMapper 
: 
Profile  '
{   
public!! 
AnimalMapper!! 
(!! 
)!! 
{"" 	
	CreateMap## 
<## 
Animal## 
,## "
AnimalIncludeValuesDto## 4
>##4 5
(##5 6
)##6 7
.$$ 
	ForMember$$ 
($$ 
an$$ 
=>$$  
an$$! #
.$$# $
Food$$$ (
,$$( )
a$$* +
=>$$, .
a$$/ 0
.$$0 1
MapFrom$$1 8
($$8 9
c$$9 :
=>$$; =
c$$> ?
.$$? @
Food$$@ D
)$$D E
)$$E F
.%% 
	ForMember%% 
(%% 
an%% 
=>%%  
an%%! #
.%%# $
Category%%$ ,
,%%, -
a%%. /
=>%%0 2
a%%3 4
.%%4 5
MapFrom%%5 <
(%%< =
c%%= >
=>%%? A
c%%B C
.%%C D
Category%%D L
)%%L M
)%%M N
.&& 
	ForMember&& 
(&& 
an&& 
=>&&  
an&&! #
.&&# $
Description&&$ /
,&&/ 0
a&&1 2
=>&&3 5
a&&6 7
.&&7 8
MapFrom&&8 ?
(&&? @
d&&@ A
=>&&B D
d&&E F
.&&F G
Description&&G R
)&&R S
)&&S T
.'' 
	ForMember'' 
('' 
an'' 
=>''  
an''! #
.''# $
Breeds''$ *
,''* +
a'', -
=>''. 0
a''1 2
.''2 3
MapFrom''3 :
('': ;
c''; <
=>''= ?
c''@ A
.''A B
Breed''B G
)''G H
)''H I
.(( 
	ForMember(( 
((( 
an(( 
=>((  
an((! #
.((# $
Address(($ +
,((+ ,
a((- .
=>((/ 1
a((2 3
.((3 4
MapFrom((4 ;
(((; <
c((< =
=>((> @
c((A B
.((B C
Address((C J
)((J K
)((K L
.)) 
	ForMember)) 
()) 
an)) 
=>))  
an))! #
.))# $
Status))$ *
,))* +
a)), -
=>))- /
a))0 1
.))1 2
MapFrom))2 9
())9 :
a)): ;
=>))< >
a))? @
.))@ A
Status))A G
)))G H
)))H I
.** 
	ForMember** 
(** 
an** 
=>**  
an**! #
.**# $
Gender**$ *
,*** +
a**, -
=>**. 0
a**1 2
.**2 3
MapFrom**3 :
(**: ;
c**; <
=>**= ?
c**@ A
.**A B
Gender**B H
.**H I
ToString**I Q
(**Q R
)**R S
)**S T
)**T U
.++ 
	ForMember++ 
(++ 
an++ 
=>++  
an++! #
.++# $
Sterialization++$ 2
,++2 3
a++4 5
=>++6 8
a++9 :
.++: ;
MapFrom++; B
(++B C
c++C D
=>++E G
c++H I
.++I J
Sterialization++J X
.++X Y
ToString++Y a
(++a b
)++b c
)++c d
)++d e
.,, 
	ForMember,, 
(,, 
an,, 
=>,,  
an,,! #
.,,# $
Status,,$ *
,,,* +
a,,, -
=>,,. 0
a,,1 2
.,,2 3
MapFrom,,3 :
(,,: ;
c,,; <
=>,,= ?
c,,@ A
.,,A B
Status,,B H
.,,H I
ToString,,I Q
(,,Q R
),,R S
),,S T
),,T U
.-- 
	ForMember-- 
(-- 
an-- 
=>--  
an--! #
.--# $
Needs--$ )
,--) *
a--+ ,
=>--- /
a--0 1
.--1 2
MapFrom--2 9
(--9 :
c--: ;
=>--< >
c--? @
.--@ A
AnimalNeeds--A L
.--L M
Select--M S
(--S T
x--T U
=>--V X
x--Y Z
.--Z [
Needs--[ `
)--` a
)--a b
)--b c
... 
	ForMember.. 
(.. 
an.. 
=>..  
an..! #
...# $
	Attitudes..$ -
,..- .
a../ 0
=>..1 3
a..4 5
...5 6
MapFrom..6 =
(..= >
c..> ?
=>..@ B
c..C D
...D E
AnimalAttitudes..E T
...T U
Select..U [
(..[ \
x..\ ]
=>..^ `
new..a d
AttitudeToDto..e r
(..r s
x..s t
...t u

AttitudeTo..u 
,	.. Ä
x
..Å Ç
.
..Ç É
Mark
..É á
)
..á à
)
..à â
)
..â ä
)
..ä ã
.// 
	ForMember// 
(// 
an// 
=>//  
an//! #
.//# $
Defects//$ +
,//+ ,
a//- .
=>/// 1
a//2 3
.//3 4
MapFrom//4 ;
(//; <
c//< =
=>//> @
c//A B
.//B C
AnimalDefects//C P
.//P Q
Select//Q W
(//W X
x//X Y
=>//Z \
x//] ^
.//^ _
Defect//_ e
)//e f
)//f g
)//g h
.00 
	ForMember00 
(00 
an00 
=>00  
an00! #
.00# $
Keepings00$ ,
,00, -
a00. /
=>000 2
a003 4
.004 5
MapFrom005 <
(00< =
c00= >
=>00? A
c00B C
.00C D
AnimalKeepings00D R
.00R S
Select00S Y
(00Y Z
x00Z [
=>00\ ^
x00_ `
.00` a
Keeping00a h
)00h i
)00i j
)00j k
.11 
	ForMember11 
(11 
an11 
=>11  
an11! #
.11# $
Processings11$ /
,11/ 0
a111 2
=>113 5
a116 7
.117 8
MapFrom118 ?
(11? @
c11@ A
=>11B D
c11E F
.11F G
AnimalProcessings11G X
.11X Y
Select11Y _
(11_ `
x11` a
=>11b d
new11e h
ProcessingDto11i v
(11v w
x11w x
.11x y

Processing	11y É
,22P Q
x22R S
.22S T
ProcessingDate22T b
,22b c
x22d e
.22e f
NextProcessingDate22f x
)22x y
)22y z
)22z {
)22{ |
.33 
	ForMember33 
(33 
an33 
=>33  
an33! #
.33# $
Vaccinations33$ 0
,330 1
a332 3
=>334 6
a337 8
.338 9
MapFrom339 @
(33@ A
c33A B
=>33C E
c33F G
.33G H
AnimalVaccinations33H Z
.33Z [
Select33[ a
(33a b
x33b c
=>33d f
new33g j
VaccinationFullDto33k }
(33} ~
x33~ 
.	33 Ä
Vaccination
33Ä ã
,44P Q
x44R S
.44S T
VaccinationDate44T c
,44c d
x44e f
.44f g
NextVaccinationDate44g z
)44z {
)44{ |
)44| }
)44} ~
.44~ 

ReverseMap	44 â
(
44â ä
)
44ä ã
;
44ã å
	CreateMap66 
<66 
Animal66 
,66 
	AnimalDto66 '
>66' (
(66( )
)66) *
.77 
	ForMember77 
(77 
an77 
=>77 
an77  "
.77" #
Needs77# (
,77( )
a77* +
=>77, .
a77/ 0
.770 1
MapFrom771 8
(778 9
c779 :
=>77; =
c77> ?
.77? @
AnimalNeeds77@ K
.77K L
Select77L R
(77R S
x77S T
=>77U W
x77X Y
.77Y Z
Needs77Z _
)77_ `
)77` a
)77a b
.88 
	ForMember88 
(88 
an88 
=>88 
an88  "
.88" #
	Attitudes88# ,
,88, -
a88. /
=>880 2
a883 4
.884 5
MapFrom885 <
(88< =
c88= >
=>88? A
c88B C
.88C D
AnimalAttitudes88D S
.88S T
Select88T Z
(88Z [
x88[ \
=>88] _
new88` c
AttitudeToDto88d q
(88q r
x88r s
.88s t

AttitudeTo88t ~
,88~ 
x
88Ä Å
.
88Å Ç
Mark
88Ç Ü
)
88Ü á
)
88á à
)
88à â
)
88â ä
.99 
	ForMember99 
(99 
an99 
=>99 
an99  "
.99" #
Defects99# *
,99* +
a99, -
=>99. 0
a991 2
.992 3
MapFrom993 :
(99: ;
c99; <
=>99= ?
c99@ A
.99A B
AnimalDefects99B O
.99O P
Select99P V
(99V W
x99W X
=>99Y [
x99\ ]
.99] ^
Defect99^ d
)99d e
)99e f
)99f g
.:: 
	ForMember:: 
(:: 
an:: 
=>:: 
an::  "
.::" #
Breed::# (
,::( )
a::* +
=>::, .
a::/ 0
.::0 1
MapFrom::1 8
(::8 9
c::9 :
=>::; =
c::> ?
.::? @
Breed::@ E
)::E F
)::F G
.;; 
	ForMember;; 
(;; 
an;; 
=>;; 
an;;  "
.;;" #
Description;;# .
,;;. /
a;;0 1
=>;;2 4
a;;5 6
.;;6 7
MapFrom;;7 >
(;;> ?
d;;? @
=>;;A C
d;;D E
.;;E F
Description;;F Q
);;Q R
);;R S
.<< 
	ForMember<< 
(<< 
an<< 
=><< 
an<<  "
.<<" #
Keepings<<# +
,<<+ ,
a<<- .
=><</ 1
a<<2 3
.<<3 4
MapFrom<<4 ;
(<<; <
c<<< =
=><<> @
c<<A B
.<<B C
AnimalKeepings<<C Q
.<<Q R
Select<<R X
(<<X Y
x<<Y Z
=><<[ ]
x<<^ _
.<<_ `
Keeping<<` g
)<<g h
)<<h i
)<<i j
.== 
	ForMember== 
(== 
an== 
=>== 
an==  "
.==" #
Processings==# .
,==. /
a==0 1
=>==2 4
a==5 6
.==6 7
MapFrom==7 >
(==> ?
c==? @
=>==A C
c==D E
.==E F
AnimalProcessings==F W
.==W X
Select==X ^
(==^ _
x==_ `
=>==a c
new==d g
ProcessingDto==h u
(==u v
x==v w
.==w x

Processing	==x Ç
,>>O P
x>>Q R
.>>R S
ProcessingDate>>S a
,>>a b
x>>c d
.>>d e
NextProcessingDate>>e w
)>>w x
)>>x y
)>>y z
)>>z {
.?? 
	ForMember?? 
(?? 
an?? 
=>?? 
an??  "
.??" #
Vaccinations??# /
,??/ 0
a??1 2
=>??3 5
a??6 7
.??7 8
MapFrom??8 ?
(??? @
c??@ A
=>??B D
c??E F
.??F G
AnimalVaccinations??G Y
.??Y Z
Select??Z `
(??` a
x??a b
=>??c e
new??f i
VaccinationFullDto??j |
(??| }
x??} ~
.??~ 
Vaccination	?? ä
,@@P Q
x@@R S
.@@S T
VaccinationDate@@T c
,@@c d
x@@e f
.@@f g
NextVaccinationDate@@g z
)@@z {
)@@{ |
)@@| }
)@@} ~
;@@~ 
	CreateMapAA 
<AA !
AnimalLocationHistoryAA +
,AA+ ,$
AnimalLocationHistoryDtoAA- E
>AAE F
(AAF G
)AAG H
.BB 
	ForMemberBB 
(BB 
anBB 
=>BB  
anBB! #
.BB# $
AddressBB$ +
,BB+ ,
aBB- .
=>BB/ 1
aBB2 3
.BB3 4
MapFromBB4 ;
(BB; <
cBB< =
=>BB> @
cBBA B
.BBB C
AddressBBC J
)BBJ K
)BBK L
.CC 

ReverseMapCC 
(CC 
)CC 
;CC 
	CreateMapEE 
<EE 
	AnimalDtoEE 
,EE  
AnimalEE! '
>EE' (
(EE( )
)EE) *
.FF 
	ForMemberFF 
(FF 
anFF 
=>FF  
anFF! #
.FF# $
ImagesFF$ *
,FF* +
aFF, -
=>FF. 0
aFF1 2
.FF2 3
IgnoreFF3 9
(FF9 :
)FF: ;
)FF; <
.GG 
	ForMemberGG 
(GG 
anGG 
=>GG  
anGG! #
.GG# $
BreedGG$ )
,GG) *
aGG+ ,
=>GG- /
aGG0 1
.GG1 2
IgnoreGG2 8
(GG8 9
)GG9 :
)GG: ;
;GG; <
	CreateMapII 
<II  
AnimalForCreationDtoII *
,II* +
AnimalII, 2
>II2 3
(II3 4
)II4 5
.JJ 
	ForMemberJJ 
(JJ 
anJJ 
=>JJ  
anJJ! #
.JJ# $
ImagesJJ$ *
,JJ* +
aJJ, -
=>JJ. 0
aJJ1 2
.JJ2 3
IgnoreJJ3 9
(JJ9 :
)JJ: ;
)JJ; <
.KK 
	ForMemberKK 
(KK 
anKK 
=>KK  
anKK! #
.KK# $
DescriptionKK$ /
,KK/ 0
aKK1 2
=>KK3 5
aKK6 7
.KK7 8
IgnoreKK8 >
(KK> ?
)KK? @
)KK@ A
.LL 
	ForMemberLL 
(LL 
anLL 
=>LL  
anLL! #
.LL# $
BreedLL$ )
,LL) *
aLL+ ,
=>LL- /
aLL0 1
.LL1 2
IgnoreLL2 8
(LL8 9
)LL9 :
)LL: ;
.MM 
	ForMemberMM 
(MM 
anMM 
=>MM  
anMM! #
.MM# $
VideosMM$ *
,MM* +
aMM, -
=>MM. 0
aMM1 2
.MM2 3
IgnoreMM3 9
(MM9 :
)MM: ;
)MM; <
;MM< =
	CreateMapOO 
<OO 
AnimalOO 
,OO 
AnimalApprovedDtoOO /
>OO/ 0
(OO0 1
)OO1 2
;OO2 3
	CreateMapQQ 
<QQ 
AnimalApprovedDtoQQ '
,QQ' (
AnimalQQ) /
>QQ/ 0
(QQ0 1
)QQ1 2
.RR 
	ForMemberRR 
(RR 
anRR 
=>RR  
anRR! #
.RR# $
ImagesRR$ *
,RR* +
aRR, -
=>RR. 0
aRR1 2
.RR2 3
IgnoreRR3 9
(RR9 :
)RR: ;
)RR; <
;RR< =
	CreateMapSS 
<SS 
AnimalStatisticDtoSS (
,SS( )
AnimalSS* 0
>SS0 1
(SS1 2
)SS2 3
.SS3 4

ReverseMapSS4 >
(SS> ?
)SS? @
;SS@ A
	CreateMapTT 
<TT 
ArticleStatisticDtoTT )
,TT) *
ArticleTT+ 2
>TT2 3
(TT3 4
)TT4 5
.TT5 6

ReverseMapTT6 @
(TT@ A
)TTA B
;TTB C
	CreateMapWW 
<WW 
NeedsDtoWW 
,WW 
NeedsWW  %
>WW% &
(WW& '
)WW' (
;WW( )
	CreateMapXX 
<XX 
NeedsXX 
,XX 
NeedsDtoXX %
>XX% &
(XX& '
)XX' (
;XX( )
	CreateMapZZ 
<ZZ 

KeepingDtoZZ  
,ZZ  !
KeepingZZ" )
>ZZ) *
(ZZ* +
)ZZ+ ,
;ZZ, -
	CreateMap[[ 
<[[ 
Keeping[[ 
,[[ 

KeepingDto[[ )
>[[) *
([[* +
)[[+ ,
;[[, -
	CreateMap]] 
<]] 
Vaccination]] !
,]]! "
VaccinationFullDto]]# 5
>]]5 6
(]]6 7
)]]7 8
;]]8 9
	CreateMap^^ 
<^^ 
VaccinationFullDto^^ (
,^^( )
Vaccination^^* 5
>^^5 6
(^^6 7
)^^7 8
;^^8 9
	CreateMap`` 
<`` 
Vaccination`` !
,``! ")
VaccinationFullForCreationDto``# @
>``@ A
(``A B
)``B C
;``C D
	CreateMapaa 
<aa )
VaccinationFullForCreationDtoaa 3
,aa3 4
Vaccinationaa5 @
>aa@ A
(aaA B
)aaB C
;aaC D
	CreateMapcc 
<cc 
Vaccinationcc !
,cc! "
VaccinationDtocc# 1
>cc1 2
(cc2 3
)cc3 4
;cc4 5
	CreateMapdd 
<dd 
VaccinationDtodd $
,dd$ %
Vaccinationdd& 1
>dd1 2
(dd2 3
)dd3 4
;dd4 5
	CreateMapff 
<ff 
Vaccinationff !
,ff! "%
VaccinationForCreationDtoff# <
>ff< =
(ff= >
)ff> ?
;ff? @
	CreateMapgg 
<gg %
VaccinationForCreationDtogg /
,gg/ 0
Vaccinationgg1 <
>gg< =
(gg= >
)gg> ?
;gg? @
	CreateMapii 
<ii 

AttitudeToii  
,ii  !
AttitudeToDtoii" /
>ii/ 0
(ii0 1
)ii1 2
;ii2 3
	CreateMapjj 
<jj 
AttitudeToDtojj #
,jj# $

AttitudeTojj% /
>jj/ 0
(jj0 1
)jj1 2
;jj2 3
	CreateMapll 
<ll 
ProcessingDtoll #
,ll# $

Processingll% /
>ll/ 0
(ll0 1
)ll1 2
;ll2 3
	CreateMapmm 
<mm 

Processingmm  
,mm  !
ProcessingDtomm" /
>mm/ 0
(mm0 1
)mm1 2
;mm2 3
	CreateMapoo 
<oo 
	DefectDtooo 
,oo  
Defectoo! '
>oo' (
(oo( )
)oo) *
;oo* +
	CreateMappp 
<pp 
Defectpp 
,pp 
	DefectDtopp '
>pp' (
(pp( )
)pp) *
;pp* +
	CreateMaprr 
<rr  
DefectForCreationDtorr *
,rr* +
Defectrr, 2
>rr2 3
(rr3 4
)rr4 5
;rr5 6
	CreateMapss 
<ss 
Defectss 
,ss  
DefectForCreationDtoss 2
>ss2 3
(ss3 4
)ss4 5
;ss5 6
	CreateMapuu 
<uu 
DescriptionDtouu $
,uu$ %
AnimalDescriptionuu& 7
>uu7 8
(uu8 9
)uu9 :
;uu: ;
	CreateMapvv 
<vv 
AnimalDescriptionvv '
,vv' (
DescriptionDtovv) 7
>vv7 8
(vv8 9
)vv9 :
;vv: ;
	CreateMapxx 
<xx %
DescriptionForCreationDtoxx /
,xx/ 0
AnimalDescriptionxx1 B
>xxB C
(xxC D
)xxD E
;xxE F
	CreateMapyy 
<yy 
AnimalDescriptionyy '
,yy' (%
DescriptionForCreationDtoyy) B
>yyB C
(yyC D
)yyD E
;yyE F
	CreateMap{{ 
<{{ 
BreedDto{{ 
,{{ 
Breed{{  %
>{{% &
({{& '
){{' (
.|| 
	ForMember|| 
(|| 
br|| 
=>||  
br||! #
.||# $
BreedEnglish||$ 0
,||0 1
b||2 3
=>||4 6
b||7 8
.||8 9
MapFrom||9 @
(||@ A
x||A B
=>||C E
x||F G
.||G H

LanguageEn||H R
)||R S
)||S T
.}} 
	ForMember}} 
(}} 
br}} 
=>}}  
br}}! #
.}}# $
BreedUkrainian}}$ 2
,}}2 3
b}}4 5
=>}}6 8
b}}9 :
.}}: ;
MapFrom}}; B
(}}B C
x}}C D
=>}}E G
x}}H I
.}}I J

LanguageUa}}J T
)}}T U
)}}U V
;}}V W
	CreateMap 
< 
Breed 
, 
BreedDto %
>% &
(& '
)' (
.
ÄÄ 
	ForMember
ÄÄ 
(
ÄÄ 
br
ÄÄ 
=>
ÄÄ  
br
ÄÄ! #
.
ÄÄ# $

LanguageEn
ÄÄ$ .
,
ÄÄ. /
b
ÄÄ0 1
=>
ÄÄ2 4
b
ÄÄ5 6
.
ÄÄ6 7
MapFrom
ÄÄ7 >
(
ÄÄ> ?
x
ÄÄ? @
=>
ÄÄA C
x
ÄÄD E
.
ÄÄE F
BreedEnglish
ÄÄF R
)
ÄÄR S
)
ÄÄS T
.
ÅÅ 
	ForMember
ÅÅ 
(
ÅÅ 
br
ÅÅ 
=>
ÅÅ  
br
ÅÅ! #
.
ÅÅ# $

LanguageUa
ÅÅ$ .
,
ÅÅ. /
b
ÅÅ0 1
=>
ÅÅ2 4
b
ÅÅ5 6
.
ÅÅ6 7
MapFrom
ÅÅ7 >
(
ÅÅ> ?
x
ÅÅ? @
=>
ÅÅA C
x
ÅÅD E
.
ÅÅE F
BreedUkrainian
ÅÅF T
)
ÅÅT U
)
ÅÅU V
;
ÅÅV W
	CreateMap
ÉÉ 
<
ÉÉ !
BreedForCreationDto
ÉÉ )
,
ÉÉ) *
Breed
ÉÉ+ 0
>
ÉÉ0 1
(
ÉÉ1 2
)
ÉÉ2 3
.
ÑÑ 
	ForMember
ÑÑ 
(
ÑÑ 
br
ÑÑ 
=>
ÑÑ  
br
ÑÑ! #
.
ÑÑ# $
BreedEnglish
ÑÑ$ 0
,
ÑÑ0 1
b
ÑÑ2 3
=>
ÑÑ4 6
b
ÑÑ7 8
.
ÑÑ8 9
MapFrom
ÑÑ9 @
(
ÑÑ@ A
x
ÑÑA B
=>
ÑÑC E
x
ÑÑF G
.
ÑÑG H

LanguageEn
ÑÑH R
)
ÑÑR S
)
ÑÑS T
.
ÖÖ 
	ForMember
ÖÖ 
(
ÖÖ 
br
ÖÖ 
=>
ÖÖ  
br
ÖÖ! #
.
ÖÖ# $
BreedUkrainian
ÖÖ$ 2
,
ÖÖ2 3
b
ÖÖ4 5
=>
ÖÖ6 8
b
ÖÖ9 :
.
ÖÖ: ;
MapFrom
ÖÖ; B
(
ÖÖB C
x
ÖÖC D
=>
ÖÖE G
x
ÖÖH I
.
ÖÖI J

LanguageUa
ÖÖJ T
)
ÖÖT U
)
ÖÖU V
;
ÖÖV W
	CreateMap
áá 
<
áá 
Breed
áá 
,
áá !
BreedForCreationDto
áá 0
>
áá0 1
(
áá1 2
)
áá2 3
.
àà 
	ForMember
àà 
(
àà 
br
àà 
=>
àà  
br
àà! #
.
àà# $

LanguageEn
àà$ .
,
àà. /
b
àà0 1
=>
àà2 4
b
àà5 6
.
àà6 7
MapFrom
àà7 >
(
àà> ?
x
àà? @
=>
ààA C
x
ààD E
.
ààE F
BreedEnglish
ààF R
)
ààR S
)
ààS T
.
ââ 
	ForMember
ââ 
(
ââ 
br
ââ 
=>
ââ  
br
ââ! #
.
ââ# $

LanguageUa
ââ$ .
,
ââ. /
b
ââ0 1
=>
ââ2 4
b
ââ5 6
.
ââ6 7
MapFrom
ââ7 >
(
ââ> ?
x
ââ? @
=>
ââA C
x
ââD E
.
ââE F
BreedUkrainian
ââF T
)
ââT U
)
ââU V
;
ââV W
	CreateMap
ãã 
<
ãã 
ImageDto
ãã 
,
ãã 
Image
ãã  %
>
ãã% &
(
ãã& '
)
ãã' (
.
ãã( )

ReverseMap
ãã) 3
(
ãã3 4
)
ãã4 5
;
ãã5 6
	CreateMap
åå 
<
åå 
ArticleImageDto
åå %
,
åå% &
ArticleImage
åå' 3
>
åå3 4
(
åå4 5
)
åå5 6
.
åå6 7

ReverseMap
åå7 A
(
ååA B
)
ååB C
;
ååC D
	CreateMap
éé 
<
éé '
AnimalVideoForCreationDto
éé /
,
éé/ 0
AnimalVideo
éé1 <
>
éé< =
(
éé= >
)
éé> ?
;
éé? @
	CreateMap
èè 
<
èè 
AnimalVideoDto
èè $
,
èè$ %
AnimalVideo
èè& 1
>
èè1 2
(
èè2 3
)
èè3 4
.
èè4 5

ReverseMap
èè5 ?
(
èè? @
)
èè@ A
;
èèA B
	CreateMap
ëë 
<
ëë 

AdoptOrder
ëë  
,
ëë  !
AdoptBookRequest
ëë" 2
>
ëë2 3
(
ëë3 4
)
ëë4 5
.
íí 
	ForMember
íí 
(
íí 
a
íí 
=>
íí 
a
íí  !
.
íí! "
Type
íí" &
,
íí& '
a
íí( )
=>
íí* ,
a
íí- .
.
íí. /
MapFrom
íí/ 6
(
íí6 7
x
íí7 8
=>
íí9 ;
new
íí< ?
string
íí@ F
(
ííF G
$str
ííG N
)
ííN O
)
ííO P
)
ííP Q
.
ìì 
	ForMember
ìì 
(
ìì 
a
ìì 
=>
ìì 
a
ìì  !
.
ìì! "
PetName
ìì" )
,
ìì) *
a
ìì+ ,
=>
ìì- /
a
ìì0 1
.
ìì1 2
MapFrom
ìì2 9
(
ìì9 :
x
ìì: ;
=>
ìì< >
x
ìì? @
.
ìì@ A
Animal
ììA G
.
ììG H
Name
ììH L
)
ììL M
)
ììM N
;
ììN O
	CreateMap
îî 
<
îî 
	BookOrder
îî 
,
îî  
AdoptBookRequest
îî! 1
>
îî1 2
(
îî2 3
)
îî3 4
.
ïï 
	ForMember
ïï 
(
ïï 
a
ïï 
=>
ïï 
a
ïï  !
.
ïï! "
Type
ïï" &
,
ïï& '
a
ïï( )
=>
ïï* ,
a
ïï- .
.
ïï. /
MapFrom
ïï/ 6
(
ïï6 7
x
ïï7 8
=>
ïï9 ;
new
ïï< ?
string
ïï@ F
(
ïïF G
$str
ïïG M
)
ïïM N
)
ïïN O
)
ïïO P
.
ññ 
	ForMember
ññ 
(
ññ 
a
ññ 
=>
ññ 
a
ññ  !
.
ññ! "
PetName
ññ" )
,
ññ) *
a
ññ+ ,
=>
ññ- /
a
ññ0 1
.
ññ1 2
MapFrom
ññ2 9
(
ññ9 :
x
ññ: ;
=>
ññ< >
x
ññ? @
.
ññ@ A
Animal
ññA G
.
ññG H
Name
ññH L
)
ññL M
)
ññM N
;
ññN O
	CreateMap
òò 
<
òò 

AdoptOrder
òò  
,
òò  !%
AdoptOrderForApproveDto
òò" 9
>
òò9 :
(
òò: ;
)
òò; <
.
òò< =

ReverseMap
òò= G
(
òòG H
)
òòH I
;
òòI J
	CreateMap
ôô 
<
ôô 

AdoptOrder
ôô  
,
ôô  !%
AdoptOrderForDeclineDto
ôô" 9
>
ôô9 :
(
ôô: ;
)
ôô; <
.
ôô< =

ReverseMap
ôô= G
(
ôôG H
)
ôôH I
;
ôôI J
	CreateMap
öö 
<
öö 
	BookOrder
öö 
,
öö  $
BookOrderForApproveDto
öö! 7
>
öö7 8
(
öö8 9
)
öö9 :
.
öö: ;

ReverseMap
öö; E
(
ööE F
)
ööF G
;
ööG H
	CreateMap
õõ 
<
õõ 
	BookOrder
õõ 
,
õõ  $
BookOrderForDeclineDto
õõ! 7
>
õõ7 8
(
õõ8 9
)
õõ9 :
.
õõ: ;

ReverseMap
õõ; E
(
õõE F
)
õõF G
;
õõG H
	CreateMap
ùù 
<
ùù 

AdoptOrder
ùù  
,
ùù  !
AdoptOrderDto
ùù" /
>
ùù/ 0
(
ùù0 1
)
ùù1 2
.
ùù2 3
	ForMember
ùù3 <
(
ùù< =
b
ùù= >
=>
ùù? A
b
ùùB C
.
ùùC D
Status
ùùD J
,
ùùJ K
b
ùùL M
=>
ùùN P
b
ùùQ R
.
ùùR S
MapFrom
ùùS Z
(
ùùZ [
s
ùù[ \
=>
ùù] _
s
ùù` a
.
ùùa b
Status
ùùb h
.
ùùh i
ToString
ùùi q
(
ùùq r
)
ùùr s
)
ùùs t
)
ùùt u
.
ùùu v

ReverseMapùùv Ä
(ùùÄ Å
)ùùÅ Ç
;ùùÇ É
	CreateMap
ûû 
<
ûû 
	BookOrder
ûû 
,
ûû  
BookOrderDto
ûû! -
>
ûû- .
(
ûû. /
)
ûû/ 0
.
ûû0 1
	ForMember
ûû1 :
(
ûû: ;
b
ûû; <
=>
ûû= ?
b
ûû@ A
.
ûûA B
Status
ûûB H
,
ûûH I
b
ûûI J
=>
ûûK M
b
ûûN O
.
ûûO P
MapFrom
ûûP W
(
ûûW X
s
ûûX Y
=>
ûûZ \
s
ûû] ^
.
ûû^ _
Status
ûû_ e
.
ûûe f
ToString
ûûf n
(
ûûn o
)
ûûo p
)
ûûp q
)
ûûq r
.
üü0 1
	ForMember
üü1 :
(
üü: ;
b
üü; <
=>
üü= ?
b
üü@ A
.
üüA B
	UserEmail
üüB K
,
üüK L
b
üüM N
=>
üüO Q
b
üüR S
.
üüS T
MapFrom
üüT [
(
üü[ \
u
üü] ^
=>
üü_ a
u
üüb c
.
üüc d
	CreatedBy
üüd m
)
üüm n
)
üün o
.
üüo p

ReverseMap
üüp z
(
üüz {
)
üü{ |
;
üü| }
	CreateMap
†† 
<
†† !
OrderForCreationDto
†† )
,
††) *

AdoptOrder
††+ 5
>
††5 6
(
††6 7
)
††7 8
;
††8 9
	CreateMap
°° 
<
°° !
OrderForCreationDto
°° )
,
°°) *
	BookOrder
°°+ 4
>
°°4 5
(
°°5 6
)
°°6 7
;
°°7 8
	CreateMap
££ 
<
££ 

AddressDto
££  
,
££  !
Address
££" )
>
££) *
(
££* +
)
££+ ,
.
££, -

ReverseMap
££- 7
(
££7 8
)
££8 9
;
££9 :
	CreateMap
§§ 
<
§§ 
CategoryDto
§§ !
,
§§! "
Category
§§# +
>
§§+ ,
(
§§, -
)
§§- .
.
§§. /

ReverseMap
§§/ 9
(
§§9 :
)
§§: ;
;
§§; <
	CreateMap
•• 
<
•• 
FoodDto
•• 
,
•• 
Food
•• #
>
••# $
(
••$ %
)
••% &
.
••& '

ReverseMap
••' 1
(
••1 2
)
••2 3
;
••3 4
	CreateMap
ßß 
<
ßß 
AnimalFilter
ßß "
,
ßß" #
AnimalQuery
ßß$ /
>
ßß/ 0
(
ßß0 1
)
ßß1 2
.
ßß2 3

ReverseMap
ßß3 =
(
ßß= >
)
ßß> ?
;
ßß? @
	CreateMap
®® 
<
®® $
AnimalPaginationFilter
®® ,
,
®®, -#
AnimalPaginationQuery
®®. C
>
®®C D
(
®®D E
)
®®E F
.
®®F G

ReverseMap
®®G Q
(
®®Q R
)
®®R S
;
®®S T
	CreateMap
™™ 
<
™™ 
ArticleFilter
™™ #
,
™™# $
ArticleQuery
™™% 1
>
™™1 2
(
™™2 3
)
™™3 4
.
™™4 5

ReverseMap
™™5 ?
(
™™? @
)
™™@ A
;
™™A B
	CreateMap
´´ 
<
´´ %
ArticlePaginationFilter
´´ -
,
´´- .$
ArticlePaginationQuery
´´/ E
>
´´E F
(
´´F G
)
´´G H
.
´´H I

ReverseMap
´´I S
(
´´S T
)
´´T U
;
´´U V
	CreateMap
≠≠ 
<
≠≠ !
UserRegistrationDto
≠≠ )
,
≠≠) *
User
≠≠+ /
>
≠≠/ 0
(
≠≠0 1
)
≠≠1 2
.
≠≠2 3

ReverseMap
≠≠3 =
(
≠≠= >
)
≠≠> ?
;
≠≠? @
	CreateMap
ÆÆ 
<
ÆÆ 
UserDto
ÆÆ 
,
ÆÆ 
User
ÆÆ #
>
ÆÆ# $
(
ÆÆ$ %
)
ÆÆ% &
.
ÆÆ& '

ReverseMap
ÆÆ' 1
(
ÆÆ1 2
)
ÆÆ2 3
;
ÆÆ3 4
	CreateMap
ØØ 
<
ØØ "
UserIncludeValuesDto
ØØ *
,
ØØ* +
User
ØØ, 0
>
ØØ0 1
(
ØØ1 2
)
ØØ2 3
.
ØØ3 4
	ForMember
ØØ4 =
(
ØØ= >
an
ØØ> @
=>
ØØA C
an
ØØD F
.
ØØF G
Address
ØØG N
,
ØØN O
a
ØØP Q
=>
ØØR T
a
ØØU V
.
ØØV W
MapFrom
ØØW ^
(
ØØ^ _
x
ØØ_ `
=>
ØØa c
x
ØØd e
.
ØØe f
Address
ØØf m
)
ØØm n
)
ØØn o
.
∞∞3 4
	ForMember
∞∞4 =
(
∞∞= >
an
∞∞> @
=>
∞∞A C
an
∞∞D F
.
∞∞F G
AdoptOrders
∞∞G R
,
∞∞R S
a
∞∞T U
=>
∞∞V X
a
∞∞Y Z
.
∞∞Z [
MapFrom
∞∞[ b
(
∞∞b c
x
∞∞c d
=>
∞∞e g
x
∞∞h i
.
∞∞i j
AdoptOrders
∞∞j u
)
∞∞u v
)
∞∞v w
.
±±3 4
	ForMember
±±4 =
(
±±= >
an
±±> @
=>
±±A C
an
±±D F
.
±±F G

BookOrders
±±G Q
,
±±Q R
a
±±S T
=>
±±U W
a
±±X Y
.
±±Y Z
MapFrom
±±Z a
(
±±a b
x
±±b c
=>
±±d f
x
±±g h
.
±±h i

BookOrders
±±i s
)
±±s t
)
±±t u
.
≤≤3 4
	ForMember
≤≤4 =
(
≤≤= >
an
≤≤> @
=>
≤≤A C
an
≤≤D F
.
≤≤F G
Articles
≤≤G O
,
≤≤O P
a
≤≤Q R
=>
≤≤S U
a
≤≤V W
.
≤≤W X
MapFrom
≤≤X _
(
≤≤_ `
x
≤≤` a
=>
≤≤b d
x
≤≤e f
.
≤≤f g
Articles
≤≤g o
)
≤≤o p
)
≤≤p q
.
≥≥3 4
	ForMember
≥≥4 =
(
≥≥= >
an
≥≥> @
=>
≥≥A C
an
≥≥D F
.
≥≥F G
	UserHelps
≥≥G P
,
≥≥P Q
a
≥≥R S
=>
≥≥T V
a
≥≥W X
.
≥≥X Y
MapFrom
≥≥Y `
(
≥≥` a
x
≥≥a b
=>
≥≥c e
x
≥≥f g
.
≥≥g h
Helps
≥≥h m
)
≥≥m n
)
≥≥n o
.
≥≥o p

ReverseMap
≥≥p z
(
≥≥z {
)
≥≥{ |
;
≥≥| }
	CreateMap
¥¥ 
<
¥¥ 
HelpDto
¥¥ 
,
¥¥ 
Help
¥¥ #
>
¥¥# $
(
¥¥$ %
)
¥¥% &
.
¥¥& '

ReverseMap
¥¥' 1
(
¥¥1 2
)
¥¥2 3
;
¥¥3 4
	CreateMap
µµ 
<
µµ 
UserHelpInDto
µµ #
,
µµ# $
UserHelp
µµ% -
>
µµ- .
(
µµ. /
)
µµ/ 0
.
µµ0 1

ReverseMap
µµ1 ;
(
µµ; <
)
µµ< =
;
µµ= >
	CreateMap
∂∂ 
<
∂∂ 
UserHelp
∂∂ 
,
∂∂ 
UserHelpOutDto
∂∂  .
>
∂∂. /
(
∂∂/ 0
)
∂∂0 1
.
∂∂1 2
	ForMember
∂∂2 ;
(
∂∂; <
an
∂∂< >
=>
∂∂? A
an
∂∂B D
.
∂∂D E
User
∂∂E I
,
∂∂I J
a
∂∂K L
=>
∂∂M O
a
∂∂P Q
.
∂∂Q R
MapFrom
∂∂R Y
(
∂∂Y Z
x
∂∂Z [
=>
∂∂\ ^
x
∂∂_ `
.
∂∂` a
User
∂∂a e
)
∂∂e f
)
∂∂f g
.
∂∂g h

ReverseMap
∂∂h r
(
∂∂r s
)
∂∂s t
;
∂∂t u
	CreateMap
∏∏ 
<
∏∏ 
UserFilters
∏∏ !
,
∏∏! "
	UserQuery
∏∏# ,
>
∏∏, -
(
∏∏- .
)
∏∏. /
.
∏∏/ 0

ReverseMap
∏∏0 :
(
∏∏: ;
)
∏∏; <
;
∏∏< =
	CreateMap
∫∫ 
<
∫∫ 
Article
∫∫ 
,
∫∫ 

ArticleDto
∫∫ )
>
∫∫) *
(
∫∫* +
)
∫∫+ ,
.
ªª 
	ForMember
ªª 
(
ªª 
an
ªª 
=>
ªª  
an
ªª! #
.
ªª# $
Tags
ªª$ (
,
ªª( )
a
ªª* +
=>
ªª, .
a
ªª/ 0
.
ªª0 1
MapFrom
ªª1 8
(
ªª8 9
c
ªª9 :
=>
ªª; =
c
ªª> ?
.
ªª? @
ArticleTags
ªª@ K
.
ªªK L
Select
ªªL R
(
ªªR S
x
ªªS T
=>
ªªU W
x
ªªX Y
.
ªªY Z
Tag
ªªZ ]
)
ªª] ^
)
ªª^ _
)
ªª_ `
.
ºº 
	ForMember
ºº 
(
ºº 
an
ºº 
=>
ºº  
an
ºº! #
.
ºº# $
	UserEmall
ºº$ -
,
ºº- .
a
ºº/ 0
=>
ºº1 3
a
ºº4 5
.
ºº5 6
MapFrom
ºº6 =
(
ºº= >
c
ºº> ?
=>
ºº@ B
c
ººC D
.
ººD E
	CreatedBy
ººE N
)
ººN O
)
ººO P
;
ººP Q
	CreateMap
ææ 
<
ææ 

ArticleDto
ææ  
,
ææ  !
Article
ææ" )
>
ææ) *
(
ææ* +
)
ææ+ ,
.
øø 
	ForMember
øø 
(
øø 
an
øø 
=>
øø  
an
øø! #
.
øø# $
Images
øø$ *
,
øø* +
a
øø, -
=>
øø. 0
a
øø1 2
.
øø2 3
Ignore
øø3 9
(
øø9 :
)
øø: ;
)
øø; <
;
øø< =
	CreateMap
¡¡ 
<
¡¡ #
ArticleForCreationDto
¡¡ +
,
¡¡+ ,
Article
¡¡- 4
>
¡¡4 5
(
¡¡5 6
)
¡¡6 7
;
¡¡7 8
	CreateMap
¬¬ 
<
¬¬ !
ArticleForUpdateDto
¬¬ )
,
¬¬) *
Article
¬¬+ 2
>
¬¬2 3
(
¬¬3 4
)
¬¬4 5
.
√√ 
	ForMember
√√ 
(
√√ 
an
√√ 
=>
√√  
an
√√! #
.
√√# $
Images
√√$ *
,
√√* +
a
√√, -
=>
√√. 0
a
√√1 2
.
√√2 3
Ignore
√√3 9
(
√√9 :
)
√√: ;
)
√√; <
;
√√< =
	CreateMap
≈≈ 
<
≈≈ 
Tag
≈≈ 
,
≈≈ 
TagDto
≈≈ !
>
≈≈! "
(
≈≈" #
)
≈≈# $
.
≈≈$ %

ReverseMap
≈≈% /
(
≈≈/ 0
)
≈≈0 1
;
≈≈1 2
	CreateMap
∆∆ 
<
∆∆ 
Tag
∆∆ 
,
∆∆ 
TagForCreateDto
∆∆ *
>
∆∆* +
(
∆∆+ ,
)
∆∆, -
.
∆∆- .

ReverseMap
∆∆. 8
(
∆∆8 9
)
∆∆9 :
;
∆∆: ;
	CreateMap
»» 
<
»» (
ArticleImageForCreationDto
»» 0
,
»»0 1
ArticleImage
»»2 >
>
»»> ?
(
»»? @
)
»»@ A
;
»»A B
	CreateMap
…… 
<
…… 
HelpDto
…… 
,
…… 
Help
…… #
>
……# $
(
……$ %
)
……% &
.
……& '

ReverseMap
……' 1
(
……1 2
)
……2 3
;
……3 4
	CreateMap
   
<
   
UserHelpInDto
   #
,
  # $
UserHelp
  % -
>
  - .
(
  . /
)
  / 0
.
  0 1

ReverseMap
  1 ;
(
  ; <
)
  < =
;
  = >
	CreateMap
ÀÀ 
<
ÀÀ 
UserHelp
ÀÀ 
,
ÀÀ 
UserHelpOutDto
ÀÀ  .
>
ÀÀ. /
(
ÀÀ/ 0
)
ÀÀ0 1
.
ÀÀ1 2
	ForMember
ÀÀ2 ;
(
ÀÀ; <
a
ÀÀ< =
=>
ÀÀ> @
a
ÀÀA B
.
ÀÀB C
User
ÀÀC G
,
ÀÀG H
a
ÀÀI J
=>
ÀÀK M
a
ÀÀN O
.
ÀÀO P
MapFrom
ÀÀP W
(
ÀÀW X
x
ÀÀX Y
=>
ÀÀZ \
x
ÀÀ] ^
.
ÀÀ^ _
User
ÀÀ_ c
)
ÀÀc d
)
ÀÀd e
.
ÀÀe f

ReverseMap
ÀÀf p
(
ÀÀp q
)
ÀÀq r
;
ÀÀr s
	CreateMap
ÕÕ 
<
ÕÕ  
AnimalViewLocation
ÕÕ (
,
ÕÕ( )#
AnimalViewLocationDto
ÕÕ* ?
>
ÕÕ? @
(
ÕÕ@ A
)
ÕÕA B
.
ÕÕB C

ReverseMap
ÕÕC M
(
ÕÕM N
)
ÕÕN O
;
ÕÕO P
}
œœ 	
}
–– 
}—— µ
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Middleware\TokenMiddleware.cs
	namespace 	
Application
 
. 

Middleware  
{ 
public		 

class		 
TokenMiddleware		  
{

 
private 
readonly 
RequestDelegate (
_next) .
;. /
public 
TokenMiddleware 
( 
RequestDelegate .
next/ 3
)3 4
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
,9 :
IConfiguration; I
configurationJ W
)W X
{ 	
var 
cookieValue 
= 
context %
.% &
Request& -
.- .
Cookies. 5
?5 6
[6 7
configuration7 D
[D E
$strE V
]V W
]W X
;X Y
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
cookieValue& 1
)1 2
)2 3
{ 
UserTokenDto 
deserializedTokens /
=0 1
JsonConvert2 =
.= >
DeserializeObject> O
<O P
UserTokenDtoP \
>\ ]
(] ^
cookieValue^ i
)i j
;j k
context 
. 
Request 
.  
Headers  '
.' (
Add( +
(+ ,
$str, ;
,; <
$str= F
+G H
deserializedTokensI [
.[ \
AccessToken\ g
)g h
;h i
} 
await 
_next 
. 
Invoke 
( 
context &
)& '
;' (
} 	
} 
}  
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Queries\AnimalPaginationQuery.cs
	namespace 	
Application
 
. 
Queries 
{ 
public 

class !
AnimalPaginationQuery &
{ 
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, .
;. /
} 
} »	
VC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Queries\AnimalQuery.cs
	namespace 	
Application
 
. 
Queries 
{ 
public 

class 
AnimalQuery 
{ 
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Weight 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DateOfBirth !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 

IsDisabled		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
IsNew

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
} Ã
aC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Queries\ArticlePaginationQuery.cs
	namespace 	
Application
 
. 
Queries 
{ 
public 

class "
ArticlePaginationQuery '
{ 
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
} 
} ›
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Queries\ArticleQuery.cs
	namespace 	
Application
 
. 
Queries 
{ 
public 

class 
ArticleQuery 
{ 
public 
string 
TitleOrContent $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Tag 
{ 
get 
;  
set! $
;$ %
}& '
} 
} √
TC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Queries\UserQuery.cs
	namespace 	
Application
 
. 
Queries 
{ 
public 

class 
	UserQuery 
{ 
public 
string 
VolunteerCriteria '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ê
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AddressService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
AddressService 
:  !
IAddressService" 1
{ 
private 
readonly 
IRepository $
<$ %
Address% ,
>, -
_addressRepository. @
;@ A
private 
readonly 
IMapper  
_mapper! (
;( )
public 
AddressService 
( 
IRepository )
<) *
Address* 1
>1 2
addressRepository3 D
,D E
IMapperF M
mapperN T
)T U
{ 	
_addressRepository 
=  
addressRepository! 2
;2 3
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

AddressDto& 0
>0 1
>1 2
GetAllAddresses3 B
(B C
)C D
{ 	
var 
	addresses 
= 
await !
_addressRepository" 4
.4 5
GetAllAsync5 @
(@ A
)A B
;B C
var 
addressesDto 
= 
	addresses (
.( )
Select) /
(/ 0
a0 1
=>2 4
_mapper5 <
.< =
Map= @
<@ A

AddressDtoA K
>K L
(L M
aM N
)N O
)O P
;P Q
return 
addressesDto 
;  
} 	
} 
} Àh
cC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AdoptBookRequestService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class #
AdoptBookRequestService (
:) *$
IAdoptBookRequestService+ C
{ 
private 
readonly 
ICurrentUserService ,
_currentUserService- @
;@ A
private 
readonly 
IRepository $
<$ %

AdoptOrder% /
>/ 0!
_adoptOrderRepository1 F
;F G
private 
readonly 
IRepository $
<$ %
	BookOrder% .
>. / 
_bookOrderRepository0 D
;D E
private 
readonly 
IAdoptOrderService +
_adoptOrderService, >
;> ?
private 
readonly 
IBookOrderService *
_bookOrderService+ <
;< =
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IEmailHelper %
_emailHelper& 2
;2 3
public #
AdoptBookRequestService &
(& '
ICurrentUserService' :
currentUserService; M
,M N
IRepository' 2
<2 3

AdoptOrder3 =
>= > 
adoptOrderRepository? S
,S T
IRepository' 2
<2 3
	BookOrder3 <
>< =
bookOrderRepository> Q
,Q R
UserManager' 2
<2 3
User3 7
>7 8
userManager9 D
,D E
IMapper  ' .
mapper  / 5
,  5 6
IAdoptOrderService!!' 9
adoptOrderService!!: K
,!!K L
IBookOrderService""' 8
bookOrderService""9 I
,""I J
IEmailHelper##' 3
emailHelper##4 ?
)##? @
{$$ 	
_currentUserService%% 
=%%  !
currentUserService%%" 4
;%%4 5!
_adoptOrderRepository&& !
=&&" # 
adoptOrderRepository&&$ 8
;&&8 9 
_bookOrderRepository''  
=''! "
bookOrderRepository''# 6
;''6 7
_userManager(( 
=(( 
userManager(( &
;((& '
_mapper)) 
=)) 
mapper)) 
;)) 
_adoptOrderService** 
=**  
adoptOrderService**! 2
;**2 3
_bookOrderService++ 
=++ 
bookOrderService++  0
;++0 1
_emailHelper,, 
=,, 
emailHelper,, &
;,,& '
}-- 	
public.. 
async.. 
Task.. 
<.. 
IEnumerable.. %
<..% &
AdoptBookRequest..& 6
>..6 7
>..7 8'
GetAllAdoptBookRequestAsync..9 T
(..T U
)..U V
{// 	
var00 
currentUser00 
=00 
_currentUserService00 1
.001 2
	UserEmail002 ;
;00; <
var11 
user11 
=11 
await11 
_userManager11 )
.11) *
FindByEmailAsync11* :
(11: ;
currentUser11; F
)11F G
;11G H
var33 !
adoptBookRequestsList33 %
=33& '
new33( +
List33, 0
<330 1
AdoptBookRequest331 A
>33A B
(33B C
)33C D
;33D E
var55 
adoptOrders55 
=55 
await55 #!
_adoptOrderRepository55$ 9
.559 :
GetAllQueryable55: I
(55I J
)55J K
.662 3
Where663 8
(668 9
a669 :
=>66; =
a66> ?
.66? @
UserId66@ F
==66G I
user66J N
.66N O
Id66O Q
)66Q R
.772 3
Include773 :
(77: ;
an77; =
=>77> @
an77A C
.77C D
Animal77D J
)77J K
.882 3
ToListAsync883 >
(88> ?
)88? @
;88@ A!
adoptBookRequestsList99 !
.99! "
AddRange99" *
(99* +
adoptOrders99+ 6
.996 7
Select997 =
(99= >
x99> ?
=>99@ B
_mapper99C J
.99J K
Map99K N
<99N O
AdoptBookRequest99O _
>99_ `
(99` a
x99a b
)99b c
)99c d
)99d e
;99e f
var;; 

bookOrders;; 
=;; 
await;; " 
_bookOrderRepository;;# 7
.;;7 8
GetAllQueryable;;8 G
(;;G H
);;H I
.<<2 3
Where<<3 8
(<<8 9
a<<9 :
=><<; =
a<<> ?
.<<? @
UserId<<@ F
==<<G I
user<<J N
.<<N O
Id<<O Q
)<<Q R
.==2 3
Include==3 :
(==: ;
an==; =
=>==> @
an==A C
.==C D
Animal==D J
)==J K
.>>2 3
ToListAsync>>3 >
(>>> ?
)>>? @
;>>@ A!
adoptBookRequestsList?? !
.??! "
AddRange??" *
(??* +

bookOrders??+ 5
.??5 6
Select??6 <
(??< =
x??= >
=>??? A
_mapper??B I
.??I J
Map??J M
<??M N
AdoptBookRequest??N ^
>??^ _
(??_ `
x??` a
)??a b
)??b c
)??c d
;??d e
return@@ !
adoptBookRequestsList@@ (
;@@( )
}AA 	
publicBB 
asyncBB 
TaskBB "
DeleteAdoptBookRequestBB 0
(BB0 1%
AdoptBookRequestForDeleteBB1 J
adoptBookRequestBBK [
)BB[ \
{CC 	
varDD 
currentUserDD 
=DD 
_currentUserServiceDD 1
.DD1 2
	UserEmailDD2 ;
;DD; <
varEE 
userEE 
=EE 
awaitEE 
_userManagerEE )
.EE) *
FindByEmailAsyncEE* :
(EE: ;
currentUserEE; F
)EEF G
;EEG H
stringGG 
typeGG 
=GG 
$strGG 
;GG 
ifHH 
(HH 
adoptBookRequestHH  
.HH  !
TypeHH! %
==HH& (
$strHH) /
)HH/ 0
{II 
typeJJ 
=JJ 
$strJJ 
;JJ 
varKK 
	bookOrderKK 
=KK 
awaitKK  % 
_bookOrderRepositoryKK& :
.KK: ;
GetByIdAsyncKK; G
(KKG H
adoptBookRequestKKH X
.KKX Y
IdKKY [
)KK[ \
;KK\ ]
ifLL 
(LL 
	bookOrderLL 
.LL 
StatusLL $
!=LL% '
OrderStatusLL( 3
.LL3 4
PendingLL4 ;
)LL; <
{MM 
throwNN 
newNN 
ArgumentExceptionNN /
(NN/ 0
$strNN0 O
)NNO P
;NNP Q
}OO 
ifPP 
(PP 
	bookOrderPP 
.PP 
UserIdPP $
!=PP% '
userPP( ,
.PP, -
IdPP- /
)PP/ 0
{QQ 
throwRR 
newRR 
ArgumentExceptionRR /
(RR/ 0
$strRR0 O
)RRO P
;RRP Q
}SS 
awaitTT 
_bookOrderServiceTT '
.TT' (
DeleteTT( .
(TT. /
adoptBookRequestTT/ ?
.TT? @
IdTT@ B
)TTB C
;TTC D
}UU 
ifVV 
(VV 
adoptBookRequestVV  
.VV  !
TypeVV! %
==VV& (
$strVV) 0
)VV0 1
{WW 
typeXX 
=XX 
$strXX 
;XX 
varYY 

adoptOrderYY 
=YY  
awaitYY! &!
_adoptOrderRepositoryYY' <
.YY< =
GetByIdAsyncYY= I
(YYI J
adoptBookRequestYYJ Z
.YYZ [
IdYY[ ]
)YY] ^
;YY^ _
ifZZ 
(ZZ 

adoptOrderZZ 
.ZZ 
StatusZZ %
!=ZZ& (
OrderStatusZZ) 4
.ZZ4 5
PendingZZ5 <
)ZZ< =
{[[ 
throw\\ 
new\\ 
ArgumentException\\ /
(\\/ 0
$str\\0 O
)\\O P
;\\P Q
}]] 
if^^ 
(^^ 

adoptOrder^^ 
.^^ 
UserId^^ %
!=^^& (
user^^) -
.^^- .
Id^^. 0
)^^0 1
{__ 
throw`` 
new`` 
ArgumentException`` /
(``/ 0
$str``0 O
)``O P
;``P Q
}aa 
awaitbb 
_adoptOrderServicebb (
.bb( )
Deletebb) /
(bb/ 0
adoptBookRequestbb0 @
.bb@ A
IdbbA C
)bbC D
;bbD E
}cc 
varee 
adminsee 
=ee 
awaitee 
_userManageree +
.ee+ ,
GetUsersInRoleAsyncee, ?
(ee? @
$stree@ L
)eeL M
;eeM N
foreachff 
(ff 
varff 
adminff 
inff !
adminsff" (
)ff( )
{gg 
awaithh 
_emailHelperhh "
.hh" #
GetDataAndSendAsynchh# 6
(hh6 7
adminhh7 <
.hh< =
Emailhh= B
,hhB C
$strhhD d
,hhd e
$str	hhf Ö
,
hhÖ Ü
$"
hhá â
{
hhâ ä
user
hhä é
.
hhé è
Email
hhè î
}
hhî ï
"
hhï ñ
,
hhñ ó
type
hhò ú
,
hhú ù
$str
hhû §
)
hh§ •
;
hh• ¶
}ii 
}jj 	
publickk 
asynckk 
Taskkk 
<kk 
IEnumerablekk %
<kk% &
AdoptBookRequestkk& 6
>kk6 7
>kk7 8/
#GetAllAdoptBookDeclinedRequestAsynckk9 \
(kk\ ]
stringkk] c
	userEmailkkd m
)kkm n
{ll 	
varmm 
currentUsermm 
=mm 
	userEmailmm '
;mm' (
varnn 
usernn 
=nn 
awaitnn 
_userManagernn )
.nn) *
FindByEmailAsyncnn* :
(nn: ;
currentUsernn; F
)nnF G
;nnG H
varpp !
adoptBookRequestsListpp %
=pp& '
newpp( +
Listpp, 0
<pp0 1
AdoptBookRequestpp1 A
>ppA B
(ppB C
)ppC D
;ppD E
varrr 
adoptOrdersrr 
=rr 
awaitrr #!
_adoptOrderRepositoryrr$ 9
.rr9 :
GetAllQueryablerr: I
(rrI J
)rrJ K
.ss2 3
Wheress3 8
(ss8 9
ass9 :
=>ss; =
ass> ?
.ss? @
UserIdss@ F
==ssG I
userssJ N
.ssN O
IdssO Q
&&ssR T
assU V
.ssV W
StatusssW ]
==ss^ `
OrderStatusssa l
.ssl m
Declinedssm u
)ssu v
.tt2 3
Includett3 :
(tt: ;
antt; =
=>tt> @
anttA C
.ttC D
AnimalttD J
)ttJ K
.uu2 3
ToListAsyncuu3 >
(uu> ?
)uu? @
;uu@ A!
adoptBookRequestsListvv !
.vv! "
AddRangevv" *
(vv* +
adoptOrdersvv+ 6
.vv6 7
Selectvv7 =
(vv= >
xvv> ?
=>vv@ B
_mappervvC J
.vvJ K
MapvvK N
<vvN O
AdoptBookRequestvvO _
>vv_ `
(vv` a
xvva b
)vvb c
)vvc d
)vvd e
;vve f
varxx 

bookOrdersxx 
=xx 
awaitxx " 
_bookOrderRepositoryxx# 7
.xx7 8
GetAllQueryablexx8 G
(xxG H
)xxH I
.yy2 3
Whereyy3 8
(yy8 9
ayy9 :
=>yy; =
ayy> ?
.yy? @
UserIdyy@ F
==yyG I
useryyJ N
.yyN O
IdyyO Q
&&yyR T
ayyU V
.yyV W
StatusyyW ]
==yy^ `
OrderStatusyya l
.yyl m
Declinedyym u
)yyu v
.zz2 3
Includezz3 :
(zz: ;
anzz; =
=>zz> @
anzzA C
.zzC D
AnimalzzD J
)zzJ K
.{{2 3
ToListAsync{{3 >
({{> ?
){{? @
;{{@ A!
adoptBookRequestsList|| !
.||! "
AddRange||" *
(||* +

bookOrders||+ 5
.||5 6
Select||6 <
(||< =
x||= >
=>||? A
_mapper||B I
.||I J
Map||J M
<||M N
AdoptBookRequest||N ^
>||^ _
(||_ `
x||` a
)||a b
)||b c
)||c d
;||d e
return}} !
adoptBookRequestsList}} (
;}}( )
}~~ 	
} 
}ÄÄ ›w
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AdoptOrderService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
AdoptOrderService "
:# $
IAdoptOrderService% 7
{ 
private 
readonly 
IRepository $
<$ %

AdoptOrder% /
>/ 0!
_adoptOrderRepository1 F
;F G
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly 
IMapper  
_mapper! (
;( )
public 
AdoptOrderService  
(  !
IRepository! ,
<, -

AdoptOrder- 7
>7 8 
adoptOrderRepository9 M
,M N
IRepository  +
<+ ,
Animal, 2
>2 3
animalRepository4 D
,D E
IMapper  '
mapper( .
). /
{ 	!
_adoptOrderRepository !
=" # 
adoptOrderRepository$ 8
;8 9
_animalRepository 
= 
animalRepository  0
;0 1
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
ApproveAdoptOrder +
(+ ,#
AdoptOrderForApproveDto, C
orderD I
)I J
{ 	
var   

adoptOrder   
=   !
_adoptOrderRepository   2
.  2 3
Entities  3 ;
.  ; <
FirstOrDefault  < J
(  J K
x  K L
=>  M O
x  P Q
.  Q R
Id  R T
==  U W
order  X ]
.  ] ^
Id  ^ `
)  ` a
;  a b
var!! 
animal!! 
=!! 
_animalRepository!! *
.!!* +
Entities!!+ 3
.!!3 4
FirstOrDefault!!4 B
(!!B C
x!!C D
=>!!E G
x!!H I
.!!I J
Id!!J L
==!!M O

adoptOrder!!P Z
.!!Z [
AnimalId!![ c
)!!c d
;!!d e
if"" 
("" 
AnimalStatus"" 
."" 
None"" !
!=""" $
animal""% +
.""+ ,
Status"", 2
)""2 3
{## 
throw$$ 
new$$ 
ObjectException$$ )
($$) *
nameof$$* 0
($$0 1

adoptOrder$$1 ;
.$$; <
AnimalId$$< D
)$$D E
,$$E F
$str$$G d
)$$d e
;$$e f
}%% 
if'' 
('' 

adoptOrder'' 
=='' 
null'' "
||''# %

adoptOrder''& 0
.''0 1
Status''1 7
!=''8 :
OrderStatus''; F
.''F G
Pending''G N
)''N O
{(( 
throw)) 
new)) #
ObjectNotFoundException)) 1
())1 2
$str))2 T
)))T U
;))U V
}** 
animal,, 
.,, 
Status,, 
=,, 
AnimalStatus,, (
.,,( )
Booked,,) /
;,,/ 0
_animalRepository-- 
.-- 
Update-- $
(--$ %
animal--% +
)--+ ,
;--, -
_mapper// 
.// 
Map// 
(// 
order// 
,// 

adoptOrder// )
)//) *
;//* +

adoptOrder00 
.00 
Status00 
=00 
OrderStatus00  +
.00+ ,
Approved00, 4
;004 5

adoptOrder11 
.11 
ClosingDate11 "
=11# $
DateTime11% -
.11- .
Now11. 1
;111 2!
_adoptOrderRepository22 !
.22! "
Update22" (
(22( )

adoptOrder22) 3
)223 4
;224 5
await33 !
_adoptOrderRepository33 '
.33' (
	SaveAsync33( 1
(331 2
)332 3
;333 4
}44 	
public66 
async66 
Task66 #
ApproveFinalyAdoptOrder66 1
(661 2)
AdoptOrderForApproveFinalyDto662 O
order66P U
)66U V
{77 	
var88 

adoptOrder88 
=88 !
_adoptOrderRepository88 2
.882 3
Entities883 ;
.88; <
FirstOrDefault88< J
(88J K
x88K L
=>88M O
x88P Q
.88Q R
Id88R T
==88U W
order88X ]
.88] ^
Id88^ `
)88` a
;88a b
var99 
animal99 
=99 
_animalRepository99 *
.99* +
Entities99+ 3
.993 4
FirstOrDefault994 B
(99B C
x99C D
=>99E G
x99H I
.99I J
Id99J L
==99M O

adoptOrder99P Z
.99Z [
AnimalId99[ c
)99c d
;99d e
if:: 
(:: 
AnimalStatus:: 
.:: 
None:: !
!=::" $
animal::% +
.::+ ,
Status::, 2
&&::3 5
(::6 7
animal::7 =
.::= >
Status::> D
==::E G
AnimalStatus::H T
.::T U
Booked::U [
&&::\ ^

adoptOrder::_ i
.::i j
Status::j p
!=::q s
OrderStatus::t 
.	:: Ä
Approved
::Ä à
)
::à â
)
::â ä
{;; 
throw<< 
new<< 
ObjectException<< )
(<<) *
nameof<<* 0
(<<0 1

adoptOrder<<1 ;
.<<; <
AnimalId<<< D
)<<D E
,<<E F
$str<<G d
)<<d e
;<<e f
}== 
if?? 
(?? 

adoptOrder?? 
==?? 
null?? "
||??# %

adoptOrder??& 0
.??0 1
Status??1 7
==??8 :
OrderStatus??; F
.??F G
Declined??G O
)??O P
{@@ 
throwAA 
newAA #
ObjectNotFoundExceptionAA 1
(AA1 2
$strAA2 R
)AAR S
;AAS T
}BB 
animalDD 
.DD 
StatusDD 
=DD 
AnimalStatusDD (
.DD( )
AdoptedDD) 0
;DD0 1
_animalRepositoryEE 
.EE 
UpdateEE $
(EE$ %
animalEE% +
)EE+ ,
;EE, -

adoptOrderHH 
.HH 
StatusHH 
=HH 
OrderStatusHH  +
.HH+ ,
ApprovedHH, 4
;HH4 5

adoptOrderII 
.II 
ClosingDateII "
=II# $
DateTimeII% -
.II- .
NowII. 1
;II1 2!
_adoptOrderRepositoryJJ !
.JJ! "
UpdateJJ" (
(JJ( )

adoptOrderJJ) 3
)JJ3 4
;JJ4 5
awaitKK !
_adoptOrderRepositoryKK '
.KK' (
	SaveAsyncKK( 1
(KK1 2
)KK2 3
;KK3 4
}LL 	
publicNN 
asyncNN 
TaskNN 
DeclineAdoptOrderNN +
(NN+ ,#
AdoptOrderForDeclineDtoNN, C
orderNND I
)NNI J
{OO 	
varPP 

adoptOrderPP 
=PP !
_adoptOrderRepositoryPP 2
.PP2 3
EntitiesPP3 ;
.PP; <
FirstOrDefaultPP< J
(PPJ K
xPPK L
=>PPM O
xPPP Q
.PPQ R
IdPPR T
==PPU W
orderPPX ]
.PP] ^
IdPP^ `
)PP` a
;PPa b
varQQ 
animalQQ 
=QQ 
_animalRepositoryQQ *
.QQ* +
EntitiesQQ+ 3
.QQ3 4
FirstOrDefaultQQ4 B
(QQB C
xQQC D
=>QQE G
xQQH I
.QQI J
IdQQJ L
==QQM O

adoptOrderQQP Z
.QQZ [
AnimalIdQQ[ c
)QQc d
;QQd e
ifRR 
(RR 
OrderStatusRR 
.RR 
DeclinedRR $
==RR% '

adoptOrderRR( 2
.RR2 3
StatusRR3 9
)RR9 :
{SS 
throwTT 
newTT 
ObjectExceptionTT )
(TT) *
nameofTT* 0
(TT0 1

adoptOrderTT1 ;
.TT; <
AnimalIdTT< D
)TTD E
,TTE F
$strTTG c
)TTc d
;TTd e
}UU 
ifWW 
(WW 

adoptOrderWW 
==WW 
nullWW "
||WW# %

adoptOrderWW& 0
.WW0 1
StatusWW1 7
==WW8 :
OrderStatusWW; F
.WWF G
DeclinedWWG O
)WWO P
{XX 
throwYY 
newYY #
ObjectNotFoundExceptionYY 1
(YY1 2
$strYY2 e
)YYe f
;YYf g
}ZZ 
animal\\ 
.\\ 
Status\\ 
=\\ 
AnimalStatus\\ (
.\\( )
None\\) -
;\\- .
_animalRepository]] 
.]] 
Update]] $
(]]$ %
animal]]% +
)]]+ ,
;]], -
_mapper__ 
.__ 
Map__ 
(__ 
order__ 
,__ 

adoptOrder__ )
)__) *
;__* +

adoptOrder`` 
.`` 
Status`` 
=`` 
OrderStatus``  +
.``+ ,
Declined``, 4
;``4 5

adoptOrderaa 
.aa 
ClosingDateaa "
=aa# $
DateTimeaa% -
.aa- .
Nowaa. 1
;aa1 2!
_adoptOrderRepositorybb !
.bb! "
Updatebb" (
(bb( )

adoptOrderbb) 3
)bb3 4
;bb4 5
awaitcc !
_adoptOrderRepositorycc '
.cc' (
	SaveAsynccc( 1
(cc1 2
)cc2 3
;cc3 4
}dd 	
publicff 
asyncff 
Taskff 
<ff 
IEnumerableff %
<ff% &
AdoptOrderDtoff& 3
>ff3 4
>ff4 5
GetAllAdoptOrdersff6 G
(ffG H
)ffH I
{gg 	
varhh 
adoptOrdershh 
=hh 
awaithh #!
_adoptOrderRepositoryhh$ 9
.hh9 :
GetAllAsynchh: E
(hhE F
)hhF G
;hhG H
varii 
adoptOrderResultii  
=ii! "
adoptOrdersii# .
.ii. /
Selectii/ 5
(ii5 6
xii6 7
=>ii8 :
_mapperii; B
.iiB C
MapiiC F
<iiF G
AdoptOrderDtoiiG T
>iiT U
(iiU V
xiiV W
)iiW X
)iiX Y
;iiY Z
returnjj 
adoptOrderResultjj #
;jj# $
}kk 	
publicmm 
IEnumerablemm 
<mm 
AdoptOrderDtomm )
>mm) *%
GetAllApprovedAdoptOrdersmm+ D
(mmD E
)mmE F
{nn 	
varoo 
adoptOrdersoo 
=oo !
_adoptOrderRepositoryoo 3
.oo3 4
Findoo4 8
(oo8 9
xoo9 :
=>oo; =
xoo> ?
.oo? @
Statusoo@ F
==ooG I
OrderStatusooJ U
.ooU V
ApprovedooV ^
)oo^ _
.oo_ `
Selectoo` f
(oof g
xoog h
=>ooi k
_mapperool s
.oos t
Mapoot w
<oow x
AdoptOrderDto	oox Ö
>
ooÖ Ü
(
ooÜ á
x
ooá à
)
ooà â
)
ooâ ä
;
ooä ã
returnpp 
adoptOrderspp 
;pp 
}rr 	
publictt 
IEnumerablett 
<tt 
AdoptOrderDtott (
>tt( )$
GetAllPendingAdoptOrderstt* B
(ttB C
)ttC D
{uu 	
varww 
adoptOrdersww 
=ww !
_adoptOrderRepositoryww 3
.ww3 4
Findww4 8
(ww8 9
xww9 :
=>ww; =
xww> ?
.ww? @
Statusww@ F
==wwG I
OrderStatuswwJ U
.wwU V
PendingwwV ]
)ww] ^
.ww^ _
Selectww_ e
(wwe f
xwwf g
=>wwh j
_mapperwwk r
.wwr s
Mapwws v
<wwv w
AdoptOrderDto	www Ñ
>
wwÑ Ö
(
wwÖ Ü
x
wwÜ á
)
wwá à
)
wwà â
;
wwâ ä
returnxx 
adoptOrdersxx 
;xx 
}yy 	
public{{ 
IEnumerable{{ 
<{{ 
AdoptOrderDto{{ (
>{{( )%
GetAllAdoptOrdersByUserId{{* C
({{C D
string{{D J
id{{K M
){{M N
{|| 	
var}} 
adoptOrders}} 
=}} !
_adoptOrderRepository}} 3
.}}3 4
Find}}4 8
(}}8 9
x}}9 :
=>}}; =
x}}> ?
.}}? @
UserId}}@ F
==}}G I
id}}J L
)}}L M
.}}M N
Select}}N T
(}}T U
x}}U V
=>}}W Y
_mapper}}Z a
.}}a b
Map}}b e
<}}e f
AdoptOrderDto}}f s
>}}s t
(}}t u
x}}u v
)}}v w
)}}w x
;}}x y
return~~ 
adoptOrders~~ 
;~~ 
} 	
public
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
AdoptOrderDto
ÅÅ '
>
ÅÅ' (
GetById
ÅÅ) 0
(
ÅÅ0 1
long
ÅÅ1 5
id
ÅÅ6 8
)
ÅÅ8 9
{
ÇÇ 	
var
ÉÉ 

adoptOrder
ÉÉ 
=
ÉÉ 
await
ÉÉ "#
_adoptOrderRepository
ÉÉ# 8
.
ÉÉ8 9
GetByIdAsync
ÉÉ9 E
(
ÉÉE F
id
ÉÉF H
)
ÉÉH I
;
ÉÉI J
var
ÑÑ 
adoptOrderResult
ÑÑ  
=
ÑÑ! "
_mapper
ÑÑ# *
.
ÑÑ* +
Map
ÑÑ+ .
<
ÑÑ. /
AdoptOrderDto
ÑÑ/ <
>
ÑÑ< =
(
ÑÑ= >

adoptOrder
ÑÑ> H
)
ÑÑH I
;
ÑÑI J
return
ÖÖ 
adoptOrderResult
ÖÖ #
;
ÖÖ# $
}
ÜÜ 	
public
àà 
async
àà 
Task
àà 
Delete
àà  
(
àà  !
long
àà! %
id
àà& (
)
àà( )
{
ââ 	
var
ää 

adoptOrder
ää 
=
ää 
await
ää "#
_adoptOrderRepository
ää# 8
.
ää8 9
GetByIdAsync
ää9 E
(
ääE F
id
ääF H
)
ääH I
;
ääI J
if
ãã 
(
ãã 

adoptOrder
ãã 
==
ãã 
null
ãã "
)
ãã" #
{
åå 
throw
çç 
new
çç #
ArgumentNullException
çç /
(
çç/ 0
nameof
çç0 6
(
çç6 7
id
çç7 9
)
çç9 :
,
çç: ;
$str
çç< R
)
ççR S
;
ççS T
}
éé 
await
èè #
_adoptOrderRepository
èè '
.
èè' (
Remove
èè( .
(
èè. /

adoptOrder
èè/ 9
)
èè9 :
;
èè: ;
}
êê 	
}
ëë 
}íí ö¬
_C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AnimalFilterService.cs
	namespace		 	
Application		
 
.		 
Services		 
{

 
public 

class 
AnimalFilterService $
:% &
IFilterService' 5
<5 6
Animal6 <
,< =
AnimalQuery> I
>I J
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
AnimalFilterService "
(" #
IConfiguration# 1
configuration2 ?
)? @
{ 	
_configuration 
= 
configuration *
;* +
} 	
public 

IQueryable 
< 
Animal  
>  !
AddAllFiltersQuery" 4
(4 5
AnimalQuery5 @
filterA G
,G H

IQueryableI S
<S T
AnimalT Z
>Z [
	queryable\ e
)e f
{ 	
return $
AddDisabledsFiltersQuery +
(+ ,
filter, 2
.2 3

IsDisabled3 =
,= > 
AddIsNewFiltersQuery+ ?
(? @
filter@ F
.F G
IsNewG L
,L M#
AddCategoryFiltersQuery+ B
(B C
filterC I
.I J
CategoryJ R
,R S!
AddGenderFiltersQuery+ @
(@ A
filterA G
.G H
GenderH N
,N O'
AddDateOfBirthsFiltersQuery+ F
(F G
filterG M
.M N
DateOfBirthN Y
,Y Z!
AddWeightFiltersQuery+ @
(@ A
filterA G
.G H
WeightH N
,N O
	queryableP Y
)Y Z
)Z [
)[ \
)\ ]
)] ^
)^ _
;_ `
} 	
public 

IQueryable 
< 
Animal  
>  !!
AddWeightFiltersQuery" 7
(7 8
string8 >
weight? E
,E F

IQueryableG Q
<Q R
AnimalR X
>X Y
	queryableZ c
)c d
{ 	
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
weight+ 1
)1 2
)2 3
{   
List!! 
<!! 
Animal!! 
>!! 
query!! "
=!!# $
new!!% (
List!!) -
<!!- .
Animal!!. 4
>!!4 5
(!!5 6
)!!6 7
;!!7 8
var"" 
weights"" 
="" 
weight"" $
.""$ %
ToLower""% ,
("", -
)""- .
."". /
Split""/ 4
(""4 5
$char""5 8
)""8 9
.""9 :
	ToHashSet"": C
(""C D
)""D E
;""E F
foreach## 
(## 
var## 
item## !
in##" $
weights##% ,
)##, -
{$$ 
switch%% 
(%% 
item%%  
)%%  !
{&& 
case'' 
$str'' $
:''$ %
query(( !
.((! "
AddRange((" *
(((* +
	queryable((+ 4
.)) 
Where)) "
())" #
x))# $
=>))% '
int))( +
.))+ ,
Parse)), 1
())1 2
_configuration))2 @
[))@ A
$str))A X
]))X Y
)))Y Z
<=))[ ]
x))^ _
.))_ `
Weight))` f
&&** 
int** "
.**" #
Parse**# (
(**( )
_configuration**) 7
[**7 8
$str**8 O
]**O P
)**P Q
>**R S
x**T U
.**U V
Weight**V \
)**\ ]
)**] ^
;**^ _
break++ !
;++! "
case,, 
$str,, %
:,,% &
query-- !
.--! "
AddRange--" *
(--* +
	queryable--+ 4
... 
Where.. "
(.." #
x..# $
=>..% '
int..( +
...+ ,
Parse.., 1
(..1 2
_configuration..2 @
[..@ A
$str..A Y
]..Y Z
)..Z [
<=..\ ^
x.._ `
...` a
Weight..a g
&&// 
int// "
.//" #
Parse//# (
(//( )
_configuration//) 7
[//7 8
$str//8 P
]//P Q
)//Q R
>//S T
x//U V
.//V W
Weight//W ]
)//] ^
)//^ _
;//_ `
break00 !
;00! "
case11 
$str11 $
:11$ %
query22 !
.22! "
AddRange22" *
(22* +
	queryable22+ 4
.33 
Where33 "
(33" #
x33# $
=>33% '
int33( +
.33+ ,
Parse33, 1
(331 2
_configuration332 @
[33@ A
$str33A X
]33X Y
)33Y Z
<=33[ ]
x33^ _
.33_ `
Weight33` f
&&44 
int44 "
.44" #
Parse44# (
(44( )
_configuration44) 7
[447 8
$str448 O
]44O P
)44P Q
>=44R T
x44U V
.44V W
Weight44W ]
)44] ^
)44^ _
;44_ `
break55 !
;55! "
}66 
}77 
return88 
query88 
.88 
AsQueryable88 (
(88( )
)88) *
;88* +
}99 
return:: 
	queryable:: 
;:: 
};; 	
public<< 

IQueryable<< 
<<< 
Animal<<  
><<  !'
AddDateOfBirthsFiltersQuery<<" =
(<<= >
string<<> D
dateOfBirths<<E Q
,<<Q R

IQueryable<<S ]
<<<] ^
Animal<<^ d
><<d e
	queryable<<f o
)<<o p
{== 	
if>> 
(>> 
!>> 
string>> 
.>> 
IsNullOrWhiteSpace>> *
(>>* +
dateOfBirths>>+ 7
)>>7 8
)>>8 9
{?? 
List@@ 
<@@ 
Animal@@ 
>@@ 
query@@ "
=@@# $
new@@% (
List@@) -
<@@- .
Animal@@. 4
>@@4 5
(@@5 6
)@@6 7
;@@7 8
varBB 
datesOfBirthsBB !
=BB" #
dateOfBirthsBB$ 0
.BB0 1
ToLowerBB1 8
(BB8 9
)BB9 :
.BB: ;
SplitBB; @
(BB@ A
$charBBA D
)BBD E
.BBE F
	ToHashSetBBF O
(BBO P
)BBP Q
;BBQ R
foreachCC 
(CC 
varCC 
itemCC !
inCC" $
datesOfBirthsCC% 2
)CC2 3
{DD 
switchFF 
(FF 
itemFF  
)FF  !
{GG 
caseHH 
$strHH #
:HH# $
queryII !
.II! "
AddRangeII" *
(II* +
	queryableII+ 4
.JJ 
WhereJJ !
(JJ! "
xJJ" #
=>JJ$ &
DateTimeJJ' /
.JJ/ 0
NowJJ0 3
.JJ3 4
YearJJ4 8
-JJ9 :
xJJ; <
.JJ< =
DateOfBirthJJ= H
.JJH I
YearJJI M
-JJN O
(JJP Q
DateTimeJJQ Y
.JJY Z
NowJJZ ]
.JJ] ^
	DayOfYearJJ^ g
>JJh i
xJJj k
.JJk l
DateOfBirthJJl w
.JJw x
	DayOfYear	JJx Å
?
JJÇ É
$num
JJÑ Ö
:
JJÜ á
$num
JJà â
)
JJâ ä
>=
JJã ç
int
JJé ë
.
JJë í
Parse
JJí ó
(
JJó ò
_configuration
JJò ¶
[
JJ¶ ß
$str
JJß «
]
JJ« »
)
JJ» …
&&KK 
DateTimeKK &
.KK& '
NowKK' *
.KK* +
YearKK+ /
-KK0 1
xKK2 3
.KK3 4
DateOfBirthKK4 ?
.KK? @
YearKK@ D
-KKE F
(KKG H
DateTimeKKH P
.KKP Q
NowKKQ T
.KKT U
	DayOfYearKKU ^
>KK_ `
xKKa b
.KKb c
DateOfBirthKKc n
.KKn o
	DayOfYearKKo x
?KKy z
$numKK{ |
:KK} ~
$num	KK Ä
)
KKÄ Å
<
KKÇ É
int
KKÑ á
.
KKá à
Parse
KKà ç
(
KKç é
_configuration
KKé ú
[
KKú ù
$str
KKù Ω
]
KKΩ æ
)
KKæ ø
)
KKø ¿
)
KK¿ ¡
;
KK¡ ¬
breakLL !
;LL! "
caseMM 
$strMM $
:MM$ %
queryNN !
.NN! "
AddRangeNN" *
(NN* +
	queryableNN+ 4
.OO 
WhereOO "
(OO" #
xOO# $
=>OO% '
DateTimeOO( 0
.OO0 1
NowOO1 4
.OO4 5
YearOO5 9
-OO: ;
xOO< =
.OO= >
DateOfBirthOO> I
.OOI J
YearOOJ N
-OOO P
(OOQ R
DateTimeOOR Z
.OOZ [
NowOO[ ^
.OO^ _
	DayOfYearOO_ h
>OOi j
xOOk l
.OOl m
DateOfBirthOOm x
.OOx y
	DayOfYear	OOy Ç
?
OOÉ Ñ
$num
OOÖ Ü
:
OOá à
$num
OOâ ä
)
OOä ã
>=
OOå é
int
OOè í
.
OOí ì
Parse
OOì ò
(
OOò ô
_configuration
OOô ß
[
OOß ®
$str
OO® …
]
OO…  
)
OO  À
&&PP 
DateTimePP '
.PP' (
NowPP( +
.PP+ ,
YearPP, 0
-PP1 2
xPP3 4
.PP4 5
DateOfBirthPP5 @
.PP@ A
YearPPA E
-PPF G
(PPH I
DateTimePPI Q
.PPQ R
NowPPR U
.PPU V
	DayOfYearPPV _
>PP` a
xPPb c
.PPc d
DateOfBirthPPd o
.PPo p
	DayOfYearPPp y
?PPz {
$numPP| }
:PP~ 
$num
PPÄ Å
)
PPÅ Ç
<
PPÉ Ñ
int
PPÖ à
.
PPà â
Parse
PPâ é
(
PPé è
_configuration
PPè ù
[
PPù û
$str
PPû ø
]
PPø ¿
)
PP¿ ¡
)
PP¡ ¬
)
PP¬ √
;
PP√ ƒ
breakQQ !
;QQ! "
caseRR 
$strRR %
:RR% &
querySS !
.SS! "
AddRangeSS" *
(SS* +
	queryableSS+ 4
.TT 
WhereTT "
(TT" #
xTT# $
=>TT% '
DateTimeTT( 0
.TT0 1
NowTT1 4
.TT4 5
YearTT5 9
-TT: ;
xTT< =
.TT= >
DateOfBirthTT> I
.TTI J
YearTTJ N
-TTO P
(TTQ R
DateTimeTTR Z
.TTZ [
NowTT[ ^
.TT^ _
	DayOfYearTT_ h
>TTi j
xTTk l
.TTl m
DateOfBirthTTm x
.TTx y
	DayOfYear	TTy Ç
?
TTÉ Ñ
$num
TTÖ Ü
:
TTá à
$num
TTâ ä
)
TTä ã
>=
TTå é
int
TTè í
.
TTí ì
Parse
TTì ò
(
TTò ô
_configuration
TTô ß
[
TTß ®
$str
TT®  
]
TT  À
)
TTÀ Ã
&&UU 
DateTimeUU '
.UU' (
NowUU( +
.UU+ ,
YearUU, 0
-UU1 2
xUU3 4
.UU4 5
DateOfBirthUU5 @
.UU@ A
YearUUA E
-UUF G
(UUH I
DateTimeUUI Q
.UUQ R
NowUUR U
.UUU V
	DayOfYearUUV _
>UU` a
xUUb c
.UUc d
DateOfBirthUUd o
.UUo p
	DayOfYearUUp y
?UUz {
$numUU| }
:UU~ 
$num
UUÄ Å
)
UUÅ Ç
<
UUÉ Ñ
int
UUÖ à
.
UUà â
Parse
UUâ é
(
UUé è
_configuration
UUè ù
[
UUù û
$str
UUû ¿
]
UU¿ ¡
)
UU¡ ¬
)
UU¬ √
)
UU√ ƒ
;
UUƒ ≈
breakVV !
;VV! "
caseWW 
$strWW "
:WW" #
queryXX !
.XX! "
AddRangeXX" *
(XX* +
	queryableXX+ 4
.YY 
WhereYY "
(YY" #
xYY# $
=>YY% '
DateTimeYY( 0
.YY0 1
NowYY1 4
.YY4 5
YearYY5 9
-YY: ;
xYY< =
.YY= >
DateOfBirthYY> I
.YYI J
YearYYJ N
-YYO P
(YYQ R
DateTimeYYR Z
.YYZ [
NowYY[ ^
.YY^ _
	DayOfYearYY_ h
>YYi j
xYYk l
.YYl m
DateOfBirthYYm x
.YYx y
	DayOfYear	YYy Ç
?
YYÉ Ñ
$num
YYÖ Ü
:
YYá à
$num
YYâ ä
)
YYä ã
>=
YYå é
int
YYè í
.
YYí ì
Parse
YYì ò
(
YYò ô
_configuration
YYô ß
[
YYß ®
$str
YY® «
]
YY« »
)
YY» …
&&ZZ 
DateTimeZZ '
.ZZ' (
NowZZ( +
.ZZ+ ,
YearZZ, 0
-ZZ1 2
xZZ3 4
.ZZ4 5
DateOfBirthZZ5 @
.ZZ@ A
YearZZA E
-ZZF G
(ZZH I
DateTimeZZI Q
.ZZQ R
NowZZR U
.ZZU V
	DayOfYearZZV _
>ZZ` a
xZZb c
.ZZc d
DateOfBirthZZd o
.ZZo p
	DayOfYearZZp y
?ZZz {
$numZZ| }
:ZZ~ 
$num
ZZÄ Å
)
ZZÅ Ç
<
ZZÉ Ñ
int
ZZÖ à
.
ZZà â
Parse
ZZâ é
(
ZZé è
_configuration
ZZè ù
[
ZZù û
$str
ZZû Ω
]
ZZΩ æ
)
ZZæ ø
)
ZZø ¿
)
ZZ¿ ¡
;
ZZ¡ ¬
break[[ !
;[[! "
}\\ 
}]] 
return^^ 
query^^ 
.^^ 
AsQueryable^^ (
(^^( )
)^^) *
;^^* +
}__ 
return`` 
	queryable`` 
;`` 
}aa 	
publicbb 

IQueryablebb 
<bb 
Animalbb  
>bb  !#
AddCategoryFiltersQuerybb" 9
(bb9 :
stringbb: @
categorybbA I
,bbI J

IQueryablebbK U
<bbU V
AnimalbbV \
>bb\ ]
	queryablebb^ g
)bbg h
{cc 	
ifdd 
(dd 
!dd 
stringdd 
.dd 
IsNullOrWhiteSpacedd *
(dd* +
categorydd+ 3
)dd3 4
)dd4 5
{ee 
varff 

categoriesff 
=ff  
categoryff! )
.ff) *
ToLowerff* 1
(ff1 2
)ff2 3
.ff3 4
Splitff4 9
(ff9 :
$charff: =
)ff= >
.ff> ?
	ToHashSetff? H
(ffH I
)ffI J
;ffJ K
Listgg 
<gg 
Animalgg 
>gg 
querygg "
=gg# $
newgg% (
Listgg) -
<gg- .
Animalgg. 4
>gg4 5
(gg5 6
)gg6 7
;gg7 8
foreachhh 
(hh 
varhh 
itemhh !
inhh" $

categorieshh% /
)hh/ 0
{ii 
switchjj 
(jj 
itemjj  
)jj  !
{kk 
casell 
$strll #
:ll# $
querymm !
.mm! "
AddRangemm" *
(mm* +
	queryablemm+ 4
.mm4 5
Wheremm5 :
(mm: ;
xmm; <
=>mm= ?
xmm@ A
.mmA B
CategorymmB J
.mmJ K
NamemmK O
==mmP R
$strmmS X
)mmX Y
)mmY Z
;mmZ [
breaknn !
;nn! "
caseoo 
$stroo #
:oo# $
querypp !
.pp! "
AddRangepp" *
(pp* +
	queryablepp+ 4
.pp4 5
Wherepp5 :
(pp: ;
xpp; <
=>pp= ?
xpp@ A
.ppA B
CategoryppB J
.ppJ K
NameppK O
==ppP R
$strppS X
)ppX Y
)ppY Z
;ppZ [
breakqq !
;qq! "
caserr 
$strrr %
:rr% &
queryss !
.ss! "
AddRangess" *
(ss* +
	queryabless+ 4
.ss4 5
Wheress5 :
(ss: ;
xss; <
=>ss= ?
xss@ A
.ssA B
CategoryssB J
.ssJ K
NamessK O
==ssP R
$strssS [
)ss[ \
)ss\ ]
;ss] ^
breaktt !
;tt! "
}uu 
}vv 
returnww 
queryww 
.ww 
AsQueryableww (
(ww( )
)ww) *
;ww* +
}xx 
returnyy 
	queryableyy 
;yy 
}zz 	
public{{ 

IQueryable{{ 
<{{ 
Animal{{  
>{{  !$
AddDisabledsFiltersQuery{{" :
({{: ;
string{{; A
disabled{{B J
,{{J K

IQueryable{{L V
<{{V W
Animal{{W ]
>{{] ^
	queryable{{_ h
){{h i
{|| 	
if}} 
(}} 
!}} 
string}} 
.}} 
IsNullOrWhiteSpace}} *
(}}* +
disabled}}+ 3
)}}3 4
)}}4 5
{~~ 
var 
	disableds 
= 
disabled  (
.( )
ToLower) 0
(0 1
)1 2
.2 3
Split3 8
(8 9
$char9 <
)< =
.= >
	ToHashSet> G
(G H
)H I
;I J
List
ÄÄ 
<
ÄÄ 
Animal
ÄÄ 
>
ÄÄ 
query
ÄÄ "
=
ÄÄ# $
new
ÄÄ% (
List
ÄÄ) -
<
ÄÄ- .
Animal
ÄÄ. 4
>
ÄÄ4 5
(
ÄÄ5 6
)
ÄÄ6 7
;
ÄÄ7 8
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
item
ÅÅ !
in
ÅÅ" $
	disableds
ÅÅ% .
)
ÅÅ. /
{
ÇÇ 
switch
ÉÉ 
(
ÉÉ 
item
ÉÉ  
)
ÉÉ  !
{
ÑÑ 
case
ÖÖ 
$str
ÖÖ #
:
ÖÖ# $
query
ÜÜ !
.
ÜÜ! "
AddRange
ÜÜ" *
(
ÜÜ* +
	queryable
ÜÜ+ 4
.
ÜÜ4 5
Where
ÜÜ5 :
(
ÜÜ: ;
x
ÜÜ; <
=>
ÜÜ= ?
x
ÜÜ@ A
.
ÜÜA B
AnimalDefects
ÜÜB O
.
ÜÜO P
Count
ÜÜP U
>
ÜÜV W
$num
ÜÜX Y
)
ÜÜY Z
)
ÜÜZ [
;
ÜÜ[ \
break
áá !
;
áá! "
case
àà 
$str
àà $
:
àà$ %
query
ââ !
.
ââ! "
AddRange
ââ" *
(
ââ* +
	queryable
ââ+ 4
.
ââ4 5
Where
ââ5 :
(
ââ: ;
x
ââ; <
=>
ââ= ?
x
ââ@ A
.
ââA B
AnimalDefects
ââB O
.
ââO P
Count
ââP U
==
ââV X
$num
ââY Z
)
ââZ [
)
ââ[ \
;
ââ\ ]
break
ää !
;
ää! "
}
ãã 
}
åå 
return
çç 
query
çç 
.
çç 
AsQueryable
çç (
(
çç( )
)
çç) *
;
çç* +
}
éé 
return
èè 
	queryable
èè 
;
èè 
}
êê 	
public
ëë 

IQueryable
ëë 
<
ëë 
Animal
ëë  
>
ëë  !#
AddGenderFiltersQuery
ëë" 7
(
ëë7 8
string
ëë8 >
gender
ëë? E
,
ëëE F

IQueryable
ëëG Q
<
ëëQ R
Animal
ëëR X
>
ëëX Y
	queryable
ëëZ c
)
ëëc d
{
íí 	
if
ìì 
(
ìì 
!
ìì 
string
ìì 
.
ìì  
IsNullOrWhiteSpace
ìì *
(
ìì* +
gender
ìì+ 1
)
ìì1 2
)
ìì2 3
{
îî 
var
ïï 
genders
ïï 
=
ïï 
gender
ïï $
.
ïï$ %
ToLower
ïï% ,
(
ïï, -
)
ïï- .
.
ïï. /
Split
ïï/ 4
(
ïï4 5
$char
ïï5 8
)
ïï8 9
.
ïï9 :
	ToHashSet
ïï: C
(
ïïC D
)
ïïD E
;
ïïE F
List
ññ 
<
ññ 
Animal
ññ 
>
ññ 
query
ññ "
=
ññ# $
new
ññ% (
List
ññ) -
<
ññ- .
Animal
ññ. 4
>
ññ4 5
(
ññ5 6
)
ññ6 7
;
ññ7 8
foreach
óó 
(
óó 
var
óó 
item
óó !
in
óó" $
genders
óó% ,
)
óó, -
{
òò 
switch
ôô 
(
ôô 
item
ôô  
)
ôô  !
{
öö 
case
õõ 
$str
õõ #
:
õõ# $
query
úú !
.
úú! "
AddRange
úú" *
(
úú* +
	queryable
úú+ 4
.
úú4 5
Where
úú5 :
(
úú: ;
x
úú; <
=>
úú= ?
(
úú@ A
int
úúA D
)
úúD E
x
úúE F
.
úúF G
Gender
úúG M
==
úúN P
$num
úúQ R
)
úúR S
)
úúS T
;
úúT U
break
ùù !
;
ùù! "
case
ûû 
$str
ûû %
:
ûû% &
query
üü !
.
üü! "
AddRange
üü" *
(
üü* +
	queryable
üü+ 4
.
üü4 5
Where
üü5 :
(
üü: ;
x
üü; <
=>
üü= ?
(
üü@ A
int
üüA D
)
üüD E
x
üüE F
.
üüF G
Gender
üüG M
==
üüN P
$num
üüQ R
)
üüR S
)
üüS T
;
üüT U
break
†† !
;
††! "
}
°° 
}
¢¢ 
return
££ 
query
££ 
.
££ 
AsQueryable
££ (
(
££( )
)
££) *
;
££* +
}
§§ 
return
•• 
	queryable
•• 
;
•• 
}
¶¶ 	
public
ßß 

IQueryable
ßß 
<
ßß 
Animal
ßß  
>
ßß  !"
AddIsNewFiltersQuery
ßß" 6
(
ßß6 7
string
ßß7 =
isNew
ßß> C
,
ßßC D

IQueryable
ßßE O
<
ßßO P
Animal
ßßP V
>
ßßV W
	queryable
ßßX a
)
ßßa b
{
®® 	
if
©© 
(
©© 
!
©© 
string
©© 
.
©©  
IsNullOrWhiteSpace
©© *
(
©©* +
isNew
©©+ 0
)
©©0 1
)
©©1 2
{
™™ 
var
´´ 
isNews
´´ 
=
´´ 
isNew
´´ "
.
´´" #
ToLower
´´# *
(
´´* +
)
´´+ ,
.
´´, -
Split
´´- 2
(
´´2 3
$char
´´3 6
)
´´6 7
.
´´7 8
	ToHashSet
´´8 A
(
´´A B
)
´´B C
;
´´C D
List
¨¨ 
<
¨¨ 
Animal
¨¨ 
>
¨¨ 
query
¨¨ "
=
¨¨# $
new
¨¨% (
List
¨¨) -
<
¨¨- .
Animal
¨¨. 4
>
¨¨4 5
(
¨¨5 6
)
¨¨6 7
;
¨¨7 8
foreach
≠≠ 
(
≠≠ 
var
≠≠ 
item
≠≠ !
in
≠≠" $
isNews
≠≠% +
)
≠≠+ ,
{
ÆÆ 
switch
ØØ 
(
ØØ 
item
ØØ  
)
ØØ  !
{
∞∞ 
case
±± 
$str
±± #
:
±±# $
query
≤≤ !
.
≤≤! "
AddRange
≤≤" *
(
≤≤* +
	queryable
≤≤+ 4
.
≤≤4 5
Where
≤≤5 :
(
≤≤: ;
x
≤≤; <
=>
≤≤= ?
x
≤≤@ A
.
≤≤A B
IsNew
≤≤B G
)
≤≤G H
)
≤≤H I
;
≤≤I J
break
≥≥ !
;
≥≥! "
case
¥¥ 
$str
¥¥ $
:
¥¥$ %
query
µµ !
.
µµ! "
AddRange
µµ" *
(
µµ* +
	queryable
µµ+ 4
.
µµ4 5
Where
µµ5 :
(
µµ: ;
x
µµ; <
=>
µµ= ?
!
µµ@ A
x
µµA B
.
µµB C
IsNew
µµC H
)
µµH I
)
µµI J
;
µµJ K
break
∂∂ !
;
∂∂! "
}
∑∑ 
}
∏∏ 
return
∫∫ 
query
∫∫ 
.
∫∫ 
AsQueryable
∫∫ (
(
∫∫( )
)
∫∫) *
;
∫∫* +
}
ªª 
return
ºº 
	queryable
ºº 
;
ºº 
}
ΩΩ 	
}
ææ 
}øø ¥(
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AnimalImageService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
AnimalImageService #
:$ %
IImageService& 3
{ 
private 
readonly 
IRepository $
<$ %
Image% *
>* +
_imageRepository, <
;< =
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly 
IBlobService %
_blobService& 2
;2 3
public 
AnimalImageService !
(! "
IRepository" -
<- .
Image. 3
>3 4
imageRepository5 D
,D E
IBlobServiceF R
blobServiceS ^
,^ _
IRepository 
< 
Animal 
> 
animalRepository  0
)0 1
{ 	
_imageRepository 
= 
imageRepository .
;. /
_blobService 
= 
blobService &
;& '
_animalRepository 
= 
animalRepository  0
;0 1
} 	
public 
async 
Task *
CreateImagesWithExistingAnimal 8
(8 9
IList9 >
<> ?
	IFormFile? H
>H I
imagesJ P
,P Q
longR V
animalIdW _
)_ `
{ 	
foreach 
( 
var 
image 
in !
images" (
)( )
{ 
await )
CreateImageWithExistingAnimal 3
(3 4
image4 9
,9 :
animalId; C
)C D
;D E
} 
} 	
public!! 
Task!! )
CreateImageWithExistingAnimal!! 1
(!!1 2
long!!2 6
animalId!!7 ?
,!!? @
string!!A G
filePath!!H P
,!!P Q
string!!R X
fileName!!Y a
)!!a b
{"" 	
throw## 
new## #
NotImplementedException## -
(##- .
)##. /
;##/ 0
}$$ 	
public&& 
async&& 
Task&& )
CreateImageWithExistingAnimal&& 7
(&&7 8
	IFormFile&&8 A
image&&B G
,&&G H
long&&I M
animalId&&N V
)&&V W
{'' 	
var(( 
isExist(( 
=(( 
_animalRepository(( +
.((+ ,
Find((, 0
(((0 1
x((1 2
=>((3 5
x((6 7
.((7 8
Id((8 :
==((; =
animalId((> F
)((F G
;((G H
if)) 
()) 
isExist)) 
==)) 
null)) 
)))  
{** 
throw++ 
new++ #
ObjectNotFoundException++ 1
(++1 2
nameof++2 8
(++8 9
animalId++9 A
)++A B
,++B C
$str++D V
)++V W
;++W X
},, 
var-- 
Url-- 
=-- 
await-- 
_blobService-- (
.--( )
UploadFileBlobAsync--) <
(--< =
image--= B
)--B C
;--C D
var.. 
imageDb.. 
=.. 
new.. 
Image.. #
{// 
	ImageData00 
=00 
Url00 
,00  
AnimalId11 
=11 
animalId11 #
,11# $
FileName22 
=22 
image22  
.22  !
FileName22! )
}33 
;33 
await44 
_imageRepository44 "
.44" #
AddAsync44# +
(44+ ,
imageDb44, 3
)443 4
;444 5
}55 	
public77 
async77 
Task77 
Delete77  
(77  !
long77! %
imageId77& -
)77- .
{88 	
var99 
image99 
=99 
await99 
_imageRepository99 .
.99. /
GetByIdAsync99/ ;
(99; <
imageId99< C
)99C D
;99D E
if:: 
(:: 
image:: 
==:: 
null:: 
):: 
{;; 
throw<< 
new<< #
ObjectNotFoundException<< 1
(<<1 2
nameof<<2 8
(<<8 9
imageId<<9 @
)<<@ A
,<<A B
$str<<C T
)<<T U
;<<U V
}== 
await>> 
_imageRepository>> "
.>>" #
Remove>># )
(>>) *
image>>* /
)>>/ 0
;>>0 1
await?? 
_blobService?? 
.?? 
DeleteBlobAsync?? .
(??. /
image??/ 4
.??4 5
FileName??5 =
)??= >
;??> ?
}@@ 	
}AA 
}BB ˆ
hC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AnimalLocationHistoryService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class (
AnimalLocationHistoryService -
:. /)
IAnimalLocationHistoryService0 M
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IRepository $
<$ %!
AnimalLocationHistory% :
>: ;
_repository< G
;G H
public (
AnimalLocationHistoryService +
(+ ,
IMapper, 3
mapper4 :
,: ;
IRepository< G
<G H!
AnimalLocationHistoryH ]
>] ^

repository_ i
)i j
{ 	
_mapper 
= 
mapper 
; 
_repository 
= 

repository $
;$ %
} 	
public 
IEnumerable 
< $
AnimalLocationHistoryDto 3
>3 4$
GetAnimalLocationHistory5 M
(M N
longN R
animalIdS [
)[ \
{ 	
if 
( 
animalId 
< 
$num 
) 
throw 
new 
ArgumentException +
(+ ,
ExceptionStrings, <
.< =)
NegativeIntegerValueException= Z
,Z [
nameof\ b
(b c
animalIdc k
)k l
)l m
;m n
return   
_repository   
.   
GetAllQueryable   .
(  . /
)  / 0
.  0 1
Where  1 6
(  6 7
prop  7 ;
=>  < >
prop  ? C
.  C D
AnimalId  D L
==  M O
animalId  P X
)  X Y
.!! 
Include!! 
(!! 
obj!! 
=>!! 
obj!!  #
.!!# $
Address!!$ +
)!!+ ,
."" 
Select"" 
("" 
obj"" 
=>"" 
_mapper"" &
.""& '
Map""' *
<""* +$
AnimalLocationHistoryDto""+ C
>""C D
(""D E
obj""E H
)""H I
)""I J
;""J K
}## 	
public%% 
async%% 
Task%% &
WriteAnimalLocationHistory%% 4
(%%4 5
Animal%%5 ;
animal%%< B
)%%B C
{&& 	
if'' 
('' 
animal'' 
!='' 
null'' 
)'' 
{(( 
await)) 
_repository)) !
.))! "
AddAsync))" *
())* +
new))+ .!
AnimalLocationHistory))/ D
())D E
)))E F
{** 
AnimalId++ 
=++ 
animal++ %
.++% &
Id++& (
,++( )
	AddressId,, 
=,, 
animal,,  &
.,,& '
	AddressId,,' 0
}-- 
)-- 
;-- 
}.. 
else// 
{00 
throw11 
new11 !
ArgumentNullException11 /
(11/ 0
nameof110 6
(116 7
animal117 =
)11= >
,11> ?
ExceptionStrings11@ P
.11P Q!
NullArgumentException11Q f
)11f g
;11g h
}22 
}44 	
}55 
}66 Ö◊
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AnimalService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

partial 
class 
AnimalService &
:' (
IAnimalService) 7
{ 
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_repository- 8
;8 9
private 
readonly 
IKeepingService (
_keepingService) 8
;8 9
private 
readonly 
IAttitudeToService +
_attitudesToService, ?
;? @
private 
readonly 
IDefectService '
_defectService( 6
;6 7
private 
readonly 
IProcessingService +
_processingService, >
;> ?
private 
readonly 
INeedsService &
_needsService' 4
;4 5
private 
readonly 
IIsNewService &
_isNewService' 4
;4 5
private 
readonly 
IVaccinationService ,
_vaccinationService- @
;@ A
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUriService $
_uriService% 0
;0 1
private 
readonly )
IAnimalLocationHistoryService 6#
_locationHistoryService7 N
;N O
private   
readonly   
IStatisticService   *
<  * +
Animal  + 1
>  1 2
_statisticService  3 D
;  D E
private!! 
readonly!! &
IAnimalViewLocationService!! 3
_locationService!!4 D
;!!D E
private"" 
readonly"" 
IDescriptionService"" ,
_descriptionService""- @
;""@ A
private## 
readonly## 
IBreedService## &
_breedService##' 4
;##4 5
private$$ 
readonly$$ 
IFilterService$$ '
<$$' (
Animal$$( .
,$$. /
AnimalQuery$$0 ;
>$$; < 
_animalFilterService$$= Q
;$$Q R
public&& 
AnimalService&& 
(&& 
IRepository&& (
<&&( )
Animal&&) /
>&&/ 0

repository&&1 ;
,&&; <
IMapper&&= D
mapper&&E K
,&&K L
IKeepingService&&M \
keepingService&&] k
,&&k l
IAttitudeToService'' /
attitudesToService''0 B
,''B C
IDefectService''D R
defectService''S `
,''` a
IProcessingService(( /
processingService((0 A
,((A B
INeedsService((C P
needsService((Q ]
,((] ^
IVaccinationService)) 0
vaccinationService))1 C
,))C D
IIsNewService))E R
isNewService))S _
,))_ `
IUriService))a l

uriService))m w
,))w x)
IAnimalLocationHistoryService** :"
locationHistoryService**; Q
,**Q R
IStatisticService++ .
<++. /
Animal++/ 5
>++5 6
statisticService++7 G
,++G H&
IAnimalViewLocationService++I c
locationService++d s
,++s t
IFilterService,, +
<,,+ ,
Animal,,, 2
,,,2 3
AnimalQuery,,4 ?
>,,? @
animalFilterService,,A T
,,,T U
IDescriptionService-- 0
descriptionService--1 C
,--C D
IBreedService--E R
breedService--S _
)--_ `
{.. 	
_repository// 
=// 

repository// $
;//$ %
_mapper00 
=00 
mapper00 
;00 
_keepingService11 
=11 
keepingService11 ,
;11, -
_attitudesToService22 
=22  !
attitudesToService22" 4
;224 5
_defectService33 
=33 
defectService33 *
;33* +
_processingService44 
=44  
processingService44! 2
;442 3
_needsService55 
=55 
needsService55 (
;55( )
_isNewService66 
=66 
isNewService66 (
;66( )
_vaccinationService77 
=77  !
vaccinationService77" 4
;774 5
_uriService88 
=88 

uriService88 $
;88$ %#
_locationHistoryService99 #
=99$ %"
locationHistoryService99& <
;99< =
_statisticService:: 
=:: 
statisticService::  0
;::0 1
_descriptionService;; 
=;;  !
descriptionService;;" 4
;;;4 5
_breedService<< 
=<< 
breedService<< (
;<<( )
_locationService== 
=== 
locationService== .
;==. / 
_animalFilterService>>  
=>>! "
animalFilterService>># 6
;>>6 7
}?? 	
public@@ 


Pagination@@ 
<@@ 
	AnimalDto@@ 
>@@  
GetAllAnimals@@! .
(@@. /
AnimalFilter@@/ ;
filter@@< B
=@@C D
null@@E I
,@@I J"
AnimalPaginationFilter@@K a

pagination@@b l
=@@m n
null@@o s
)@@s t
{AA 	
varBB 
filterQueryBB 
=BB 
_mapperBB %
.BB% &
MapBB& )
<BB) *
AnimalQueryBB* 5
>BB5 6
(BB6 7
filterBB7 =
)BB= >
;BB> ?
varCC 
paginationQueryCC 
=CC  !
_mapperCC" )
.CC) *
MapCC* -
<CC- .!
AnimalPaginationQueryCC. C
>CCC D
(CCD E

paginationCCE O
)CCO P
;CCP Q
varDD 
skipDD 
=DD 
(DD 
paginationQueryDD '
.DD' (

PageNumberDD( 2
-DD3 4
$numDD5 6
)DD6 7
*DD8 9
paginationQueryDD: I
.DDI J
PageSizeDDJ R
;DDR S

IQueryableEE 
<EE 
AnimalEE 
>EE 
animalsEE &
=EE' (
_repositoryEE) 4
.EE4 5
GetAllQueryableEE5 D
(EED E
)EEE F
.FF- .
WhereFF. 3
(FF3 4
xFF4 5
=>FF6 8
xFF9 :
.FF: ;
StatusFF; A
!=FFB D
AnimalStatusFFE Q
.FFQ R
AdoptedFFR Y
&&FFZ \
!FF] ^
xFF^ _
.FF_ `
IsHiddenFF` h
)FFh i
.GG- .
IncludeGG. 5
(GG5 6
animalGG6 <
=>GG= ?
animalGG@ F
.GGF G
ImagesGGG M
)GGM N
.HH- .
IncludeHH. 5
(HH5 6
xHH6 7
=>HH8 :
xHH; <
.HH< =
CategoryHH= E
)HHE F
.II- .
IncludeII. 5
(II5 6
xII6 7
=>II8 :
xII; <
.II< =
VideosII= C
)IIC D
.JJ- .
IncludeJJ. 5
(JJ5 6
xJJ6 7
=>JJ8 :
xJJ; <
.JJ< =
DescriptionJJ= H
)JJH I
.KK- .
IncludeKK. 5
(KK5 6
xKK6 7
=>KK8 :
xKK; <
.KK< =
BreedKK= B
)KKB C
.LL- .
OrderByDescendingLL. ?
(LL? @
xLL@ A
=>LLB D
xLLE F
.LLF G
IsNewLLG L
)LLL M
.LLM N
ThenByDescendingLLN ^
(LL^ _
xLL_ `
=>LLa c
xLLd e
.LLe f
	FoundDateLLf o
)LLo p
;LLp q
ifMM 
(MM 
filterMM 
!=MM 
nullMM 
)MM 
animalsNN 
=NN  
_animalFilterServiceNN .
.NN. /
AddAllFiltersQueryNN/ A
(NNA B
filterQueryNNB M
,NNM N
animalsNNO V
)NNV W
;NNW X
varOO 
queryResultOO 
=OO 
animalsOO %
.OO% &
ToListOO& ,
(OO, -
)OO- .
;OO. /
varPP 
animalsResultPP 
=PP 
animalsPP  '
.PP' (
SelectPP( .
(PP. /
xPP/ 0
=>PP1 3
_mapperPP4 ;
.PP; <
MapPP< ?
<PP? @
	AnimalDtoPP@ I
>PPI J
(PPJ K
xPPK L
)PPL M
)PPM N
.QQ 
SkipQQ 
(QQ 
skipQQ 
)QQ 
.QQ 
TakeQQ  
(QQ  !
paginationQueryQQ! 0
.QQ0 1
PageSizeQQ1 9
)QQ9 :
.QQ: ;
ToListQQ; A
(QQA B
)QQB C
;QQC D
varRR 
paginationResponseRR "
=RR# $
PaginationHelperRR% 5
.RR5 6#
CreatePaginatedResponseRR6 M
(RRM N
_uriServiceRRN Y
,RRY Z
paginationQueryRR[ j
,RRj k
animalsResultSS !
,SS! "
queryResultSS# .
,SS. /
$strSS0 T
,SST U
filterQuerySSV a
)SSa b
;SSb c
returnTT 
paginationResponseTT %
;TT% &
}UU 	
publicVV 

PaginationVV 
<VV "
AnimalIncludeValuesDtoVV 0
>VV0 1&
GetAllAnimalsIncludeValuesVV2 L
(VVL M
AnimalFilterVVM Y
filterVVZ `
=VVa b
nullVVc g
,VVg h"
AnimalPaginationFilterVVi 

pagination
VVÄ ä
=
VVã å
null
VVç ë
)
VVë í
{WW 	
varXX 
filterQueryXX 
=XX 
_mapperXX %
.XX% &
MapXX& )
<XX) *
AnimalQueryXX* 5
>XX5 6
(XX6 7
filterXX7 =
)XX= >
;XX> ?
varYY 
paginationQueryYY 
=YY  !
_mapperYY" )
.YY) *
MapYY* -
<YY- .!
AnimalPaginationQueryYY. C
>YYC D
(YYD E

paginationYYE O
)YYO P
;YYP Q
varZZ 
skipZZ 
=ZZ 
(ZZ 
paginationQueryZZ '
.ZZ' (

PageNumberZZ( 2
-ZZ3 4
$numZZ5 6
)ZZ6 7
*ZZ8 9
paginationQueryZZ: I
.ZZI J
PageSizeZZJ R
;ZZR S
var[[ 
animals[[ 
=[[ 
_repository[[ %
.[[% &
GetAllQueryable[[& 5
([[5 6
)[[6 7
.\\% &
Where\\& +
(\\+ ,
x\\, -
=>\\. 0
x\\1 2
.\\2 3
Status\\3 9
!=\\: <
AnimalStatus\\= I
.\\I J
Adopted\\J Q
&&\\R T
!\\U V
x\\V W
.\\W X
IsHidden\\X `
)\\` a
.]]% &
Include]]& -
(]]- .
animal]]. 4
=>]]5 7
animal]]8 >
.]]> ?
Images]]? E
)]]E F
.^^% &
Include^^& -
(^^- .
x^^. /
=>^^0 2
x^^3 4
.^^4 5
Category^^5 =
)^^= >
.__% &
Include__& -
(__- .
x__. /
=>__0 2
x__3 4
.__4 5
Address__5 <
)__< =
.``% &
Include``& -
(``- .
x``. /
=>``0 2
x``3 4
.``4 5
Food``5 9
)``9 :
.aa% &
Includeaa& -
(aa- .
xaa. /
=>aa0 2
xaa3 4
.aa4 5
Descriptionaa5 @
)aa@ A
.bb% &
Includebb& -
(bb- .
xbb. /
=>bb0 2
xbb3 4
.bb4 5
Breedbb5 :
)bb: ;
.cc% &
Includecc& -
(cc- .
xcc. /
=>cc0 2
xcc3 4
.cc4 5
Videoscc5 ;
)cc; <
.dd% &
Includedd& -
(dd- .
xdd. /
=>dd0 2
xdd3 4
.dd4 5
AnimalDefectsdd5 B
)ddB C
.ee( )
ThenIncludeee) 4
(ee4 5
xee5 6
=>ee7 9
xee: ;
.ee; <
Defectee< B
)eeB C
.ff% &
Includeff& -
(ff- .
animalff. 4
=>ff5 7
animalff8 >
.ff> ?
AnimalVaccinationsff? Q
)ffQ R
.gg( )
ThenIncludegg) 4
(gg4 5
vacgg5 8
=>gg9 ;
vacgg< ?
.gg? @
Vaccinationgg@ K
)ggK L
.hh% &
Includehh& -
(hh- .
animalhh. 4
=>hh5 7
animalhh8 >
.hh> ?
AnimalAttitudeshh? N
)hhN O
.ii( )
ThenIncludeii) 4
(ii4 5
attii5 8
=>ii9 ;
attii< ?
.ii? @

AttitudeToii@ J
)iiJ K
.jj% &
OrderByDescendingjj& 7
(jj7 8
xjj8 9
=>jj: <
xjj= >
.jj> ?
IsNewjj? D
)jjD E
.kk( )
ThenByDescendingkk) 9
(kk9 :
xkk: ;
=>kk< >
xkk? @
.kk@ A
	FoundDatekkA J
)kkJ K
.ll( )
AsQueryablell) 4
(ll4 5
)ll5 6
;ll6 7
ifmm 
(mm 
filtermm 
!=mm 
nullmm 
)mm 
animalsnn 
=nn  
_animalFilterServicenn .
.nn. /
AddAllFiltersQuerynn/ A
(nnA B
filterQuerynnB M
,nnM N
animalsnnO V
)nnV W
;nnW X
varoo 
queryResultoo 
=oo 
animalsoo %
.oo% &
ToListoo& ,
(oo, -
)oo- .
;oo. /
varpp 
animalsResultpp 
=pp 
animalspp  '
.pp' (
Selectpp( .
(pp. /
xpp/ 0
=>pp1 3
_mapperpp4 ;
.pp; <
Mappp< ?
<pp? @"
AnimalIncludeValuesDtopp@ V
>ppV W
(ppW X
xppX Y
)ppY Z
)ppZ [
.qq 
Skipqq 
(qq 
skipqq 
)qq 
.qq 
Takeqq  
(qq  !
paginationQueryqq! 0
.qq0 1
PageSizeqq1 9
)qq9 :
.qq: ;
ToListqq; A
(qqA B
)qqB C
;qqC D
varrr 
paginationResponserr "
=rr# $
PaginationHelperrr% 5
.rr5 6#
CreatePaginatedResponserr6 M
(rrM N
_uriServicerrN Y
,rrY Z
paginationQueryrr[ j
,rrj k
animalsResultss 
,ss 
queryResultss  +
,ss+ ,
$strss- =
,ss= >
filterQueryss? J
)ssJ K
;ssK L
returntt 
paginationResponsett %
;tt% &
}uu 	
publicvv 
	AnimalDtovv 
GetByIdvv  
(vv  !
longvv! %
idvv& (
)vv( )
{ww 	
varxx 
animalxx 
=xx 
_mapperxx  
.xx  !
Mapxx! $
<xx$ %
	AnimalDtoxx% .
>xx. /
(xx/ 0
_repositoryxx0 ;
.xx; <
Entitiesxx< D
.yy 
Includeyy 
(yy 
animalyy %
=>yy& (
animalyy) /
.yy/ 0
AnimalNeedsyy0 ;
)yy; <
.zz 
ThenIncludezz $
(zz$ %
needzz% )
=>zz* ,
needzz- 1
.zz1 2
Needszz2 7
)zz7 8
.{{ 
AsNoTracking{{ %
({{% &
){{& '
.|| 
Include|| 
(|| 
animal|| %
=>||& (
animal||) /
.||/ 0
AnimalVaccinations||0 B
)||B C
.}} 
ThenInclude}} $
(}}$ %
vac}}% (
=>}}) +
vac}}, /
.}}/ 0
Vaccination}}0 ;
)}}; <
.~~ 
AsNoTracking~~ %
(~~% &
)~~& '
. 
Include 
( 
animal %
=>& (
animal) /
./ 0
AnimalProcessings0 A
)A B
.
ÄÄ 
ThenInclude
ÄÄ $
(
ÄÄ$ %
proc
ÄÄ% )
=>
ÄÄ* ,
proc
ÄÄ- 1
.
ÄÄ1 2

Processing
ÄÄ2 <
)
ÄÄ< =
.
ÅÅ 
AsNoTracking
ÅÅ %
(
ÅÅ% &
)
ÅÅ& '
.
ÇÇ 
Include
ÇÇ 
(
ÇÇ 
animal
ÇÇ %
=>
ÇÇ& (
animal
ÇÇ) /
.
ÇÇ/ 0
AnimalKeepings
ÇÇ0 >
)
ÇÇ> ?
.
ÉÉ 
ThenInclude
ÉÉ $
(
ÉÉ$ %
keep
ÉÉ% )
=>
ÉÉ* ,
keep
ÉÉ- 1
.
ÉÉ1 2
Keeping
ÉÉ2 9
)
ÉÉ9 :
.
ÑÑ 
AsNoTracking
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
.
ÖÖ 
Include
ÖÖ 
(
ÖÖ 
animal
ÖÖ %
=>
ÖÖ& (
animal
ÖÖ) /
.
ÖÖ/ 0
AnimalAttitudes
ÖÖ0 ?
)
ÖÖ? @
.
ÜÜ 
ThenInclude
ÜÜ $
(
ÜÜ$ %
att
ÜÜ% (
=>
ÜÜ) +
att
ÜÜ, /
.
ÜÜ/ 0

AttitudeTo
ÜÜ0 :
)
ÜÜ: ;
.
áá 
AsNoTracking
áá %
(
áá% &
)
áá& '
.
àà 
Include
àà 
(
àà 
animal
àà %
=>
àà& (
animal
àà) /
.
àà/ 0
AnimalDefects
àà0 =
)
àà= >
.
ââ 
ThenInclude
ââ $
(
ââ$ %
defect
ââ% +
=>
ââ, .
defect
ââ/ 5
.
ââ5 6
Defect
ââ6 <
)
ââ< =
.
ää 
AsNoTracking
ää %
(
ää% &
)
ää& '
.
ãã 
Include
ãã 
(
ãã 
animal
ãã %
=>
ãã& (
animal
ãã) /
.
ãã/ 0
Images
ãã0 6
)
ãã6 7
.
åå 
AsNoTracking
åå %
(
åå% &
)
åå& '
.
çç 
Include
çç 
(
çç 
animal
çç %
=>
çç& (
animal
çç) /
.
çç/ 0
Breed
çç0 5
)
çç5 6
.
éé 
AsNoTracking
éé &
(
éé& '
)
éé' (
.
èè 
Include
èè 
(
èè 
animal
èè %
=>
èè& (
animal
èè) /
.
èè/ 0
Description
èè0 ;
)
èè; <
.
êê 
AsNoTracking
êê &
(
êê& '
)
êê' (
.
ëë 
FirstOrDefault
ëë %
(
ëë% &
x
ëë& '
=>
ëë( *
x
ëë+ ,
.
ëë, -
Id
ëë- /
==
ëë0 2
id
ëë3 5
)
ëë5 6
)
íí 
;
íí 
return
ìì 
animal
ìì 
;
ìì 
}
îî 	
public
ïï $
AnimalIncludeValuesDto
ïï %"
GetByIdIncludeValues
ïï& :
(
ïï: ;
long
ïï; ?
id
ïï@ B
)
ïïB C
{
ññ 	
var
óó 
animal
óó 
=
óó 
_mapper
óó  
.
óó  !
Map
óó! $
<
óó$ %$
AnimalIncludeValuesDto
óó% ;
>
óó; <
(
óó< =
_repository
óó= H
.
óóH I
Entities
óóI Q
.
òò 
Include
òò 
(
òò 
animal
òò %
=>
òò& (
animal
òò) /
.
òò/ 0
AnimalNeeds
òò0 ;
)
òò; <
.
ôô 
ThenInclude
ôô $
(
ôô$ %
need
ôô% )
=>
ôô* ,
need
ôô- 1
.
ôô1 2
Needs
ôô2 7
)
ôô7 8
.
öö 
AsNoTracking
öö %
(
öö% &
)
öö& '
.
õõ 
Include
õõ 
(
õõ 
animal
õõ %
=>
õõ& (
animal
õõ) /
.
õõ/ 0 
AnimalVaccinations
õõ0 B
)
õõB C
.
úú 
ThenInclude
úú $
(
úú$ %
vac
úú% (
=>
úú) +
vac
úú, /
.
úú/ 0
Vaccination
úú0 ;
)
úú; <
.
ùù 
AsNoTracking
ùù %
(
ùù% &
)
ùù& '
.
ûû 
Include
ûû 
(
ûû 
animal
ûû %
=>
ûû& (
animal
ûû) /
.
ûû/ 0
AnimalProcessings
ûû0 A
)
ûûA B
.
üü 
ThenInclude
üü $
(
üü$ %
proc
üü% )
=>
üü* ,
proc
üü- 1
.
üü1 2

Processing
üü2 <
)
üü< =
.
†† 
AsNoTracking
†† %
(
††% &
)
††& '
.
°° 
Include
°° 
(
°° 
animal
°° %
=>
°°& (
animal
°°) /
.
°°/ 0
AnimalKeepings
°°0 >
)
°°> ?
.
¢¢ 
ThenInclude
¢¢ $
(
¢¢$ %
keep
¢¢% )
=>
¢¢* ,
keep
¢¢- 1
.
¢¢1 2
Keeping
¢¢2 9
)
¢¢9 :
.
££ 
AsNoTracking
££ %
(
££% &
)
££& '
.
§§ 
Include
§§ 
(
§§ 
animal
§§ %
=>
§§& (
animal
§§) /
.
§§/ 0
AnimalAttitudes
§§0 ?
)
§§? @
.
•• 
ThenInclude
•• $
(
••$ %
att
••% (
=>
••) +
att
••, /
.
••/ 0

AttitudeTo
••0 :
)
••: ;
.
¶¶ 
AsNoTracking
¶¶ %
(
¶¶% &
)
¶¶& '
.
ßß 
Include
ßß 
(
ßß 
animal
ßß %
=>
ßß& (
animal
ßß) /
.
ßß/ 0
AnimalDefects
ßß0 =
)
ßß= >
.
®® 
ThenInclude
®® $
(
®®$ %
defect
®®% +
=>
®®, .
defect
®®/ 5
.
®®5 6
Defect
®®6 <
)
®®< =
.
©© 
AsNoTracking
©© %
(
©©% &
)
©©& '
.
™™ 
Include
™™ 
(
™™ 
animal
™™ %
=>
™™& (
animal
™™) /
.
™™/ 0
Images
™™0 6
)
™™6 7
.
´´ 
AsNoTracking
´´ %
(
´´% &
)
´´& '
.
¨¨ 
Include
¨¨ 
(
¨¨ 
animal
¨¨ %
=>
¨¨& (
animal
¨¨) /
.
¨¨/ 0
Food
¨¨0 4
)
¨¨4 5
.
≠≠ 
AsNoTracking
≠≠ &
(
≠≠& '
)
≠≠' (
.
ÆÆ 
Include
ÆÆ 
(
ÆÆ 
animal
ÆÆ %
=>
ÆÆ& (
animal
ÆÆ) /
.
ÆÆ/ 0
Address
ÆÆ0 7
)
ÆÆ7 8
.
ØØ 
AsNoTracking
ØØ &
(
ØØ& '
)
ØØ' (
.
∞∞ 
Include
∞∞ 
(
∞∞ 
animal
∞∞ %
=>
∞∞& (
animal
∞∞) /
.
∞∞/ 0
Category
∞∞0 8
)
∞∞8 9
.
±± 
AsNoTracking
±± &
(
±±& '
)
±±' (
.
≤≤ 
Include
≤≤ 
(
≤≤  
animal
≤≤  &
=>
≤≤' )
animal
≤≤* 0
.
≤≤0 1
Videos
≤≤1 7
)
≤≤7 8
.
≥≥ 
AsNoTracking
≥≥ &
(
≥≥& '
)
≥≥' (
.
¥¥ 
Include
¥¥ 
(
¥¥  
animal
¥¥  &
=>
¥¥' )
animal
¥¥* 0
.
¥¥0 1
Description
¥¥1 <
)
¥¥< =
.
µµ 
AsNoTracking
µµ &
(
µµ& '
)
µµ' (
.
∂∂ 
Include
∂∂ 
(
∂∂  
animal
∂∂  &
=>
∂∂' )
animal
∂∂* 0
.
∂∂0 1
Breed
∂∂1 6
)
∂∂6 7
.
∑∑ 
AsNoTracking
∑∑ &
(
∑∑& '
)
∑∑' (
.
∏∏ 
FirstOrDefault
∏∏ %
(
∏∏% &
x
∏∏& '
=>
∏∏( *
x
∏∏+ ,
.
∏∏, -
Id
∏∏- /
==
∏∏0 2
id
∏∏3 5
)
∏∏5 6
)
ππ 
;
ππ 
return
∫∫ 
animal
∫∫ 
;
∫∫ 
}
ªª 	
public
ΩΩ 
async
ΩΩ 
Task
ΩΩ 
<
ΩΩ 
IEnumerable
ΩΩ %
<
ΩΩ% &
	AnimalDto
ΩΩ& /
>
ΩΩ/ 0
>
ΩΩ0 1 
GetRecommendedPets
ΩΩ2 D
(
ΩΩD E$
AnimalIncludeValuesDto
ΩΩE [
	animalDto
ΩΩ\ e
)
ΩΩe f
{
ææ 	
var
øø 
animals
øø 
=
øø 
await
øø 
_repository
øø  +
.
øø+ ,
Entities
øø, 4
.
¿¿ 
OrderBy
¿¿ 
(
¿¿ 
animal
¿¿ %
=>
¿¿& (
animal
¿¿) /
.
¿¿/ 0
	FoundDate
¿¿0 9
)
¿¿9 :
.
¡¡ 
Where
¡¡ 
(
¡¡ 
animal
¡¡ #
=>
¡¡$ &
animal
¡¡' -
.
¡¡- .
Id
¡¡. 0
!=
¡¡1 3
	animalDto
¡¡4 =
.
¡¡= >
Id
¡¡> @
)
¡¡@ A
.
¬¬ 
Include
¬¬ 
(
¬¬ 
animal
¬¬ %
=>
¬¬& (
animal
¬¬) /
.
¬¬/ 0
Images
¬¬0 6
)
¬¬6 7
.
√√ 
Take
√√ 
(
√√ 
$num
√√ 
)
√√ 
.
ƒƒ 
ToListAsync
ƒƒ "
(
ƒƒ" #
)
ƒƒ# $
;
ƒƒ$ %
var
≈≈ 

animalsDto
≈≈ 
=
≈≈ 
animals
≈≈ $
.
≈≈$ %
Select
≈≈% +
(
≈≈+ ,
x
≈≈, -
=>
≈≈. 0
_mapper
≈≈1 8
.
≈≈8 9
Map
≈≈9 <
<
≈≈< =
	AnimalDto
≈≈= F
>
≈≈F G
(
≈≈G H
x
≈≈H I
)
≈≈I J
)
≈≈J K
;
≈≈K L
return
∆∆ 

animalsDto
∆∆ 
;
∆∆ 
}
«« 	
public
…… 
async
…… 
Task
…… 
<
…… 
	AnimalDto
…… #
>
……# $
UpdateAnimal
……% 1
(
……1 2
	AnimalDto
……2 ;
animal
……< B
)
……B C
{
   	
var
ÀÀ 
model
ÀÀ 
=
ÀÀ 
_repository
ÀÀ #
.
ÀÀ# $
Entities
ÀÀ$ ,
.
ÃÃ 
Include
ÃÃ 
(
ÃÃ 
animal
ÃÃ !
=>
ÃÃ" $
animal
ÃÃ% +
.
ÃÃ+ ,
AnimalNeeds
ÃÃ, 7
)
ÃÃ7 8
.
ÕÕ 
ThenInclude
ÕÕ  
(
ÕÕ  !
need
ÕÕ! %
=>
ÕÕ& (
need
ÕÕ) -
.
ÕÕ- .
Needs
ÕÕ. 3
)
ÕÕ3 4
.
ŒŒ 
AsNoTracking
ŒŒ !
(
ŒŒ! "
)
ŒŒ" #
.
œœ 
Include
œœ 
(
œœ 
animal
œœ !
=>
œœ" $
animal
œœ% +
.
œœ+ , 
AnimalVaccinations
œœ, >
)
œœ> ?
.
–– 
ThenInclude
––  
(
––  !
vac
––! $
=>
––% '
vac
––( +
.
––+ ,
Vaccination
––, 7
)
––7 8
.
—— 
AsNoTracking
—— !
(
——! "
)
——" #
.
““ 
Include
““ 
(
““ 
animal
““ !
=>
““" $
animal
““% +
.
““+ ,
AnimalProcessings
““, =
)
““= >
.
”” 
ThenInclude
””  
(
””  !
proc
””! %
=>
””& (
proc
””) -
.
””- .

Processing
””. 8
)
””8 9
.
‘‘ 
AsNoTracking
‘‘ !
(
‘‘! "
)
‘‘" #
.
’’ 
Include
’’ 
(
’’ 
animal
’’ !
=>
’’" $
animal
’’% +
.
’’+ ,
AnimalKeepings
’’, :
)
’’: ;
.
÷÷ 
ThenInclude
÷÷  
(
÷÷  !
keep
÷÷! %
=>
÷÷& (
keep
÷÷) -
.
÷÷- .
Keeping
÷÷. 5
)
÷÷5 6
.
◊◊ 
AsNoTracking
◊◊ !
(
◊◊! "
)
◊◊" #
.
ÿÿ 
Include
ÿÿ 
(
ÿÿ 
animal
ÿÿ !
=>
ÿÿ" $
animal
ÿÿ% +
.
ÿÿ+ ,
AnimalAttitudes
ÿÿ, ;
)
ÿÿ; <
.
ŸŸ 
ThenInclude
ŸŸ  
(
ŸŸ  !
att
ŸŸ! $
=>
ŸŸ% '
att
ŸŸ( +
.
ŸŸ+ ,

AttitudeTo
ŸŸ, 6
)
ŸŸ6 7
.
⁄⁄ 
AsNoTracking
⁄⁄ !
(
⁄⁄! "
)
⁄⁄" #
.
€€ 
Include
€€ 
(
€€ 
animal
€€ !
=>
€€" $
animal
€€% +
.
€€+ ,
AnimalDefects
€€, 9
)
€€9 :
.
‹‹ 
ThenInclude
‹‹  
(
‹‹  !
defect
‹‹! '
=>
‹‹( *
defect
‹‹+ 1
.
‹‹1 2
Defect
‹‹2 8
)
‹‹8 9
.
›› 
AsNoTracking
›› !
(
››! "
)
››" #
.
ﬁﬁ 
Include
ﬁﬁ 
(
ﬁﬁ 
animal
ﬁﬁ !
=>
ﬁﬁ" $
animal
ﬁﬁ% +
.
ﬁﬁ+ ,
Description
ﬁﬁ, 7
)
ﬁﬁ7 8
.
ﬂﬂ 
AsNoTracking
ﬂﬂ !
(
ﬂﬂ! "
)
ﬂﬂ" #
.
‚‚ 
Include
‚‚ 
(
‚‚ 
animal
‚‚ !
=>
‚‚" $
animal
‚‚% +
.
‚‚+ ,
Images
‚‚, 2
)
‚‚2 3
.
„„ 
FirstOrDefault
„„ !
(
„„! "
x
„„" #
=>
„„$ &
x
„„' (
.
„„( )
Id
„„) +
==
„„, .
animal
„„/ 5
.
„„5 6
Id
„„6 8
)
„„8 9
;
„„9 :
var
ÂÂ 
isLocationNew
ÂÂ 
=
ÂÂ 
animal
ÂÂ  &
.
ÂÂ& '
	AddressId
ÂÂ' 0
!=
ÂÂ1 3
model
ÂÂ4 9
.
ÂÂ9 :
	AddressId
ÂÂ: C
;
ÂÂC D
using
ÊÊ 
(
ÊÊ 
var
ÊÊ 
scope
ÊÊ 
=
ÊÊ 
new
ÊÊ "
TransactionScope
ÊÊ# 3
(
ÊÊ3 4-
TransactionScopeAsyncFlowOption
ÊÊ4 S
.
ÊÊS T
Enabled
ÊÊT [
)
ÊÊ[ \
)
ÊÊ\ ]
{
ÁÁ 
await
ËË 
_keepingService
ËË %
.
ËË% &&
UpdateAnimalWithKeepings
ËË& >
(
ËË> ?
animal
ËË? E
,
ËËE F
model
ËËG L
)
ËËL M
;
ËËM N
await
ÈÈ 
_needsService
ÈÈ #
.
ÈÈ# $#
UpdateAnimalWithNeeds
ÈÈ$ 9
(
ÈÈ9 :
animal
ÈÈ: @
,
ÈÈ@ A
model
ÈÈB G
)
ÈÈG H
;
ÈÈH I
await
ÍÍ !
_vaccinationService
ÍÍ )
.
ÍÍ) *)
UpdateAnimalWithVaccination
ÍÍ* E
(
ÍÍE F
animal
ÍÍF L
,
ÍÍL M
model
ÍÍN S
)
ÍÍS T
;
ÍÍT U
await
ÎÎ  
_processingService
ÎÎ (
.
ÎÎ( )(
UpdateAnimalWithProcessing
ÎÎ) C
(
ÎÎC D
animal
ÎÎD J
,
ÎÎJ K
model
ÎÎL Q
)
ÎÎQ R
;
ÎÎR S
await
ÏÏ !
_attitudesToService
ÏÏ )
.
ÏÏ) *'
UpdateAnimalWithAttitudes
ÏÏ* C
(
ÏÏC D
animal
ÏÏD J
,
ÏÏJ K
model
ÏÏL Q
)
ÏÏQ R
;
ÏÏR S
await
ÌÌ 
_defectService
ÌÌ $
.
ÌÌ$ %%
UpdateAnimalWithDefects
ÌÌ% <
(
ÌÌ< =
animal
ÌÌ= C
,
ÌÌC D
model
ÌÌE J
)
ÌÌJ K
;
ÌÌK L
_mapper
ÓÓ 
.
ÓÓ 
Map
ÓÓ 
(
ÓÓ 
animal
ÓÓ "
,
ÓÓ" #
model
ÓÓ$ )
)
ÓÓ) *
;
ÓÓ* +
await
ÔÔ 
_breedService
ÔÔ #
.
ÔÔ# $#
UpdateAnimalWithBreed
ÔÔ$ 9
(
ÔÔ9 :
animal
ÔÔ: @
,
ÔÔ@ A
model
ÔÔB G
)
ÔÔG H
;
ÔÔH I
_isNewService
 
.
 !
UpdateIsNewCheckbox
 2
(
2 3
animal
3 9
,
9 :
model
; @
)
@ A
;
A B
_repository
ÒÒ 
.
ÒÒ 
Update
ÒÒ "
(
ÒÒ" #
model
ÒÒ# (
)
ÒÒ( )
;
ÒÒ) *
if
ÛÛ 
(
ÛÛ 
isLocationNew
ÛÛ !
)
ÛÛ! "
{
ÙÙ 
await
ıı %
_locationHistoryService
ıı 1
.
ıı1 2(
WriteAnimalLocationHistory
ıı2 L
(
ııL M
model
ııM R
)
ııR S
;
ııS T
}
ˆˆ 
await
˜˜ 
_repository
˜˜ !
.
˜˜! "
	SaveAsync
˜˜" +
(
˜˜+ ,
)
˜˜, -
;
˜˜- .
scope
¯¯ 
.
¯¯ 
Complete
¯¯ 
(
¯¯ 
)
¯¯  
;
¯¯  !
}
˘˘ 
var
˚˚ 
returnModel
˚˚ 
=
˚˚ 
GetById
˚˚ %
(
˚˚% &
model
˚˚& +
.
˚˚+ ,
Id
˚˚, .
)
˚˚. /
;
˚˚/ 0
return
¸¸ 
returnModel
¸¸ 
;
¸¸ 
}
˝˝ 	
public
ˇˇ 
async
ˇˇ 
Task
ˇˇ "
UpdateApprovedAnimal
ˇˇ .
(
ˇˇ. /
AnimalApprovedDto
ˇˇ/ @
animal
ˇˇA G
)
ˇˇG H
{
ÄÄ 	
var
ÅÅ 
model
ÅÅ 
=
ÅÅ 
_repository
ÅÅ #
.
ÅÅ# $
Entities
ÅÅ$ ,
.
ÇÇ 
Include
ÇÇ 
(
ÇÇ 
animal
ÇÇ !
=>
ÇÇ" $
animal
ÇÇ% +
.
ÇÇ+ ,
Images
ÇÇ, 2
)
ÇÇ2 3
.
ÉÉ 
FirstOrDefault
ÉÉ !
(
ÉÉ! "
x
ÉÉ" #
=>
ÉÉ$ &
x
ÉÉ' (
.
ÉÉ( )
Id
ÉÉ) +
==
ÉÉ, .
animal
ÉÉ/ 5
.
ÉÉ5 6
Id
ÉÉ6 8
)
ÉÉ8 9
;
ÉÉ9 :
using
ÖÖ 
(
ÖÖ 
var
ÖÖ 
scope
ÖÖ 
=
ÖÖ 
new
ÖÖ "
TransactionScope
ÖÖ# 3
(
ÖÖ3 4-
TransactionScopeAsyncFlowOption
ÖÖ4 S
.
ÖÖS T
Enabled
ÖÖT [
)
ÖÖ[ \
)
ÖÖ\ ]
{
ÜÜ 
_mapper
áá 
.
áá 
Map
áá 
(
áá 
animal
áá "
,
áá" #
model
áá$ )
)
áá) *
;
áá* +
_repository
àà 
.
àà 
Update
àà "
(
àà" #
model
àà# (
)
àà( )
;
àà) *
await
ââ 
_repository
ââ !
.
ââ! "
	SaveAsync
ââ" +
(
ââ+ ,
)
ââ, -
;
ââ- .
scope
ää 
.
ää 
Complete
ää 
(
ää 
)
ää  
;
ää  !
}
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé 
	AnimalDto
éé #
>
éé# $
CreateAnimal
éé% 1
(
éé1 2"
AnimalForCreationDto
éé2 F
animal
ééG M
)
ééM N
{
èè 	
var
êê 
model
êê 
=
êê 
new
êê 
Animal
êê "
(
êê" #
)
êê# $
;
êê$ %
_mapper
ëë 
.
ëë 
Map
ëë 
(
ëë 
animal
ëë 
,
ëë 
model
ëë  %
)
ëë% &
;
ëë& '
using
íí 
(
íí 
var
íí 
scope
íí 
=
íí 
new
íí "
TransactionScope
íí# 3
(
íí3 4-
TransactionScopeAsyncFlowOption
íí4 S
.
ííS T
Enabled
ííT [
)
íí[ \
)
íí\ ]
{
ìì 
model
îî 
.
îî 
BreedId
îî 
=
îî 
await
îî  %
_breedService
îî& 3
.
îî3 4#
CreateAnimalWithBreed
îî4 I
(
îîI J
animal
îîJ P
,
îîP Q
model
îîR W
)
îîW X
;
îîX Y
await
ïï 
_repository
ïï !
.
ïï! "
AddAsync
ïï" *
(
ïï* +
model
ïï+ 0
)
ïï0 1
;
ïï1 2
await
ññ !
_descriptionService
ññ )
.
ññ) *)
CreateAnimalWithDescription
ññ* E
(
ññE F
animal
ññF L
,
ññL M
model
ññN S
)
ññS T
;
ññT U
await
óó %
_locationHistoryService
óó -
.
óó- .(
WriteAnimalLocationHistory
óó. H
(
óóH I
model
óóI N
)
óóN O
;
óóO P
await
òò 
_isNewService
òò #
.
òò# $
CreateCheckNewOld
òò$ 5
(
òò5 6
animal
òò6 <
,
òò< =
model
òò> C
)
òòC D
;
òòD E
await
ôô 
_keepingService
ôô %
.
ôô% &&
CreateAnimalWithKeepings
ôô& >
(
ôô> ?
animal
ôô? E
,
ôôE F
model
ôôG L
)
ôôL M
;
ôôM N
await
öö 
_needsService
öö #
.
öö# $#
CreateAnimalWithNeeds
öö$ 9
(
öö9 :
animal
öö: @
,
öö@ A
model
ööB G
)
ööG H
;
ööH I
await
õõ !
_vaccinationService
õõ )
.
õõ) *)
CreateAnimalWithVaccination
õõ* E
(
õõE F
animal
õõF L
,
õõL M
model
õõN S
)
õõS T
;
õõT U
await
úú  
_processingService
úú (
.
úú( )(
CreateAnimalWithProcessing
úú) C
(
úúC D
animal
úúD J
,
úúJ K
model
úúL Q
)
úúQ R
;
úúR S
await
ùù !
_attitudesToService
ùù )
.
ùù) *'
CreateAnimalWithAttitudes
ùù* C
(
ùùC D
animal
ùùD J
,
ùùJ K
model
ùùL Q
)
ùùQ R
;
ùùR S
await
ûû 
_defectService
ûû $
.
ûû$ %%
CreateAnimalWithDefects
ûû% <
(
ûû< =
animal
ûû= C
,
ûûC D
model
ûûE J
)
ûûJ K
;
ûûK L
scope
üü 
.
üü 
Complete
üü 
(
üü 
)
üü  
;
üü  !
}
†† 
var
°° 
returnModel
°° 
=
°° 
GetById
°° %
(
°°% &
model
°°& +
.
°°+ ,
Id
°°, .
)
°°. /
;
°°/ 0
return
¢¢ 
returnModel
¢¢ 
;
¢¢ 
}
££ 	
public
•• 
async
•• 
Task
•• 
<
•• 
	AnimalDto
•• #
>
••# $
Delete
••% +
(
••+ ,
long
••, 0
id
••1 3
)
••3 4
{
¶¶ 	
var
ßß 
animal
ßß 
=
ßß 
await
ßß 
_repository
ßß *
.
ßß* +
GetByIdAsync
ßß+ 7
(
ßß7 8
id
ßß8 :
)
ßß: ;
;
ßß; <
if
®® 
(
®® 
animal
®® 
==
®® 
null
®® 
)
®® 
{
©© 
throw
™™ 
new
™™ #
ArgumentNullException
™™ /
(
™™/ 0
nameof
™™0 6
(
™™6 7
id
™™7 9
)
™™9 :
,
™™: ;
$str
™™< N
)
™™N O
;
™™O P
}
´´ 
await
¨¨ 
_repository
¨¨ 
.
¨¨ 
Remove
¨¨ $
(
¨¨$ %
animal
¨¨% +
)
¨¨+ ,
;
¨¨, -
var
≠≠ 
	animalDto
≠≠ 
=
≠≠ 
_mapper
≠≠ #
.
≠≠# $
Map
≠≠$ '
<
≠≠' (
	AnimalDto
≠≠( 1
>
≠≠1 2
(
≠≠2 3
animal
≠≠3 9
)
≠≠9 :
;
≠≠: ;
return
ÆÆ 
	animalDto
ÆÆ 
;
ÆÆ 
}
ØØ 	
public
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
IEnumerable
∞∞ %
<
∞∞% &
	AnimalDto
∞∞& /
>
∞∞/ 0
>
∞∞0 1"
GetAllAdoptedAnimals
∞∞2 F
(
∞∞F G
)
∞∞G H
{
±± 	
var
≤≤ 
animals
≤≤ 
=
≤≤ 
_repository
≤≤ %
.
≤≤% &
GetAllQueryable
≤≤& 5
(
≤≤5 6
)
≤≤6 7
.
≥≥ 
Include
≥≥ 
(
≥≥ 
animal
≥≥ 
=>
≥≥  "
animal
≥≥# )
.
≥≥) *
Images
≥≥* 0
)
≥≥0 1
.
¥¥ 
Where
¥¥ 
(
¥¥ 
x
¥¥ 
=>
¥¥ 
x
¥¥ 
.
¥¥ 
Status
¥¥ $
==
¥¥% '
AnimalStatus
¥¥( 4
.
¥¥4 5
Adopted
¥¥5 <
&&
¥¥= ?
!
¥¥@ A
x
¥¥A B
.
¥¥B C
IsHidden
¥¥C K
)
¥¥K L
;
¥¥L M
var
µµ 
animalsResult
µµ 
=
µµ 
animals
µµ  '
.
µµ' (
Select
µµ( .
(
µµ. /
x
µµ/ 0
=>
µµ1 3
_mapper
µµ4 ;
.
µµ; <
Map
µµ< ?
<
µµ? @
	AnimalDto
µµ@ I
>
µµI J
(
µµJ K
x
µµK L
)
µµL M
)
µµM N
;
µµN O
return
∂∂ 
await
∂∂ 
animalsResult
∂∂ &
.
∂∂& '
ToListAsync
∂∂' 2
(
∂∂2 3
)
∂∂3 4
;
∂∂4 5
}
∑∑ 	
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
IEnumerable
ππ %
<
ππ% &
	AnimalDto
ππ& /
>
ππ/ 0
>
ππ0 1!
GetAllHiddenAnimals
ππ2 E
(
ππE F
)
ππF G
{
∫∫ 	
var
ªª 
animals
ªª 
=
ªª 
_repository
ªª %
.
ªª% &
GetAllQueryable
ªª& 5
(
ªª5 6
)
ªª6 7
.
ºº 
Include
ºº 
(
ºº 
animal
ºº 
=>
ºº  "
animal
ºº# )
.
ºº) *
Images
ºº* 0
)
ºº0 1
.
ΩΩ 
Where
ΩΩ 
(
ΩΩ 
x
ΩΩ 
=>
ΩΩ 
x
ΩΩ 
.
ΩΩ 
IsHidden
ΩΩ &
)
ΩΩ& '
;
ΩΩ' (
var
ææ 
animalsResult
ææ 
=
ææ 
animals
ææ  '
.
ææ' (
Select
ææ( .
(
ææ. /
x
ææ/ 0
=>
ææ1 3
_mapper
ææ4 ;
.
ææ; <
Map
ææ< ?
<
ææ? @
	AnimalDto
ææ@ I
>
ææI J
(
ææJ K
x
ææK L
)
ææL M
)
ææM N
;
ææN O
return
øø 
await
øø 
animalsResult
øø &
.
øø& '
ToListAsync
øø' 2
(
øø2 3
)
øø3 4
;
øø4 5
}
¿¿ 	
public
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬  
AnimalStatisticDto
¬¬ ,
>
¬¬, -
GetStatistc
¬¬. 9
(
¬¬9 :
long
¬¬: >
id
¬¬? A
)
¬¬A B
{
√√ 	
var
ƒƒ 
animalStatistic
ƒƒ 
=
ƒƒ  !
_mapper
ƒƒ" )
.
ƒƒ) *
Map
ƒƒ* -
<
ƒƒ- . 
AnimalStatisticDto
ƒƒ. @
>
ƒƒ@ A
(
ƒƒA B
await
ƒƒB G
_statisticService
ƒƒH Y
.
ƒƒY Z
GetStatistic
ƒƒZ f
(
ƒƒf g
id
ƒƒg i
)
ƒƒi j
)
ƒƒj k
;
ƒƒk l
animalStatistic
≈≈ 
.
≈≈ 
ViewLocations
≈≈ )
=
≈≈* +
_locationService
≈≈, <
.
≈≈< =%
GetViewLocationByAnimal
≈≈= T
(
≈≈T U
id
≈≈U W
)
≈≈W X
.
≈≈X Y
ToList
≈≈Y _
(
≈≈_ `
)
≈≈` a
;
≈≈a b
return
∆∆ 
animalStatistic
∆∆ "
;
∆∆" #
}
«« 	
}
»» 
}…… ∏
bC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AnimalServiceAuxiliary.cs
	namespace		 	
Application		
 
.		 
Services		 
{

 
public 

partial 
class 
AnimalService &
{ 
public 
async 
Task 
< 
IEnumerable %
<% & 
AnimalBookingTimeDto& :
>: ;
>; <!
GetAnimalsBookingTime= R
(R S
)S T
{ 	
var 
bookedAnimals 
= 
_repository  +
.+ ,
GetAllQueryable, ;
(; <
)< =
.+ ,
Where, 1
(1 2
animal2 8
=>9 ;
animal< B
.B C
StatusC I
==J L
AnimalStatusM Y
.Y Z
BookedZ `
)` a
.+ ,
Include, 3
(3 4
animal4 :
=>; =
animal> D
.D E
AddressE L
)L M
.+ ,
Include, 3
(3 4
animal4 :
=>; =
animal> D
.D E
ImagesE K
)K L
.+ ,
Include, 3
(3 4
animal4 :
=>; =
animal> D
.D E

BookOrdersE O
)O P
;P Q
var 
bookedAnimalsList !
=" #
new$ '
List( ,
<, - 
AnimalBookingTimeDto- A
>A B
(B C
)C D
;D E
if 
( 
bookedAnimals 
. 
ToList $
($ %
)% &
.& '
Count' ,
==- /
$num0 1
)1 2
return 
bookedAnimalsList (
;( )
foreach 
( 
var 
animal 
in  "
bookedAnimals# 0
)0 1
{ 
var $
animalBookTimeEndingDate ,
=- .
animal/ 5
.5 6

BookOrders6 @
?@ A
.A B
FirstOrDefaultB P
(P Q
orderQ V
=>W Y
orderZ _
._ `
Status` f
==g i
OrderStatusj u
.u v
Approvedv ~
)~ 
?	 Ä
.
Ä Å

EndingDate
Å ã
;
ã å
if 
( $
animalBookTimeEndingDate ,
==- /
null0 4
)4 5
continue 
; 
var!! '
bookingTimeMinutesRemaining!! /
=!!0 1$
animalBookTimeEndingDate!!2 J
.!!J K
Value!!K P
.!!P Q
Subtract!!Q Y
(!!Y Z
DateTime!!Z b
.!!b c
Now!!c f
)!!f g
.!!g h
TotalMinutes!!h t
;!!t u
bookedAnimalsList## !
.##! "
Add##" %
(##% &
new##& ) 
AnimalBookingTimeDto##* >
{$$ 
Animal%% 
=%% 
_mapper%% $
.%%$ %
Map%%% (
<%%( )
	AnimalDto%%) 2
>%%2 3
(%%3 4
animal%%4 :
)%%: ;
,%%; <
MinutesRemaining&& $
=&&% &'
bookingTimeMinutesRemaining&&' B
}'' 
)'' 
;'' 
if)) 
()) '
bookingTimeMinutesRemaining)) /
<=))0 2
$num))3 6
)))6 7
{** 
animal++ 
.++ 
Status++ !
=++" #
AnimalStatus++$ 0
.++0 1
None++1 5
;++5 6
},, 
}-- 
await// 
_repository// 
.// 
	SaveAsync// '
(//' (
)//( )
;//) *
return11 
bookedAnimalsList11 $
;11$ %
}22 	
}33 
}44 á2
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AnimalViewLocationService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class %
AnimalViewLocationService *
:+ ,&
IAnimalViewLocationService- G
{ 
private 
readonly 
IRepository $
<$ %
AnimalViewLocation% 7
>7 8
_repository9 D
;D E
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IMapper  
_mapper! (
;( )
public %
AnimalViewLocationService (
(( )
IRepository) 4
<4 5
AnimalViewLocation5 G
>G H

repositoryI S
,S T
IRepositoryU `
<` a
Animala g
>g h
animalRepositoryi y
,y z 
IHttpContextAccessor( <
httpContextAccessor= P
,P Q
IMapperR Y
mapperZ `
)` a
{ 	
_repository 
= 

repository $
;$ %
_animalRepository 
= 
animalRepository  0
;0 1 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_mapper 
= 
mapper 
; 
}!! 	
public"" 
async"" 
Task"" #
UpdateViewLocationAsync"" 1
(""1 2
long""2 6
id""7 9
)""9 :
{## 	
var$$ 
animal$$ 
=$$ 
await$$ 
_animalRepository$$ 0
.$$0 1
GetByIdAsync$$1 =
($$= >
id$$> @
)$$@ A
;$$A B
if%% 
(%% 
animal%% 
==%% 
null%% 
)%% 
{&& 
throw'' 
new'' #
ObjectNotFoundException'' 1
(''1 2
$str''2 P
)''P Q
;''Q R
}(( 
var)) 
remoteIpAddress)) 
=))  ! 
_httpContextAccessor))# 7
.))7 8
HttpContext))8 C
.))C D
Features))D L
.))L M
Get))M P
<))P Q"
IHttpConnectionFeature))Q g
>))g h
())h i
)))i j
?))j k
.))k l
RemoteIpAddress))l {
?)){ |
.))| }
ToString	))} Ö
(
))Ö Ü
)
))Ü á
;
))á à
var** 

httpClient** 
=** 
new**  

HttpClient**! +
(**+ ,
)**, -
;**- .
var++ 
response++ 
=++ 
await++  

httpClient++! +
.+++ ,
GetAsync++, 4
(++4 5
$@"++5 8[
Nhttps://api.ipgeolocation.io/ipgeo?apiKey=a56337791c3840d68199af3d463a662d&ip=	++8 Ü
{
++Ü á
remoteIpAddress
++á ñ
}
++ñ ó"
&fields=country_name
++ó ´
"
++´ ¨
)
++¨ ≠
;
++≠ Æ
string-- 
responseBody-- 
=--  !
await--" '
response--( 0
.--0 1
Content--1 8
.--8 9
ReadAsStringAsync--9 J
(--J K
)--K L
;--L M
var.. 
location.. 
=.. 
JsonConvert.. &
...& '
DeserializeObject..' 8
<..8 9
Location..9 A
>..A B
(..B C
responseBody..C O
)..O P
;..P Q
var// 
animalViewLocation// "
=//# $
_repository//% 0
.//0 1
Find//1 5
(//5 6
x//6 7
=>//8 :
x//; <
.//< =
AnimalId//= E
==//F H
animal//I O
.//O P
Id//P R
&&//S U
x//V W
.//W X
Location//X `
==//a c
location//d l
.//l m
Country//m t
)//t u
.//u v
FirstOrDefault	//v Ñ
(
//Ñ Ö
)
//Ö Ü
;
//Ü á
if11 
(11 
animalViewLocation11 "
!=11# %
null11& *
)11* +
{22 
++33 
animalViewLocation33 $
.33$ %
Count33% *
;33* +
_repository44 
.44 
Update44 "
(44" #
animalViewLocation44# 5
)445 6
;446 7
await55 
_repository55 !
.55! "
	SaveAsync55" +
(55+ ,
)55, -
;55- .
}66 
else77 
{88 
await99 
_repository99 "
.99" #
AddAsync99# +
(99+ ,
new99, /
AnimalViewLocation990 B
{99C D
Location99E M
=99N O
location99P X
.99X Y
Country99Y `
,99` a
AnimalId99b j
=99k l
animal99m s
.99s t
Id99t v
,99v w
Count99x }
=99~ 
$num
99Ä Å
}
99Ç É
)
99É Ñ
;
99Ñ Ö
}:: 
};; 	
public<< 
IEnumerable<< 
<<< !
AnimalViewLocationDto<< 0
><<0 1#
GetViewLocationByAnimal<<2 I
(<<I J
long<<J N
id<<O Q
)<<Q R
{== 	
var>> 
animalViewLocations>> #
=>>$ %
_repository>>& 1
.>>1 2
Find>>2 6
(>>6 7
x>>7 8
=>>>9 ;
x>>< =
.>>= >
AnimalId>>> F
==>>G I
id>>J L
)>>L M
.>>M N
Select>>N T
(>>T U
x>>U V
=>>>W Y
_mapper>>Z a
.>>a b
Map>>b e
<>>e f!
AnimalViewLocationDto>>f {
>>>{ |
(>>| }
x>>} ~
)>>~ 
)	>> Ä
.
>>Ä Å
ToList
>>Å á
(
>>á à
)
>>à â
;
>>â ä
return?? 
animalViewLocations?? &
;??& '
}@@ 	
}BB 
}DD Ù+
`C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\ArticleFilterService.cs
	namespace 	
Application
 
. 
Services 
{ 
public		 

class		  
ArticleFilterService		 %
:		& '
IFilterService		( 6
<		6 7
Article		7 >
,		> ?
ArticleQuery		@ L
>		L M
{

 
public 

IQueryable 
< 
Article !
>! "
AddAllFiltersQuery# 5
(5 6
ArticleQuery6 B
filterC I
,I J

IQueryableK U
<U V
ArticleV ]
>] ^
	queryable_ h
)h i
{ 	
return 
AddContentFilter #
(# $
filter$ *
.* +
TitleOrContent+ 9
,9 :
AddTagFilter; G
(G H
filterH N
.N O
TagO R
,R S
	queryableT ]
)] ^
)^ _
;_ `
} 	
public 

IQueryable 
< 
Article !
>! "
AddContentFilter# 3
(3 4
string4 :
content; B
,B C

IQueryableD N
<N O
ArticleO V
>V W
articlesX `
)` a
{ 	
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
content+ 2
)2 3
&&4 6
articles7 ?
.? @
Any@ C
(C D
)D E
)E F
{ 
List 
< 
Article 
> 
query #
=$ %
new& )
List* .
<. /
Article/ 6
>6 7
(7 8
)8 9
;9 :
query 
. 
AddRange 
( 
articles '
.' (
Where( -
(- .
o. /
=>0 2
o3 4
.4 5
Title5 :
.: ;
ToLower; B
(B C
)C D
.D E
ContainsE M
(M N
contentN U
.U V
TrimV Z
(Z [
)[ \
.\ ]
ToLower] d
(d e
)e f
)f g
||h j
o: ;
.; <
Content< C
.C D
ToLowerD K
(K L
)L M
.M N
ContainsN V
(V W
contentW ^
.^ _
Trim_ c
(c d
)d e
.e f
ToLowerf m
(m n
)n o
)o p
)p q
.q r
ToListr x
(x y
)y z
)z {
;{ |
return 
query 
. 
AsQueryable (
(( )
)) *
;* +
} 
return 
articles 
; 
} 	
public 

IQueryable 
< 
Article !
>! "
AddTagFilter# /
(/ 0
string0 6
tag7 :
,: ;

IQueryable< F
<F G
ArticleG N
>N O
articlesP X
)X Y
{ 	
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
tag+ .
). /
)/ 0
{ 
List 
< 
Article 
> 
query #
=$ %
new& )
List* .
<. /
Article/ 6
>6 7
(7 8
)8 9
;9 :
var 
tags 
= 
tag 
. 
ToLower &
(& '
)' (
.( )
Split) .
(. /
$char/ 2
,2 3
$char4 7
)7 8
.8 9
	ToHashSet9 B
(B C
)C D
;D E
foreach   
(   
var   
article   $
in  % '
articles  ( 0
)  0 1
{!! 
var"" 
tagNames""  
=""! "
article""# *
.""* +
ArticleTags""+ 6
.""6 7
Select""7 =
(""= >
x""> ?
=>""@ B
x""C D
.""D E
Tag""E H
.""H I
Name""I M
.""M N
ToLower""N U
(""U V
)""V W
.""W X
Trim""X \
(""\ ]
$char""] `
,""` a
$char""b e
)""e f
)""f g
.""g h
ToList""h n
(""n o
)""o p
;""p q
foreach## 
(## 
var##  
itemTag##! (
in##) +
tags##, 0
)##0 1
{$$ 
if%% 
(%% 
tagNames%% $
.%%$ %
Contains%%% -
(%%- .
itemTag%%. 5
)%%5 6
)%%6 7
{&& 
query'' !
.''! "
Add''" %
(''% &
article''& -
)''- .
;''. /
break(( !
;((! "
}** 
}++ 
}-- 
return.. 
query.. 
... 
AsQueryable.. (
(..( )
)..) *
;..* +
}// 
return00 
articles00 
;00 
}11 	
}22 
}33 »]
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\ArticleService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
ArticleService 
:  !
IArticleService" 1
{ 
private 
readonly 
IRepository $
<$ %
Article% ,
>, -
_articleRepository. @
;@ A
private 
readonly 
IRepository $
<$ %
ArticleImage% 1
>1 2
_images3 :
;: ;
private 
readonly 
IRepository $
<$ %

ArticleTag% /
>/ 0
_tags1 6
;6 7
private 
readonly 
IStatisticService *
<* +
Article+ 2
>2 3
_statisticService4 E
;E F
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUriService $
_uriService% 0
;0 1
private 
readonly 
IFilterService '
<' (
Article( /
,/ 0
ArticleQuery1 =
>= >!
_articleFilterService? T
;T U
public 
ArticleService 
( 
IRepository )
<) *
Article* 1
>1 2
articleRepository3 D
,D E
IRepositoryF Q
<Q R
ArticleImageR ^
>^ _
images` f
,f g
IRepository 
< 

ArticleTag "
>" #
tags$ (
,( )
IStatisticService* ;
<; <
Article< C
>C D
statisticServiceE U
,U V
IMapper 
mapper 
, 
IUriService '

uriService( 2
,2 3
IFilterService 
< 
Article "
," #
ArticleQuery$ 0
>0 1 
articleFilterService2 F
)F G
{ 	
_articleRepository 
=  
articleRepository! 2
;2 3
_statisticService 
= 
statisticService  0
;0 1
_images   
=   
images   
;   
_tags!! 
=!! 
tags!! 
;!! 
_mapper"" 
="" 
mapper"" 
;"" 
_uriService## 
=## 

uriService## $
;##$ %!
_articleFilterService$$ !
=$$" # 
articleFilterService$$$ 8
;$$8 9
}%% 	
public'' 

Pagination'' 
<'' 

ArticleDto'' $
>''$ %
GetAllArticles''& 4
(''4 5
ArticleFilter''5 B
filters''C J
=''K L
null''M Q
,''Q R#
ArticlePaginationFilter''S j

pagination''k u
=''v w
null''x |
)''| }
{(( 	
var)) 
filterQuery)) 
=)) 
_mapper)) %
.))% &
Map))& )
<))) *
ArticleQuery))* 6
>))6 7
())7 8
filters))8 ?
)))? @
;))@ A
var** 
paginationQuery** 
=**  !
_mapper**" )
.**) *
Map*** -
<**- ."
ArticlePaginationQuery**. D
>**D E
(**E F

pagination**F P
)**P Q
;**Q R
var++ 
skip++ 
=++ 
(++ 
paginationQuery++ '
.++' (

PageNumber++( 2
-++3 4
$num++5 6
)++6 7
*++8 9
paginationQuery++: I
.++I J
PageSize++J R
;++R S
var,, 
articles,, 
=,, #
GetArticlesWithIncludes,, 2
(,,2 3
),,3 4
.,,4 5
OrderByDescending,,5 F
(,,F G
x,,G H
=>,,I K
x,,L M
.,,M N
Created,,N U
),,U V
;,,V W
var-- 
filteredArticles--  
=--! "!
_articleFilterService--# 8
.--8 9
AddAllFiltersQuery--9 K
(--K L
filterQuery--L W
,--W X
articles--Y a
)--a b
.--b c
ToList--c i
(--i j
)--j k
;--k l
var.. 
articlesResult.. 
=..  
filteredArticles..! 1
...1 2
Select..2 8
(..8 9
x..9 :
=>..; =
_mapper..> E
...E F
Map..F I
<..I J

ArticleDto..J T
>..T U
(..U V
x..V W
)..W X
)..X Y
...Y Z
Skip..Z ^
(..^ _
skip.._ c
)..c d
...d e
Take..e i
(..i j
paginationQuery..j y
...y z
PageSize	..z Ç
)
..Ç É
;
..É Ñ
var// 
paginationResponse// "
=//# $
PaginationHelper//% 5
.//5 6#
CreatePaginatedResponse//6 M
(//M N
_uriService//N Y
,//Y Z
paginationQuery//[ j
,//j k
articlesResult00 
.00 
ToList00 %
(00% &
)00& '
,00' (
filteredArticles00) 9
.009 :
ToList00: @
(00@ A
)00A B
,00B C
$str00D N
,00N O
filterQuery00P [
)00[ \
;00\ ]
return11 
paginationResponse11 %
;11% &
}22 	
public44 

ArticleDto44 

GetArticle44 %
(44% &
long44& *
id44+ -
)44- .
{55 	
var66 
article66 
=66 #
GetArticlesWithIncludes66 1
(661 2
)662 3
.663 4
FirstOrDefault664 B
(66B C
a66C D
=>66E G
a66H I
.66I J
Id66J L
==66M O
id66P R
)66R S
;66S T
var77 

articleDto77 
=77 
_mapper77 $
.77$ %
Map77% (
<77( )

ArticleDto77) 3
>773 4
(774 5
article775 <
)77< =
;77= >
return88 

articleDto88 
;88 
}99 	
public:: 
async:: 
Task:: 
PublishArticle:: (
(::( )!
ArticleForCreationDto::) >
articleRequest::? M
)::M N
{;; 	
try<< 
{== 
var>> 
article>> 
=>> 
_mapper>> %
.>>% &
Map>>& )
<>>) *
Article>>* 1
>>>1 2
(>>2 3
articleRequest>>3 A
)>>A B
;>>B C
await?? 
_articleRepository?? (
.??( )
AddAsync??) 1
(??1 2
article??2 9
)??9 :
;??: ;
_tags@@ 
.@@ 
TryCreateManyToMany@@ )
(@@) *
articleRequest@@* 8
.@@8 9
Tags@@9 =
.@@= >
Select@@> D
(@@D E
x@@E F
=>@@G I
new@@J M

ArticleTag@@N X
{AA 
TagIdBB 
=BB 
xBB 
.BB 
IdBB  
,BB  !
	ArticleIdCC 
=CC 
articleCC  '
.CC' (
IdCC( *
}DD 
)DD 
)DD 
;DD 
awaitEE 
_tagsEE 
.EE 
	SaveAsyncEE %
(EE% &
)EE& '
;EE' (
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
exII4 6
.II6 7
MessageII7 >
)II> ?
;II? @
}JJ 
}KK 	
publicLL 
asyncLL 
TaskLL 
UpdateArticleLL '
(LL' (
ArticleForUpdateDtoLL( ;
articleLL< C
)LLC D
{MM 	
varNN 
articleFromDbNN 
=NN #
GetArticlesWithIncludesNN  7
(NN7 8
)NN8 9
.NN9 :
FirstOrDefaultNN: H
(NNH I
artNNI L
=>NNM O
artNNP S
.NNS T
IdNNT V
==NNW Y
articleNNZ a
.NNa b
IdNNb d
)NNd e
;NNe f
awaitOO 
_imagesOO 
.OO 
	SaveAsyncOO #
(OO# $
)OO$ %
;OO% &
_mapperPP 
.PP 
MapPP 
(PP 
articlePP 
,PP  
articleFromDbPP! .
)PP. /
;PP/ 0
_articleRepositoryQQ 
.QQ 
UpdateQQ %
(QQ% &
articleFromDbQQ& 3
)QQ3 4
;QQ4 5
awaitRR 
_articleRepositoryRR $
.RR$ %
	SaveAsyncRR% .
(RR. /
)RR/ 0
;RR0 1
}SS 	
publicTT 
asyncTT 
TaskTT 
<TT 

ArticleDtoTT $
>TT$ %
DeleteArticleTT& 3
(TT3 4
longTT4 8
idTT9 ;
)TT; <
{UU 	
varVV 
articleVV 
=VV 
awaitVV 
_articleRepositoryVV  2
.VV2 3
GetByIdAsyncVV3 ?
(VV? @
idVV@ B
)VVB C
;VVC D
ifWW 
(WW 
articleWW 
==WW 
nullWW 
)WW  
{XX 
throwYY 
newYY !
ArgumentNullExceptionYY /
(YY/ 0
nameofYY0 6
(YY6 7
idYY7 9
)YY9 :
,YY: ;
$strYY< O
)YYO P
;YYP Q
}ZZ 
await[[ 
_articleRepository[[ $
.[[$ %
Remove[[% +
([[+ ,
article[[, 3
)[[3 4
;[[4 5
var\\ 

articleDto\\ 
=\\ 
_mapper\\ $
.\\$ %
Map\\% (
<\\( )

ArticleDto\\) 3
>\\3 4
(\\4 5
article\\5 <
)\\< =
;\\= >
return]] 

articleDto]] 
;]] 
}^^ 	
public__ 
async__ 
Task__ 
<__ 
ArticleStatisticDto__ -
>__- .
GetStatistc__/ :
(__: ;
long__; ?
id__@ B
)__B C
{`` 	
varaa 
articleStatisticaa  
=aa! "
_mapperaa# *
.aa* +
Mapaa+ .
<aa. /
ArticleStatisticDtoaa/ B
>aaB C
(aaC D
awaitaaD I
_statisticServiceaaJ [
.aa[ \
GetStatisticaa\ h
(aah i
idaai k
)aak l
)aal m
;aam n
returnbb 
articleStatisticbb #
;bb# $
}cc 	
privateee 

IQueryableee 
<ee 
Articleee "
>ee" ##
GetArticlesWithIncludesee$ ;
(ee; <
)ee< =
{ff 	
returngg 
_articleRepositorygg %
.gg% &
GetAllQueryablegg& 5
(gg5 6
)gg6 7
.gg7 8
Includegg8 ?
(gg? @
agg@ A
=>ggB D
aggE F
.ggF G
ArticleTagsggG R
)ggR S
.hh 
ThenIncludehh 
(hh 
thh 
=>hh !
thh" #
.hh# $
Taghh$ '
)hh' (
.hh( )
AsNoTrackinghh) 5
(hh5 6
)hh6 7
.hh7 8
Includehh8 ?
(hh? @
ahh@ A
=>hhB D
ahhE F
.hhF G
ImageshhG M
)hhM N
;hhN O
}ii 	
}jj 
}kk Ó*
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\AttitudeToService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
AttitudeToService "
:# $
IAttitudeToService% 7
{ 
private 
readonly 
IRepository $
<$ %

AttitudeTo% /
>/ 0
_attitudeRepository1 D
;D E
private 
readonly 
IRepository $
<$ %
AnimalAttitudeTo% 5
>5 6'
_animalAttitudeToRepository7 R
;R S
private 
readonly 
IMapper  
_mapper! (
;( )
public 
AttitudeToService  
(  !
IRepository! ,
<, -

AttitudeTo- 7
>7 8

repository9 C
,C D
IRepositoryE P
<P Q
AnimalAttitudeToQ a
>a b&
animalAttitudeToRepositoryc }
,} ~
IMapper	 Ü
mapper
á ç
)
ç é
{ 	
_attitudeRepository 
=  !

repository" ,
;, -'
_animalAttitudeToRepository '
=( )&
animalAttitudeToRepository* D
;D E
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task %
CreateAnimalWithAttitudes 3
(3 4 
AnimalForCreationDto4 H
animalI O
,O P
AnimalQ W
modelX ]
)] ^
{ 	
if 
( 
animal 
. 
	Attitudes  
==! #
null$ (
)( )
animal 
. 
	Attitudes  
=! "
new# &
HashSet' .
<. /
AttitudeToDto/ <
>< =
(= >
)> ?
;? @'
_animalAttitudeToRepository '
.' (
TryCreateManyToMany( ;
(; <
animal< B
.B C
	AttitudesC L
. 
Select 
( 
x 
=> 
new  
AnimalAttitudeTo! 1
{   

AttitudeId!! 
=!!  
x!!! "
.!!" #
Id!!# %
,!!% &
AnimalId"" 
="" 
model"" $
.""$ %
Id""% '
,""' (
Mark## 
=## 
x## 
.## 
Mark## !
}$$ 
)$$ 
)$$ 
;$$ 
await%% '
_animalAttitudeToRepository%% -
.%%- .
	SaveAsync%%. 7
(%%7 8
)%%8 9
;%%9 :
}&& 	
public(( 
async(( 
Task(( 
<(( 
IEnumerable(( %
<((% &
AttitudeToDto((& 3
>((3 4
>((4 5
GetAllAttitudes((6 E
(((E F
)((F G
{)) 	
var** 
	attitudes** 
=** 
await** !
_attitudeRepository**" 5
.**5 6
GetAllAsync**6 A
(**A B
)**B C
;**C D
var++ 
attitudesDto++ 
=++ 
	attitudes++ (
.++( )
Select++) /
(++/ 0
a++0 1
=>++2 4
_mapper++5 <
.++< =
Map++= @
<++@ A
AttitudeToDto++A N
>++N O
(++O P
a++P Q
)++Q R
)++R S
;++S T
return,, 
attitudesDto,, 
.,,  
ToList,,  &
(,,& '
),,' (
;,,( )
}-- 	
public// 
async// 
Task// %
UpdateAnimalWithAttitudes// 3
(//3 4
	AnimalDto//4 =
animal//> D
,//D E
Animal//F L
model//M R
)//R S
{00 	
if11 
(11 
animal11 
.11 
	Attitudes11  
==11! #
null11$ (
)11( )
animal22 
.22 
	Attitudes22  
=22! "
new22# &
HashSet22' .
<22. /
AttitudeToDto22/ <
>22< =
(22= >
)22> ?
;22? @'
_animalAttitudeToRepository44 '
.44' (
TryUpdateManyToMany44( ;
(44; <
model44< A
.44A B
AnimalAttitudes44B Q
,44Q R
animal44S Y
.44Y Z
	Attitudes44Z c
.55 
Select55 
(55 
x55 
=>55 
new55  
AnimalAttitudeTo55! 1
{66 

AttitudeId77 
=77  
x77! "
.77" #
Id77# %
,77% &
AnimalId88 
=88 
animal88 %
.88% &
Id88& (
,88( )
Mark99 
=99 
x99 
.99 
Mark99 !
}:: 
):: 
,:: 
x:: 
=>:: 
x:: 
.:: 

AttitudeId:: %
,::% &
x::' (
=>::) +
x::, -
.::- .
Mark::. 2
)::2 3
;::3 4
await;; '
_animalAttitudeToRepository;; -
.;;- .
	SaveAsync;;. 7
(;;7 8
);;8 9
;;;9 :
}<< 	
}== 
}>> ∑:
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\BlobService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
BlobService 
: 
IBlobService +
{ 
private 
readonly 
BlobServiceClient *
_blobServiceClient+ =
;= >
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
BlobService 
( 
BlobServiceClient ,
blobServiceClient- >
,> ?
IConfiguration@ N
configurationO \
)\ ]
{ 	
_blobServiceClient 
=  
blobServiceClient! 2
;2 3
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
< 
BlobInfoDto %
>% &
GetBlobsAsync' 4
(4 5
string5 ;
name< @
)@ A
{ 	
var 
containerClient 
=  !
_blobServiceClient" 4
.4 5"
GetBlobContainerClient5 K
(K L
$strL T
)T U
;U V
var 

blobClient 
= 
containerClient ,
., -
GetBlobClient- :
(: ;
name; ?
)? @
;@ A
var 
blobDownloadInfo  
=! "
await# (

blobClient) 3
.3 4
DownloadAsync4 A
(A B
)B C
;C D
return 
new 
BlobInfoDto "
(" #
blobDownloadInfo# 3
.3 4
Value4 9
.9 :
Content: A
,A B
blobDownloadInfoC S
.S T
ValueT Y
.Y Z
ContentTypeZ e
)e f
;f g
}   	
public!! 
async!! 
Task!! 
<!! 
IEnumerable!! %
<!!% &
string!!& ,
>!!, -
>!!- .
ListBlobAsync!!/ <
(!!< =
)!!= >
{"" 	
var## 
containerClient## 
=##  !
_blobServiceClient##" 4
.##4 5"
GetBlobContainerClient##5 K
(##K L
_configuration##L Z
[##Z [
$str##[ j
]##j k
)##k l
;##l m
var$$ 
items$$ 
=$$ 
new$$ 
List$$  
<$$  !
string$$! '
>$$' (
($$( )
)$$) *
;$$* +
await%% 
foreach%% 
(%% 
var%% 
blobItem%% &
in%%' )
containerClient%%* 9
.%%9 :
GetBlobsAsync%%: G
(%%G H
)%%H I
)%%I J
{&& 
items'' 
.'' 
Add'' 
('' 
blobItem'' "
.''" #
Name''# '
)''' (
;''( )
}(( 
return** 
items** 
;** 
}++ 	
public,, 
async,, 
Task,, 
<,, 
string,,  
>,,  !
UploadFileBlobAsync,," 5
(,,5 6
string,,6 <
filePath,,= E
,,,E F
string,,G M
fileName,,N V
),,V W
{-- 	
var.. 
containerClient.. 
=..  !
_blobServiceClient.." 4
...4 5"
GetBlobContainerClient..5 K
(..K L
_configuration..L Z
[..Z [
$str..[ j
]..j k
)..k l
;..l m
var// 

blobClient// 
=// 
containerClient// ,
.//, -
GetBlobClient//- :
(//: ;
fileName//; C
)//C D
;//D E
using00 
(00 
var00 

fileStream00 !
=00" #
System00$ *
.00* +
IO00+ -
.00- .
File00. 2
.002 3
OpenRead003 ;
(00; <
$@"00< ?
{00? @
filePath00@ H
}00H I
"00I J
)00J K
)00K L
{11 
await22 

blobClient22  
.22  !
UploadAsync22! ,
(22, -

fileStream22- 7
,227 8
new229 <
BlobHttpHeaders22= L
{22M N
ContentType22O Z
=22[ \
filePath22] e
.22e f
GetContentType22f t
(22t u
)22u v
}22w x
)22x y
;22y z
}33 
return44 

blobClient44 
.44 
Uri44 !
.44! "
AbsoluteUri44" -
;44- .
}55 	
public66 
async66 
Task66 
DeleteBlobAsync66 )
(66) *
string66* 0
blobName661 9
)669 :
{77 	
var88 
containerClient88 
=88  !
_blobServiceClient88" 4
.884 5"
GetBlobContainerClient885 K
(88K L
_configuration88L Z
[88Z [
$str88[ j
]88j k
)88k l
;88l m
var99 

blobClient99 
=99 
containerClient99 ,
.99, -
GetBlobClient99- :
(99: ;
blobName99; C
)99C D
;99D E
await:: 

blobClient:: 
.:: 
DeleteIfExistsAsync:: 0
(::0 1
)::1 2
;::2 3
};; 	
public== 
async== 
Task== 
<== 
string==  
>==  !
UploadFileBlobAsync==" 5
(==5 6
	IFormFile==6 ?
video==@ E
)==E F
{>> 	
var?? 
containerClient?? 
=??  !
_blobServiceClient??" 4
.??4 5"
GetBlobContainerClient??5 K
(??K L
_configuration??L Z
[??Z [
$str??[ j
]??j k
)??k l
;??l m
var@@  
containerDisposition@@ $
=@@% &)
ContentDispositionHeaderValue@@' D
.@@D E
Parse@@E J
(@@J K
video@@K P
.@@P Q
ContentDisposition@@Q c
)@@c d
;@@d e
varAA 
fileNameAA 
=AA  
containerDispositionAA /
.AA/ 0
FileNameAA0 8
.AA8 9
TrimAA9 =
(AA= >
)AA> ?
.AA? @
ToStringAA@ H
(AAH I
)AAI J
;AAJ K
varBB 
	blockBlobBB 
=BB 
containerClientBB +
.BB+ ,
GetBlockBlobClientBB, >
(BB> ?
fileNameBB? G
)BBG H
;BBH I
awaitCC 
	blockBlobCC 
.CC 
UploadAsyncCC '
(CC' (
videoCC( -
.CC- .
OpenReadStreamCC. <
(CC< =
)CC= >
,CC> ?
newCC@ C
BlobHttpHeadersCCD S
{CCT U
ContentTypeCCV a
=CCb c
videoCCd i
.CCi j
ContentTypeCCj u
}CCv w
)CCw x
;CCx y
returnDD 
	blockBlobDD 
.DD 
UriDD  
.DD  !
AbsoluteUriDD! ,
;DD, -
}EE 	
}FF 
}GG ó%
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\BookedTimeService.cs
	namespace		 	
Application		
 
.		 
Services		 
{

 
public 

class 
BookedTimeService "
:# $
IBookedTimeService% 7
{ 
private 
readonly 
IRepository $
<$ %
	BookOrder% .
>. / 
_bookOrderRepository0 D
;D E
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
public 
BookedTimeService  
(  !
IRepository! ,
<, -
	BookOrder- 6
>6 7
bookOrderRepository8 K
,K L
IRepositoryM X
<X Y
AnimalY _
>_ `
animalRepositorya q
)q r
{ 	 
_bookOrderRepository  
=! "
bookOrderRepository# 6
;6 7
_animalRepository 
= 
animalRepository  0
;0 1
} 	
public 
async 
Task 
UpdateBookedTime *
(* +
IEnumerable+ 6
<6 7
	BookOrder7 @
>@ A

bookOrdersB L
)L M
{ 	
foreach 
( 
var 
order 
in !

bookOrders" ,
), -
{ 
if 
( 
order 
. 

EndingDate $
<% &
DateTime' /
./ 0
Now0 3
)3 4
{ 
var 
animal 
=  
await! &
_animalRepository' 8
.8 9
GetByIdAsync9 E
(E F
orderF K
.K L
AnimalIdL T
)T U
;U V
animal 
. 
Status !
=" #
Domain$ *
.* +
Enums+ 0
.0 1
AnimalStatus1 =
.= >
None> B
;B C
order 
. 
Status  
=! "
Domain# )
.) *
Enums* /
./ 0
OrderStatus0 ;
.; <
Declined< D
;D E
_animalRepository   %
.  % &
Update  & ,
(  , -
animal  - 3
)  3 4
;  4 5 
_bookOrderRepository!! (
.!!( )
Update!!) /
(!!/ 0
order!!0 5
)!!5 6
;!!6 7
}"" 
}## 
await$$ 
_animalRepository$$ #
.$$# $
	SaveAsync$$$ -
($$- .
)$$. /
;$$/ 0
await%%  
_bookOrderRepository%% &
.%%& '
	SaveAsync%%' 0
(%%0 1
)%%1 2
;%%2 3
}&& 	
public'' 
async'' 
Task'' 
UpdateBookedTime'' *
(''* +
	BookOrder''+ 4
	bookOrder''5 >
)''> ?
{(( 	
if)) 
()) 
	bookOrder)) 
.)) 

EndingDate)) $
<))% &
DateTime))' /
.))/ 0
Now))0 3
)))3 4
{** 
var++ 
animal++ 
=++ 
_animalRepository++ .
.++. /
Entities++/ 7
.++7 8
FirstOrDefault++8 F
(++F G
x++G H
=>++I K
x++L M
.++M N
Id++N P
==++Q S
	bookOrder++T ]
.++] ^
AnimalId++^ f
)++f g
;++g h
animal,, 
.,, 
Status,, 
=,, 
Domain,,  &
.,,& '
Enums,,' ,
.,,, -
AnimalStatus,,- 9
.,,9 :
None,,: >
;,,> ?
	bookOrder-- 
.-- 
Status--  
=--! "
Domain--# )
.--) *
Enums--* /
.--/ 0
OrderStatus--0 ;
.--; <
Declined--< D
;--D E
_animalRepository.. !
...! "
Update.." (
(..( )
animal..) /
)../ 0
;..0 1 
_bookOrderRepository// $
.//$ %
Update//% +
(//+ ,
	bookOrder//, 5
)//5 6
;//6 7
await00 
_animalRepository00 '
.00' (
	SaveAsync00( 1
(001 2
)002 3
;003 4
await11  
_bookOrderRepository11 *
.11* +
	SaveAsync11+ 4
(114 5
)115 6
;116 7
}22 
}44 	
}66 
}77 Õu
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\BookOrderService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
BookOrderService !
:" #
IBookOrderService$ 5
{ 
private 
readonly 
IRepository $
<$ %
	BookOrder% .
>. / 
_bookOrderRepository0 D
;D E
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly 
IBookedTimeService +
_bookedTimeService, >
;> ?
private 
readonly 
ICurrentUserService ,
_currentUserService- @
;@ A
private 
readonly 
IMapper  
_mapper! (
;( )
public 
BookOrderService 
(  
IRepository  +
<+ ,
	BookOrder, 5
>5 6
bookOrderRepository7 J
,J K
IRepository  +
<+ ,
Animal, 2
>2 3
animalRepository4 D
,D E
IBookedTimeService  2
bookedTimeService3 D
,D E
ICurrentUserService  3
currentUserService4 F
,F G
IMapper  '
mapper( .
). /
{ 	 
_bookOrderRepository  
=! "
bookOrderRepository# 6
;6 7
_animalRepository 
= 
animalRepository  0
;0 1
_bookedTimeService   
=    
bookedTimeService  ! 2
;  2 3
_currentUserService!! 
=!!  !
currentUserService!!" 4
;!!4 5
_mapper"" 
="" 
mapper"" 
;"" 
}## 	
public$$ 
async$$ 
Task$$ 
ApproveBookOrder$$ *
($$* +"
BookOrderForApproveDto$$+ A
order$$B G
)$$G H
{%% 	
var&& 
	bookOrder&& 
=&&  
_bookOrderRepository&& 0
.&&0 1
Entities&&1 9
.&&9 :
FirstOrDefault&&: H
(&&H I
x&&I J
=>&&K M
x&&N O
.&&O P
Id&&P R
==&&S U
order&&V [
.&&[ \
Id&&\ ^
)&&^ _
;&&_ `
var'' 
animal'' 
='' 
_animalRepository'' *
.''* +
Entities''+ 3
.''3 4
FirstOrDefault''4 B
(''B C
x''C D
=>''E G
x''H I
.''I J
Id''J L
==''M O
	bookOrder''P Y
.''Y Z
AnimalId''Z b
)''b c
;''c d
if(( 
((( 
AnimalStatus(( 
.(( 
None(( !
!=((" $
animal((% +
.((+ ,
Status((, 2
)((2 3
{)) 
throw** 
new** 
ObjectException** )
(**) *
$str*** G
)**G H
;**H I
}++ 
if,, 
(,, 
	bookOrder,, 
==,, 
null,, !
),,! "
{-- 
throw.. 
new.. #
ObjectNotFoundException.. 1
(..1 2
$str..2 H
)..H I
;..I J
}// 
if00 
(00 
OrderStatus00 
.00 
Pending00 #
!=00$ &
	bookOrder00' 0
.000 1
Status001 7
)007 8
{11 
throw22 
new22 
ObjectException22 )
(22) *
$str22* V
)22V W
;22W X
}33 
animal44 
.44 
Status44 
=44 
AnimalStatus44 (
.44( )
Booked44) /
;44/ 0
_animalRepository55 
.55 
Update55 $
(55$ %
animal55% +
)55+ ,
;55, -
_mapper66 
.66 
Map66 
(66 
order66 
,66 
	bookOrder66 (
)66( )
;66) *
	bookOrder88 
.88 
Status88 
=88 
OrderStatus88 *
.88* +
Approved88+ 3
;883 4
	bookOrder99 
.99 
ClosingDate99 !
=99" #
new99$ '
DateTime99( 0
(990 1
)991 2
;992 3 
_bookOrderRepository::  
.::  !
Update::! '
(::' (
	bookOrder::( 1
)::1 2
;::2 3
await;;  
_bookOrderRepository;; &
.;;& '
	SaveAsync;;' 0
(;;0 1
);;1 2
;;;2 3
}<< 	
public>> 
async>> 
Task>> 
DeclineBookOrder>> *
(>>* +"
BookOrderForDeclineDto>>+ A
order>>B G
)>>G H
{?? 	
var@@ 
	bookOrder@@ 
=@@  
_bookOrderRepository@@ 0
.@@0 1
Entities@@1 9
.@@9 :
FirstOrDefault@@: H
(@@H I
x@@I J
=>@@K M
x@@N O
.@@O P
Id@@P R
==@@S U
order@@V [
.@@[ \
Id@@\ ^
)@@^ _
;@@_ `
varAA 
animalAA 
=AA 
_animalRepositoryAA *
.AA* +
EntitiesAA+ 3
.AA3 4
FirstOrDefaultAA4 B
(AAB C
xAAC D
=>AAE G
xAAH I
.AAI J
IdAAJ L
==AAM O
	bookOrderAAP Y
.AAY Z
AnimalIdAAZ b
)AAb c
;AAc d
ifBB 
(BB 
OrderStatusBB 
.BB 
DeclinedBB $
==BB% '
	bookOrderBB( 1
.BB1 2
StatusBB2 8
)BB8 9
{CC 
throwDD 
newDD 
ObjectExceptionDD )
(DD) *
nameofDD* 0
(DD0 1
	bookOrderDD1 :
.DD: ;
AnimalIdDD; C
)DDC D
,DDD E
$strDDF b
)DDb c
;DDc d
}EE 
ifGG 
(GG 
	bookOrderGG 
==GG 
nullGG !
||GG" $
	bookOrderGG% .
.GG. /
StatusGG/ 5
==GG6 8
OrderStatusGG9 D
.GGD E
DeclinedGGE M
)GGM N
{HH 
throwII 
newII #
ObjectNotFoundExceptionII 1
(II1 2
$strII2 d
)IId e
;IIe f
}JJ 
animalLL 
.LL 
StatusLL 
=LL 
AnimalStatusLL (
.LL( )
NoneLL) -
;LL- .
_animalRepositoryMM 
.MM 
UpdateMM $
(MM$ %
animalMM% +
)MM+ ,
;MM, -
_mapperOO 
.OO 
MapOO 
(OO 
orderOO 
,OO 
	bookOrderOO (
)OO( )
;OO) *
	bookOrderPP 
.PP 
StatusPP 
=PP 
OrderStatusPP *
.PP* +
DeclinedPP+ 3
;PP3 4
	bookOrderQQ 
.QQ 
ClosingDateQQ !
=QQ" #
DateTimeQQ$ ,
.QQ, -
NowQQ- 0
;QQ0 1 
_bookOrderRepositoryRR  
.RR  !
UpdateRR! '
(RR' (
	bookOrderRR( 1
)RR1 2
;RR2 3
awaitSS  
_bookOrderRepositorySS &
.SS& '
	SaveAsyncSS' 0
(SS0 1
)SS1 2
;SS2 3
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
IEnumerableVV %
<VV% &
BookOrderDtoVV& 2
>VV2 3
>VV3 4
GetAllBookOrdersVV5 E
(VVE F
)VVF G
{WW 	
awaitXX 
_bookedTimeServiceXX $
.XX$ %
UpdateBookedTimeXX% 5
(XX5 6 
_bookOrderRepositoryXX6 J
.XXJ K
FindXXK O
(XXO P
xXXP Q
=>XXR T
xXXU V
.XXV W
StatusXXW ]
==XX^ `
OrderStatusXXa l
.XXl m
ApprovedXXm u
)XXu v
.XXv w
ToListXXw }
(XX} ~
)XX~ 
)	XX Ä
;
XXÄ Å
varYY 

bookOrdersYY 
=YY  
_bookOrderRepositoryYY 2
.YY2 3
GetAllQueryableYY3 B
(YYB C
)YYC D
;YYD E
varZZ 
bookOrdersResultZZ  
=ZZ! "

bookOrdersZZ# -
.ZZ- .
SelectZZ. 4
(ZZ4 5
xZZ5 6
=>ZZ7 9
_mapperZZ: A
.ZZA B
MapZZB E
<ZZE F
BookOrderDtoZZF R
>ZZR S
(ZZS T
xZZT U
)ZZU V
)ZZV W
;ZZW X
return[[ 
bookOrdersResult[[ #
;[[# $
}\\ 	
public]] 
async]] 
Task]] 
<]] 
IEnumerable]] %
<]]% &
BookOrderDto]]& 2
>]]2 3
>]]3 4$
GetAllApprovedBookOrders]]5 M
(]]M N
)]]N O
{^^ 	
await__ 
_bookedTimeService__ $
.__$ %
UpdateBookedTime__% 5
(__5 6 
_bookOrderRepository__6 J
.__J K
Find__K O
(__O P
x__P Q
=>__R T
x__U V
.__V W
Status__W ]
==__^ `
OrderStatus__a l
.__l m
Approved__m u
)__u v
.__v w
ToList__w }
(__} ~
)__~ 
)	__ Ä
;
__Ä Å
var`` 

bookOrders`` 
=``  
_bookOrderRepository`` 1
.``1 2
GetAllQueryable``2 A
(``A B
)``B C
.``C D
Where``D I
(``I J
x``J K
=>``L N
x``O P
.``P Q
Status``Q W
==``X Z
OrderStatus``[ f
.``f g
Approved``g o
)``o p
.``p q
Select``q w
(``w x
x``x y
=>``z |
_mapper	``} Ñ
.
``Ñ Ö
Map
``Ö à
<
``à â
BookOrderDto
``â ï
>
``ï ñ
(
``ñ ó
x
``ó ò
)
``ò ô
)
``ô ö
;
``ö õ
returnaa 

bookOrdersaa 
;aa 
}cc 	
publicee 
IEnumerableee 
<ee 
BookOrderDtoee '
>ee' (#
GetAllPendingBookOrdersee) @
(ee@ A
)eeA B
{ff 	
varhh 

bookOrdershh 
=hh  
_bookOrderRepositoryhh 1
.hh1 2
GetAllQueryablehh2 A
(hhA B
)hhB C
.hhC D
WherehhD I
(hhI J
xhhJ K
=>hhL N
xhhO P
.hhP Q
StatushhQ W
==hhX Z
OrderStatushh[ f
.hhf g
Pendinghhg n
)hhn o
.hho p
Selecthhp v
(hhv w
xhhw x
=>hhy {
_mapper	hh| É
.
hhÉ Ñ
Map
hhÑ á
<
hhá à
BookOrderDto
hhà î
>
hhî ï
(
hhï ñ
x
hhñ ó
)
hhó ò
)
hhò ô
;
hhô ö
returnii 

bookOrdersii 
;ii 
}jj 	
publickk 
IEnumerablekk 
<kk 
BookOrderDtokk '
>kk' ($
GetAllBookOrdersByUserIdkk) A
(kkA B
stringkkB H
idkkI K
)kkK L
{ll 	
varmm 

bookOrdersmm 
=mm  
_bookOrderRepositorymm 1
.mm1 2
GetAllQueryablemm2 A
(mmA B
)mmB C
.mmC D
WheremmD I
(mmI J
xmmJ K
=>mmL N
xmmO P
.mmP Q
UserIdmmQ W
==mmX Z
idmm[ ]
)mm] ^
.mm^ _
Selectmm_ e
(mme f
xmmf g
=>mmh j
_mappermmk r
.mmr s
Mapmms v
<mmv w
BookOrderDto	mmw É
>
mmÉ Ñ
(
mmÑ Ö
x
mmÖ Ü
)
mmÜ á
)
mmá à
;
mmà â
returnnn 

bookOrdersnn 
;nn 
}oo 	
publicpp 
IEnumerablepp 
<pp 
BookOrderDtopp '
>pp' ()
GetAllBookOrdersOfCurrentUserpp) F
(ppF G
)ppG H
{qq 	
varrr 
	userEmailrr 
=rr 
_currentUserServicerr /
.rr/ 0
	UserEmailrr0 9
;rr9 :
varss 

bookOrdersss 
=ss  
_bookOrderRepositoryss 1
.ss1 2
GetAllQueryabless2 A
(ssA B
)ssB C
.ssC D
WheressD I
(ssI J
xssJ K
=>ssL N
xssO P
.ssP Q
	CreatedByssQ Z
==ss[ ]
	userEmailss^ g
)ssg h
.ssh i
Selectssi o
(sso p
xssp q
=>ssr t
_mapperssu |
.ss| }
Map	ss} Ä
<
ssÄ Å
BookOrderDto
ssÅ ç
>
ssç é
(
ssé è
x
ssè ê
)
ssê ë
)
ssë í
;
ssí ì
returntt 

bookOrderstt 
;tt 
}uu 	
publicvv 
asyncvv 
Taskvv 
<vv 
BookOrderDtovv &
>vv& '
GetByIdvv( /
(vv/ 0
longvv0 4
idvv5 7
)vv7 8
{ww 	
varxx 
	bookOrderxx 
=xx 
awaitxx ! 
_bookOrderRepositoryxx" 6
.xx6 7
GetByIdAsyncxx7 C
(xxC D
idxxD F
)xxF G
;xxG H
varyy 
bookOrderResultyy 
=yy  !
_mapperyy" )
.yy) *
Mapyy* -
<yy- .
BookOrderDtoyy. :
>yy: ;
(yy; <
	bookOrderyy< E
)yyE F
;yyF G
returnzz 
bookOrderResultzz "
;zz" #
}{{ 	
public|| 
async|| 
Task|| 
Delete||  
(||  !
long||! %
id||& (
)||( )
{}} 	
var~~ 

adoptOrder~~ 
=~~ 
await~~ " 
_bookOrderRepository~~# 7
.~~7 8
GetByIdAsync~~8 D
(~~D E
id~~E G
)~~G H
;~~H I
if 
( 

adoptOrder 
== 
null "
)" #
{
ÄÄ 
throw
ÅÅ 
new
ÅÅ #
ArgumentNullException
ÅÅ /
(
ÅÅ/ 0
nameof
ÅÅ0 6
(
ÅÅ6 7
id
ÅÅ7 9
)
ÅÅ9 :
,
ÅÅ: ;
$str
ÅÅ< Q
)
ÅÅQ R
;
ÅÅR S
}
ÇÇ 
await
ÉÉ "
_bookOrderRepository
ÉÉ &
.
ÉÉ& '
Remove
ÉÉ' -
(
ÉÉ- .

adoptOrder
ÉÉ. 8
)
ÉÉ8 9
;
ÉÉ9 :
}
ÑÑ 	
}
ÖÖ 
}ÜÜ ´f
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\BreedService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
BreedService 
: 
IBreedService  -
{ 
private 
readonly 
IRepository $
<$ %
Breed% *
>* +
_breedRepository, <
;< =
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly 
IMapper  
_mapper! (
;( )
public 
BreedService 
( 
IRepository '
<' (
Breed( -
>- .

repository/ 9
,9 :
IRepository; F
<F G
AnimalG M
>M N
animalRepositoryO _
,_ `
IMappera h
mapperi o
)o p
{ 	
_breedRepository 
= 

repository )
;) *
_animalRepository 
= 
animalRepository  0
;0 1
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
BreedDto& .
>. /
>/ 0
GetAllBreeds1 =
(= >
)> ?
{ 	
var 
breeds 
= 
await 
_breedRepository /
./ 0
GetAllAsync0 ;
(; <
)< =
;= >
var 
	breedsDto 
= 
breeds "
." #
Select# )
() *
a* +
=>, .
_mapper/ 6
.6 7
Map7 :
<: ;
BreedDto; C
>C D
(D E
aE F
)F G
)G H
;H I
return 
	breedsDto 
; 
} 	
public   
async   
Task   
<   
BreedDto   "
>  " #
GetBreedById  $ 0
(  0 1
long  1 5
id  6 8
)  8 9
{!! 	
var"" 
breed"" 
="" 
await"" 
_breedRepository"" .
."". /
GetByIdAsync""/ ;
(""; <
id""< >
)""> ?
;""? @
return## 
new## 
BreedDto## 
(##  
)##  !
{$$ 
Id%% 
=%% 
breed%% 
.%% 
Id%% 
,%% 

LanguageUa&& 
=&& 
breed&& "
.&&" #
BreedUkrainian&&# 1
,&&1 2

LanguageEn'' 
='' 
breed'' "
.''" #
BreedEnglish''# /
}(( 
;(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
BreedForCreationDto++ -
>++- .
CreateBreed++/ :
(++: ;
BreedForCreationDto++; N
breed++O T
)++T U
{,, 	
await-- 
_breedRepository-- "
.--" #
AddAsync--# +
(--+ ,
new--, /
Breed--0 5
(--5 6
)--6 7
{.. 
BreedEnglish// 
=// 
breed// $
.//$ %

LanguageEn//% /
,/// 0
BreedUkrainian00 
=00  
breed00! &
.00& '

LanguageUa00' 1
}11 
)11 
;11 
await22 
_breedRepository22 "
.22" #
	SaveAsync22# ,
(22, -
)22- .
;22. /
return33 
breed33 
;33 
}44 	
public66 
async66 
Task66 
<66 
long66 
>66 !
CreateAnimalWithBreed66  5
(665 6 
AnimalForCreationDto666 J
animal66K Q
,66Q R
Animal66S Y
model66Z _
)66_ `
{77 	
if88 
(88 
animal88 
.88 
Breed88 
==88 
null88  $
)88$ %
animal99 
.99 
Breed99 
=99 
new99 "
BreedForCreationDto99# 6
{997 8

LanguageEn999 C
=99D E
$str99F L
,99L M

LanguageUa99N X
=99Y Z
$str99[ a
}99b c
;99c d
var;; 
breed;; 
=;; 
_breedRepository;; (
.;;( )
GetAllQueryable;;) 8
(;;8 9
);;9 :
.;;: ;
FirstOrDefault;;; I
(;;I J
x<< 
=><< 
x<< 
.<< 
BreedEnglish<< #
.<<# $
ToLower<<$ +
(<<+ ,
)<<, -
==<<. 0
animal<<1 7
.<<7 8
Breed<<8 =
.<<= >

LanguageEn<<> H
.<<H I
ToLower<<I P
(<<P Q
)<<Q R
&&== 
x== 
.== 
BreedUkrainian== #
.==# $
ToLower==$ +
(==+ ,
)==, -
====. 0
animal==1 7
.==7 8
Breed==8 =
.=== >

LanguageUa==> H
.==H I
ToLower==I P
(==P Q
)==Q R
)==R S
;==S T
long?? 
breedId?? 
;?? 
ifAA 
(AA 
breedAA 
!=AA 
nullAA 
)AA 
{BB 
breedIdCC 
=CC 
breedCC 
.CC  
IdCC  "
;CC" #
}DD 
elseEE 
{FF 
awaitGG 
_breedRepositoryGG &
.GG& '
AddAsyncGG' /
(GG/ 0
newGG0 3
BreedGG4 9
{GG: ;
BreedEnglishGG< H
=GGI J
animalGGK Q
.GGQ R
BreedGGR W
.GGW X

LanguageEnGGX b
,GGb c
BreedUkrainianGGd r
=GGs t
animalGGu {
.GG{ |
Breed	GG| Å
.
GGÅ Ç

LanguageUa
GGÇ å
}
GGç é
)
GGé è
;
GGè ê
varII 
	breedTempII 
=II 
_breedRepositoryII  0
.II0 1
GetAllQueryableII1 @
(II@ A
)IIA B
.IIB C
FirstOrDefaultIIC Q
(IIQ R
xJJ 
=>JJ 
xJJ 
.JJ 
BreedEnglishJJ #
.JJ# $
ToLowerJJ$ +
(JJ+ ,
)JJ, -
==JJ. 0
animalJJ1 7
.JJ7 8
BreedJJ8 =
.JJ= >

LanguageEnJJ> H
.JJH I
ToLowerJJI P
(JJP Q
)JJQ R
&&KK 
xKK 
.KK 
BreedUkrainianKK #
.KK# $
ToLowerKK$ +
(KK+ ,
)KK, -
==KK. 0
animalKK1 7
.KK7 8
BreedKK8 =
.KK= >

LanguageUaKK> H
.KKH I
ToLowerKKI P
(KKP Q
)KKQ R
)KKR S
;KKS T
breedIdMM 
=MM 
	breedTempMM #
.MM# $
IdMM$ &
;MM& '
}NN 
awaitPP 
_breedRepositoryPP "
.PP" #
	SaveAsyncPP# ,
(PP, -
)PP- .
;PP. /
returnRR 
breedIdRR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU !
UpdateAnimalWithBreedUU /
(UU/ 0
	AnimalDtoUU0 9
animalUU: @
,UU@ A
AnimalUUB H
modelUUI N
)UUN O
{VV 	
ifWW 
(WW 
animalWW 
.WW 
BreedWW 
==WW 
nullWW  $
)WW$ %
animalXX 
.XX 
BreedXX 
=XX 
newXX "
BreedDtoXX# +
{XX, -

LanguageEnXX. 8
=XX9 :
$strXX; A
,XXA B

LanguageUaXXC M
=XXN O
$strXXP V
}XXW X
;XXX Y
varZZ 
breedZZ 
=ZZ 
_breedRepositoryZZ (
.ZZ( )
GetAllQueryableZZ) 8
(ZZ8 9
)ZZ9 :
.ZZ: ;
FirstOrDefaultZZ; I
(ZZI J
x[[ 
=>[[ 
x[[ 
.[[ 
BreedEnglish[[ #
.[[# $
ToLower[[$ +
([[+ ,
)[[, -
==[[. 0
animal[[1 7
.[[7 8
Breed[[8 =
.[[= >

LanguageEn[[> H
.[[H I
ToLower[[I P
([[P Q
)[[Q R
&&\\ 
x\\ 
.\\ 
BreedUkrainian\\ #
.\\# $
ToLower\\$ +
(\\+ ,
)\\, -
==\\. 0
animal\\1 7
.\\7 8
Breed\\8 =
.\\= >

LanguageUa\\> H
.\\H I
ToLower\\I P
(\\P Q
)\\Q R
)\\R S
;\\S T
if`` 
(`` 
breed`` 
!=`` 
null`` 
)`` 
{aa 
modelbb 
.bb 
BreedIdbb 
=bb 
breedbb  %
.bb% &
Idbb& (
;bb( )
}cc 
elsedd 
{ee 
awaitff 
_breedRepositoryff &
.ff& '
AddAsyncff' /
(ff/ 0
newff0 3
Breedff4 9
{ff: ;
BreedEnglishff< H
=ffI J
animalffK Q
.ffQ R
BreedffR W
.ffW X

LanguageEnffX b
,ffb c
BreedUkrainianffd r
=ffs t
animalffu {
.ff{ |
Breed	ff| Å
.
ffÅ Ç

LanguageUa
ffÇ å
}
ffç é
)
ffé è
;
ffè ê
varhh 
	breedTemphh 
=hh 
_breedRepositoryhh  0
.hh0 1
GetAllQueryablehh1 @
(hh@ A
)hhA B
.hhB C
FirstOrDefaulthhC Q
(hhQ R
xii 
=>ii 
xii 
.ii 
BreedEnglishii #
.ii# $
ToLowerii$ +
(ii+ ,
)ii, -
==ii. 0
animalii1 7
.ii7 8
Breedii8 =
.ii= >

LanguageEnii> H
.iiH I
ToLoweriiI P
(iiP Q
)iiQ R
&&jj 
xjj 
.jj 
BreedUkrainianjj #
.jj# $
ToLowerjj$ +
(jj+ ,
)jj, -
==jj. 0
animaljj1 7
.jj7 8
Breedjj8 =
.jj= >

LanguageUajj> H
.jjH I
ToLowerjjI P
(jjP Q
)jjQ R
)jjR S
;jjS T
modelll 
.ll 
BreedIdll 
=ll 
	breedTempll  )
.ll) *
Idll* ,
;ll, -
}mm 
_animalRepositoryoo 
.oo 
Updateoo $
(oo$ %
modeloo% *
)oo* +
;oo+ ,
awaitqq 
_breedRepositoryqq "
.qq" #
	SaveAsyncqq# ,
(qq, -
)qq- .
;qq. /
_animalRepositoryrr 
.rr 
SaveChangesrr )
(rr) *
)rr* +
;rr+ ,
}ss 	
publicuu 
asyncuu 
Taskuu 
UpdateBreeduu %
(uu% &
BreedDtouu& .
breeduu/ 4
)uu4 5
{vv 	
varww 
	tempBreedww 
=ww 
awaitww !
_breedRepositoryww" 2
.ww2 3
GetByIdAsyncww3 ?
(ww? @
breedww@ E
.wwE F
IdwwF H
)wwH I
;wwI J
	tempBreedxx 
.xx 
BreedEnglishxx "
=xx# $
breedxx% *
.xx* +

LanguageEnxx+ 5
;xx5 6
	tempBreedyy 
.yy 
BreedUkrainianyy $
=yy% &
breedyy' ,
.yy, -

LanguageUayy- 7
;yy7 8
_breedRepositoryzz 
.zz 
Updatezz #
(zz# $
	tempBreedzz$ -
)zz- .
;zz. /
await{{ 
_breedRepository{{ "
.{{" #
	SaveAsync{{# ,
({{, -
){{- .
;{{. /
}|| 	
public~~ 
async~~ 
Task~~ 
DeleteBreed~~ %
(~~% &
long~~& *
breedId~~+ 2
)~~2 3
{ 	
var
ÄÄ 
	tempBreed
ÄÄ 
=
ÄÄ 
await
ÄÄ !
_breedRepository
ÄÄ" 2
.
ÄÄ2 3
GetByIdAsync
ÄÄ3 ?
(
ÄÄ? @
breedId
ÄÄ@ G
)
ÄÄG H
;
ÄÄH I
await
ÅÅ 
_breedRepository
ÅÅ "
.
ÅÅ" #
Remove
ÅÅ# )
(
ÅÅ) *
	tempBreed
ÅÅ* 3
)
ÅÅ3 4
;
ÅÅ4 5
await
ÇÇ 
_breedRepository
ÇÇ "
.
ÇÇ" #
	SaveAsync
ÇÇ# ,
(
ÇÇ, -
)
ÇÇ- .
;
ÇÇ. /
}
ÉÉ 	
}
ÑÑ 
}ÖÖ Ë
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\CategoryService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
CategoryService  
:! "
ICategoryService# 3
{ 
private 
readonly 
IRepository $
<$ %
Category% -
>- .
_categoryRepository/ B
;B C
private 
readonly 
IMapper  
_mapper! (
;( )
public 
CategoryService 
( 
IRepository *
<* +
Category+ 3
>3 4

repository5 ?
,? @
IMapperA H
mapperI O
)O P
{ 	
_categoryRepository 
=  !

repository" ,
;, -
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CategoryDto& 1
>1 2
>2 3
GetAllCategories4 D
(D E
)E F
{ 	
var 

categories 
= 
await "
_categoryRepository# 6
.6 7
GetAllAsync7 B
(B C
)C D
;D E
var 
categoriesDto 
= 

categories  *
.* +
Select+ 1
(1 2
a2 3
=>4 6
_mapper7 >
.> ?
Map? B
<B C
CategoryDtoC N
>N O
(O P
aP Q
)Q R
)R S
;S T
return 
categoriesDto  
;  !
} 	
} 
} Ü
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\CurrentUserService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
CurrentUserService #
:$ %
ICurrentUserService& 9
{ 
public		 
CurrentUserService		 !
(		! " 
IHttpContextAccessor		" 6
httpContextAccessor		7 J
)		J K
{

 	
	UserEmail 
= 
httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
.= >
Identity> F
.F G
NameG K
;K L
} 	
public 
string 
	UserEmail 
{  !
get" %
;% &
}' (
} 
} Èu
YC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\DefectService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
DefectService 
:  
IDefectService! /
{ 
private 
readonly 
IRepository $
<$ %
Defect% +
>+ ,
_defectRepository- >
;> ?
private 
readonly 
IRepository $
<$ %
AnimalDefects% 2
>2 3#
_animalDefectRepository4 K
;K L
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
public 
DefectService 
( 
IRepository (
<( )
Defect) /
>/ 0
defectRepository1 A
,A B
IRepository 
< 
AnimalDefects %
>% &"
animalDefectRepository' =
,= >
IRepository 
< 
Animal 
> 
animalRepository  0
)0 1
{ 	
_defectRepository 
= 
defectRepository  0
;0 1#
_animalDefectRepository #
=$ %"
animalDefectRepository& <
;< =
_animalRepository 
= 
animalRepository  0
;0 1
} 	
public 
async 
Task 
<  
DefectForCreationDto .
>. /
CreateDefect0 <
(< = 
DefectForCreationDto= Q
defectR X
)X Y
{ 	
await 
_defectRepository #
.# $
AddAsync$ ,
(, -
new- 0
Defect1 7
(7 8
)8 9
{ 
Type 
= 
defect 
. 
Type "
," #
} 
) 
; 
await 
_defectRepository #
.# $
	SaveAsync$ -
(- .
). /
;/ 0
return   
defect   
;   
}!! 	
public## 
async## 
Task## 
DeleteDefect## &
(##& '
long##' +
defectId##, 4
)##4 5
{$$ 	
var%% 

tempDefect%% 
=%% 
await%% "
_defectRepository%%# 4
.%%4 5
GetByIdAsync%%5 A
(%%A B
defectId%%B J
)%%J K
;%%K L
await&& 
_defectRepository&& #
.&&# $
Remove&&$ *
(&&* +

tempDefect&&+ 5
)&&5 6
;&&6 7
await'' 
_defectRepository'' #
.''# $
	SaveAsync''$ -
(''- .
)''. /
;''/ 0
}(( 	
public** 
async** 
Task** "
DeleteDefectFromAnimal** 0
(**0 1
long**1 5
animalId**6 >
,**> ?
long**@ D
defectId**E M
)**M N
{++ 	
var,, 

tempAnimal,, 
=,, 
await,, "
_animalRepository,,# 4
.,,4 5
GetByIdAsync,,5 A
(,,A B
animalId,,B J
),,J K
;,,K L
var-- 

tempDefect-- 
=-- 
await-- "
_defectRepository--# 4
.--4 5
GetByIdAsync--5 A
(--A B
defectId--B J
)--J K
;--K L
var.. 
animalDefect.. 
=.. 
new.. "
AnimalDefects..# 0
(..0 1
)..1 2
{// 
AnimalId00 
=00 
animalId00 #
,00# $
	DefectsId11 
=11 
defectId11 $
,11$ %
Defect22 
=22 

tempDefect22 #
,22# $
Animal33 
=33 

tempAnimal33 #
}44 
;44 
await55 #
_animalDefectRepository55 )
.55) *
Remove55* 0
(550 1
animalDefect551 =
)55= >
;55> ?
await66 #
_animalDefectRepository66 )
.66) *
	SaveAsync66* 3
(663 4
)664 5
;665 6
}77 	
public99 
async99 
Task99 
<99 
IEnumerable99 %
<99% &
	DefectDto99& /
>99/ 0
>990 1
GetAllDefects992 ?
(99? @
)99@ A
{:: 	
var;; 
tempDefects;; 
=;; 
await;; #
_defectRepository;;$ 5
.;;5 6
GetAllAsync;;6 A
(;;A B
);;B C
;;;C D
return<< 
tempDefects<< 
.<< 
Select<< %
(<<% &
d<<& '
=><<( *
new<<+ .
	DefectDto<</ 8
(<<8 9
)<<9 :
{== 
Id>> 
=>> 
d>> 
.>> 
Id>> 
,>> 
Type?? 
=?? 
d?? 
.?? 
Type?? 
}@@ 
)@@ 
.@@ 
OrderBy@@ 
(@@ 
x@@ 
=>@@ 
x@@ 
.@@ 
Type@@ "
)@@" #
;@@# $
}AA 	
publicCC 
asyncCC 
TaskCC 
AddDefectToAnimalCC +
(CC+ ,
longCC, 0
animalIdCC1 9
,CC9 :
longCC; ?
defectIdCC@ H
)CCH I
{DD 	
varEE 

tempAnimalEE 
=EE 
awaitEE "
_animalRepositoryEE# 4
.EE4 5
GetByIdAsyncEE5 A
(EEA B
animalIdEEB J
)EEJ K
;EEK L
varFF 
defectFF 
=FF 
awaitFF 
_defectRepositoryFF 0
.FF0 1
GetByIdAsyncFF1 =
(FF= >
defectIdFF> F
)FFF G
;FFG H
awaitGG #
_animalDefectRepositoryGG )
.GG) *
AddAsyncGG* 2
(GG2 3
newGG3 6
AnimalDefectsGG7 D
(GGD E
)GGE F
{HH 
AnimalIdII 
=II 
animalIdII #
,II# $
	DefectsIdJJ 
=JJ 
defectIdJJ $
,JJ$ %
DefectKK 
=KK 
defectKK 
,KK  
AnimalLL 
=LL 

tempAnimalLL #
}MM 
)MM 
;MM 
awaitNN #
_animalDefectRepositoryNN )
.NN) *
	SaveAsyncNN* 3
(NN3 4
)NN4 5
;NN5 6
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
AddDefectsToAnimalQQ ,
(QQ, -
longQQ- 1
animalIdQQ2 :
,QQ: ;
IEnumerableQQ< G
<QQG H
	DefectDtoQQH Q
>QQQ R
defectsQQS Z
)QQZ [
{RR 	
foreachSS 
(SS 
varSS 
defectSS 
inSS  "
defectsSS# *
)SS* +
{TT 
varUU 

tempAnimalUU 
=UU  
awaitUU! &
_animalRepositoryUU' 8
.UU8 9
GetByIdAsyncUU9 E
(UUE F
animalIdUUF N
)UUN O
;UUO P
varVV 

tempDefectVV 
=VV  
awaitVV! &
_defectRepositoryVV' 8
.VV8 9
GetByIdAsyncVV9 E
(VVE F
defectVVF L
.VVL M
IdVVM O
)VVO P
;VVP Q
awaitWW #
_animalDefectRepositoryWW -
.WW- .
AddAsyncWW. 6
(WW6 7
newWW7 :
AnimalDefectsWW; H
(WWH I
)WWI J
{XX 
AnimalIdYY 
=YY 
animalIdYY '
,YY' (
	DefectsIdZZ 
=ZZ 
defectZZ  &
.ZZ& '
IdZZ' )
,ZZ) *
Defect[[ 
=[[ 

tempDefect[[ '
,[[' (
Animal\\ 
=\\ 

tempAnimal\\ '
}]] 
)]] 
;]] 
await^^ #
_animalDefectRepository^^ -
.^^- .
	SaveAsync^^. 7
(^^7 8
)^^8 9
;^^9 :
}__ 
}`` 	
publicbb 
IEnumerablebb 
<bb 
	DefectDtobb $
>bb$ %!
GetAllDefectsByAnimalbb& ;
(bb; <
longbb< @
animalIdbbA I
)bbI J
{cc 	
vardd 
animalDefectsdd 
=dd #
_animalDefectRepositorydd  7
.dd7 8
GetAllQueryabledd8 G
(ddG H
)ddH I
;ddI J
varee 
defectsee 
=ee 
_defectRepositoryee +
.ee+ ,
GetAllQueryableee, ;
(ee; <
)ee< =
;ee= >
varff 
tempDefectsff 
=ff 
(ff 
fromff #
dff$ %
inff& (
defectsff) 0
joingg #
agg$ %
ingg& (
animalDefectsgg) 6
ongg7 9
dgg: ;
.gg; <
Idgg< >
equalsgg? E
aggF G
.ggG H
	DefectsIdggH Q
wherehh $
ahh% &
.hh& '
AnimalIdhh' /
==hh0 2
animalIdhh3 ;
selectii %
newii& )
{jj  
dkk# $
.kk$ %
Idkk% '
,kk' (
dll# $
.ll$ %
Typell% )
}mm  
)mm  !
;mm! "
returnnn 
tempDefectsnn 
.nn 
Selectnn %
(nn% &
dnn& '
=>nn( *
newnn+ .
	DefectDtonn/ 8
(nn8 9
)nn9 :
{oo 
Idpp 
=pp 
dpp 
.pp 
Idpp 
,pp 
Typeqq 
=qq 
dqq 
.qq 
Typeqq 
}rr 
)rr 
.rr 
OrderByrr 
(rr 
xrr 
=>rr 
xrr 
.rr 
Typerr "
)rr" #
.rr# $
ToListrr$ *
(rr* +
)rr+ ,
;rr, -
}ss 	
publicuu 
asyncuu 
Taskuu 
<uu 
	DefectDtouu #
>uu# $
GetDefectByIduu% 2
(uu2 3
longuu3 7
iduu8 :
)uu: ;
{vv 	
varww 
defectww 
=ww 
awaitww 
_defectRepositoryww 0
.ww0 1
GetByIdAsyncww1 =
(ww= >
idww> @
)ww@ A
;wwA B
returnxx 
newxx 
	DefectDtoxx  
(xx  !
)xx! "
{yy 
Idzz 
=zz 
defectzz 
.zz 
Idzz 
,zz 
Type{{ 
={{ 
defect{{ 
.{{ 
Type{{ "
}|| 
;|| 
}}} 	
public 
async 
Task 
UpdateDefect &
(& '
	DefectDto' 0
defect1 7
)7 8
{
ÄÄ 	
var
ÅÅ 

tempDefect
ÅÅ 
=
ÅÅ 
await
ÅÅ "
_defectRepository
ÅÅ# 4
.
ÅÅ4 5
GetByIdAsync
ÅÅ5 A
(
ÅÅA B
defect
ÅÅB H
.
ÅÅH I
Id
ÅÅI K
)
ÅÅK L
;
ÅÅL M

tempDefect
ÇÇ 
.
ÇÇ 
Type
ÇÇ 
=
ÇÇ 
defect
ÇÇ $
.
ÇÇ$ %
Type
ÇÇ% )
;
ÇÇ) *
_defectRepository
ÉÉ 
.
ÉÉ 
Update
ÉÉ $
(
ÉÉ$ %

tempDefect
ÉÉ% /
)
ÉÉ/ 0
;
ÉÉ0 1
await
ÑÑ 
_defectRepository
ÑÑ #
.
ÑÑ# $
	SaveAsync
ÑÑ$ -
(
ÑÑ- .
)
ÑÑ. /
;
ÑÑ/ 0
}
ÖÖ 	
public
áá 
async
áá 
Task
áá %
CreateAnimalWithDefects
áá 1
(
áá1 2"
AnimalForCreationDto
áá2 F
animal
ááG M
,
ááM N
Animal
ááO U
model
ááV [
)
áá[ \
{
àà 	
if
ââ 
(
ââ 
animal
ââ 
.
ââ 
Defects
ââ 
==
ââ !
null
ââ" &
)
ââ& '
animal
ää 
.
ää 
Defects
ää 
=
ää  
new
ää! $
HashSet
ää% ,
<
ää, -
	DefectDto
ää- 6
>
ää6 7
(
ää7 8
)
ää8 9
;
ää9 :%
_animalDefectRepository
åå #
.
åå# $!
TryCreateManyToMany
åå$ 7
(
åå7 8
animal
åå8 >
.
åå> ?
Defects
åå? F
.
çç 
Select
çç 
(
çç 
x
çç 
=>
çç 
new
çç 
AnimalDefects
çç  -
{
éé 
	DefectsId
èè 
=
èè 
x
èè  
.
èè  !
Id
èè! #
,
èè# $
AnimalId
êê 
=
êê 
model
êê #
.
êê# $
Id
êê$ &
,
êê& '
}
ëë 
)
ëë 
)
ëë 
;
ëë 
await
íí %
_animalDefectRepository
íí )
.
íí) *
	SaveAsync
íí* 3
(
íí3 4
)
íí4 5
;
íí5 6
}
ìì 	
public
ïï 
async
ïï 
Task
ïï %
UpdateAnimalWithDefects
ïï 1
(
ïï1 2
	AnimalDto
ïï2 ;
animal
ïï< B
,
ïïB C
Animal
ïïD J
model
ïïK P
)
ïïP Q
{
ññ 	
if
óó 
(
óó 
animal
óó 
.
óó 
Defects
óó 
==
óó !
null
óó" &
)
óó& '
animal
òò 
.
òò 
Defects
òò 
=
òò  
new
òò! $
HashSet
òò% ,
<
òò, -
	DefectDto
òò- 6
>
òò6 7
(
òò7 8
)
òò8 9
;
òò9 :%
_animalDefectRepository
öö #
.
öö# $!
TryUpdateManyToMany
öö$ 7
(
öö7 8
model
öö8 =
.
öö= >
AnimalDefects
öö> K
,
ööK L
animal
ööM S
.
ööS T
Defects
ööT [
.
õõ 
Select
õõ 
(
õõ 
x
õõ 
=>
õõ 
new
õõ  
AnimalDefects
õõ! .
{
úú 
	DefectsId
ùù 
=
ùù 
x
ùù  !
.
ùù! "
Id
ùù" $
,
ùù$ %
AnimalId
ûû 
=
ûû 
animal
ûû %
.
ûû% &
Id
ûû& (
,
ûû( )
}
üü 
)
üü 
,
üü 
x
üü 
=>
üü 
x
üü 
.
üü 
	DefectsId
üü $
)
üü$ %
;
üü% &
await
†† %
_animalDefectRepository
†† )
.
††) *
	SaveAsync
††* 3
(
††3 4
)
††4 5
;
††5 6
}
°° 	
}
¢¢ 
}££ €(
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\DescriptionService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
DescriptionService #
:$ %
IDescriptionService& 9
{ 
private 
readonly 
IRepository $
<$ %
AnimalDescription% 6
>6 7"
_descriptionRepository8 N
;N O
private 
readonly 
IMapper  
_mapper! (
;( )
public 
DescriptionService !
(! "
IRepository" -
<- .
AnimalDescription. ?
>? @!
descriptionRepositoryA V
,V W
IMapperX _
mapper` f
)f g
{ 	"
_descriptionRepository "
=# $!
descriptionRepository% :
;: ;
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task '
CreateAnimalWithDescription 5
(5 6 
AnimalForCreationDto6 J
animalK Q
,Q R
AnimalS Y
modelZ _
)_ `
{ 	
if 
( 
animal 
. 
Description "
==# %
null& *
)* +
return 
; 
await "
_descriptionRepository '
.' (
AddAsync( 0
(0 1
new1 4
AnimalDescription5 F
{G H

LanguageEnI S
=T U
animalV \
.\ ]
Description] h
.h i

LanguageEni s
,s t

LanguageUau 
=
Ä Å
animal
Ç à
.
à â
Description
â î
.
î ï

LanguageUa
ï ü
,
ü †
AnimalId
° ©
=
™ ´
model
¨ ±
.
± ≤
Id
≤ ¥
}
µ ∂
)
∂ ∑
;
∑ ∏
await "
_descriptionRepository '
.' (
	SaveAsync( 1
(1 2
)2 3
;3 4
} 	
public 
async 
Task 
< 
DescriptionDto (
>( )
GetDescriptionById* <
(< =
long= A
idB D
)D E
{   	
var!! 
description!! 
=!! 
await!! #"
_descriptionRepository!!$ :
.!!: ;
GetByIdAsync!!; G
(!!G H
id!!H J
)!!J K
;!!K L
var"" 
descriptionResult"" !
=""" #
_mapper""$ +
.""+ ,
Map"", /
<""/ 0
DescriptionDto""0 >
>""> ?
(""? @
description""@ K
)""K L
;""L M
return## 
descriptionResult## $
;##$ %
}$$ 	
public&& 
async&& 
Task&& 
UpdateDescription&& +
(&&+ ,
DescriptionDto&&, :
description&&; F
)&&F G
{'' 	
var(( 
tempDescription(( 
=((  !
await((" '"
_descriptionRepository((( >
.((> ?
GetByIdAsync((? K
(((K L
description((L W
.((W X
Id((X Z
)((Z [
;(([ \
tempDescription)) 
.)) 

LanguageEn)) &
=))' (
description))) 4
.))4 5

LanguageEn))5 ?
;))? @
tempDescription** 
.** 

LanguageUa** &
=**' (
description**) 4
.**4 5

LanguageUa**5 ?
;**? @"
_descriptionRepository++ "
.++" #
Update++# )
(++) *
tempDescription++* 9
)++9 :
;++: ;
await,, "
_descriptionRepository,, (
.,,( )
	SaveAsync,,) 2
(,,2 3
),,3 4
;,,4 5
}-- 	
public// 
async// 
Task// 
Delete//  
(//  !
long//! %
descriptionId//& 3
)//3 4
{00 	
var11 
description11 
=11 
await11 #"
_descriptionRepository11$ :
.11: ;
GetByIdAsync11; G
(11G H
descriptionId11H U
)11U V
;11V W
if22 
(22 
description22 
==22 
null22 #
)22# $
{33 
throw44 
new44 #
ObjectNotFoundException44 1
(441 2
nameof442 8
(448 9
descriptionId449 F
)44F G
,44G H
$str44I `
)44` a
;44a b
}55 
await66 "
_descriptionRepository66 (
.66( )
Remove66) /
(66/ 0
description660 ;
)66; <
;66< =
await77 "
_descriptionRepository77 (
.77( )
	SaveAsync77) 2
(772 3
)773 4
;774 5
}88 	
}99 
}:: ¨
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\EmailService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
EmailService 
: 
IEmailService ,
{ 
private 
readonly 
IConfiguration '
Configuration( 5
;5 6
public 
EmailService 
( 
IConfiguration *
configuration+ 8
)8 9
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
async 
Task 
SendEmailAsync (
(( )
string) /
email0 5
,5 6
string7 =
subject> E
,E F
stringG M
messageN U
)U V
{ 	
var 
sendEmailResult 
=  !
await" '
Execute( /
(/ 0
Configuration0 =
[= >
$str> T
]T U
,U V
subjectW ^
,^ _
message` g
,g h
emaili n
)n o
;o p
if 
( 
sendEmailResult 
.  

StatusCode  *
!=+ -
HttpStatusCode. <
.< =
Accepted= E
&&G I
sendEmailResult 
.  

StatusCode  *
!=+ -
HttpStatusCode. <
.< =
OK= ?
)? @
{ 
throw 
new 
SendEmailException ,
(, -
ExceptionStrings- =
.= >
SendEmailException> P
,P Q
emailR W
)W X
;X Y
} 
} 	
private 
Task 
< 
Response 
> 
Execute &
(& '
string' -
apiKey. 4
,4 5
string6 <
subject= D
,D E
stringF L
messageM T
,T U
stringV \
email] b
)b c
{   	
var!! 
client!! 
=!! 
new!! 
SendGridClient!! +
(!!+ ,
apiKey!!, 2
)!!2 3
;!!3 4
var"" 
msg"" 
="" 
new"" 
SendGridMessage"" )
("") *
)""* +
{## 
From$$ 
=$$ 
new$$ 
EmailAddress$$ '
($$' (
Configuration$$( 5
[$$5 6
$str$$6 L
]$$L M
,$$M N
Configuration$$O \
[$$\ ]
$str$$] t
]$$t u
)$$u v
,$$v w
Subject%% 
=%% 
subject%% !
,%%! "
PlainTextContent&&  
=&&! "
message&&# *
,&&* +
HtmlContent'' 
='' 
message'' %
}(( 
;(( 
msg)) 
.)) 
AddTo)) 
()) 
new)) 
EmailAddress)) &
())& '
email))' ,
))), -
)))- .
;)). /
msg** 
.** 
SetClickTracking**  
(**  !
false**! &
,**& '
false**( -
)**- .
;**. /
return,, 
client,, 
.,, 
SendEmailAsync,, (
(,,( )
msg,,) ,
),,, -
;,,- .
}-- 	
}.. 
}// é
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\FoodService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
FoodService 
: 
IFoodService +
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IRepository $
<$ %
Food% )
>) *
_repository+ 6
;6 7
public 
FoodService 
( 
IMapper "
mapper# )
,) *
IRepository+ 6
<6 7
Food7 ;
>; <

repository= G
)G H
{ 	
_mapper 
= 
mapper 
; 
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
FoodDto& -
>- .
>. /
GetAll0 6
(6 7
)7 8
{ 	
var 
food 
= 
await 
_repository (
.( )
GetAllAsync) 4
(4 5
)5 6
;6 7
var 
foodDto 
= 
food 
. 
Select %
(% &
a& '
=>( *
_mapper+ 2
.2 3
Map3 6
<6 7
FoodDto7 >
>> ?
(? @
a@ A
)A B
)B C
;C D
return 
foodDto 
; 
} 	
} 
} ›!
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\HelpService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
HelpService 
: 
IHelpService *
{ 
private 
readonly 
IRepository $
<$ %
Help% )
>) *
_repo+ 0
;0 1
private 
readonly 
IMapper  
_mapper! (
;( )
public 
HelpService 
( 
IRepository &
<& '
Help' +
>+ ,
repo- 1
,1 2
IMapper3 :
mapper; A
)A B
{ 	
_repo 
= 
repo 
; 
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
HelpDto& -
>- .
>. /
GetAll0 6
(6 7
)7 8
{ 	
return 
( 
await 
_repo 
. 
GetAllAsync *
(* +
)+ ,
), -
.- .
Select. 4
(4 5
obj5 8
=>9 ;
_mapper= D
.D E
MapE H
<H I
HelpDtoI P
>P Q
(Q R
objR U
)U V
)V W
.W X
ToListX ^
(^ _
)_ `
;` a
} 	
public 
async 
Task 
< 
HelpDto !
>! "
GetById# *
(* +
int+ .
id/ 1
)1 2
{ 	
var   
help   
=   
await   
_repo   "
.  " #
GetByIdAsync  # /
(  / 0
id  0 2
)  2 3
;  3 4
if"" 
("" 
help"" 
=="" 
null"" 
)"" 
{## 
throw$$ 
new$$ #
ObjectNotFoundException$$ 1
($$1 2
$"$$2 4
Object $$4 ;
{$$; <
id$$< >
}$$> ?
 can not be found$$? P
"$$P Q
)$$Q R
;$$R S
}%% 
return&& 
new&& 
HelpDto&& 
(&& 
)&&  
{&&! "
Id&&# %
=&&& '
help&&( ,
.&&, -
Id&&- /
,&&/ 0

KindOfHelp&&1 ;
=&&< =
help&&> B
.&&B C

KindOfHelp&&C M
}&&N O
;&&O P
}'' 	
public)) 
async)) 
Task)) 
AddHelp)) !
())! "
string))" (
help))) -
)))- .
{** 	
await++ 
_repo++ 
.++ 
AddAsync++  
(++  !
new++! $
Help++% )
(++) *
)++* +
{++, -

KindOfHelp++. 8
=++9 :
help++; ?
}++@ A
)++A B
;++B C
},, 	
public.. 
async.. 
Task.. 

DeleteHelp.. $
(..$ %
string..% +
help.., 0
)..0 1
{// 	
var00 
helpObj00 
=00 
await00  
_repo00! &
.00& ' 
SingleOrDefaultAsync00' ;
(00; <
obj00< ?
=>00@ B
obj00C F
.00F G

KindOfHelp00G Q
.00Q R
Equals00R X
(00X Y
help00Y ]
)00] ^
)00^ _
;00_ `
if22 
(22 
helpObj22 
==22 
null22 
)22  
{33 
throw44 
new44 #
ObjectNotFoundException44 1
(441 2
$"442 4
Object 444 ;
{44; <
help44< @
}44@ A
 can not be found44A R
"44R S
)44S T
;44T U
}55 
await66 
_repo66 
.66 
Remove66 
(66 
helpObj66 &
)66& '
;66' (
}77 	
}99 
}:: Ë%
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\IsNewService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
IsNewService 
: 
IIsNewService  -
{ 
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
IsNewService 
( 
IRepository '
<' (
Animal( .
>. /
animalRepository0 @
,@ A
IConfigurationB P
configurationQ ^
)^ _
{ 	
_animalRepository 
= 
animalRepository  0
;0 1
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
< 

IQueryable $
<$ %
Animal% +
>+ ,
>, -
UpdateAndGetByNew. ?
(? @

IQueryable@ J
<K L
AnimalL R
>R S
animalsT [
)[ \
{ 	
foreach 
( 
var 
b 
in 
animals %
)% &
{ 
if 
( 
b 
. 
IsNew 
&& 
DateTime '
.' (
Now( +
-, -
b. /
./ 0
	FoundDate0 9
>=: <
DateTime= E
.E F
NowF I
.I J
AddDaysJ Q
(Q R
intR U
.U V
ParseV [
([ \
_configuration\ j
[j k
$str	k Ñ
]
Ñ Ö
)
Ö Ü
)
Ü á
-
à â
DateTime
ä í
.
í ì
Now
ì ñ
)
ñ ó
{ 
b 
. 
IsNew 
= 
false #
;# $
_animalRepository %
.% &
Update& ,
(, -
b- .
). /
;/ 0
} 
}   
await!! 
_animalRepository!! #
.!!# $
	SaveAsync!!$ -
(!!- .
)!!. /
;!!/ 0
return"" 
animals"" 
;"" 
}## 	
public&& 
void&& 
UpdateIsNewCheckbox&& (
(&&( )
	AnimalDto&&) 2
	animalDto&&3 <
,&&< =
Animal&&> D
model&&E J
)&&J K
{'' 	
if(( 
((( 
	animalDto(( 
.(( 
IsNew(( 
&&((  "
DateTime((# +
.((+ ,
Now((, /
-((0 1
model((2 7
.((7 8
	FoundDate((8 A
>=((B D
DateTime((E M
.((M N
Now((N Q
.((Q R
AddDays((R Y
(((Y Z
int((Z ]
.((] ^
Parse((^ c
(((c d
_configuration((d r
[((r s
$str	((s å
]
((å ç
)
((ç é
)
((é è
-
((ê ë
DateTime
((í ö
.
((ö õ
Now
((õ û
)
((û ü
{)) 
model** 
.** 
	FoundDate** 
=**  !
DateTime**" *
.*** +
Now**+ .
;**. /
}++ 
},, 	
public.. 
async.. 
Task.. 
CreateCheckNewOld.. +
(..+ , 
AnimalForCreationDto.., @
	animalDto..A J
,..J K
Animal..L R
model..S X
)..X Y
{// 	
if00 
(00 
	animalDto00 
.00 
IsNew00 
&&00  "
DateTime00# +
.00+ ,
Now00, /
-000 1
	animalDto002 ;
.00; <
	FoundDate00< E
>=00F H
DateTime00I Q
.00Q R
Now00R U
.00U V
AddDays00V ]
(00] ^
int00^ a
.00a b
Parse00b g
(00g h
_configuration00h v
[00v w
$str	00w ê
]
00ê ë
)
00ë í
)
00í ì
-
00î ï
DateTime
00ñ û
.
00û ü
Now
00ü ¢
)
00¢ £
{11 
model22 
.22 
	FoundDate22 
=22  !
DateTime22" *
.22* +
Now22+ .
;22. /
await33 
_animalRepository33 '
.33' (
	SaveAsync33( 1
(331 2
)332 3
;333 4
}44 
}55 	
}66 
}77 π)
ZC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\KeepingService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
KeepingService 
:  !
IKeepingService" 1
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IRepository $
<$ %
Keeping% ,
>, -
_keepingRepository. @
;@ A
private 
readonly 
IRepository $
<$ %
AnimalKeeping% 2
>2 3$
_animalKeepingRepository4 L
;L M
public 
KeepingService 
( 
IMapper %
mapper& ,
,, -
IRepository. 9
<9 :
Keeping: A
>A B
keepingRepositoryC T
,T U
IRepositoryV a
<a b
AnimalKeepingb o
>o p$
animalKeepingRepository	q à
)
à â
{ 	
_keepingRepository 
=  
keepingRepository! 2
;2 3
_mapper 
= 
mapper 
; $
_animalKeepingRepository $
=% &#
animalKeepingRepository' >
;> ?
} 	
public 
async 
Task $
CreateAnimalWithKeepings 2
(2 3 
AnimalForCreationDto3 G
animalH N
,N O
AnimalP V
modelW \
)\ ]
{ 	
if 
( 
animal 
. 
Keepings 
==  "
null# '
)' (
animal 
. 
Keepings 
=  !
new" %
HashSet& -
<- .

KeepingDto. 8
>8 9
(9 :
): ;
;; <$
_animalKeepingRepository $
.$ %
TryCreateManyToMany% 8
(8 9
animal9 ?
.? @
Keepings@ H
.H I
SelectI O
(O P
xP Q
=>R T
xU V
.V W
IdW Y
)Y Z
. 
Select "
(" #
x# $
=>% '
new( +
AnimalKeeping, 9
{   
	KeepingId!! (
=!!) *
x!!+ ,
,!!, -
AnimalId"" '
=""( )
model""* /
.""/ 0
Id""0 2
,""2 3
}## 
)## 
)## 
;## 
await$$ $
_animalKeepingRepository$$ *
.$$* +
	SaveAsync$$+ 4
($$4 5
)$$5 6
;$$6 7
}%% 	
public'' 
async'' 
Task'' 
<'' 
IEnumerable'' %
<''% &

KeepingDto''& 0
>''0 1
>''1 2
GetAll''3 9
(''9 :
)'': ;
{(( 	
var)) 
keepings)) 
=)) 
await))  
_keepingRepository))! 3
.))3 4
GetAllAsync))4 ?
())? @
)))@ A
;))A B
var** 
keepingsDto** 
=** 
keepings** &
.**& '
Select**' -
(**- .
a**. /
=>**0 2
_mapper**3 :
.**: ;
Map**; >
<**> ?

KeepingDto**? I
>**I J
(**J K
a**K L
)**L M
)**M N
;**N O
return++ 
keepingsDto++ 
;++ 
},, 	
public.. 
async.. 
Task.. $
UpdateAnimalWithKeepings.. 2
(..2 3
	AnimalDto..3 <
animal..= C
,..C D
Animal..E K
model..L Q
)..Q R
{// 	
if00 
(00 
animal00 
.00 
Keepings00 
==00  "
null00# '
)00' (
animal11 
.11 
Keepings11 
=11  !
new11" %
HashSet11& -
<11- .

KeepingDto11. 8
>118 9
(119 :
)11: ;
;11; <$
_animalKeepingRepository33 $
.33$ %
TryUpdateManyToMany33% 8
(338 9
model339 >
.33> ?
AnimalKeepings33? M
,33M N
animal33O U
.33U V
Keepings33V ^
.33^ _
Select33_ e
(33e f
x33f g
=>33h j
x33k l
.33l m
Id33m o
)33o p
.44 
Select44 
(44 
x44 
=>44 
new44  
AnimalKeeping44! .
{55 
	KeepingId66 
=66 
x66  !
,66! "
AnimalId77 
=77 
animal77 %
.77% &
Id77& (
,77( )
}88 
)88 
,88 
x88 
=>88 
x88 
.88 
	KeepingId88 $
)88$ %
;88% &
await99 $
_animalKeepingRepository99 *
.99* +
	SaveAsync99+ 4
(994 5
)995 6
;996 7
}:: 	
};; 
}<< Ìe
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\MainAdminService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
MainAdminService !
:" #
IMainAdminService$ 5
{ 
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
IMapper  
_mapper! (
;( )
public 
MainAdminService 
(  
UserManager  +
<+ ,
User, 0
>0 1
userManager2 =
,= >
IMapper? F
mapperG M
)M N
{ 	
_userManager 
= 
userManager &
;& '
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 

DeleteUser $
($ %
string% +
id, .
). /
{ 	#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
id2 4
,4 5
nameof6 <
(< =
id= ?
)? @
)@ A
;A B
var   
admin   
=   
await   
_userManager   *
.  * +
FindByIdAsync  + 8
(  8 9
id  9 ;
)  ; <
;  < =
if"" 
("" 
admin"" 
=="" 
null"" 
)"" 
throw## 
new## #
ObjectNotFoundException## 1
(##1 2
ExceptionStrings##2 B
.##B C!
UserNotFoundException##C X
,##X Y
id##Z \
)##\ ]
;##] ^
var%% 
deleteAdminResult%% !
=%%" #
await%%$ )
_userManager%%* 6
.%%6 7
DeleteAsync%%7 B
(%%B C
admin%%C H
)%%H I
;%%I J
if'' 
('' 
!'' 
deleteAdminResult'' "
.''" #
	Succeeded''# ,
)'', -
throw(( 
new(( !
ObjectDeleteException(( 3
(((3 4
ExceptionStrings((4 D
.((D E
UserDeleteException((E X
,((X Y
id((Z \
)((\ ]
;((] ^
})) 	
public++ 
IEnumerable++ 
<++  
UserIncludeValuesDto++ /
>++/ 0
GetUsers++1 9
(++9 :
)++: ;
{,, 	
var-- 
users-- 
=--  
GetUsersWithIncludes-- ,
(--, -
)--- .
;--. /
var// 
usersResult// 
=// 
users// #
.//# $
Select//$ *
(//* +
u//+ ,
=>//- /
_mapper//0 7
.//7 8
Map//8 ;
<//; < 
UserIncludeValuesDto//< P
>//P Q
(//Q R
u//R S
)//S T
)//T U
;//U V
return00 
usersResult00 
.00 
AsEnumerable00 +
(00+ ,
)00, -
;00- .
}11 	
public33 
async33 
Task33 
<33 
IEnumerable33 %
<33% & 
UserIncludeValuesDto33& :
>33: ;
>33; <
GetUsersInRole33= K
(33K L
string33L R
role33S W
)33W X
{44 	#
StringArgumentValidator55 #
.55# $
IsNullOrEmpty55$ 1
(551 2
role552 6
,556 7
nameof558 >
(55> ?
role55? C
)55C D
)55D E
;55E F
var77 
formatedRole77 
=77 
role77 #
.77# $-
!ToLowerCaseWithFirstLetterInUpper77$ E
(77E F
)77F G
;77G H
if99 
(99 
!99 
Roles99 
.99 
RoleStrings99 "
.99" #
Contains99# +
(99+ ,
formatedRole99, 8
)998 9
)999 :
throw:: 
new:: 
RoleException:: '
(::' (
ExceptionStrings::( 8
.::8 9!
RoleNotFoundException::9 N
,::N O
formatedRole::P \
)::\ ]
;::] ^
var<< 
usersInRole<< 
=<< 
await<< #
_userManager<<$ 0
.<<0 1
GetUsersInRoleAsync<<1 D
(<<D E
formatedRole<<E Q
)<<Q R
;<<R S
var>> 
users>> 
=>>  
GetUsersWithIncludes>> ,
(>>, -
)>>- .
.>>. /
AsEnumerable>>/ ;
(>>; <
)>>< =
.??. /
Where??/ 4
(??4 5
user??5 9
=>??: <
usersInRole??= H
.??H I
Contains??I Q
(??Q R
user??R V
)??V W
)??W X
.@@. /
Select@@/ 5
(@@5 6
prop@@6 :
=>@@; =
_mapper@@> E
.@@E F
Map@@F I
<@@I J 
UserIncludeValuesDto@@J ^
>@@^ _
(@@_ `
prop@@` d
)@@d e
)@@e f
;@@f g
returnBB 
usersBB 
;BB 
}CC 	
publicEE 
IEnumerableEE 
<EE  
UserIncludeValuesDtoEE /
>EE/ 0
GetUsersByNameEE1 ?
(EE? @
stringEE@ F
nameEEG K
)EEK L
{FF 	#
StringArgumentValidatorGG #
.GG# $
IsNullOrEmptyGG$ 1
(GG1 2
nameGG2 6
,GG6 7
nameofGG8 >
(GG> ?
nameGG? C
)GGC D
)GGD E
;GGE F
returnII  
GetUsersWithIncludesII '
(II' (
)II( )
.II) *
WhereII* /
(II/ 0
userII0 4
=>II5 7
userII8 <
.II< =
FullNameII= E
.IIE F
ToLowerIIF M
(IIM N
)IIN O
.IIO P
ContainsIIP X
(IIX Y
nameIIY ]
.II] ^
ToLowerII^ e
(IIe f
)IIf g
)IIg h
)IIh i
.JJ) *
SelectJJ* 0
(JJ0 1
propJJ1 5
=>JJ6 8
_mapperJJ9 @
.JJ@ A
MapJJA D
<JJD E 
UserIncludeValuesDtoJJE Y
>JJY Z
(JJZ [
propJJ[ _
)JJ_ `
)JJ` a
.KK) *
AsEnumerableKK* 6
(KK6 7
)KK7 8
;KK8 9
}LL 	
publicNN 
IEnumerableNN 
<NN  
UserIncludeValuesDtoNN /
>NN/ 0
GetUsersByLocationNN1 C
(NNC D
longNND H

locationIdNNI S
)NNS T
{OO 	
ifPP 
(PP 

locationIdPP 
<PP 
$numPP 
)PP 
throwQQ 
newQQ 
ArgumentExceptionQQ +
(QQ+ ,
ExceptionStringsQQ, <
.QQ< =)
NegativeIntegerValueExceptionQQ= Z
,QQZ [
nameofQQ\ b
(QQb c

locationIdQQc m
)QQm n
)QQn o
;QQo p
returnSS  
GetUsersWithIncludesSS '
(SS' (
)SS( )
.SS) *
WhereSS* /
(SS/ 0
userSS0 4
=>SS5 7
userSS8 <
.SS< =
	AddressIdSS= F
==SSG I

locationIdSSJ T
)SST U
.TT) *
SelectTT* 0
(TT0 1
propTT1 5
=>TT6 8
_mapperTT9 @
.TT@ A
MapTTA D
<TTD E 
UserIncludeValuesDtoTTE Y
>TTY Z
(TTZ [
propTT[ _
)TT_ `
)TT` a
.UU) *
AsEnumerableUU* 6
(UU6 7
)UU7 8
;UU8 9
}VV 	
publicXX  
UserIncludeValuesDtoXX #
GetUserByEmailXX$ 2
(XX2 3
stringXX3 9
emailXX: ?
)XX? @
{YY 	#
StringArgumentValidatorZZ #
.ZZ# $
IsNullOrEmptyZZ$ 1
(ZZ1 2
emailZZ2 7
,ZZ7 8
nameofZZ9 ?
(ZZ? @
emailZZ@ E
)ZZE F
)ZZF G
;ZZG H
var\\ "
userWithSpecifiedEmail\\ &
=\\' ( 
GetUsersWithIncludes\\) =
(\\= >
)\\> ?
.\\? @
FirstOrDefault\\@ N
(\\N O
user\\O S
=>\\T V
user\\W [
.\\[ \
Email\\\ a
.\\a b
ToLower\\b i
(\\i j
)\\j k
.\\k l
Equals\\l r
(\\r s
email\\s x
.\\x y
ToLower	\\y Ä
(
\\Ä Å
)
\\Å Ç
)
\\Ç É
)
\\É Ñ
;
\\Ñ Ö
if^^ 
(^^ "
userWithSpecifiedEmail^^ &
==^^' )
null^^* .
)^^. /
throw__ 
new__ #
ObjectNotFoundException__ 1
(__1 2
ExceptionStrings__2 B
.__B C!
UserNotFoundException__C X
,__X Y
email__Z _
)___ `
;__` a
returnaa 
_mapperaa 
.aa 
Mapaa 
<aa  
UserIncludeValuesDtoaa 3
>aa3 4
(aa4 5"
userWithSpecifiedEmailaa5 K
)aaK L
;aaL M
}bb 	
publicdd  
UserIncludeValuesDtodd # 
GetUserByPhoneNumberdd$ 8
(dd8 9
stringdd9 ?
phoneNumberdd@ K
)ddK L
{ee 	#
StringArgumentValidatorff #
.ff# $
IsNullOrEmptyff$ 1
(ff1 2
phoneNumberff2 =
,ff= >
nameofff? E
(ffE F
phoneNumberffF Q
)ffQ R
)ffR S
;ffS T
varhh (
userWithSpecifiedPhoneNumberhh ,
=hh- . 
GetUsersWithIncludeshh/ C
(hhC D
)hhD E
.hhE F
FirstOrDefaulthhF T
(hhT U
userhhU Y
=>hhZ \
userhh] a
.hha b
PhoneNumberhhb m
.hhm n
Equalshhn t
(hht u
phoneNumber	hhu Ä
)
hhÄ Å
)
hhÅ Ç
;
hhÇ É
ifjj 
(jj (
userWithSpecifiedPhoneNumberjj ,
==jj- /
nulljj0 4
)jj4 5
throwkk 
newkk #
ObjectNotFoundExceptionkk 1
(kk1 2
ExceptionStringskk2 B
.kkB C!
UserNotFoundExceptionkkC X
,kkX Y
phoneNumberkkZ e
)kke f
;kkf g
returnmm 
_mappermm 
.mm 
Mapmm 
<mm  
UserIncludeValuesDtomm 3
>mm3 4
(mm4 5(
userWithSpecifiedPhoneNumbermm5 Q
)mmQ R
;mmR S
}nn 	
privatepp 

IQueryablepp 
<pp 
Userpp 
>pp   
GetUsersWithIncludespp! 5
(pp5 6
)pp6 7
{qq 	
returnrr 
_userManagerrr 
.rr  
Usersrr  %
.rr% &
Includerr& -
(rr- .
urr. /
=>rr0 2
urr3 4
.rr4 5
Addressrr5 <
)rr< =
.ss 
Includess 
(ss 
uss 
=>ss 
uss 
.ss  
	UserHelpsss  )
)ss) *
.ss* +
ThenIncludess+ 6
(ss6 7
uss7 8
=>ss9 ;
uss< =
.ss= >
Helpss> B
)ssB C
.tt 
Includett 
(tt 
utt 
=>tt 
utt 
.tt  
AdoptOrderstt  +
)tt+ ,
.tt, -
ThenIncludett- 8
(tt8 9
utt9 :
=>tt; =
utt> ?
.tt? @
Animaltt@ F
)ttF G
.uu 
Includeuu 
(uu 
uuu 
=>uu 
uuu 
.uu  

BookOrdersuu  *
)uu* +
.uu+ ,
ThenIncludeuu, 7
(uu7 8
uuu8 9
=>uu: <
uuu= >
.uu> ?
Animaluu? E
)uuE F
.vv 
Includevv 
(vv 
uvv 
=>vv 
uvv 
.vv  
Articlesvv  (
)vv( )
.vv) *
ThenIncludevv* 5
(vv5 6
uvv6 7
=>vv8 :
uvv; <
.vv< =
ArticleTagsvv= H
)vvH I
.vvI J
ThenIncludevvJ U
(vvU V
uvvV W
=>vvX Z
uvv[ \
.vv\ ]
Tagvv] `
)vv` a
.ww 
Includeww 
(ww 
uww 
=>ww 
uww 
.ww  
Articlesww  (
)ww( )
.ww) *
ThenIncludeww* 5
(ww5 6
uww6 7
=>ww8 :
uww; <
.ww< =
Imagesww= C
)wwC D
.xx 
AsNoTrackingxx 
(xx 
)xx 
;xx  
}yy 	
}zz 
}{{ µ(
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\NeedsService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
NeedsService 
: 
INeedsService  -
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IRepository $
<$ %
Needs% *
>* +
_needsRepository, <
;< =
private 
readonly 
IRepository $
<$ %
AnimalNeeds% 0
>0 1"
_animalNeedsRepository2 H
;H I
public 
NeedsService 
( 
IMapper #
mapper$ *
,* +
IRepository, 7
<7 8
AnimalNeeds8 C
>C D!
animalNeedsRepositoryE Z
,Z [
IRepository\ g
<g h
Needsh m
>m n
needsRepositoryo ~
)~ 
{ 	
_mapper 
= 
mapper 
; 
_needsRepository 
= 
needsRepository .
;. /"
_animalNeedsRepository "
=# $!
animalNeedsRepository% :
;: ;
} 	
public 
async 
Task !
CreateAnimalWithNeeds /
(/ 0 
AnimalForCreationDto0 D
animalE K
,K L
AnimalM S
modelT Y
)Y Z
{ 	
if 
( 
animal 
. 
Needs 
== 
null  $
)$ %
animal 
. 
Needs 
= 
new "
HashSet# *
<* +
NeedsDto+ 3
>3 4
(4 5
)5 6
;6 7"
_animalNeedsRepository "
." #
TryCreateManyToMany# 6
(6 7
animal7 =
.= >
Needs> C
.C D
SelectD J
(J K
xK L
=>M O
xP Q
.Q R
IdR T
)T U
. 
Select 
( 
x 
=> 
new  
AnimalNeeds! ,
{   
NeedsId!! 
=!! 
x!! 
,!!  
AnimalId"" 
="" 
model"" $
.""$ %
Id""% '
}## 
)## 
)## 
;## 
await$$ "
_animalNeedsRepository$$ (
.$$( )
	SaveAsync$$) 2
($$2 3
)$$3 4
;$$4 5
}%% 	
public'' 
async'' 
Task'' 
<'' 
IEnumerable'' %
<''% &
NeedsDto''& .
>''. /
>''/ 0
GetAll''1 7
(''7 8
)''8 9
{(( 	
var)) 
needs)) 
=)) 
await)) 
_needsRepository)) .
.)). /
GetAllAsync))/ :
()): ;
))); <
;))< =
var** 
needsDto** 
=** 
needs**  
.**  !
Select**! '
(**' (
a**( )
=>*** ,
_mapper**- 4
.**4 5
Map**5 8
<**8 9
NeedsDto**9 A
>**A B
(**B C
a**C D
)**D E
)**E F
;**F G
return++ 
needsDto++ 
;++ 
},, 	
public.. 
async.. 
Task.. !
UpdateAnimalWithNeeds.. /
(../ 0
	AnimalDto..0 9
animal..: @
,..@ A
Animal..B H
model..I N
)..N O
{// 	
if00 
(00 
animal00 
.00 
Needs00 
==00 
null00  $
)00$ %
animal11 
.11 
Needs11 
=11 
new11 "
HashSet11# *
<11* +
NeedsDto11+ 3
>113 4
(114 5
)115 6
;116 7"
_animalNeedsRepository33 "
.33" #
TryUpdateManyToMany33# 6
(336 7
model337 <
.33< =
AnimalNeeds33= H
,33H I
animal33J P
.33P Q
Needs33Q V
.33V W
Select33W ]
(33] ^
x33^ _
=>33` b
x33c d
.33d e
Id33e g
)33g h
.44 
Select44 
(44 
x44 
=>44 
new44  
AnimalNeeds44! ,
{55 
NeedsId66 
=66 
x66 
,66  
AnimalId77 
=77 
animal77 %
.77% &
Id77& (
}88 
)88 
,88 
x88 
=>88 
x88 
.88 
NeedsId88 "
)88" #
;88# $
await99 "
_animalNeedsRepository99 (
.99( )
	SaveAsync99) 2
(992 3
)993 4
;994 5
}:: 	
};; 
}<< Ÿ1
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\OrderService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
OrderService 
: 
IOrderService  -
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IRepository $
<$ %

AdoptOrder% /
>/ 0
_adopt1 7
;7 8
private 
readonly 
IRepository $
<$ %
	BookOrder% .
>. /
_book0 5
;5 6
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animal- 4
;4 5
private 
readonly 
ICurrentUserService ,
_user- 2
;2 3
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
public 
OrderService 
( 
IMapper #
mapper$ *
,* +
IRepository '
<' (

AdoptOrder( 2
>2 3
adopt4 9
,9 :
IRepository '
<' (
	BookOrder( 1
>1 2
book3 7
,7 8
IRepository '
<' (
Animal( .
>. /
animal0 6
,6 7
ICurrentUserService /
user0 4
,4 5
UserManager '
<' (
User( ,
>, -
userManager. 9
)9 :
{ 	
_mapper   
=   
mapper   
;   
_adopt!! 
=!! 
adopt!! 
;!! 
_book"" 
="" 
book"" 
;"" 
_animal## 
=## 
animal## 
;## 
_user$$ 
=$$ 
user$$ 
;$$ 
_userManager%% 
=%% 
userManager%% &
;%%& '
}&& 	
public(( 
async(( 
Task(( 
CreateAdoptOrder(( *
(((* +
OrderForCreationDto((+ >
order((? D
)((D E
{)) 	
var++ 
animal++ 
=++ 
_animal++  
.++  !
Entities++! )
.++) *
FirstOrDefault++* 8
(++8 9
x++9 :
=>++; =
x++> ?
.++? @
Id++@ B
==++C E
order++F K
.++K L
AnimalId++L T
)++T U
;++U V
if,, 
(,, 
AnimalStatus,, 
.,, 
None,, !
!=,," $
animal,,% +
.,,+ ,
Status,,, 2
),,2 3
{-- 
throw.. 
new.. 
ObjectException.. )
(..) *
nameof..* 0
(..0 1
order..1 6
...6 7
AnimalId..7 ?
)..? @
,..@ A
$str..B _
).._ `
;..` a
}// 
var11 
model11 
=11 
new11 

AdoptOrder11 &
(11& '
)11' (
;11( )
_mapper22 
.22 
Map22 
(22 
order22 
,22 
model22 $
)22$ %
;22% &
var33 
currentUser33 
=33 
await33 #
_userManager33$ 0
.330 1
FindByEmailAsync331 A
(33A B
_user33B G
.33G H
	UserEmail33H Q
)33Q R
;33R S
model44 
.44 
UserId44 
=44 
currentUser44 &
.44& '
Id44' )
;44) *
model55 
.55 
ClosingDate55 
=55 
new55  #
DateTime55$ ,
(55, -
)55- .
;55. /
await66 
_adopt66 
.66 
AddAsync66 !
(66! "
model66" '
)66' (
;66( )
}77 	
public99 
async99 
Task99 
CreateBookOrder99 )
(99) *
OrderForCreationDto99* =
order99> C
)99C D
{:: 	
var<< 
animal<< 
=<< 
_animal<<  
.<<  !
Entities<<! )
.<<) *
FirstOrDefault<<* 8
(<<8 9
x<<9 :
=><<; =
x<<> ?
.<<? @
Id<<@ B
==<<C E
order<<F K
.<<K L
AnimalId<<L T
)<<T U
;<<U V
if== 
(== 
AnimalStatus== 
.== 
None== !
!===" $
animal==% +
.==+ ,
Status==, 2
)==2 3
{>> 
throw?? 
new?? 
ObjectException?? )
(??) *
nameof??* 0
(??0 1
order??1 6
.??6 7
AnimalId??7 ?
)??? @
,??@ A
$str??B _
)??_ `
;??` a
}@@ 
varBB 
modelBB 
=BB 
newBB 
	BookOrderBB %
(BB% &
)BB& '
;BB' (
_mapperCC 
.CC 
MapCC 
(CC 
orderCC 
,CC 
modelCC $
)CC$ %
;CC% &
varDD 
currentUserDD 
=DD 
awaitDD $
_userManagerDD% 1
.DD1 2
FindByEmailAsyncDD2 B
(DDB C
_userDDC H
.DDH I
	UserEmailDDI R
)DDR S
;DDS T
modelEE 
.EE 
UserIdEE 
=EE 
currentUserEE &
.EE& '
IdEE' )
;EE) *
modelFF 
.FF 
ClosingDateFF 
=FF 
newFF  #
DateTimeFF$ ,
(FF, -
)FF- .
;FF. /
modelGG 
.GG 

EndingDateGG 
=GG 
newGG "
DateTimeGG# +
(GG+ ,
)GG, -
;GG- .
awaitII 
_bookII 
.II 
AddAsyncII  
(II  !
modelII! &
)II& '
;II' (
}JJ 	
}KK 
}LL ¥f
]C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\ProcessingService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
ProcessingService "
:# $
IProcessingService% 7
{ 
private 
readonly 
IRepository $
<$ %

Processing% /
>/ 0!
_processingRepository1 F
;F G
private 
readonly 
IRepository $
<$ %
AnimalProcessing% 5
>5 6'
_animalProcessingRepository7 R
;R S
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IMapper  
_mapper! (
;( )
public 
ProcessingService  
(  !
IRepository! ,
<, -

Processing- 7
>7 8 
processingRepository9 M
,M N
IRepository 
< 
AnimalProcessing (
>( )&
animalProcessingRepository* D
,D E
IMapperF M
mapperN T
,T U
IConfiguration 
configuration (
)( )
{ 	
_mapper 
= 
mapper 
; 
_configuration 
= 
configuration *
;* +!
_processingRepository !
=" # 
processingRepository$ 8
;8 9'
_animalProcessingRepository '
=( )&
animalProcessingRepository* D
;D E
} 	
public 
async 
Task &
CreateAnimalWithProcessing 4
(4 5 
AnimalForCreationDto5 I
animalJ P
,P Q
AnimalR X
modelY ^
)^ _
{   	
if!! 
(!! 
animal!! 
.!! 
Processings!! "
==!!# %
null!!& *
)!!* +
animal"" 
."" 
Processings"" "
=""# $
new""% (
HashSet"") 0
<""0 1
ProcessingDto""1 >
>""> ?
(""? @
)""@ A
;""A B'
_animalProcessingRepository$$ '
.$$' (
TryCreateManyToMany$$( ;
($$; <
animal$$< B
.$$B C
Processings$$C N
.%% 
Select%% 
(%% 
x%% 
=>%% 
new%%  
AnimalProcessing%%! 1
{&& 
ProcessingId''  
=''! "
x''# $
.''$ %
Id''% '
,''' (
AnimalId(( 
=(( 
model(( $
.(($ %
Id((% '
,((' (
ProcessingDate)) "
=))# $
x))% &
.))& '
ProcessingDate))' 5
,))5 6
NextProcessingDate** &
=**' (
x**) *
.*** +
IsRepeat**+ 3
?**4 5*
GetNextProcessingDateForCreate**6 T
(**T U!
_processingRepository**U j
.**j k
Find**k o
(**o p
p**p q
=>**r t
p**u v
.**v w
Id**w y
==**z |
x**} ~
.**~ 
Id	** Å
)
**Å Ç
.
**Ç É
FirstOrDefault
**É ë
(
**ë í
)
**í ì
.
**ì î
Type
**î ò
,++ 
x++ 
.++ 
ProcessingDate++ &
,++& '
x++( )
.++) *
NextProcessingDate++* <
)++< =
:++> ?
DateTime++@ H
.++H I
MinValue++I Q
,++Q R
IsRepeat,, 
=,, 
x,,  
.,,  !
IsRepeat,,! )
}-- 
)-- 
)-- 
;-- 
await.. '
_animalProcessingRepository.. -
...- .
	SaveAsync... 7
(..7 8
)..8 9
;..9 :
}// 	
public11 
async11 
Task11 
<11 
IEnumerable11 %
<11% &
ProcessingDto11& 3
>113 4
>114 5
GetAll116 <
(11< =
)11= >
{22 	
var33 
processings33 
=33 
await33 #!
_processingRepository33$ 9
.339 :
GetAllAsync33: E
(33E F
)33F G
;33G H
var44 
processingsDto44 
=44  
processings44! ,
.44, -
Select44- 3
(443 4
a444 5
=>446 8
_mapper449 @
.44@ A
Map44A D
<44D E
ProcessingDto44E R
>44R S
(44S T
a44T U
)44U V
)44V W
;44W X
return55 
processingsDto55 !
;55! "
}66 	
public88 
async88 
Task88 &
UpdateAnimalWithProcessing88 4
(884 5
	AnimalDto885 >
animal88? E
,88E F
Animal88G M
model88N S
)88S T
{99 	
if:: 
(:: 
animal:: 
.:: 
Processings:: "
==::# %
null::& *
)::* +
animal;; 
.;; 
Processings;; "
=;;# $
new;;% (
HashSet;;) 0
<;;0 1
ProcessingDto;;1 >
>;;> ?
(;;? @
);;@ A
;;;A B'
_animalProcessingRepository== '
.==' (
TryUpdateManyToMany==( ;
(==; <
model==< A
.==A B
AnimalProcessings==B S
,==S T
animal==U [
.==[ \
Processings==\ g
.>> 
Select>> 
(>> 
x>> 
=>>> 
new>>  
AnimalProcessing>>! 1
{?? 
ProcessingId@@  
=@@! "
x@@# $
.@@$ %
Id@@% '
,@@' (
AnimalIdAA 
=AA 
animalAA %
.AA% &
IdAA& (
,AA( )
ProcessingDateBB "
=BB# $
xBB% &
.BB& '
ProcessingDateBB' 5
,BB5 6
NextProcessingDateCC &
=CC' (
xCC) *
.CC* +
IsRepeatCC+ 3
?CC4 5*
GetNextProcessingDateForUpdateCC6 T
(CCT U!
_processingRepositoryCCU j
.CCj k
FindCCk o
(CCo p
pCCp q
=>CCr t
pCCu v
.CCv w
IdCCw y
==CCz |
xCC} ~
.CC~ 
Id	CC Å
)
CCÅ Ç
.
CCÇ É
FirstOrDefault
CCÉ ë
(
CCë í
)
CCí ì
.
CCì î
Type
CCî ò
,DD 
xDD 
.DD 
ProcessingDateDD %
)DD% &
:DD' (
DateTimeDD) 1
.DD1 2
MinValueDD2 :
,DD: ;
IsRepeatEE 
=EE 
xEE  
.EE  !
IsRepeatEE! )
}FF 
)FF 
,FF 
xFF 
=>FF 
xFF 
.FF 
ProcessingIdFF '
,FF' (
xFF) *
=>FF+ -
xFF. /
.FF/ 0
ProcessingDateFF0 >
,FF> ?
xFF@ A
=>FFB D
xFFE F
.FFF G
NextProcessingDateFFG Y
)FFY Z
;FFZ [
awaitGG '
_animalProcessingRepositoryGG -
.GG- .
	SaveAsyncGG. 7
(GG7 8
)GG8 9
;GG9 :
}HH 	
privateJJ 
DateTimeJJ *
GetNextProcessingDateForCreateJJ 7
(JJ7 8
stringJJ8 >
processingTypeJJ? M
,JJM N
DateTimeJJO W
processingDateJJX f
,KKD E
DateTimeKKF N
nextProcessingDateKKO a
)KKa b
{LL 	
DateTimeMM !
newNextProcessingDateMM *
=MM+ ,
newMM- 0
DateTimeMM1 9
(MM9 :
)MM: ;
;MM; <
ifOO 
(OO 
processingTypeOO 
==OO  
$strOO! F
)OOF G
{PP !
newNextProcessingDateQQ %
=QQ& '
processingDateQQ( 6
;QQ6 7
whileRR 
(RR 
DateTimeRR 
.RR  
NowRR  #
>RR$ %
processingDateRR& 4
&&RR5 7
DateTimeRR8 @
.RR@ A
NowRRA D
>RRE F!
newNextProcessingDateRRG \
)RR\ ]
{RR^ _!
newNextProcessingDateSS )
=SS* +!
newNextProcessingDateSS, A
.SSA B
AddDaysSSB I
(SSI J
intSSJ M
.SSM N
ParseSSN S
(SSS T
_configurationSST b
[SSb c
$str	SSc î
]
SSî ï
)
SSï ñ
)
SSñ ó
;
SSó ò
}TT 
}UU 
elseUU 
ifUU 
(UU 
processingTypeUU #
==UU$ &
$strUU' >
)UU> ?
{VV !
newNextProcessingDateWW %
=WW& '
processingDateWW( 6
;WW6 7
whileXX 
(XX 
DateTimeXX 
.XX  
NowXX  #
>XX$ %
processingDateXX& 4
&&XX5 7
DateTimeXX8 @
.XX@ A
NowXXA D
>XXE F!
newNextProcessingDateXXG \
)XX\ ]
{YY 
ifZZ 
(ZZ 
nextProcessingDateZZ *
==ZZ+ -
DateTimeZZ. 6
.ZZ6 7
MinValueZZ7 ?
)ZZ? @
{[[ !
newNextProcessingDate\\ -
=\\. /!
newNextProcessingDate\\0 E
.\\E F
AddDays\\F M
(\\M N
int\\N Q
.\\Q R
Parse\\R W
(\\W X
_configuration\\X f
[\\f g
$str	\\g ê
]
\\ê ë
)
\\ë í
)
\\í ì
;
\\ì î
continue]]  
;]]  !
}^^ !
newNextProcessingDate__ )
=__* +!
newNextProcessingDate__, A
.__A B
AddDays__B I
(__I J
int__J M
.__M N
Parse__N S
(__S T
_configuration__T b
[__b c
$str	__c á
]
__á à
)
__à â
)
__â ä
;
__ä ã
}`` 
}aa 
returncc !
newNextProcessingDatecc (
;cc( )
}dd 	
privateff 
DateTimeff *
GetNextProcessingDateForUpdateff 7
(ff7 8
stringff8 >
processingTypeff? M
,ffM N
DateTimeffO W
processingDateffX f
)fff g
{gg 	
DateTimehh !
newNextProcessingDatehh *
=hh+ ,
newhh- 0
DateTimehh1 9
(hh9 :
)hh: ;
;hh; <
ifjj 
(jj 
processingTypejj 
==jj !
$strjj" G
)jjG H
{kk 
whilell 
(ll 
DateTimell 
.ll  
Nowll  #
>ll$ %
processingDatell& 4
&&ll5 7
DateTimell8 @
.ll@ A
NowllA D
>llE F!
newNextProcessingDatellG \
)ll\ ]
{mm !
newNextProcessingDatenn )
=nn* +
processingDatenn, :
.nn: ;
AddDaysnn; B
(nnB C
intnnC F
.nnF G
ParsennG L
(nnL M
_configurationnnM [
[nn[ \
$str	nn\ ç
]
nnç é
)
nné è
)
nnè ê
;
nnê ë
}oo 
}pp 
elseqq 
ifqq 
(qq 
processingTypeqq #
==qq$ &
$strqq' >
)qq> ?
{rr 
boolss 
firstProccesingss $
=ss% &
truess' +
;ss+ ,
whilett 
(tt 
DateTimett 
.tt  
Nowtt  #
>tt$ %
processingDatett& 4
&&tt5 7
DateTimett8 @
.tt@ A
NowttA D
>ttE F!
newNextProcessingDatettG \
)tt\ ]
{uu 
ifvv 
(vv 
firstProccesingvv '
)vv' (
{ww !
newNextProcessingDatexx -
=xx. /
processingDatexx0 >
.xx> ?
AddDaysxx? F
(xxF G
intxxG J
.xxJ K
ParsexxK P
(xxP Q
_configurationxxQ _
[xx_ `
$str	xx` â
]
xxâ ä
)
xxä ã
)
xxã å
;
xxå ç
firstProccesingyy '
=yy( )
falseyy* /
;yy/ 0
continuezz  
;zz  !
}{{ !
newNextProcessingDate|| )
=||* +
processingDate||, :
.||: ;
AddDays||; B
(||B C
int||C F
.||F G
Parse||G L
(||L M
_configuration||M [
[||[ \
$str	||\ Ä
]
||Ä Å
)
||Å Ç
)
||Ç É
;
||É Ñ
}}} 
}~~ 
return
ÄÄ #
newNextProcessingDate
ÄÄ (
;
ÄÄ( )
}
ÅÅ 	
}
ÇÇ 
}ÉÉ â$
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\RoleService.cs
	namespace

 	
Application


 
.

 
Services

 
{ 
public 

class 
RoleService 
: 
IRoleService *
{ 
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
RoleService 
( 
UserManager &
<& '
User' +
>+ ,
userManager- 8
,8 9
IConfiguration: H
configurationI V
)V W
{ 	
_userManager 
= 
userManager &
;& '
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
PromoteToRole '
(' (
UserRoleDto( 3
userRole4 <
)< =
{ 	
var 
admin 
= 
await 
_userManager *
.* +
FindByEmailAsync+ ;
(; <
userRole< D
.D E
EmailE J
.J K
ToUpperK R
(R S
)S T
)T U
;U V
if 
( 
admin 
!= 
null 
) 
{ 
var 
assignToRoleResult &
=' (
await) .
_userManager/ ;
.; <
AddToRoleAsync< J
(J K
adminK P
,P Q
userRoleR Z
.Z [
Role[ _
)_ `
;` a
if 
( 
! 
assignToRoleResult '
.' (
	Succeeded( 1
)1 2
{ 
throw   
new   
RoleException   +
(  + ,
ExceptionStrings  , <
.  < = 
RolePromoteException  = Q
,  Q R
userRole  S [
.  [ \
Email  \ a
,  a b
userRole  c k
.  k l
Role  l p
)  p q
;  q r
}!! 
}"" 
throw## 
new## #
ObjectNotFoundException## -
(##- .
ExceptionStrings##. >
.##> ?!
UserNotFoundException##? T
,##T U
userRole##V ^
.##^ _
Email##_ d
)##d e
;##e f
}$$ 	
public&& 
async&& 
Task&& 
DemoteFromRole&& (
(&&( )
UserRoleDto&&) 4
userRole&&5 =
)&&= >
{'' 	
var(( 
admin(( 
=(( 
await(( 
_userManager(( *
.((* +
FindByEmailAsync((+ ;
(((; <
userRole((< D
.((D E
Email((E J
.((J K
ToUpper((K R
(((R S
)((S T
)((T U
;((U V
if** 
(** 
admin** 
!=** 
null** 
&&**  
!**! "
admin**" '
.**' (
Email**( -
.**- .
Equals**. 4
(**4 5
_configuration**5 C
[**C D
$str**D T
]**T U
)**U V
)**V W
{++ 
var,, 
unassignRoleResult,, &
=,,' (
await,,) .
_userManager,,/ ;
.,,; <
RemoveFromRoleAsync,,< O
(,,O P
admin,,P U
,,,U V
userRole,,W _
.,,_ `
Role,,` d
),,d e
;,,e f
if-- 
(-- 
!-- 
unassignRoleResult-- '
.--' (
	Succeeded--( 1
)--1 2
{.. 
throw// 
new// 
RoleException// +
(//+ ,
ExceptionStrings//, <
.//< =
RoleDemoteException//= P
,//P Q
userRole//R Z
.//Z [
Email//[ `
,//` a
userRole//b j
.//j k
Role//k o
)//o p
;//p q
}00 
}11 
throw22 
new22 #
ObjectNotFoundException22 -
(22- .
ExceptionStrings22. >
.22> ?!
UserNotFoundException22? T
,22T U
userRole22V ^
.22^ _
Email22_ d
)22d e
;22e f
}33 	
}44 
}55 ô

XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\SatusService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
StatusService 
:  
IStatusService! /
{ 
public

 
StatusService

 
(

 
)

 
{

 
}

  
public 
Array  
GetAllAnimalStatuses )
() *
)* +
{ 	
var 
animalStatuses 
=  
Enum! %
.% &
GetNames& .
(. /
typeof/ 5
(5 6
AnimalStatus6 B
)B C
)C D
;D E
return 
animalStatuses !
;! "
} 	
public 
Array 
GetAllOrderStatuses (
(( )
)) *
{ 	
var 
orderStatuses 
= 
Enum  $
.$ %
GetNames% -
(- .
typeof. 4
(4 5
OrderStatus5 @
)@ A
)A B
;B C
return 
orderStatuses  
;  !
} 	
} 
} â
\C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\StatisticService.cs
	namespace 	
Application
 
. 
Services 
{ 
public		 

class		 
StatisticService		 !
<		! "
	TViewable		" +
>		+ ,
:		- .
IStatisticService		/ @
<		@ A
	TViewable		A J
>		J K
where		L Q
	TViewable		R [
:		\ ]
Viewable		^ f
{

 
private 
readonly 
IRepository $
<$ %
	TViewable% .
>. /
_repository0 ;
;; <
public 
StatisticService 
(  
IRepository  +
<+ ,
	TViewable, 5
>5 6

repository7 A
)A B
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
	TViewable #
># $
GetStatistic% 1
(1 2
long2 6
id7 9
)9 :
{ 	
var 
viewable 
= 
await  
_repository! ,
., -
GetByIdAsync- 9
(9 :
id: <
)< =
;= >
if 
( 
viewable 
== 
null 
)  
{ 
throw 
new #
ObjectNotFoundException 1
(1 2
)2 3
;3 4
} 
return 
viewable 
; 
} 	
public 
async 
Task 
UpdateStatistic )
() *
long* .
id/ 1
)1 2
{ 	
var 
viewable 
= 
await  
_repository! ,
., -
GetByIdAsync- 9
(9 :
id: <
)< =
;= >
if 
( 
viewable 
== 
null  
)  !
{ 
throw   
new   #
ObjectNotFoundException   1
(  1 2
)  2 3
;  3 4
}!! 
++"" 
viewable"" 
."" 
	ViewCount""  
;""  !
_repository## 
.## 
Update## 
(## 
viewable## '
)##' (
;##( )
await$$ 
_repository$$ 
.$$ 
	SaveAsync$$ '
($$' (
)$$( )
;$$) *
}%% 	
}&& 
}''  l
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\TokenService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
TokenService 
: 
ITokenService  -
{ 
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
TokenService 
( 
IConfiguration *
configuration+ 8
,8 9
UserManager: E
<E F
UserF J
>J K
userManagerL W
)W X
{ 	
_userManager 
= 
userManager &
;& '
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 
< 
string  
>  !
GenerateAccessToken" 5
(5 6
User6 :
user; ?
)? @
{   	
var!! 
roles!! 
=!! 
await!! 
_userManager!! *
.!!* +
GetRolesAsync!!+ 8
(!!8 9
user!!9 =
)!!= >
;!!> ?
var"" 
claims"" 
="" 
new"" 
List"" !
<""! "
Claim""" '
>""' (
{## 
new$$ 
Claim$$ 
($$ #
JwtRegisteredClaimNames$$ 1
.$$1 2
Sub$$2 5
,$$5 6
user$$7 ;
.$$; <
Email$$< A
)$$A B
,$$B C
new%% 
Claim%% 
(%% #
JwtRegisteredClaimNames%% 1
.%%1 2
Jti%%2 5
,%%5 6
Guid%%7 ;
.%%; <
NewGuid%%< C
(%%C D
)%%D E
.%%E F
ToString%%F N
(%%N O
)%%O P
)%%P Q
,%%Q R
new&& 
Claim&& 
(&& #
JwtRegisteredClaimNames&& 1
.&&1 2
Iat&&2 5
,&&5 6
DateTime&&7 ?
.&&? @
Now&&@ C
.&&C D
ToString&&D L
(&&L M
)&&M N
)&&N O
,&&O P
new'' 
Claim'' 
('' 

ClaimTypes'' $
.''$ %
Name''% )
,'') *
user''+ /
.''/ 0
Email''0 5
)''5 6
}(( 
;(( 
foreach** 
(** 
var** 
role** 
in**  
roles**! &
)**& '
{++ 
claims,, 
.,, 
Add,, 
(,, 
new,, 
Claim,, $
(,,$ %

ClaimTypes,,% /
.,,/ 0
Role,,0 4
,,,4 5
role,,6 :
),,: ;
),,; <
;,,< =
}-- 
var.. 
key.. 
=.. 
new..  
SymmetricSecurityKey.. .
(... /
Encoding../ 7
...7 8
UTF8..8 <
...< =
GetBytes..= E
(..E F
_configuration..F T
[..T U
$str..U e
]..e f
)..f g
)..g h
;..h i
var// 
creds// 
=// 
new// 
SigningCredentials// .
(//. /
key/// 2
,//2 3
SecurityAlgorithms//4 F
.//F G

HmacSha256//G Q
)//Q R
;//R S
var00 
expire00 
=00 
DateTime00 !
.00! "
Now00" %
.00% &

AddMinutes00& 0
(000 1
Convert001 8
.008 9
ToDouble009 A
(00A B
_configuration00B P
[00P Q
$str00Q k
]00k l
)00l m
)00m n
;00n o
var11 
token11 
=11 
new11 
JwtSecurityToken11 ,
(11, -
_configuration22 
[22 
$str22 2
]222 3
,223 4
_configuration33 
[33 
$str33 2
]332 3
,333 4
claims44 
,44 
expires55 
:55 
expire55 
,55  
signingCredentials66 "
:66" #
creds66$ )
)77 
;77 
return99 
new99 #
JwtSecurityTokenHandler99 .
(99. /
)99/ 0
.990 1

WriteToken991 ;
(99; <
token99< A
)99A B
;99B C
}:: 	
public<< 
string<<  
GenerateRefreshToken<< *
(<<* +
)<<+ ,
{== 	
var>> 
randomNumber>> 
=>> 
new>> "
byte>># '
[>>' (
$num>>( *
]>>* +
;>>+ ,
using?? 
(?? 
var?? 
	generator??  
=??! "!
RandomNumberGenerator??# 8
.??8 9
Create??9 ?
(??? @
)??@ A
)??A B
{@@ 
	generatorAA 
.AA 
GetBytesAA "
(AA" #
randomNumberAA# /
)AA/ 0
;AA0 1
returnBB 
ConvertBB 
.BB 
ToBase64StringBB -
(BB- .
randomNumberBB. :
)BB: ;
;BB; <
}CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
UserFF 
>FF #
GetUserFromExpiredTokenFF  7
(FF7 8
stringFF8 >
tokenFF? D
)FFD E
{GG 	
varHH %
tokenValidationParametersHH )
=HH* +
newHH, /%
TokenValidationParametersHH0 I
{II 
ValidateAudienceJJ  
=JJ! "
trueJJ# '
,JJ' (
ValidAudienceKK 
=KK 
_configurationKK  .
[KK. /
$strKK/ B
]KKB C
,KKC D
ValidateIssuerLL 
=LL  
trueLL! %
,LL% &
ValidIssuerMM 
=MM 
_configurationMM ,
[MM, -
$strMM- @
]MM@ A
,MMA B$
ValidateIssuerSigningKeyNN (
=NN) *
trueNN+ /
,NN/ 0
IssuerSigningKeyOO  
=OO! "
newOO# & 
SymmetricSecurityKeyOO' ;
(OO; <
EncodingOO< D
.OOD E
UTF8OOE I
.OOI J
GetBytesOOJ R
(OOR S
_configurationOOS a
[OOa b
$strOOb r
]OOr s
)OOs t
)OOt u
,OOu v
ValidateLifetimePP  
=PP! "
falsePP# (
}QQ 
;QQ 
varSS 
tokenHandlerSS 
=SS 
newSS "#
JwtSecurityTokenHandlerSS# :
(SS: ;
)SS; <
;SS< =
varUU 
	principalUU 
=UU 
tokenHandlerUU (
.UU( )
ValidateTokenUU) 6
(UU6 7
tokenUU7 <
,UU< =%
tokenValidationParametersUU> W
,UUW X
outUUY \
SecurityTokenUU] j
securityTokenUUk x
)UUx y
;UUy z
varWW 
jwtSecurityTokenWW  
=WW! "
securityTokenWW# 0
asWW1 3
JwtSecurityTokenWW4 D
;WWD E
ifYY 
(YY 
jwtSecurityTokenYY  
==YY! #
nullYY$ (
||YY) +
!YY, -
jwtSecurityTokenYY- =
.YY= >
HeaderYY> D
.YYD E
AlgYYE H
.YYH I
EqualsYYI O
(YYO P
SecurityAlgorithmsYYP b
.YYb c

HmacSha256YYc m
,YYm n
StringComparisonYYo 
.	YY Ä(
InvariantCultureIgnoreCase
YYÄ ö
)
YYö õ
)
YYõ ú
throwZZ 
newZZ "
SecurityTokenExceptionZZ 0
(ZZ0 1
ExceptionStringsZZ1 A
.ZZA B'
InvalidAccessTokenExceptionZZB ]
)ZZ] ^
;ZZ^ _
var\\ 
	userEmail\\ 
=\\ 
	principal\\ %
.\\% &
Identity\\& .
.\\. /
Name\\/ 3
;\\3 4
var]] 
user]] 
=]] 
await]] 
_userManager]] *
.]]* +
FindByEmailAsync]]+ ;
(]]; <
	userEmail]]< E
.]]E F
ToUpper]]F M
(]]M N
)]]N O
)]]O P
;]]P Q
if__ 
(__ 
user__ 
==__ 
null__ 
)__ 
throw`` 
new`` #
ObjectNotFoundException`` 1
(``1 2
ExceptionStrings``2 B
.``B C!
UserNotFoundException``C X
,``X Y
	userEmail``Z c
)``c d
;``d e
returnaa 
useraa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
UserTokenDtodd &
>dd& '
RefreshTokendd( 4
(dd4 5
UserTokenDtodd5 A
	userTokenddB K
)ddK L
{ee 	
ifff 
(ff 
	userTokenff 
==ff 
nullff !
)ff! "
throwgg 
newgg !
ArgumentNullExceptiongg /
(gg/ 0
nameofgg0 6
(gg6 7
	userTokengg7 @
)gg@ A
,ggA B
ExceptionStringsggC S
.ggS T!
NullArgumentExceptionggT i
)ggi j
;ggj k
varii 
userii 
=ii 
awaitii #
GetUserFromExpiredTokenii 4
(ii4 5
	userTokenii5 >
.ii> ?
AccessTokenii? J
)iiJ K
;iiK L
ifkk 
(kk 
userkk 
.kk 
RefreshTokenkk !
!=kk" $
	userTokenkk% .
.kk. /
RefreshTokenkk/ ;
)kk; <
throwll 
newll "
SecurityTokenExceptionll 0
(ll0 1
ExceptionStringsll1 A
.llA B(
InvalidRefreshTokenExceptionllB ^
)ll^ _
;ll_ `
varnn 
newAccessTokennn 
=nn  
awaitnn! &
GenerateAccessTokennn' :
(nn: ;
usernn; ?
)nn? @
;nn@ A
varoo 
newRefreshTokenoo 
=oo  ! 
GenerateRefreshTokenoo" 6
(oo6 7
)oo7 8
;oo8 9
userqq 
.qq 
RefreshTokenqq 
=qq 
newRefreshTokenqq  /
;qq/ 0
userrr 
.rr 

LastActiverr 
=rr 
DateTimerr &
.rr& '
UtcNowrr' -
;rr- .
vartt 
updateResulttt 
=tt 
awaittt $
_userManagertt% 1
.tt1 2
UpdateAsynctt2 =
(tt= >
usertt> B
)ttB C
;ttC D
ifvv 
(vv 
!vv 
updateResultvv 
.vv 
	Succeededvv '
)vv' (
throwww 
newww !
ObjectUpdateExceptionww /
(ww/ 0
ExceptionStringsww0 @
.ww@ A
RefreshExceptionwwA Q
,wwQ R
userwwS W
.wwW X
EmailwwX ]
,ww] ^
newRefreshTokenww_ n
)wwn o
;wwo p
returnyy 
newyy 
UserTokenDtoyy #
(yy# $
)yy$ %
{yy% &
AccessTokenyy' 2
=yy3 4
newAccessTokenyy5 C
,yyC D
RefreshTokenyyE Q
=yyR S
newRefreshTokenyyT c
}yyd e
;yye f
}zz 	
public|| 
async|| 
Task|| 
Revoke||  
(||  !
string||! '
	userEmail||( 1
)||1 2
{}} 	
if~~ 
(~~ 
string~~ 
.~~ 
IsNullOrEmpty~~ $
(~~$ %
	userEmail~~% .
)~~. /
)~~/ 0
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
	userEmail7 @
)@ A
,A B
ExceptionStringsC S
.S T!
ObjectCreateExceptionT i
)i j
;j k
var
ÅÅ 
user
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_userManager
ÅÅ )
.
ÅÅ) *
FindByEmailAsync
ÅÅ* :
(
ÅÅ: ;
	userEmail
ÅÅ; D
.
ÅÅD E
ToUpper
ÅÅE L
(
ÅÅL M
)
ÅÅM N
)
ÅÅN O
;
ÅÅO P
if
ÉÉ 
(
ÉÉ 
user
ÉÉ 
!=
ÉÉ 
null
ÉÉ 
)
ÉÉ 
{
ÑÑ 
user
ÖÖ 
.
ÖÖ 
RefreshToken
ÖÖ !
=
ÖÖ" #
null
ÖÖ$ (
;
ÖÖ( )
var
ÜÜ 
updateResult
ÜÜ  
=
ÜÜ! "
await
ÜÜ# (
_userManager
ÜÜ) 5
.
ÜÜ5 6
UpdateAsync
ÜÜ6 A
(
ÜÜA B
user
ÜÜB F
)
ÜÜF G
;
ÜÜG H
if
áá 
(
áá 
!
áá 
updateResult
áá !
.
áá! "
	Succeeded
áá" +
)
áá+ ,
throw
àà 
new
àà #
ObjectUpdateException
àà 3
(
àà3 4
ExceptionStrings
àà4 D
.
ààD E
RevokeException
ààE T
,
ààT U
user
ààV Z
.
ààZ [
Email
àà[ `
)
àà` a
;
ààa b
}
ââ 
else
ää 
{
ãã 
throw
åå 
new
åå %
ObjectNotFoundException
åå 1
(
åå1 2
ExceptionStrings
åå2 B
.
ååB C#
UserNotFoundException
ååC X
,
ååX Y
	userEmail
ååZ c
)
ååc d
;
ååd e
}
çç 
}
éé 	
}
èè 
}êê «B
VC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\UriService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 

UriService 
: 
IUriService )
{		 
private

 
string

 
_baseUri

 
;

  
public 

UriService 
( 
string  
baseUri! (
)( )
{ 	
_baseUri 
= 
baseUri 
; 
} 	
public 
Uri 
GetAllPostUri  
(  !
string! '
specificUrl( 3
,3 4!
AnimalPaginationQuery5 J

paginationK U
,U V
AnimalQueryW b
queryc h
)h i
{ 	
var 
stringHelper 
= 
_baseUri '
;' (
_baseUri 
+= 
specificUrl #
;# $
var 
uri 
= 
new 
Uri 
( 
_baseUri &
)& '
;' (
var 
modifiedUrl 
= 
_baseUri &
;& '
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
query+ 0
.0 1
Weight1 7
)7 8
)8 9
modifiedUrl 
= 
QueryHelpers *
.* +
AddQueryString+ 9
(9 :
modifiedUrl: E
,E F
$strG O
,O P
queryQ V
.V W
WeightW ]
)] ^
;^ _
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
query+ 0
.0 1
IsNew1 6
)6 7
)7 8
modifiedUrl 
= 
QueryHelpers *
.* +
AddQueryString+ 9
(9 :
modifiedUrl: E
,E F
$strG N
,N O
queryP U
.U V
IsNewV [
)[ \
;\ ]
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
query+ 0
.0 1

IsDisabled1 ;
); <
)< =
modifiedUrl 
= 
QueryHelpers *
.* +
AddQueryString+ 9
(9 :
modifiedUrl: E
,E F
$strG S
,S T
queryU Z
.Z [

IsDisabled[ e
)e f
;f g
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
query+ 0
.0 1
Gender1 7
)7 8
)8 9
modifiedUrl 
= 
QueryHelpers *
.* +
AddQueryString+ 9
(9 :
modifiedUrl: E
,E F
$strG O
,O P
queryQ V
.V W
GenderW ]
)] ^
;^ _
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
query+ 0
.0 1
Category1 9
)9 :
): ;
modifiedUrl 
= 
QueryHelpers *
.* +
AddQueryString+ 9
(9 :
modifiedUrl: E
,E F
$strG Q
,Q R
queryS X
.X Y
CategoryY a
)a b
;b c
if   
(   
!   
string   
.   
IsNullOrWhiteSpace   *
(  * +
query  + 0
.  0 1
DateOfBirth  1 <
)  < =
)  = >
modifiedUrl!! 
=!! 
QueryHelpers!! *
.!!* +
AddQueryString!!+ 9
(!!9 :
modifiedUrl!!: E
,!!E F
$str!!G T
,!!T U
query!!V [
.!![ \
DateOfBirth!!\ g
)!!g h
;!!h i
if## 
(## 

pagination## 
==## 
null## "
)##" #
{$$ 
return%% 
uri%% 
;%% 
}&& 
modifiedUrl'' 
='' 
QueryHelpers'' &
.''& '
AddQueryString''' 5
(''5 6
modifiedUrl''6 A
,''A B
$str''C O
,''O P

pagination''Q [
.''[ \

PageNumber''\ f
.''f g
ToString''g o
(''o p
)''p q
)''q r
;''r s
modifiedUrl(( 
=(( 
QueryHelpers(( &
.((& '
AddQueryString((' 5
(((5 6
modifiedUrl((6 A
,((A B
$str((C M
,((M N

pagination((O Y
.((Y Z
PageSize((Z b
.((b c
ToString((c k
(((k l
)((l m
)((m n
;((n o
_baseUri** 
=** 
stringHelper** #
;**# $
return,, 
new,, 
Uri,, 
(,, 
modifiedUrl,, &
),,& '
;,,' (
}-- 	
public// 
Uri// 
GetAllPostUri//  
(//  !
string//! '
specificUrl//( 3
,//3 4"
ArticlePaginationQuery//5 K

pagination//L V
,//V W
ArticleQuery//X d
query//e j
)//j k
{00 	
var11 
stringHelper11 
=11 
_baseUri11 '
;11' (
_baseUri22 
+=22 
specificUrl22 #
;22# $
var33 
uri33 
=33 
new33 
Uri33 
(33 
_baseUri33 &
)33& '
;33' (
var44 
modifiedUrl44 
=44 
_baseUri44 &
;44& '
if55 
(55 
!55 
string55 
.55 
IsNullOrWhiteSpace55 *
(55* +
query55+ 0
.550 1
TitleOrContent551 ?
)55? @
)55@ A
modifiedUrl66 
=66 
QueryHelpers66 *
.66* +
AddQueryString66+ 9
(669 :
modifiedUrl66: E
,66E F
$str66G W
,66W X
query66Y ^
.66^ _
TitleOrContent66_ m
)66m n
;66n o
if77 
(77 
!77 
string77 
.77 
IsNullOrWhiteSpace77 *
(77* +
query77+ 0
.770 1
Tag771 4
)774 5
)775 6
modifiedUrl88 
=88 
QueryHelpers88 *
.88* +
AddQueryString88+ 9
(889 :
modifiedUrl88: E
,88E F
$str88G L
,88L M
query88N S
.88S T
Tag88T W
)88W X
;88X Y
if:: 
(:: 

pagination:: 
==:: 
null:: "
)::" #
{;; 
return<< 
uri<< 
;<< 
}== 
modifiedUrl>> 
=>> 
QueryHelpers>> &
.>>& '
AddQueryString>>' 5
(>>5 6
modifiedUrl>>6 A
,>>A B
$str>>C O
,>>O P

pagination>>Q [
.>>[ \

PageNumber>>\ f
.>>f g
ToString>>g o
(>>o p
)>>p q
)>>q r
;>>r s
modifiedUrl?? 
=?? 
QueryHelpers?? &
.??& '
AddQueryString??' 5
(??5 6
modifiedUrl??6 A
,??A B
$str??C M
,??M N

pagination??O Y
.??Y Z
PageSize??Z b
.??b c
ToString??c k
(??k l
)??l m
)??m n
;??n o
_baseUriAA 
=AA 
stringHelperAA #
;AA# $
returnCC 
newCC 
UriCC 
(CC 
modifiedUrlCC &
)CC& '
;CC' (
}DD 	
publicFF 
UriFF 

GetPostUriFF 
(FF 
longFF "
animalIdFF# +
)FF+ ,
{GG 	
throwHH 
newHH #
NotImplementedExceptionHH -
(HH- .
)HH. /
;HH/ 0
}II 	
}JJ 
}KK —S
[C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\UserHelpService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
UserHelpService  
:! "
IUserHelpService# 3
{ 
private 
readonly 
IRepository $
<$ %
UserHelp% -
>- .
_userHelpRepo/ <
;< =
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
IMapper  
_mapper! (
;( )
public 
UserHelpService 
( 
IMapper &
mapper' -
,- .
IRepository/ :
<: ;
UserHelp; C
>C D
userHelpRepoE Q
,Q R
UserManagerS ^
<^ _
User_ c
>c d
managere l
)l m
{ 	
_userHelpRepo 
= 
userHelpRepo (
;( )
_mapper 
= 
mapper 
; 
_userManager 
= 
manager "
;" #
} 	
public!! 
async!! 
Task!! 
Add!! 
(!! 
IEnumerable!! )
<!!) *
UserHelpInDto!!* 7
>!!7 8
userHelp!!9 A
,!!A B
string!!C I
	userEmail!!J S
)!!S T
{"" 	
var## 
userId## 
=## 
(## 
await## 
_userManager##  ,
.##, -
FindByEmailAsync##- =
(##= >
	userEmail##> G
.##G H
ToUpper##H O
(##O P
)##P Q
)##Q R
)##R S
?##S T
.##T U
Id##U W
;##W X
if%% 
(%% 
userId%% 
==%% 
null%% 
)%% 
{&& 
throw'' 
new'' #
ObjectNotFoundException'' 1
(''1 2
ExceptionStrings''2 B
.''B C!
UserNotFoundException''C X
,''X Y
	userEmail''Z c
)''c d
;''d e
}(( 
var** 
newUserHelpList** 
=**  !
userHelp**" *
.*** +
Select**+ 1
(**1 2
obj**2 5
=>**6 8
new**9 <
UserHelp**= E
(**E F
)**F G
{++ 
UserId,, 
=,, 
userId,, 
,,,  
HelpId-- 
=-- 
obj-- 
.-- 
HelpId-- #
,--# $
Comment.. 
=.. 
obj.. 
... 
Comment.. %
}// 
)// 
.// 
	ToHashSet// 
(// 
)// 
;// 
await11 
_userHelpRepo11 
.11  
AddRangeAsync11  -
(11- .
newUserHelpList11. =
)11= >
;11> ?
}22 	
public44 
async44 
Task44 
<44 
UserHelpDto44 %
>44% &
GetHelpByUser44' 4
(444 5
string445 ;
	userEmail44< E
)44E F
{55 	
var66 $
userHelpWithIncludedHelp66 (
=66) *
_userHelpRepo66+ 8
.668 9
Entities669 A
.66A B
Include66B I
(66I J
obj66J M
=>66N P
obj66Q T
.66T U
Help66U Y
)66Y Z
.66Z [
AsNoTracking66[ g
(66g h
)66h i
;66i j
var88 
userId88 
=88 
(88 
await88 
_userManager88  ,
.88, -
FindByEmailAsync88- =
(88= >
	userEmail88> G
.88G H
ToUpper88H O
(88O P
)88P Q
)88Q R
)88R S
?88S T
.88T U
Id88U W
;88W X
if:: 
(:: 
userId:: 
==:: 
null:: 
):: 
{;; 
throw<< 
new<< #
ObjectNotFoundException<< 1
(<<1 2
ExceptionStrings<<2 B
.<<B C!
UserNotFoundException<<C X
,<<X Y
	userEmail<<Z c
)<<c d
;<<d e
}== 
var?? 
userHelp?? 
=?? $
userHelpWithIncludedHelp?? 3
.??3 4
Where??4 9
(??9 :
prop??: >
=>??? A
prop??B F
.??F G
UserId??G M
.??M N
Equals??N T
(??T U
userId??U [
)??[ \
)??\ ]
.??] ^
Select??^ d
(??d e
obj??e h
=>??i k
new??l o
{??p q
obj??r u
.??u v
Help??v z
,??z {
obj??| 
.	?? Ä
Comment
??Ä á
}
??à â
)
??â ä
;
??ä ã
varAA 
otherCommentAA 
=AA 
userHelpAA '
.AA' (
FirstOrDefaultAA( 6
(AA6 7
propAA7 ;
=>AA< >
propAA? C
.AAC D
HelpAAD H
.AAH I

KindOfHelpAAI S
.AAS T
EqualsAAT Z
(AAZ [
$strAA[ b
)AAb c
)AAc d
?AAd e
.AAe f
CommentAAf m
;AAm n
varCC 
helpListCC 
=CC 
userHelpCC #
.CC# $
SelectCC$ *
(CC* +
objCC+ .
=>CC/ 1
_mapperCC2 9
.CC9 :
MapCC: =
<CC= >
HelpDtoCC> E
>CCE F
(CCF G
objCCG J
.CCJ K
HelpCCK O
)CCO P
)CCP Q
.CCQ R
ToListCCR X
(CCX Y
)CCY Z
;CCZ [
returnEE 
newEE 
UserHelpDtoEE "
(EE" #
)EE# $
{EE% &
HelpEE' +
=EE, -
helpListEE. 6
,EE6 7
CommentEE8 ?
=EE@ A
otherCommentEEB N
}EEO P
;EEP Q
}FF 	
publicHH 
IEnumerableHH 
<HH 
UserHelpOutDtoHH )
>HH) *
GetUsersByHelpHH+ 9
(HH9 :
intHH: =
helpIdHH> D
)HHD E
{II 	
ifJJ 
(JJ 
helpIdJJ 
<JJ 
$numJJ 
)JJ 
{KK 
throwLL 
newLL 
ArgumentExceptionLL +
(LL+ ,
ExceptionStringsLL, <
.LL< =)
NegativeIntegerValueExceptionLL= Z
,LLZ [
nameofLL\ b
(LLb c
helpIdLLc i
)LLi j
)LLj k
;LLk l
}MM 
varNN %
userHelpWithInclededUsersNN )
=NN* +
_userHelpRepoNN, 9
.NN9 :
EntitiesNN: B
.NNB C
IncludeNNC J
(NNJ K
objNNK N
=>NNO Q
objNNR U
.NNU V
UserNNV Z
)NNZ [
.NN[ \
AsNoTrackingNN\ h
(NNh i
)NNi j
;NNj k
returnPP %
userHelpWithInclededUsersPP ,
.PP, -
WherePP- 2
(PP2 3
propPP3 7
=>PP8 :
propPP; ?
.PP? @
HelpIdPP@ F
==PPG I
helpIdPPJ P
)PPP Q
.QQ, -
SelectQQ- 3
(QQ3 4
objQQ4 7
=>QQ8 :
newQQ; >
UserHelpOutDtoQQ? M
(QQM N
)QQN O
{RR, -
UserSS0 4
=SS5 6
_mapperSS7 >
.SS> ?
MapSS? B
<SSB C
UserDtoSSC J
>SSJ K
(SSK L
objSSL O
.SSO P
UserSSP T
)SST U
,SSU V
CommentTT0 7
=TT8 9
objTT: =
.TT= >
CommentTT> E
}UU, -
)UU- .
.UU. /
ToListUU/ 5
(UU5 6
)UU6 7
;UU7 8
}WW 	
publicYY 
asyncYY 
TaskYY 
UpdateYY  
(YY  !
IEnumerableYY! ,
<YY, -
UserHelpInDtoYY- :
>YY: ;
userHelpYY< D
,YYD E
stringYYF L
	userEmailYYM V
)YYV W
{ZZ 	
var[[ 
userId[[ 
=[[ 
([[ 
await[[ 
_userManager[[  ,
.[[, -
FindByEmailAsync[[- =
([[= >
	userEmail[[> G
.[[G H
ToUpper[[H O
([[O P
)[[P Q
)[[Q R
)[[R S
?[[S T
.[[T U
Id[[U W
;[[W X
if]] 
(]] 
userId]] 
==]] 
null]] 
)]] 
{^^ 
throw__ 
new__ #
ObjectNotFoundException__ 1
(__1 2
ExceptionStrings__2 B
.__B C!
UserNotFoundException__C X
,__X Y
	userEmail__Z c
)__c d
;__d e
}`` 
varbb 
newUserHelpbb 
=bb 
userHelpbb &
.bb& '
Selectbb' -
(bb- .
objbb. 1
=>bb2 4
newbb5 8
UserHelpbb9 A
(bbA B
)bbB C
{cc 
UserIddd 
=dd 
userIddd 
,dd  
HelpIdee 
=ee 
objee 
.ee 
HelpIdee #
,ee# $
Commentff 
=ff 
objff 
.ff 
Commentff %
}gg 
)gg 
.gg 
	ToHashSetgg 
(gg 
)gg 
;gg 
varii 
oldUserHelpii 
=ii 
_userHelpRepoii +
.ii+ ,
Findii, 0
(ii0 1
propii1 5
=>ii6 8
propii9 =
.ii= >
UserIdii> D
.iiD E
EqualsiiE K
(iiK L
userIdiiL R
)iiR S
)iiS T
.iiT U
ToListiiU [
(ii[ \
)ii\ ]
;ii] ^
ifkk 
(kk 
oldUserHelpkk 
!=kk 
nullkk #
&&kk$ &
oldUserHelpkk( 3
.kk3 4
Countkk4 9
!=kk: <
$numkk= >
)kk> ?
{ll 
awaitmm 
_userHelpRepomm #
.mm# $
RemoveRangemm$ /
(mm/ 0
oldUserHelpmm0 ;
)mm; <
;mm< =
}nn 
awaitpp 
_userHelpRepopp  
.pp  !
AddRangeAsyncpp! .
(pp. /
newUserHelppp/ :
)pp: ;
;pp; <
}qq 	
}rr 
}ss òÿ
WC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\UserService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
UserService 
: 
IUserService +
{ 
private 
readonly 
UserManager $
<$ %
User% )
>) *
_userManager+ 7
;7 8
private 
readonly 
SignInManager &
<& '
User' +
>+ ,
_signInManager- ;
;; <
private 
readonly 
IEmailHelper %
_emailHelper& 2
;2 3
private 
readonly 
ITokenService &
_tokenService' 4
;4 5
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IRepository $
<$ %
User% )
>) *
_repository+ 6
;6 7
public 
UserService 
( 
UserManager &
<& '
User' +
>+ ,
userManager- 8
,8 9
SignInManager (
<( )
User) -
>- .
signInManager/ <
,< =
IEmailHelper '
emailHelper( 3
,3 4
IRepository   &
<  & '
User  ' +
>  + ,

repository  - 7
,  7 8
ITokenService!! (
tokenService!!) 5
,!!5 6
IMapper"" "
mapper""# )
,"") *
IConfiguration## )
configuration##* 7
)##7 8
{$$ 	
_userManager%% 
=%% 
userManager%% &
;%%& '
_signInManager&& 
=&& 
signInManager&& *
;&&* +
_tokenService'' 
='' 
tokenService'' (
;''( )
_mapper(( 
=(( 
mapper(( 
;(( 
_configuration)) 
=)) 
configuration)) *
;))* +
_repository** 
=** 

repository** $
;**$ %
_emailHelper++ 
=++ 
emailHelper++ &
;++& '
},, 	
public.. 
async.. 
Task.. 
RegisterAsync.. '
(..' (
UserRegistrationDto..( ;
model..< A
,..A B
string..C I
	returnUrl..J S
)..S T
{// 	
var00 

mappedUser00 
=00 
_mapper00 $
.00$ %
Map00% (
<00( )
User00) -
>00- .
(00. /
model00/ 4
)004 5
;005 6

mappedUser22 
.22 
NormalizedUserName22 )
=22* +

mappedUser22, 6
.226 7
Email227 <
.22< =
ToUpper22= D
(22D E
)22E F
;22F G

mappedUser33 
.33 
UserName33 
=33  !

mappedUser33" ,
.33, -
Email33- 2
;332 3

mappedUser44 
.44 
NormalizedUserName44 )
=44* +

mappedUser44, 6
.446 7
NormalizedEmail447 F
;44F G
using66 
(66 
var66 
transaction66 "
=66# $
await66% *
_repository66+ 6
.666 7!
BeginTransactionAsync667 L
(66L M
)66M N
)66N O
{77 
await88 
_userManager88 "
.88" #
CreateAsync88# .
(88. /

mappedUser88/ 9
,889 :
model88; @
.88@ A
Password88A I
)88I J
;88J K
var:: 
user:: 
=:: 
await::  
_userManager::! -
.::- .
FindByEmailAsync::. >
(::> ?

mappedUser::? I
.::I J
Email::J O
.::O P
ToUpper::P W
(::W X
)::X Y
)::Y Z
;::Z [
if<< 
(<< 
user<< 
!=<< 
null<<  
)<<  !
{== 
var>> 
confirmEmailToken>> )
=>>* +
await>>, 1
_userManager>>2 >
.>>> ?/
#GenerateEmailConfirmationTokenAsync>>? b
(>>b c
user>>c g
)>>g h
;>>h i
var@@ 
encodedToken@@ $
=@@% &
confirmEmailToken@@' 8
.@@8 9!
Base64UrlEncodeString@@9 N
(@@N O
)@@O P
;@@P Q
varBB 
linkBB 
=BB 
stringBB %
.BB% &
FormatBB& ,
(BB, -
_configurationBB- ;
[BB; <
$strBB< ^
]BB^ _
,BB_ `
_configurationBBa o
[BBo p
$strBBp x
]BBx y
,BBy z
userBB{ 
.	BB Ä
Id
BBÄ Ç
,
BBÇ É
encodedToken
BBÑ ê
,
BBê ë
	returnUrl
BBí õ
)
BBõ ú
;
BBú ù
awaitDD 
_emailHelperDD &
.DD& '
GetDataAndSendAsyncDD' :
(DD: ;
userDD; ?
.DD? @
EmailDD@ E
,DDE F
$strDDG ]
,DD] ^
$strDD_ t
,DDt u
linkDDv z
)DDz {
;DD{ |
awaitFF 
transactionFF %
.FF% &
CommitAsyncFF& 1
(FF1 2
)FF2 3
;FF3 4
}GG 
elseHH 
{II 
awaitJJ 
transactionJJ %
.JJ% &
RollbackAsyncJJ& 3
(JJ3 4
)JJ4 5
;JJ5 6
throwKK 
newKK 
RegisterExceptionKK /
(KK/ 0
ExceptionStringsKK0 @
.KK@ A
CreateUserExceptionKKA T
)KKT U
;KKU V
}LL 
}MM 
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
UserTokenDtoPP &
>PP& '

LoginAsyncPP( 2
(PP2 3
UserLoginDtoPP3 ?
modelPP@ E
)PPE F
{QQ 	
varRR 
signInResultRR 
=RR 
awaitRR $
_signInManagerRR% 3
.RR3 4
PasswordSignInAsyncRR4 G
(RRG H
modelRRH M
.RRM N
EmailRRN S
,RRS T
modelRRU Z
.RRZ [
PasswordRR[ c
,RRc d
modelRRe j
.RRj k

RememberMeRRk u
,RRu v
falseRRw |
)RR| }
;RR} ~
ifTT 
(TT 
signInResultTT 
.TT 
	SucceededTT &
)TT& '
{UU 
varVV 
userVV 
=VV 
awaitVV  
_userManagerVV! -
.VV- .
FindByEmailAsyncVV. >
(VV> ?
modelVV? D
.VVD E
EmailVVE J
.VVJ K
ToUpperVVK R
(VVR S
)VVS T
)VVT U
;VVU V
userXX 
.XX 
RefreshTokenXX !
=XX" #
_tokenServiceXX$ 1
.XX1 2 
GenerateRefreshTokenXX2 F
(XXF G
)XXG H
;XXH I
userYY 
.YY 

LastActiveYY 
=YY  !
DateTimeYY" *
.YY* +
UtcNowYY+ 1
;YY1 2
await[[ 
_userManager[[ "
.[[" #
UpdateAsync[[# .
([[. /
user[[/ 3
)[[3 4
;[[4 5
var]] 
accessToken]] 
=]]  !
await]]" '
_tokenService]]( 5
.]]5 6
GenerateAccessToken]]6 I
(]]I J
user]]J N
)]]N O
;]]O P
return^^ 
new^^ 
UserTokenDto^^ +
(^^+ ,
)^^, -
{^^. /
AccessToken^^0 ;
=^^< =
accessToken^^> I
,^^I J
RefreshToken^^K W
=^^X Y
user^^Z ^
.^^^ _
RefreshToken^^_ k
}^^l m
;^^m n
}__ 
throw`` 
new`` 
LoginException`` $
(``$ %
ExceptionStrings``% 5
.``5 6
LoginException``6 D
)``D E
;``E F
}aa 	
publiccc 
asynccc 
Taskcc 
ConfirmEmailAsynccc +
(cc+ ,
stringcc, 2
userIdcc3 9
,cc9 :
stringcc; A
tokenccB G
)ccG H
{dd 	
varee 
useree 
=ee 
awaitee 
_userManageree )
.ee) *
FindByIdAsyncee* 7
(ee7 8
userIdee8 >
)ee> ?
;ee? @
ifgg 
(gg 
usergg 
==gg 
nullgg 
)gg 
throwhh 
newhh #
ObjectNotFoundExceptionhh 1
(hh1 2
ExceptionStringshh2 B
.hhB C!
UserNotFoundExceptionhhC X
,hhX Y
userIdhhZ `
)hh` a
;hha b
varjj 
	userRolesjj 
=jj 
awaitjj !
_userManagerjj" .
.jj. /
GetRolesAsyncjj/ <
(jj< =
userjj= A
)jjA B
;jjB C
ifkk 
(kk 
	userRoleskk 
.kk 
Countkk 
==kk  "
$numkk# $
)kk$ %
{ll 
awaitmm  
AddUserToDefaultRolemm *
(mm* +
usermm+ /
)mm/ 0
;mm0 1
}nn 
varpp 
decodedTokenpp 
=pp 
tokenpp $
.pp$ %!
Base64UrlDecodeStringpp% :
(pp: ;
)pp; <
;pp< =
varrr 
confirmEmailResultrr "
=rr# $
awaitrr% *
_userManagerrr+ 7
.rr7 8
ConfirmEmailAsyncrr8 I
(rrI J
userrrJ N
,rrN O
decodedTokenrrP \
)rr\ ]
;rr] ^
iftt 
(tt 
!tt 
confirmEmailResulttt #
.tt# $
	Succeededtt$ -
)tt- .
throwuu 
newuu !
ObjectUpdateExceptionuu /
(uu/ 0
ExceptionStringsuu0 @
.uu@ A!
EmailConfirmExceptionuuA V
+uuW X
stringuuY _
.uu_ `
Joinuu` d
(uud e
$struue h
,uuh i
confirmEmailResultuuj |
.uu| }
Errors	uu} É
.
uuÉ Ñ
ToListOfStrings
uuÑ ì
(
uuì î
)
uuî ï
)
uuï ñ
,
uuñ ó
user
uuò ú
.
uuú ù
Email
uuù ¢
)
uu¢ £
;
uu£ §
}vv 	
publicxx 
asyncxx 
Taskxx 
ForgotPasswordAsyncxx -
(xx- .
ResetPasswordDtoxx. >
modelxx? D
,xxD E
stringxxF L
	returnUrlxxM V
)xxV W
{yy 	
varzz 
userzz 
=zz 
awaitzz 
_userManagerzz )
.zz) *
FindByEmailAsynczz* :
(zz: ;
modelzz; @
.zz@ A
EmailzzA F
)zzF G
;zzG H
if{{ 
({{ 
user{{ 
=={{ 
null{{ 
||{{ 
!{{  !
user{{! %
.{{% &
EmailConfirmed{{& 4
){{4 5
throw|| 
new|| #
ObjectNotFoundException|| 1
(||1 2
ExceptionStrings||2 B
.||B C!
UserNotFoundException||C X
,||X Y
model||Z _
.||_ `
Email||` e
)||e f
;||f g
var~~ 
token~~ 
=~~ 
await~~ 
_userManager~~ *
.~~* ++
GeneratePasswordResetTokenAsync~~+ J
(~~J K
user~~K O
)~~O P
;~~P Q
var
ÄÄ 
encodedEmailToken
ÄÄ !
=
ÄÄ" #
token
ÄÄ$ )
.
ÄÄ) *#
Base64UrlEncodeString
ÄÄ* ?
(
ÄÄ? @
)
ÄÄ@ A
;
ÄÄA B
var
ÇÇ 
link
ÇÇ 
=
ÇÇ 
$"
ÇÇ 
{
ÇÇ 
	returnUrl
ÇÇ #
}
ÇÇ# $
/
ÇÇ$ %
{
ÇÇ% &
user
ÇÇ& *
.
ÇÇ* +
Id
ÇÇ+ -
}
ÇÇ- .
/
ÇÇ. /
{
ÇÇ/ 0
encodedEmailToken
ÇÇ0 A
}
ÇÇA B
"
ÇÇB C
;
ÇÇC D
await
ÑÑ 
_emailHelper
ÑÑ 
.
ÑÑ !
GetDataAndSendAsync
ÑÑ 2
(
ÑÑ2 3
user
ÑÑ3 7
.
ÑÑ7 8
Email
ÑÑ8 =
,
ÑÑ= >
$str
ÑÑ? V
,
ÑÑV W
$str
ÑÑX n
,
ÑÑn o
link
ÑÑp t
)
ÑÑt u
;
ÑÑu v
}
ÖÖ 	
public
áá 
async
áá 
Task
áá  
ResetPasswordAsync
áá ,
(
áá, -%
ResetPasswordConfirmDto
áá- D
model
ááE J
)
ááJ K
{
àà 	
var
ââ 
user
ââ 
=
ââ 
await
ââ 
_userManager
ââ )
.
ââ) *
FindByIdAsync
ââ* 7
(
ââ7 8
model
ââ8 =
.
ââ= >
UserId
ââ> D
)
ââD E
;
ââE F
if
ãã 
(
ãã 
user
ãã 
==
ãã 
null
ãã 
)
ãã 
throw
åå 
new
åå %
ObjectNotFoundException
åå 1
(
åå1 2
ExceptionStrings
åå2 B
.
ååB C#
UserNotFoundException
ååC X
,
ååX Y
model
ååZ _
.
åå_ `
UserId
åå` f
)
ååf g
;
ååg h
var
éé 
decodedToken
éé 
=
éé 
model
éé $
.
éé$ %
Token
éé% *
.
éé* +#
Base64UrlDecodeString
éé+ @
(
éé@ A
)
ééA B
;
ééB C
var
êê 
resetPassResult
êê 
=
êê  !
await
êê" '
_userManager
êê( 4
.
êê4 5 
ResetPasswordAsync
êê5 G
(
êêG H
user
êêH L
,
êêL M
decodedToken
êêN Z
,
êêZ [
model
êê\ a
.
êêa b
Password
êêb j
)
êêj k
;
êêk l
if
íí 
(
íí 
!
íí 
resetPassResult
íí  
.
íí  !
	Succeeded
íí! *
)
íí* +
throw
ìì 
new
ìì #
ObjectUpdateException
ìì /
(
ìì/ 0
ExceptionStrings
ìì0 @
.
ìì@ A$
ResetPasswordException
ììA W
+
ììX Y
string
ììZ `
.
ìì` a
Join
ììa e
(
ììe f
$str
ììf i
,
ììi j
resetPassResult
ììk z
.
ììz {
Errorsìì{ Å
.ììÅ Ç
ToListOfStringsììÇ ë
(ììë í
)ììí ì
)ììì î
,ììî ï
userììñ ö
.ììö õ
Emailììõ †
)ìì† °
;ìì° ¢
}
îî 	
private
ññ 
async
ññ 
Task
ññ 
<
ññ 
IdentityResult
ññ )
>
ññ) *"
AddUserToDefaultRole
ññ+ ?
(
ññ? @
User
ññ@ D
user
ññE I
)
ññI J
{
óó 	
var
òò 
usersInRoles
òò 
=
òò 
await
òò $
_userManager
òò% 1
.
òò1 2!
GetUsersInRoleAsync
òò2 E
(
òòE F
Roles
òòF K
.
òòK L
RoleStrings
òòL W
[
òòW X
$num
òòX Y
]
òòY Z
)
òòZ [
;
òò[ \
IdentityResult
öö 
addedToRole
öö &
;
öö& '
if
úú 
(
úú 
usersInRoles
úú 
==
úú 
null
úú  $
||
úú% '
usersInRoles
úú( 4
.
úú4 5
Count
úú5 :
<
úú; <
$num
úú= >
)
úú> ?
{
ùù 
addedToRole
ûû 
=
ûû 
await
ûû #
_userManager
ûû$ 0
.
ûû0 1
AddToRoleAsync
ûû1 ?
(
ûû? @
user
ûû@ D
,
ûûD E
Roles
ûûF K
.
ûûK L
RoleStrings
ûûL W
[
ûûW X
$num
ûûX Y
]
ûûY Z
)
ûûZ [
;
ûû[ \
}
üü 
else
†† 
{
°° 
addedToRole
¢¢ 
=
¢¢ 
await
¢¢ #
_userManager
¢¢$ 0
.
¢¢0 1
AddToRoleAsync
¢¢1 ?
(
¢¢? @
user
¢¢@ D
,
¢¢D E
Roles
¢¢F K
.
¢¢K L
RoleStrings
¢¢L W
[
¢¢W X
$num
¢¢X Y
]
¢¢Y Z
)
¢¢Z [
;
¢¢[ \
}
££ 
if
•• 
(
•• 
!
•• 
addedToRole
•• 
.
•• 
	Succeeded
•• &
)
••& '
throw
¶¶ 
new
¶¶ 
RoleException
¶¶ '
(
¶¶' (
ExceptionStrings
¶¶( 8
.
¶¶8 9 
AddToRoleException
¶¶9 K
)
¶¶K L
;
¶¶L M
return
ßß 
addedToRole
ßß 
;
ßß 
}
®® 	
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IList
™™ 
<
™™  
string
™™  &
>
™™& '
>
™™' (
GetUserRoles
™™) 5
(
™™5 6
string
™™6 <
	userEmail
™™= F
)
™™F G
{
´´ 	
var
¨¨ 
user
¨¨ 
=
¨¨ 
await
¨¨ 
_userManager
¨¨ )
.
¨¨) *
FindByEmailAsync
¨¨* :
(
¨¨: ;
	userEmail
¨¨; D
.
¨¨D E
ToUpper
¨¨E L
(
¨¨L M
)
¨¨M N
)
¨¨N O
;
¨¨O P
if
ÆÆ 
(
ÆÆ 
user
ÆÆ 
==
ÆÆ 
null
ÆÆ 
)
ÆÆ 
throw
ØØ 
new
ØØ %
ObjectNotFoundException
ØØ 1
(
ØØ1 2
ExceptionStrings
ØØ2 B
.
ØØB C#
UserNotFoundException
ØØC X
,
ØØX Y
	userEmail
ØØZ c
)
ØØc d
;
ØØd e
return
±± 
await
±± 
_userManager
±± %
.
±±% &
GetRolesAsync
±±& 3
(
±±3 4
user
±±4 8
)
±±8 9
;
±±9 :
}
≤≤ 	
public
¥¥ 
async
¥¥ 
Task
¥¥ 
UpdateProfile
¥¥ '
(
¥¥' (
UserDto
¥¥( /
model
¥¥0 5
,
¥¥5 6
string
¥¥7 =
	returnUrl
¥¥> G
)
¥¥G H
{
µµ 	
var
∂∂ 
tempUser
∂∂ 
=
∂∂ 
await
∂∂  
_userManager
∂∂! -
.
∂∂- .
FindByIdAsync
∂∂. ;
(
∂∂; <
model
∂∂< A
.
∂∂A B
Id
∂∂B D
)
∂∂D E
;
∂∂E F
var
∑∑ 
phoneNumber
∑∑ 
=
∑∑ 
await
∑∑ #
_userManager
∑∑$ 0
.
∑∑0 1!
GetPhoneNumberAsync
∑∑1 D
(
∑∑D E
tempUser
∑∑E M
)
∑∑M N
;
∑∑N O
if
∏∏ 
(
∏∏ 
model
∏∏ 
.
∏∏ 
PhoneNumber
∏∏ !
!=
∏∏" $
phoneNumber
∏∏% 0
)
∏∏0 1
{
ππ 
var
∫∫ 
result
∫∫ 
=
∫∫ 
await
∫∫ "
_userManager
∫∫# /
.
∫∫/ 0!
SetPhoneNumberAsync
∫∫0 C
(
∫∫C D
tempUser
∫∫D L
,
∫∫L M
model
∫∫N S
.
∫∫S T
PhoneNumber
∫∫T _
)
∫∫_ `
;
∫∫` a
if
ªª 
(
ªª 
!
ªª 
result
ªª 
.
ªª 
	Succeeded
ªª %
)
ªª% &
{
ºº 
var
ΩΩ 
userId
ΩΩ 
=
ΩΩ  
await
ΩΩ! &
_userManager
ΩΩ' 3
.
ΩΩ3 4
GetUserIdAsync
ΩΩ4 B
(
ΩΩB C
tempUser
ΩΩC K
)
ΩΩK L
;
ΩΩL M
throw
ææ 
new
ææ '
InvalidOperationException
ææ 7
(
ææ7 8
$"
ææ8 :O
AUnexpected error occurred setting phone number for user with ID '
ææ: {
{
ææ{ |
userIdææ| Ç
}ææÇ É
'.ææÉ Ö
"ææÖ Ü
)ææÜ á
;ææá à
}
øø 
}
¿¿ 
var
¡¡ 
email
¡¡ 
=
¡¡ 
await
¡¡ 
_userManager
¡¡ *
.
¡¡* +
GetEmailAsync
¡¡+ 8
(
¡¡8 9
tempUser
¡¡9 A
)
¡¡A B
;
¡¡B C
if
¬¬ 
(
¬¬ 
model
¬¬ 
.
¬¬ 
Email
¬¬ 
!=
¬¬ 
email
¬¬ $
)
¬¬$ %
{
√√ 
var
ƒƒ 
result
ƒƒ 
=
ƒƒ 
await
ƒƒ "
_userManager
ƒƒ# /
.
ƒƒ/ 0
SetEmailAsync
ƒƒ0 =
(
ƒƒ= >
tempUser
ƒƒ> F
,
ƒƒF G
model
ƒƒH M
.
ƒƒM N
Email
ƒƒN S
)
ƒƒS T
;
ƒƒT U
if
≈≈ 
(
≈≈ 
!
≈≈ 
result
≈≈ 
.
≈≈ 
	Succeeded
≈≈ %
)
≈≈% &
{
∆∆ 
var
«« 
userId
«« 
=
««  
await
««! &
_userManager
««' 3
.
««3 4
GetUserIdAsync
««4 B
(
««B C
tempUser
««C K
)
««K L
;
««L M
throw
»» 
new
»» '
InvalidOperationException
»» 7
(
»»7 8
$"
»»8 :H
:Unexpected error occurred setting email for user with ID '
»»: t
{
»»t u
userId
»»u {
}
»»{ |
'.
»»| ~
"
»»~ 
)»» Ä
;»»Ä Å
}
…… 
else
   
{
ÀÀ 
await
ÃÃ 
_userManager
ÃÃ &
.
ÃÃ& '
SetUserNameAsync
ÃÃ' 7
(
ÃÃ7 8
tempUser
ÃÃ8 @
,
ÃÃ@ A
model
ÃÃB G
.
ÃÃG H
Email
ÃÃH M
)
ÃÃM N
;
ÃÃN O
var
ÕÕ 
user
ÕÕ 
=
ÕÕ 
await
ÕÕ $
_userManager
ÕÕ% 1
.
ÕÕ1 2
FindByEmailAsync
ÕÕ2 B
(
ÕÕB C
model
ÕÕC H
.
ÕÕH I
Email
ÕÕI N
.
ÕÕN O
ToUpper
ÕÕO V
(
ÕÕV W
)
ÕÕW X
)
ÕÕX Y
;
ÕÕY Z
var
ŒŒ 
confirmEmailToken
ŒŒ )
=
ŒŒ* +
await
ŒŒ, 1
_userManager
ŒŒ2 >
.
ŒŒ> ?1
#GenerateEmailConfirmationTokenAsync
ŒŒ? b
(
ŒŒb c
user
ŒŒc g
)
ŒŒg h
;
ŒŒh i
var
œœ 
encodedToken
œœ $
=
œœ% &
confirmEmailToken
œœ' 8
.
œœ8 9#
Base64UrlEncodeString
œœ9 N
(
œœN O
)
œœO P
;
œœP Q
var
–– 
link
–– 
=
–– 
string
–– %
.
––% &
Format
––& ,
(
––, -
_configuration
––- ;
[
––; <
$str
––< ^
]
––^ _
,
––_ `
_configuration
––a o
[
––o p
$str
––p x
]
––x y
,
––y z
user
––{ 
.–– Ä
Id––Ä Ç
,––Ç É
encodedToken––Ñ ê
,––ê ë
	returnUrl––í õ
)––õ ú
;––ú ù
await
—— 
_emailHelper
—— &
.
——& '!
GetDataAndSendAsync
——' :
(
——: ;
user
——; ?
.
——? @
Email
——@ E
,
——E F
$str
——G ]
,
——] ^
$str
——_ t
,
——t u
link
——v z
)
——z {
;
——{ |
}
““ 
}
”” 
if
‘‘ 
(
‘‘ 
model
‘‘ 
.
‘‘ 
FullName
‘‘ 
!=
‘‘ !
tempUser
‘‘" *
.
‘‘* +
FullName
‘‘+ 3
)
‘‘3 4
{
’’ 
tempUser
÷÷ 
.
÷÷ 
FullName
÷÷ !
=
÷÷" #
model
÷÷$ )
.
÷÷) *
FullName
÷÷* 2
;
÷÷2 3
}
◊◊ 
if
ÿÿ 
(
ÿÿ 
model
ÿÿ 
.
ÿÿ 
	AddressId
ÿÿ 
!=
ÿÿ  "
tempUser
ÿÿ# +
.
ÿÿ+ ,
	AddressId
ÿÿ, 5
)
ÿÿ5 6
{
ŸŸ 
tempUser
⁄⁄ 
.
⁄⁄ 
	AddressId
⁄⁄ "
=
⁄⁄# $
model
⁄⁄% *
.
⁄⁄* +
	AddressId
⁄⁄+ 4
;
⁄⁄4 5
}
€€ 
var
‹‹ 
updateResult
‹‹ 
=
‹‹ 
await
‹‹ $
_userManager
‹‹% 1
.
‹‹1 2
UpdateAsync
‹‹2 =
(
‹‹= >
tempUser
‹‹> F
)
‹‹F G
;
‹‹G H
if
›› 
(
›› 
!
›› 
updateResult
›› 
.
›› 
	Succeeded
›› '
)
››' (
{
ﬁﬁ 
throw
ﬂﬂ 
new
ﬂﬂ #
ObjectUpdateException
ﬂﬂ /
(
ﬂﬂ/ 0
ExceptionStrings
ﬂﬂ0 @
.
ﬂﬂ@ A!
UserUpdateException
ﬂﬂA T
+
ﬂﬂU V
string
ﬂﬂW ]
.
ﬂﬂ] ^
Join
ﬂﬂ^ b
(
ﬂﬂb c
$str
ﬂﬂc f
,
ﬂﬂf g
updateResult
ﬂﬂh t
.
ﬂﬂt u
Errors
ﬂﬂu {
.
ﬂﬂ{ |
ToListOfStringsﬂﬂ| ã
(ﬂﬂã å
)ﬂﬂå ç
)ﬂﬂç é
,ﬂﬂé è
emailﬂﬂê ï
)ﬂﬂï ñ
;ﬂﬂñ ó
}
‡‡ 
}
·· 	
public
„„ 
async
„„ 
Task
„„ 
DeleteProfile
„„ '
(
„„' (
string
„„( .
	userEmail
„„/ 8
)
„„8 9
{
‰‰ 	
var
ÂÂ 
tempUser
ÂÂ 
=
ÂÂ 
await
ÂÂ  
_userManager
ÂÂ! -
.
ÂÂ- .
FindByEmailAsync
ÂÂ. >
(
ÂÂ> ?
	userEmail
ÂÂ? H
)
ÂÂH I
;
ÂÂI J
if
ÊÊ 
(
ÊÊ 
tempUser
ÊÊ 
==
ÊÊ 
null
ÊÊ  
)
ÊÊ  !
{
ÁÁ 
throw
ËË 
new
ËË %
ObjectNotFoundException
ËË 1
(
ËË1 2
ExceptionStrings
ËË2 B
.
ËËB C#
UserNotFoundException
ËËC X
,
ËËX Y
	userEmail
ËËZ c
)
ËËc d
;
ËËd e
}
ÈÈ 
var
ÍÍ 
result
ÍÍ 
=
ÍÍ 
await
ÍÍ 
_userManager
ÍÍ +
.
ÍÍ+ ,
DeleteAsync
ÍÍ, 7
(
ÍÍ7 8
tempUser
ÍÍ8 @
)
ÍÍ@ A
;
ÍÍA B
if
ÎÎ 
(
ÎÎ 
!
ÎÎ 
result
ÎÎ 
.
ÎÎ 
	Succeeded
ÎÎ !
)
ÎÎ! "
{
ÏÏ 
throw
ÌÌ 
new
ÌÌ '
InvalidOperationException
ÌÌ 3
(
ÌÌ3 4
$"
ÌÌ4 6B
4Unexpected error occurred deleting user with Email '
ÌÌ6 j
{
ÌÌj k
	userEmail
ÌÌk t
}
ÌÌt u
'.
ÌÌu w
"
ÌÌw x
)
ÌÌx y
;
ÌÌy z
}
ÓÓ 
}
ÔÔ 	
public
ÒÒ 
async
ÒÒ 
Task
ÒÒ 
<
ÒÒ 
string
ÒÒ  
>
ÒÒ  !!
GetUserIdByUsername
ÒÒ" 5
(
ÒÒ5 6
string
ÒÒ6 <
userName
ÒÒ= E
)
ÒÒE F
{
ÚÚ 	
var
ÛÛ 
user
ÛÛ 
=
ÛÛ 
await
ÛÛ 
_userManager
ÛÛ )
.
ÛÛ) *
FindByNameAsync
ÛÛ* 9
(
ÛÛ9 :
userName
ÛÛ: B
)
ÛÛB C
;
ÛÛC D
return
ÙÙ 
user
ÙÙ 
.
ÙÙ 
Id
ÙÙ 
;
ÙÙ 
}
ıı 	
}
ˆˆ 
}˜˜ Ê_
^C:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\VaccinationService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
VaccinationService #
:$ %
IVaccinationService& 9
{ 
private 
readonly 
IRepository $
<$ %
Vaccination% 0
>0 1"
_vaccinationRepository2 H
;H I
private 
readonly 
IRepository $
<$ %
AnimalVaccination% 6
>6 7(
_animalVaccinationRepository8 T
;T U
private 
readonly 
IMapper  
_mapper! (
;( )
public 
VaccinationService !
(! "
IRepository" -
<- .
Vaccination. 9
>9 :!
vaccinationRepository; P
,P Q
IRepository 
< 
AnimalVaccination )
>) *'
animalVaccinationRepository+ F
,F G
IMapperH O
mapperP V
)V W
{ 	"
_vaccinationRepository "
=# $!
vaccinationRepository% :
;: ;(
_animalVaccinationRepository (
=) *'
animalVaccinationRepository+ F
;F G
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< %
VaccinationForCreationDto 3
>3 4
Create5 ;
(; <%
VaccinationForCreationDto< U
vaccinationV a
)a b
{ 	
await "
_vaccinationRepository (
.( )
AddAsync) 1
(1 2
new2 5
Vaccination6 A
(A B
)B C
{ 
Name 
= 
vaccination "
." #
Name# '
,' (
Type   
=   
vaccination   "
.  " #
Type  # '
}!! 
)!! 
;!! 
await"" "
_vaccinationRepository"" (
.""( )
	SaveAsync"") 2
(""2 3
)""3 4
;""4 5
return## 
vaccination## 
;## 
}$$ 	
public&& 
async&& 
Task&& '
CreateAnimalWithVaccination&& 5
(&&5 6 
AnimalForCreationDto&&6 J
animal&&K Q
,&&Q R
Animal&&S Y
model&&Z _
)&&_ `
{'' 	
if(( 
((( 
animal(( 
.(( 
Vaccinations(( #
==(($ &
null((' +
)((+ ,
animal)) 
.)) 
Vaccinations)) #
=))$ %
new))& )
HashSet))* 1
<))1 2)
VaccinationFullForCreationDto))2 O
>))O P
())P Q
)))Q R
;))R S(
_animalVaccinationRepository++ (
.++( )
TryCreateManyToMany++) <
(++< =
animal++= C
.++C D
Vaccinations++D P
.,, 
Select,, 
(,, 
x,, 
=>,, 
new,,  
AnimalVaccination,,! 2
{-- 
VaccinationId.. !
=.." #
x..$ %
...% &
Id..& (
,..( )
AnimalId// 
=// 
model// $
.//$ %
Id//% '
,//' (
VaccinationDate00 #
=00$ %
x00& '
.00' (
VaccinationDate00( 7
,007 8
NextVaccinationDate11 '
=11( )"
SetNextVaccinationDate11* @
(11@ A
animal11A G
,11G H
x11I J
)11J K
}22 
)22 
)22 
;22 
await33 (
_animalVaccinationRepository33 .
.33. /
	SaveAsync33/ 8
(338 9
)339 :
;33: ;
}44 	
public66 
async66 
Task66 
Delete66  
(66  !
long66! %
vaccinationId66& 3
)663 4
{77 	
var88 
tempVac88 
=88 
await88 "
_vaccinationRepository88  6
.886 7
GetByIdAsync887 C
(88C D
vaccinationId88D Q
)88Q R
;88R S
await99 "
_vaccinationRepository99 (
.99( )
Remove99) /
(99/ 0
tempVac990 7
)997 8
;998 9
await:: "
_vaccinationRepository:: (
.::( )
	SaveAsync::) 2
(::2 3
)::3 4
;::4 5
};; 	
public== 
async== 
Task== 
<== 
IEnumerable== %
<==% &
VaccinationDto==& 4
>==4 5
>==5 6
GetAll==7 =
(=== >
)==> ?
{>> 	
var?? 
vaccinations?? 
=?? 
await?? $"
_vaccinationRepository??% ;
.??; <
GetAllAsync??< G
(??G H
)??H I
;??I J
var@@ 
vaccinationsDto@@ 
=@@  !
vaccinations@@" .
.@@. /
Select@@/ 5
(@@5 6
a@@6 7
=>@@8 :
_mapper@@; B
.@@B C
Map@@C F
<@@F G
VaccinationDto@@G U
>@@U V
(@@V W
a@@W X
)@@X Y
)@@Y Z
;@@Z [
returnAA 
vaccinationsDtoAA "
;AA" #
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
VaccinationDtoDD (
>DD( )
GetByIdDD* 1
(DD1 2
longDD2 6
idDD7 9
)DD9 :
{EE 	
varFF 
vaccinationFF 
=FF 
awaitFF #"
_vaccinationRepositoryFF$ :
.FF: ;
GetByIdAsyncFF; G
(FFG H
idFFH J
)FFJ K
;FFK L
returnGG 
newGG 
VaccinationDtoGG %
(GG% &
)GG& '
{HH 
IdII 
=II 
vaccinationII  
.II  !
IdII! #
,II# $
NameJJ 
=JJ 
vaccinationJJ "
.JJ" #
NameJJ# '
,JJ' (
TypeKK 
=KK 
vaccinationKK "
.KK" #
TypeKK# '
}LL 
;LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
UpdateOO  
(OO  !
VaccinationDtoOO! /
vaccinationOO0 ;
)OO; <
{PP 	
varQQ 
tempVacQQ 
=QQ 
awaitQQ "
_vaccinationRepositoryQQ  6
.QQ6 7
GetByIdAsyncQQ7 C
(QQC D
vaccinationQQD O
.QQO P
IdQQP R
)QQR S
;QQS T
tempVacRR 
.RR 
NameRR 
=RR 
vaccinationRR &
.RR& '
NameRR' +
;RR+ ,
tempVacSS 
.SS 
TypeSS 
=SS 
vaccinationSS &
.SS& '
TypeSS' +
;SS+ ,"
_vaccinationRepositoryTT "
.TT" #
UpdateTT# )
(TT) *
tempVacTT* 1
)TT1 2
;TT2 3
awaitUU "
_vaccinationRepositoryUU (
.UU( )
	SaveAsyncUU) 2
(UU2 3
)UU3 4
;UU4 5
}VV 	
publicXX 
asyncXX 
TaskXX '
UpdateAnimalWithVaccinationXX 5
(XX5 6
	AnimalDtoXX6 ?
animalXX@ F
,XXF G
AnimalXXH N
modelXXO T
)XXT U
{YY 	
ifZZ 
(ZZ 
animalZZ 
.ZZ 
VaccinationsZZ #
==ZZ$ &
nullZZ' +
)ZZ+ ,
animal[[ 
.[[ 
Vaccinations[[ #
=[[$ %
new[[& )
HashSet[[* 1
<[[1 2
VaccinationFullDto[[2 D
>[[D E
([[E F
)[[F G
;[[G H(
_animalVaccinationRepository]] (
.]]( )
TryUpdateManyToMany]]) <
(]]< =
model]]= B
.]]B C
AnimalVaccinations]]C U
,]]U V
animal]]W ]
.]]] ^
Vaccinations]]^ j
.^^ 
Select^^ 
(^^ 
x^^ 
=>^^ 
new^^ 
AnimalVaccination^^  1
{__ 
VaccinationId``  
=``! "
x``# $
.``$ %
Id``% '
,``' (
AnimalIdaa 
=aa 
animalaa $
.aa$ %
Idaa% '
,aa' (
VaccinationDatebb "
=bb# $
xbb% &
.bb& '
VaccinationDatebb' 6
,bb6 7
NextVaccinationDatecc &
=cc' ("
SetNextVaccinationDatecc) ?
(cc? @
animalcc@ F
,ccF G
xccH I
)ccI J
}dd 
)dd 
,dd 
xdd 
=>dd 
xdd 
.dd 
VaccinationIddd '
,dd' (
xdd) *
=>dd+ -
xdd. /
.dd/ 0
VaccinationDatedd0 ?
,dd? @
xddA B
=>ddC E
xddF G
.ddG H
NextVaccinationDateddH [
)dd[ \
;dd\ ]
awaitee (
_animalVaccinationRepositoryee .
.ee. /
	SaveAsyncee/ 8
(ee8 9
)ee9 :
;ee: ;
}ff 	
privatehh 
DateTimehh "
SetNextVaccinationDatehh /
(hh/ 0 
AnimalForCreationDtohh0 D
animalhhE K
,hhK L)
VaccinationFullForCreationDtohhM j
vaccinationhhk v
)hhv w
{ii 	
varjj 
animalYearsjj 
=jj 
DateTimejj &
.jj& '
Nowjj' *
-jj+ ,
animaljj- 3
.jj3 4
DateOfBirthjj4 ?
;jj? @
varkk 
nextDatekk 
=kk 
(kk 
animalYearskk '
<kk( )
DateTimekk* 2
.kk2 3
Nowkk3 6
.kk6 7
AddYearskk7 ?
(kk? @
$numkk@ A
)kkA B
-kkC D
DateTimekkE M
.kkM N
NowkkN Q
)kkQ R
?kkS T
(kkU V
vaccinationkkV a
.kka b
VaccinationDatekkb q
.kkq r
Datekkr v
.kkv w
AddDayskkw ~
(kk~ 
$num	kk Å
)
kkÅ Ç
)
kkÇ É
:
kkÑ Ö
(
kkÜ á
vaccination
kká í
.
kkí ì
VaccinationDate
kkì ¢
.
kk¢ £
Date
kk£ ß
.
kkß ®
AddYears
kk® ∞
(
kk∞ ±
$num
kk± ≤
)
kk≤ ≥
)
kk≥ ¥
;
kk¥ µ
returnll 
nextDatell 
;ll 
}mm 	
privateoo 
DateTimeoo "
SetNextVaccinationDateoo /
(oo/ 0
	AnimalDtooo0 9
animaloo: @
,oo@ A
VaccinationFullDtoooB T
vaccinationooU `
)oo` a
{pp 	
varqq 
animalYearsqq 
=qq 
DateTimeqq &
.qq& '
Nowqq' *
-qq+ ,
animalqq- 3
.qq3 4
DateOfBirthqq4 ?
;qq? @
varrr 
nextDaterr 
=rr 
(rr 
animalYearsrr '
<rr( )
DateTimerr* 2
.rr2 3
Nowrr3 6
.rr6 7
AddYearsrr7 ?
(rr? @
$numrr@ A
)rrA B
-rrC D
DateTimerrE M
.rrM N
NowrrN Q
)rrQ R
?rrS T
(rrU V
vaccinationrrV a
.rra b
VaccinationDaterrb q
.rrq r
Daterrr v
.rrv w
AddDaysrrw ~
(rr~ 
$num	rr Å
)
rrÅ Ç
)
rrÇ É
:
rrÑ Ö
(
rrÜ á
vaccination
rrá í
.
rrí ì
VaccinationDate
rrì ¢
.
rr¢ £
Date
rr£ ß
.
rrß ®
AddYears
rr® ∞
(
rr∞ ±
$num
rr± ≤
)
rr≤ ≥
)
rr≥ ¥
;
rr¥ µ
returnss 
nextDatess 
;ss 
}tt 	
}uu 
}vv ó2
XC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Services\VideoService.cs
	namespace		 	
Application		
 
.		 
Services		 
{

 
public 

class 
VideoService 
: 
IVideoService  -
{ 
private 
readonly 
IRepository $
<$ %
AnimalVideo% 0
>0 1
_videoRepository2 B
;B C
private 
readonly 
IRepository $
<$ %
Animal% +
>+ ,
_animalRepository- >
;> ?
private 
readonly 
IBlobService %
_blobService& 2
;2 3
public 
VideoService 
( 
IRepository '
<' (
AnimalVideo( 3
>3 4
videoRepository5 D
,D E
IBlobServiceF R
blobServiceS ^
,^ _
IRepository 
< 
Animal 
> 
animalRepository  0
)0 1
{ 	
_videoRepository 
= 
videoRepository .
;. /
_blobService 
= 
blobService &
;& '
_animalRepository 
= 
animalRepository  0
;0 1
} 	
public 
async 
Task *
CreateVideosWithExistingAnimal 8
(8 9
IList9 >
<> ?
	IFormFile? H
>H I
videosJ P
,P Q
longR V
animalIdW _
)_ `
{ 	
foreach 
( 
var 
video 
in !
videos" (
)( )
{ 
await )
CreateVideoWithExistingAnimal 3
(3 4
video4 9
,9 :
animalId; C
)C D
;D E
} 
} 	
public   
async   
Task   )
CreateVideoWithExistingAnimal   7
(  7 8
long  8 <
animalId  = E
,  E F
string  G M
filePath  N V
,  V W
string  X ^
fileName  _ g
)  g h
{!! 	
var"" 
isExist"" 
="" 
_animalRepository"" +
.""+ ,
Find"", 0
(""0 1
x""1 2
=>""3 5
x""6 7
.""7 8
Id""8 :
==""; =
animalId""> F
)""F G
;""G H
if## 
(## 
isExist## 
==## 
null## 
)##  
{$$ 
throw%% 
new%% !
ArgumentNullException%% /
(%%/ 0
nameof%%0 6
(%%6 7
animalId%%7 ?
)%%? @
,%%@ A
$str%%B T
)%%T U
;%%U V
}&& 
var'' 
Url'' 
='' 
await'' 
_blobService'' (
.''( )
UploadFileBlobAsync'') <
(''< =
filePath''= E
,''E F
fileName''G O
)''O P
;''P Q
var(( 
video(( 
=(( 
new(( 
AnimalVideo(( '
{)) 
Url** 
=** 
Url** 
,** 
AnimalId++ 
=++ 
animalId++ #
,++# $
FileName,, 
=,, 
fileName,, #
}-- 
;-- 
await.. 
_videoRepository.. "
..." #
AddAsync..# +
(..+ ,
video.., 1
)..1 2
;..2 3
}// 	
public11 
async11 
Task11 )
CreateVideoWithExistingAnimal11 7
(117 8
	IFormFile118 A
video11B G
,11G H
long11I M
animalId11N V
)11V W
{22 	
var33 
isExist33 
=33 
_animalRepository33 +
.33+ ,
Find33, 0
(330 1
x331 2
=>333 5
x336 7
.337 8
Id338 :
==33; =
animalId33> F
)33F G
;33G H
if44 
(44 
isExist44 
==44 
null44 
)44  
{55 
throw66 
new66 !
ArgumentNullException66 /
(66/ 0
nameof660 6
(666 7
animalId667 ?
)66? @
,66@ A
$str66B T
)66T U
;66U V
}77 
var88 
Url88 
=88 
await88 
_blobService88 (
.88( )
UploadFileBlobAsync88) <
(88< =
video88= B
)88B C
;88C D
var99 
videoDb99 
=99 
new99 
AnimalVideo99 )
{:: 
Url;; 
=;; 
Url;; 
,;; 
AnimalId<< 
=<< 
animalId<< #
,<<# $
FileName== 
=== 
video==  
.==  !
FileName==! )
}>> 
;>> 
await?? 
_videoRepository?? "
.??" #
AddAsync??# +
(??+ ,
videoDb??, 3
)??3 4
;??4 5
}@@ 	
publicBB 
asyncBB 
TaskBB 
DeleteBB  
(BB  !
longBB! %
videoIdBB& -
)BB- .
{CC 	
varDD 
videoDD 
=DD 
awaitDD 
_videoRepositoryDD .
.DD. /
GetByIdAsyncDD/ ;
(DD; <
videoIdDD< C
)DDC D
;DDD E
ifEE 
(EE 
videoEE 
==EE 
nullEE 
)EE 
{FF 
throwGG 
newGG !
ArgumentNullExceptionGG /
(GG/ 0
nameofGG0 6
(GG6 7
videoIdGG7 >
)GG> ?
,GG? @
$strGGA R
)GGR S
;GGS T
}HH 
awaitII 
_videoRepositoryII "
.II" #
RemoveII# )
(II) *
videoII* /
)II/ 0
;II0 1
awaitJJ 
_blobServiceJJ 
.JJ 
DeleteBlobAsyncJJ .
(JJ. /
videoJJ/ 4
.JJ4 5
FileNameJJ5 =
)JJ= >
;JJ> ?
}KK 	
}LL 
}MM √#
rC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\ModelValidators\AnimalModelValidator.cs
	namespace 	
Application
 
. 

Validators  
.  !
ModelValidators! 0
{		 
public

 

class

  
AnimalModelValidator

 %
:

% &
IModelValidator

' 6
{ 
private 
readonly 

IValidator #
StringValidator$ 3
;3 4
private 
readonly  
AnimalForCreationDto -
Model. 3
;3 4
private 
const 
int 
MIN_ID  
=! "
$num# $
;$ %
private 
const 
int 

MIN_LENGTH $
=% &
$num' (
;( )
private 
const 
int 

MAX_LENGTH $
=% &
$num' (
;( )
private 
const 
double 

MIN_WEIGHT '
=( )
$num* -
;- .
private 
const 
double 

MIN_HEIGHT '
=( )
$num* -
;- .
public  
AnimalModelValidator #
(# $ 
AnimalForCreationDto$ 8
model9 >
)> ?
{ 	
if 
( 
model 
== 
null 
) 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
model7 <
)< =
,= >
ExceptionStrings? O
.O P!
NullArgumentExceptionP e
)e f
;f g
Model 
= 
model 
; 
StringValidator 
= 
new !
StringValidator" 1
(1 2
model2 7
.7 8
Name8 <
,< =

MIN_LENGTH> H
,H I

MAX_LENGTHJ T
,T U
ValidationStringsV g
.g h
AnimalNameLengthh x
)x y
;y z
} 	
public 
void 
ValidateModel !
(! "
)" #
{ 	
StringValidator   
.   
Validate   $
(  $ %
)  % &
;  & '
if"" 
("" 
Model"" 
."" 
	AddressId"" 
<""  !
MIN_ID""" (
)""( )
throw## 
new## 
ValidationException## -
(##- .
ValidationStrings##. ?
.##? @
InvalidAddressId##@ P
)##P Q
;##Q R
if$$ 
($$ 
Model$$ 
.$$ 

CategoryId$$  
<$$! "
MIN_ID$$# )
)$$) *
throw%% 
new%% 
ValidationException%% -
(%%- .
ValidationStrings%%. ?
.%%? @
InvalidAddressId%%@ P
)%%P Q
;%%Q R
if&& 
(&& 
Model&& 
.&& 
DateOfBirth&& !
>=&&" $
DateTime&&% -
.&&- .
Now&&. 1
)&&1 2
throw'' 
new'' 
ValidationException'' -
(''- .
ValidationStrings''. ?
.''? @
InvalidDateOfBirth''@ R
)''R S
;''S T
if(( 
((( 
Model(( 
.(( 
	FoundDate(( 
>=((  "
DateTime((# +
.((+ ,
Now((, /
)((/ 0
throw)) 
new)) 
ValidationException)) -
())- .
ValidationStrings)). ?
.))? @
InvalidFoundDate))@ P
)))P Q
;))Q R
if** 
(** 
Model** 
.** 
Weight** 
<=** 

MIN_WEIGHT**  *
)*** +
throw++ 
new++ 
ValidationException++ -
(++- .
ValidationStrings++. ?
.++? @
InvalidWeight++@ M
)++M N
;++N O
if,, 
(,, 
Model,, 
.,, 
WithersHeight,, #
<,,$ %

MIN_HEIGHT,,& 0
),,0 1
throw-- 
new-- 
ValidationException-- -
(--- .
ValidationStrings--. ?
.--? @ 
InvalidWithersHeight--@ T
)--T U
;--U V
}// 	
}00 
}11 è
xC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\ModelValidators\RegistrationModelValidator.cs
	namespace 	
Application
 
. 

Validators  
.  !
ModelValidators! 0
{ 
public		 

class		 &
RegistrationModelValidator		 +
:		+ ,
IModelValidator		- <
{

 
private 
readonly 

IValidator #
PasswordValidator$ 5
;5 6
private 
readonly 

IValidator #
EmailValidator$ 2
;2 3
private 
readonly 

IValidator # 
PhoneNumberValidator$ 8
;8 9
public &
RegistrationModelValidator )
() *
UserRegistrationDto* =
model> C
)C D
{ 	
if 
( 
model 
== 
null 
) 
throw 
new !
ArgumentNullException .
(. /
nameof/ 5
(5 6
model6 ;
); <
,< =
ExceptionStrings> N
.N O!
NullArgumentExceptionO d
)d e
;e f
PasswordValidator 
= 
new  #
PasswordValidator$ 5
(5 6
model6 ;
.; <
Password< D
,D E
modelF K
.K L
ConfirmPasswordL [
)[ \
;\ ]
EmailValidator 
= 
new  
EmailValidator! /
(/ 0
model0 5
.5 6
Email6 ;
); <
;< = 
PhoneNumberValidator  
=! "
new# & 
PhoneNumberValidator' ;
(; <
model< A
.A B
PhoneNumberB M
)M N
;N O
} 	
public 
void 
ValidateModel !
(! "
)" #
{ 	
EmailValidator 
. 
Validate #
(# $
)$ %
;% & 
PhoneNumberValidator  
.  !
Validate! )
() *
)* +
;+ ,
PasswordValidator   
.   
Validate   &
(  & '
)  ' (
;  ( )
}!! 	
}"" 
}## ù
pC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\ParameterValidators\EmailValidator.cs
	namespace 	
Application
 
. 

Validators  
.  !
ParameterValidators! 4
{		 
public

 

class

 
EmailValidator

 
:

  

IValidator

! +
{ 
private 
string 
Email 
; 
public 
EmailValidator 
( 
string $
email% *
)* +
{ 	#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
email2 7
,7 8
nameof9 ?
(? @
email@ E
)E F
)F G
;G H
Email 
= 
email 
; 
} 	
public 
void 
Validate 
( 
) 
{ 	
try 
{ 
Email 
= 
Regex 
. 
Replace %
(% &
Email& +
,+ ,
$str- 8
,8 9
( 
match 
) 
=>  "
{ 
var 
idn  #
=$ %
new& )

IdnMapping* 4
(4 5
)5 6
;6 7
var!! 

domainName!!  *
=!!+ ,
idn!!- 0
.!!0 1
GetAscii!!1 9
(!!9 :
match!!: ?
.!!? @
Groups!!@ F
[!!F G
$num!!G H
]!!H I
.!!I J
Value!!J O
)!!O P
;!!P Q
return## "
match### (
.##( )
Groups##) /
[##/ 0
$num##0 1
]##1 2
.##2 3
Value##3 8
+##9 :

domainName##; E
;##E F
}$$ 
,$$ 
RegexOptions%% $
.%%$ %
None%%% )
,%%) *
TimeSpan%%+ 3
.%%3 4
FromMilliseconds%%4 D
(%%D E
$num%%E H
)%%H I
)%%I J
;%%J K
var'' 
match'' 
='' 
Regex'' !
.''! "
IsMatch''" )
('') *
Email''* /
,''/ 0
$str(( w
+((x y
$str)) }
,))} ~
RegexOptions**  
.**  !

IgnoreCase**! +
,**+ ,
TimeSpan**- 5
.**5 6
FromMilliseconds**6 F
(**F G
$num**G J
)**J K
)**K L
;**L M
if,, 
(,, 
!,, 
match,, 
),, 
throw-- 
new-- 
ValidationException-- 1
(--1 2
ValidationStrings--2 C
.--C D
InvalidEmail--D P
)--P Q
;--Q R
}// 
catch00 
(00 
	Exception00 
)00 
{11 
throw22 
new22 
ValidationException22 -
(22- .
ValidationStrings22. ?
.22? @
InvalidEmail22@ L
)22L M
;22M N
}33 
}44 	
}66 
}77 Ω6
sC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\ParameterValidators\PasswordValidator.cs
	namespace 	
Application
 
. 

Validators  
.  !
ParameterValidators! 4
{ 
public 

class 
PasswordValidator "
:" #

IValidator$ .
{		 
private

 
readonly

 
string

 
Password

  (
;

( )
private 
readonly 
string 
ConfirmPassword  /
;/ 0
private 
const 
int 
MIN_PASSWORD_LENGTH -
=. /
$num0 1
;1 2
private 
const 
int 
MAX_PASSWORD_LENGTH -
=. /
$num0 3
;3 4
public 
PasswordValidator  
(  !
string! '
password( 0
,0 1
string2 8
confirmPassword9 H
)H I
{ 	#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
password2 :
,: ;
nameof< B
(B C
passwordC K
)K L
)L M
;M N#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
confirmPassword2 A
,A B
nameofC I
(I J
confirmPasswordJ Y
)Y Z
)Z [
;[ \
Password 
= 
password 
;  
ConfirmPassword 
= 
confirmPassword -
;- .
} 	
public 
void 
Validate 
( 
) 
{ 	
ValidateLength 
( 
) 
; !
IncludesArabicNumeral !
(! "
)" #
;# $
IncludesLatinLetter   
(    
)    !
;  ! "
IncludesLowerCase!! 
(!! 
)!! 
;!!  
IncludesUpperCase"" 
("" 
)"" 
;""  #
IncludesNonAlphanumeric## #
(### $
)##$ %
;##% &
Match$$ 
($$ 
)$$ 
;$$ 
}%% 	
public'' 
void'' 
ValidateLength'' "
(''" #
)''# $
{(( 	
if)) 
()) 
Password)) 
.)) 
Length)) 
<))  !
MIN_PASSWORD_LENGTH))" 5
)))5 6
throw** 
new** 
ValidationException** -
(**- .
ValidationStrings**. ?
.**? @
PasswordLength**@ N
)**N O
;**O P
if++ 
(++ 
Password++ 
.++ 
Length++ 
>++  !
MAX_PASSWORD_LENGTH++" 5
)++5 6
throw,, 
new,, 
ValidationException,, -
(,,- .
ValidationStrings,,. ?
.,,? @ 
PasswordLengthExceed,,@ T
),,T U
;,,U V
}-- 	
public// 
void// 
IncludesLatinLetter// '
(//' (
)//( )
{00 	
if11 
(11 
Password11 
.11 
FirstOrDefault11 '
(11' (
ch11( *
=>11+ -
char11. 2
.112 3
IsLetter113 ;
(11; <
ch11< >
)11> ?
)11? @
==11A C
$char11D H
)11H I
throw22 
new22 
ValidationException22 -
(22- .
ValidationStrings22. ?
.22? @
PasswordLatinLetter22@ S
)22S T
;22T U
}33 	
public55 
void55 !
IncludesArabicNumeral55 )
(55) *
)55* +
{66 	
if77 
(77 
Password77 
.77 
FirstOrDefault77 '
(77' (
ch77( *
=>77+ -
char77. 2
.772 3
IsDigit773 :
(77: ;
ch77; =
)77= >
)77> ?
==77@ B
$char77C G
)77G H
throw88 
new88 
ValidationException88 -
(88- .
ValidationStrings88. ?
.88? @"
PasswordArabicNumerals88@ V
)88V W
;88W X
}99 	
public;; 
void;; 
IncludesUpperCase;; %
(;;% &
);;& '
{<< 	
if== 
(== 
Password== 
.== 
FirstOrDefault== '
(==' (
ch==( *
=>==+ -
char==. 2
.==2 3
IsUpper==3 :
(==: ;
ch==; =
)=== >
)==> ?
====@ B
$char==C G
)==G H
throw>> 
new>> 
ValidationException>> -
(>>- .
ValidationStrings>>. ?
.>>? @
PasswordUpperCase>>@ Q
)>>Q R
;>>R S
}?? 	
publicAA 
voidAA 
IncludesLowerCaseAA %
(AA% &
)AA& '
{BB 	
ifCC 
(CC 
PasswordCC 
.CC 
FirstOrDefaultCC '
(CC' (
chCC( *
=>CC+ -
charCC. 2
.CC2 3
IsLowerCC3 :
(CC: ;
chCC; =
)CC= >
)CC> ?
==CC@ B
$charCCC G
)CCG H
throwDD 
newDD 
ValidationExceptionDD -
(DD- .
ValidationStringsDD. ?
.DD? @
PasswordLowerCaseDD@ Q
)DDQ R
;DDR S
}FF 	
publicHH 
voidHH #
IncludesNonAlphanumericHH +
(HH+ ,
)HH, -
{II 	
foreachJJ 
(JJ 
varJJ 
chJJ 
inJJ 
PasswordJJ '
)JJ' (
ifKK 
(KK 
!KK 
charKK 
.KK 
IsDigitKK !
(KK! "
chKK" $
)KK$ %
&&KK& (
!KK) *
charKK* .
.KK. /
IsLetterKK/ 7
(KK7 8
chKK8 :
)KK: ;
)KK; <
throwLL 
newLL 
ValidationExceptionLL 1
(LL1 2
ValidationStringsLL2 C
.LLC D 
PasswordAlphanumericLLD X
)LLX Y
;LLY Z
}MM 	
publicOO 
voidOO 
MatchOO 
(OO 
)OO 
{PP 	
ifQQ 
(QQ 
!QQ 
PasswordQQ 
.QQ 
EqualsQQ  
(QQ  !
ConfirmPasswordQQ! 0
)QQ0 1
)QQ1 2
throwRR 
newRR 
ValidationExceptionRR 1
(RR1 2
ValidationStringsRR2 C
.RRC D
PasswordsDoNotMatchRRD W
)RRW X
;RRX Y
}SS 	
}UU 
}VV ê
vC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\ParameterValidators\PhoneNumberValidator.cs
	namespace 	
Application
 
. 

Validators  
.  !
ParameterValidators! 4
{ 
public 

class  
PhoneNumberValidator %
:% &

IValidator' 1
{		 
private

 
readonly

 
string

 
PhoneNumber

  +
;

+ ,
public  
PhoneNumberValidator #
(# $
string$ *
phoneNumber+ 6
)6 7
{ 	#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
phoneNumber2 =
,= >
nameof? E
(E F
phoneNumberF Q
)Q R
)R S
;S T
PhoneNumber 
= 
phoneNumber %
;% &
} 	
public 
void 
Validate 
( 
) 
{ 	
if 
( 
! 
Regex 
. 
Match 
( 
PhoneNumber (
,( )
$str* :
): ;
.; <
Success< C
)C D
throw 
new 
ValidationException -
(- .
ValidationStrings. ?
.? @
InvalidPhoneNumber@ R
)R S
;S T
} 	
} 
} ˜
qC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\ParameterValidators\StringValidator.cs
	namespace 	
Application
 
. 

Validators  
.  !
ParameterValidators! 4
{ 
public 

class 
StringValidator  
:  !

IValidator" ,
{ 
private 
readonly 
string 
Text  $
;$ %
private

 
readonly

 
int

 
	MaxLength

 &
;

& '
private 
readonly 
int 
	MinLength &
;& '
private 
readonly 
string 
ExceptionMessage  0
;0 1
public 
StringValidator 
( 
string %
text& *
,* +
int, /
	minLength0 9
,9 :
int; >
	maxLength? H
,H I
stringJ P
exceptionMessageQ a
)a b
{ 	#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
text2 6
,6 7
nameof8 >
(> ?
text? C
)C D
)D E
;E F#
StringArgumentValidator #
.# $
IsNullOrEmpty$ 1
(1 2
exceptionMessage2 B
,B C
nameofD J
(J K
exceptionMessageK [
)[ \
)\ ]
;] ^
Text 
= 
text 
; 
	MaxLength 
= 
	maxLength !
;! "
	MinLength 
= 
	minLength !
;! "
ExceptionMessage 
= 
exceptionMessage /
;/ 0
} 	
public 
void 
Validate 
( 
) 
{ 	
if 
( 
Text 
. 
Length 
< 
	MinLength '
&&( *
Text+ /
./ 0
Length0 6
>7 8
	MaxLength9 B
)B C
throw 
new 
ValidationException -
(- .
ExceptionMessage. >
)> ?
;? @
} 	
} 
}   Ò
eC:\Users\Admin\Desktop\lv-epmrduapap\AnimalsProject\Application\Validators\StringArgumentValidator.cs
	namespace 	
Application
 
. 

Validators  
{ 
public 

static 
class #
StringArgumentValidator /
{ 
public 
static 
void 
IsNullOrEmpty (
(( )
string) /
param0 5
,5 6
string7 =
	paramName> G
)G H
{		 	
if

 
(

 
string

 
.

 
IsNullOrEmpty

 $
(

$ %
param

% *
)

* +
)

+ ,
{ 
throw 
new !
ArgumentNullException /
(/ 0
	paramName0 9
,9 :
ExceptionStrings; K
.K L'
NullArgumentStringExceptionL g
)g h
;h i
} 
} 	
} 
} 