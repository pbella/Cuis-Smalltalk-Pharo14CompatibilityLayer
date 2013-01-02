'From Cuis 4.1 of 12 December 2012 [latest update: #1528] on 2 January 2013 at 8:17:13 am'!
'Description Please enter a description for this package '!
!classDefinition: #MailAddressParser category: #'Cuis-Network-RFC822'!
Object subclass: #MailAddressParser
	instanceVariableNames: 'tokens addresses curAddrTokens'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-RFC822'!
!classDefinition: 'MailAddressParser class' category: #'Cuis-Network-RFC822'!
MailAddressParser class
	instanceVariableNames: ''!

!classDefinition: #MailAddressToken category: #'Cuis-Network-RFC822'!
Object subclass: #MailAddressToken
	instanceVariableNames: 'type text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-RFC822'!
!classDefinition: 'MailAddressToken class' category: #'Cuis-Network-RFC822'!
MailAddressToken class
	instanceVariableNames: ''!

!classDefinition: #MailAddressTokenizer category: #'Cuis-Network-RFC822'!
Stream subclass: #MailAddressTokenizer
	instanceVariableNames: 'cachedToken text pos'
	classVariableNames: 'CSNonAtom CSNonSeparators CSParens CSSpecials'
	poolDictionaries: ''
	category: 'Cuis-Network-RFC822'!
!classDefinition: 'MailAddressTokenizer class' category: #'Cuis-Network-RFC822'!
MailAddressTokenizer class
	instanceVariableNames: ''!


!MailAddressParser commentStamp: '<historical>' prior: 0!
Parse mail addresses.  The basic syntax is:

!MailAddressToken commentStamp: '<historical>' prior: 0!
a single token from an RFC822 mail address.  Used internally in MailAddressParser!

!MailAddressTokenizer commentStamp: '<historical>' prior: 0!
Divides an address into tokens, as specified in RFC 822.  Used by MailAddressParser.!

!CharacterSet class methodsFor: '*Cuis-Network-RFC822' stamp: 'gsa 12/7/2012 10:48'!
empty
 	"return an empty set of characters"
	^self new! !

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:31'!
addToAddress

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:30'!
finishAddress

!MailAddressParser methodsFor: 'parsing' stamp: 'ls 9/13/1998 02:08'!
grabAddressWithRoute

!MailAddressParser methodsFor: 'parsing' stamp: 'bf 3/12/2000 20:06'!
grabAddresses

!MailAddressParser methodsFor: 'parsing' stamp: 'ls 10/23/1998 13:39'!
grabBasicAddress

!MailAddressParser methodsFor: 'parsing' stamp: 'ls 9/13/1998 02:07'!
grabGroupAddress

!MailAddressParser methodsFor: 'private-initialization' stamp: 'ls 9/13/1998 01:25'!
initialize: tokenList

!MailAddressParser methodsFor: 'parsing' stamp: 'ls 9/13/1998 02:08'!
removePhrase

!MailAddressParser methodsFor: 'building address list' stamp: 'ls 9/13/1998 01:30'!
startNewAddress

!MailAddressParser class methodsFor: 'parsing' stamp: 'ls 9/13/1998 01:34'!
addressesIn: aString

!MailAddressToken methodsFor: 'printing' stamp: 'ls 9/12/1998 20:40'!
printOn: aStream

!MailAddressToken methodsFor: 'access' stamp: 'ls 9/12/1998 20:42'!
text

!MailAddressToken methodsFor: 'access' stamp: 'ls 9/12/1998 20:42'!
type

!MailAddressToken methodsFor: 'private' stamp: 'ls 9/12/1998 20:24'!
type: type0  text: text0

!MailAddressToken class methodsFor: 'instance creation' stamp: 'ls 9/12/1998 20:31'!
type: type  text: text

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:53'!
atEnd

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:51'!
atEndOfChars

!MailAddressTokenizer methodsFor: 'initialization' stamp: 'ls 9/12/1998 20:13'!
initialize: aString

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:51'!
next

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:44'!
nextAtom

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:52'!
nextChar

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'mas 2/8/2001 11:36'!
nextComment

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/13/1998 01:39'!
nextDomainLiteral

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'PeterHugossonMiller 9/3/2009 10:02'!
nextQuotedString

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:44'!
nextSpecial

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'bf 3/12/2000 19:53'!
nextToken

!MailAddressTokenizer methodsFor: 'stream protocol' stamp: 'ls 9/12/1998 20:53'!
peek

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:15'!
peekChar

!MailAddressTokenizer methodsFor: 'tokenizing' stamp: 'ls 9/12/1998 20:14'!
skipSeparators

!MailAddressTokenizer class methodsFor: 'instance creation' stamp: 'ls 9/12/1998 20:54'!
forString: aString

!MailAddressTokenizer class methodsFor: 'initialization' stamp: 'gsa 12/7/2012 11:01'!
initialize
	"Initalize class variables using   MailAddressTokenizer initialize"

	| atomChars |

	CSParens := CharacterSet empty.
	CSParens addAll: '()'.

	CSSpecials := CharacterSet empty.
	CSSpecials addAll: '()<>@,;:\".[]'.

	CSNonSeparators := CharacterSet separators complement.


	"(from RFC 2822)"
	atomChars := CharacterSet empty.
	atomChars addAll: ($A to: $Z).
	atomChars addAll: ($a to: $z).
	atomChars addAll: ($0 to: $9).
	atomChars addAll: '!!#$%^''*+-/=?^_`{|}~'.

	CSNonAtom :=  atomChars complement.! !

!MailAddressTokenizer class methodsFor: 'instance creation' stamp: 'ls 9/13/1998 01:34'!
tokensIn: aString
MailAddressTokenizer initialize!