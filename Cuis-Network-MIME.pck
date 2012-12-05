'From Cuis 4.0 of 21 April 2012 [latest update: #1308] on 5 December 2012 at 10:08:19 am'!
'Description Please enter a description for this package '!
!classDefinition: #MIMEDocument category: #'Cuis-Network-MIME'!
Object subclass: #MIMEDocument
	instanceVariableNames: 'type contents contentStream uri'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'MIMEDocument class' category: #'Cuis-Network-MIME'!
MIMEDocument class
	instanceVariableNames: ''!

!classDefinition: #MIMELocalFileDocument category: #'Cuis-Network-MIME'!
MIMEDocument subclass: #MIMELocalFileDocument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'MIMELocalFileDocument class' category: #'Cuis-Network-MIME'!
MIMELocalFileDocument class
	instanceVariableNames: ''!

!classDefinition: #MIMEType category: #'Cuis-Network-MIME'!
Object subclass: #MIMEType
	instanceVariableNames: 'main sub parameters'
	classVariableNames: 'DefaultSuffixes StandardMIMEMappings'
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'MIMEType class' category: #'Cuis-Network-MIME'!
MIMEType class
	instanceVariableNames: ''!

!classDefinition: #MimeConverter category: #'Cuis-Network-MIME'!
Object subclass: #MimeConverter
	instanceVariableNames: 'dataStream mimeStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'MimeConverter class' category: #'Cuis-Network-MIME'!
MimeConverter class
	instanceVariableNames: ''!

!classDefinition: #Base64MimeConverter category: #'Cuis-Network-MIME'!
MimeConverter subclass: #Base64MimeConverter
	instanceVariableNames: 'data multiLine'
	classVariableNames: 'FromCharTable ToCharTable'
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'Base64MimeConverter class' category: #'Cuis-Network-MIME'!
Base64MimeConverter class
	instanceVariableNames: ''!

!classDefinition: #QuotedPrintableMimeConverter category: #'Cuis-Network-MIME'!
MimeConverter subclass: #QuotedPrintableMimeConverter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'QuotedPrintableMimeConverter class' category: #'Cuis-Network-MIME'!
QuotedPrintableMimeConverter class
	instanceVariableNames: ''!

!classDefinition: #RFC2047MimeConverter category: #'Cuis-Network-MIME'!
QuotedPrintableMimeConverter subclass: #RFC2047MimeConverter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-MIME'!
!classDefinition: 'RFC2047MimeConverter class' category: #'Cuis-Network-MIME'!
RFC2047MimeConverter class
	instanceVariableNames: ''!


!Base64MimeConverter commentStamp: '<historical>' prior: 0!
This class encodes and decodes data in Base64 format.  This is MIME encoding.  We translate a whole stream at once, taking a Stream as input and giving one as output.  Returns a whole stream for the caller to use.           0 A            17 R            34 i            51 z           1 B            18 S            35 j            52 0           2 C            19 T            36 k            53 1           3 D            20 U            37 l            54 2           4 E            21 V            38 m            55 3           5 F            22 W            39 n            56 4           6 G            23 X            40 o            57 5           7 H            24 Y            41 p            58 6           8 I            25 Z            42 q            59 7           9 J            26 a            43 r            60 8          10 K            27 b            44 s            61 9          11 L            28 c            45 t            62 +          12 M            29 d            46 u            63 /          13 N            30 e            47 v          14 O            31 f            48 w         (pad) =          15 P            32 g            49 x          16 Q            33 h            50 yOutbound: bytes are broken into 6 bit chunks, and the 0-63 value is converted to a character.  3 data bytes go into 4 characters.Inbound: Characters are translated in to 0-63 values and shifted into 8 bit bytes.(See: N. Borenstein, Bellcore, N. Freed, Innosoft, Network Working Group, Request for Comments: RFC 1521, September 1993, MIME (Multipurpose Internet Mail Extensions) Part One: Mechanisms for Specifying and Describing the Format of Internet Message Bodies. Sec 6.2)By Ted Kaehler, based on Tim Olson's Base64Filter.!

!MIMEDocument commentStamp: 'gsa 12/5/2012 08:44' prior: 0!
a MIME object, along with its type and the URL it was found at (if any)

See comment in method #parts - GSA 05/12/2012!

!MIMELocalFileDocument commentStamp: '<historical>' prior: 0!
For local files, we do not read the entire contents unless we absolutely have to.!

!MIMEType commentStamp: '<historical>' prior: 0!
I guess and represent the content type of a file. For a description of what is MIME, seehttp://en.wikipedia.org/wiki/Internet_media_typehttp://en.wikipedia.org/wiki/MIMEExamples:MIMEType forFileNameReturnMimeTypesOrDefault: 'index.html'.MIMEType fromMIMEString: 'application/zip'.!

!MimeConverter commentStamp: '<historical>' prior: 0!
I'm the base class for converting some data from a MIME type to another. Subclasses should implement #mimeDecode and #mimeEncode.!

!QuotedPrintableMimeConverter commentStamp: '<historical>' prior: 0!
I do quoted printable MIME decoding as specified in RFC 2045 "MIME Part One: Format of Internet Message Bodies".Short version of RFC2045, Sect. 6.7:	(1) Any octet, except a CR or LF that is part of a CRLF line break of the canonical (standard) form of the data being encoded, may be represented by an "=" followed by a two digit hexadecimal representation of the octet's value. [...]	(2) Octets with decimal values of 33 through 60 inclusive, and 62 through 126, inclusive, MAY be represented as the US-ASCII characters which correspond to those octets [...].	(3) Octets with values of 9 and 32 MAY be represented as US-ASCII TAB (HT) and SPACE characters, respectively, but MUST NOT be so represented at the end of an encoded line.  [...]	(4) A line break in a text body, represented as a CRLF sequence in the text canonical form, must be represented by a (RFC 822) line break, which is also a CRLF sequence, in the Quoted-Printable encoding.  [...]	(5) The Quoted-Printable encoding REQUIRES that encoded lines be no more than 76 characters long.  If longer lines are to be encoded with the Quoted-Printable encoding, "soft" line breaks must be used.  An equal sign as the last character on a encoded line indicates such a non-significant ("soft") line break in the encoded text.--bf 11/27/1998 16:50!

!RFC2047MimeConverter commentStamp: '<historical>' prior: 0!
I do quoted printable MIME decoding as specified in RFC 2047 ""MIME Part Three: Message Header Extensions for Non-ASCII Text". See String>>decodeMimeHeader!

!Base64MimeConverter methodsFor: 'initialize-release' stamp: 'dik 9/22/2010 18:09'!
initialize 	super initialize.			multiLine := true.! !

!Base64MimeConverter methodsFor: 'conversion' stamp: 'tk 12/9/97 13:34'!
mimeDecode	"Convert a stream in base 64 with only a-z,A-Z,0-9,+,/ to a full byte stream of characters.  Reutrn a whole stream for the user to read."	| nibA nibB nibC nibD |	[mimeStream atEnd] whileFalse: [		(nibA := self nextValue) ifNil: [^ dataStream].		(nibB := self nextValue) ifNil: [^ dataStream].		dataStream nextPut: ((nibA bitShift: 2) + (nibB bitShift: -4)) asCharacter.		nibB := nibB bitAnd: 16rF.		(nibC := self nextValue) ifNil: [^ dataStream].		dataStream nextPut: ((nibB bitShift: 4) + (nibC bitShift: -2)) asCharacter.		nibC := nibC bitAnd: 16r3.		(nibD := self nextValue) ifNil: [^ dataStream].		dataStream nextPut: ((nibC bitShift: 6) + nibD) asCharacter.		].	^ dataStream! !

!Base64MimeConverter methodsFor: 'conversion' stamp: 'tk 12/9/97 13:39'!
mimeDecodeToByteArray	"Convert a stream in base 64 with only a-z,A-Z,0-9,+,/ to a full ByteArray of 0-255 values.  Reutrn a whole stream for the user to read."	| nibA nibB nibC nibD |	[mimeStream atEnd] whileFalse: [		(nibA := self nextValue) ifNil: [^ dataStream].		(nibB := self nextValue) ifNil: [^ dataStream].		dataStream nextPut: ((nibA bitShift: 2) + (nibB bitShift: -4)).		nibB := nibB bitAnd: 16rF.		(nibC := self nextValue) ifNil: [^ dataStream].		dataStream nextPut: ((nibB bitShift: 4) + (nibC bitShift: -2)).		nibC := nibC bitAnd: 16r3.		(nibD := self nextValue) ifNil: [^ dataStream].		dataStream nextPut: ((nibC bitShift: 6) + nibD).		].	^ dataStream! !

!Base64MimeConverter methodsFor: 'conversion' stamp: 'dik 9/22/2010 18:07'!
mimeEncode	"Convert from data to 6 bit characters."	| phase1 phase2 raw nib lineLength |	phase1 := phase2 := false.	lineLength := 0.	[dataStream atEnd] whileFalse: [		(multiLine and:[lineLength >= 70]) ifTrue: [ mimeStream cr.  lineLength := 0. ].		data := raw := dataStream next asInteger.		nib := (data bitAnd: 16rFC) bitShift: -2.		mimeStream nextPut: (ToCharTable at: nib+1).		(raw := dataStream next) ifNil: [raw := 0. phase1 := true].		data := ((data bitAnd: 3) bitShift: 8) + raw asInteger.		nib := (data bitAnd: 16r3F0) bitShift: -4.		mimeStream nextPut: (ToCharTable at: nib+1).		(raw := dataStream next) ifNil: [raw := 0. phase2 := true].		data := ((data bitAnd: 16rF) bitShift: 8) + (raw asInteger).		nib := (data bitAnd: 16rFC0) bitShift: -6.		mimeStream nextPut: (ToCharTable at: nib+1).		nib := (data bitAnd: 16r3F).		mimeStream nextPut: (ToCharTable at: nib+1).		lineLength := lineLength + 4.].	phase1 ifTrue: [mimeStream skip: -2; nextPut: $=; nextPut: $=.			^ mimeStream].	phase2 ifTrue: [mimeStream skip: -1; nextPut: $=.			^ mimeStream].! !

!Base64MimeConverter methodsFor: 'accessing' stamp: 'dik 9/22/2010 18:07'!
multiLine	^ multiLine! !

!Base64MimeConverter methodsFor: 'accessing' stamp: 'dik 9/22/2010 18:07'!
multiLine: anObject	multiLine := anObject! !

!Base64MimeConverter methodsFor: 'conversion' stamp: 'tk 12/9/97 13:21'!
nextValue	"The next six bits of data char from the mimeStream, or nil.  Skip all other chars"	| raw num |	[raw := mimeStream next.	raw ifNil: [^ nil].	"end of stream"	raw == $= ifTrue: [^ nil].	num := FromCharTable at: raw asciiValue + 1.	num ifNotNil: [^ num].	"else ignore space, return, tab, ..."	true] whileTrue.! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'damiencassou 5/30/2008 11:45'!
decodeInteger: mimeString 	"Decode the MIME string into an integer of any length"	| bytes sum |	bytes := (Base64MimeConverter mimeDecodeToBytes: mimeString readStream) contents.	sum := 0.	bytes reverseDo: [ :by | sum := sum * 256 + by ].	^ sum! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 2/21/2000 17:22'!
encodeInteger: int	| strm |	"Encode an integer of any length and return the MIME string"	strm := ReadWriteStream on: (ByteArray new: int digitLength).	1 to: int digitLength do: [:ii | strm nextPut: (int digitAt: ii)].	strm reset.	^ ((self mimeEncode: strm) contents) copyUpTo: $=	"remove padding"! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 12/9/97 13:53'!
initialize	FromCharTable := Array new: 256.	"nils"	ToCharTable := Array new: 64.	($A asciiValue to: $Z asciiValue) doWithIndex: [:val :ind | 		FromCharTable at: val+1 put: ind-1.		ToCharTable at: ind put: val asCharacter].	($a asciiValue to: $z asciiValue) doWithIndex: [:val :ind | 		FromCharTable at: val+1 put: ind+25.		ToCharTable at: ind+26 put: val asCharacter].	($0 asciiValue to: $9 asciiValue) doWithIndex: [:val :ind | 		FromCharTable at: val+1 put: ind+25+26.		ToCharTable at: ind+26+26 put: val asCharacter].	FromCharTable at: $+ asciiValue + 1 put: 62.	ToCharTable at: 63 put: $+.	FromCharTable at: $/ asciiValue + 1 put: 63.	ToCharTable at: 64 put: $/.	! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 12/12/97 11:41'!
mimeDecodeToBytes: aStream 	"Return a RWBinaryOrTextStream of the original ByteArray.  aStream has only 65 innocuous character values.  aStream is not binary.  (See class comment). 4 bytes in aStream goes to 3 bytes in output."	| me |	aStream position: 0.	me := self new mimeStream: aStream.	me dataStream: (RWBinaryOrTextStream on: (ByteArray new: aStream size * 3 // 4)).	me mimeDecodeToByteArray.	me dataStream position: 0.	^ me dataStream! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 12/9/97 13:01'!
mimeDecodeToChars: aStream 	"Return a ReadWriteStream of the original String.  aStream has only 65 innocuous character values.  It is not binary.  (See class comment). 4 bytes in aStream goes to 3 bytes in output."	| me |	aStream position: 0.	me := self new mimeStream: aStream.	me dataStream: (ReadWriteStream on: (String new: aStream size * 3 // 4)).	me mimeDecode.	me dataStream position: 0.	^ me dataStream! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'dik 9/22/2010 18:08'!
mimeEncode: aStream	"Return a ReadWriteStream of characters.  The data of aStream is encoded as 65 innocuous characters.  (See class comment). 3 bytes in aStream goes to 4 bytes in output."	^self mimeEncode: aStream multiLine: true! !

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'dik 9/22/2010 18:08'!
mimeEncode: aStream multiLine: aBool	"Return a ReadWriteStream of characters.  The data of aStream is encoded as 65 innocuous characters.  (See class comment). 3 bytes in aStream goes to 4 bytes in output."	| me |	me := self new dataStream: aStream.	me multiLine: aBool.	me mimeStream: (ReadWriteStream on: (String new: aStream size + 20 * 4 // 3)).	me mimeEncode.	me mimeStream position: 0.	^ me mimeStream! !

!MIMEDocument methodsFor: 'compatibility' stamp: 'mir 3/22/2005 22:55'!
content	^self contents! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 18:19'!
contentStream	"Answer a RWBinaryOrTextStream on the contents."	contentStream		ifNil: [contentStream := contents				ifNil: [self contentStreamOnURI]				ifNotNil: [(RWBinaryOrTextStream with: self contents) reset]].	^contentStream! !

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/27/2005 10:53'!
contentStream: aStream mimeType: aMimeType uri: aUri	type := aMimeType.	contentStream := aStream.	uri := aUri! !

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/27/2005 10:50'!
contentStreamOnURI	^self uri contentStream! !

!MIMEDocument methodsFor: 'compatibility' stamp: 'mir 3/4/2002 17:46'!
contentType	^self mimeType asString! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/24/2005 17:26'!
contents	"Answer the receiver's raw data. If we have a stream to read from. Read in the data, cache it and discard the stream."	contents ifNil: [contents := self getContentFromStream].	^contents! !

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/27/2005 10:53'!
contents: contentStringOrBytes mimeType: aMimeType uri: aURI	type := aMimeType.	contents := contentStringOrBytes.	uri := aURI! !

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/26/2005 11:12'!
discardContentStream	contentStream ifNotNil: [contentStream close].	contentStream := nil! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/26/2005 11:13'!
discardContents	contents := nil.	self discardContentStream! !

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/24/2005 17:37'!
getContentFromStream	| streamContents |	streamContents := self contentStream contents.	self discardContentStream.	^streamContents! !

!MIMEDocument methodsFor: 'testing' stamp: 'sbw 1/21/2001 11:13'!
isGif	^ self mainType = 'image'		and: [self subType = 'gif']! !

!MIMEDocument methodsFor: 'testing' stamp: 'sbw 1/21/2001 11:15'!
isJpeg	^ self mainType = 'image'		and: [self subType = 'jpeg' | (self subType = 'jpg')]! !

!MIMEDocument methodsFor: 'testing' stamp: 'ls 4/30/2000 18:07'!
isMultipart	^self mainType = 'multipart'! !

!MIMEDocument methodsFor: 'testing' stamp: 'ls 4/30/2000 18:45'!
isMultipartAlternative	"whether the document is in a multipart format where the parts are alternates"	^ self contentType = 'multipart/alternative'! !

!MIMEDocument methodsFor: 'testing' stamp: 'st 9/18/2004 23:37'!
isPng	^ self mainType = 'image'		and: [self subType = 'png']! !

!MIMEDocument methodsFor: 'testing' stamp: 'st 9/18/2004 23:38'!
isPnm	^ self mainType = 'image'		and: [self subType = 'pnm']! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 17:19'!
mainType	^self mimeType main! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 17:19'!
mimeType	^type! !

!MIMEDocument methodsFor: 'accessing' stamp: 'gsa 12/5/2012 08:43'!
parts
	"Return the parts of this message.  There is a far more reliable implementation of parts in MailMessage, but for now we are continuing to use this implementation"
	| parseStream currLine separator msgStream messages |
" Commented by gsa because we don't have LimitingLineStreamWrapper nor MailMessage in Cuis (yet)"
"
	self isMultipart ifFalse: 
		[ ^ #() ].
	parseStream := self content readStream.
	currLine := ''.
	[ '--*' match: currLine ] whileFalse: [ currLine := parseStream nextLine ].
	separator := currLine copy.
	msgStream := LimitingLineStreamWrapper 
		on: parseStream
		delimiter: separator.
	messages := OrderedCollection new.
	[ parseStream atEnd ] whileFalse: 
		[ messages add: msgStream upToEnd.
		msgStream skipThisLine ].
	^ messages collect: [ :e | MailMessage from: e ]"! !

!MIMEDocument methodsFor: 'printing' stamp: 'mir 3/26/2005 17:48'!
printOn: aStream	aStream nextPutAll: self class name;		nextPutAll: ' (';		nextPutAll: self mimeType asString;		nextPutAll: ', '.	contents		ifNotNil: [aStream			nextPutAll: self contents size printString;			nextPutAll: ' bytes)']		ifNil: [aStream nextPutAll: 'unknown size)'].! !

!MIMEDocument methodsFor: 'private' stamp: 'mir 11/8/2005 13:39'!
privateContent: aString	contents := aString! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 17:19'!
subType	^self mimeType sub! !

!MIMEDocument methodsFor: 'accessing' stamp: 'sma 4/28/2000 14:48'!
type	"Deprecated. Use contentType instead."	^ self contentType! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 16:24'!
type: mimeType	type := mimeType! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/27/2005 10:55'!
uri	"Answer the URL the receiver was downloaded from.  It may legitimately be nil."	^uri! !

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/27/2005 10:53'!
uri: aURI	uri := aURI! !

!MIMEDocument methodsFor: 'accessing' stamp: 'asasa 8/31/2010 20:40'!
url	"Answer the URL the receiver was downloaded from.  It may legitimately be nil."	^ uri ifNotNil:[uri asString asUrl]! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'ls 7/23/1998 22:59'!
content: aString	^self contentType: self defaultContentType  content: aString! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 18:26'!
contentStream: aStream	^self contentStream: aStream mimeType: MIMEType defaultStream! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:52'!
contentStream: aStream mimeType: aMimeType 	"create a MIMEDocument with the given content-type and contentStream"	"MIMEDocument mimeType: 'text/plain' asMIMEType contentStream: (ReadStream on: 'This is a test')"		^self contentStream: aStream mimeType: aMimeType uri: aStream uri! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:52'!
contentStream: aStream mimeType: aMimeType uri: aURI	"create a MIMEDocument with the given content-type and contentStream"	"MIMEDocument mimeType: 'text/plain' asMIMEType contentStream: (ReadStream on: 'This is a test')"		^self new contentStream: aStream mimeType: aMimeType uri: aURI! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'MarcusDenker 11/30/2010 11:09'!
contentType: aMIMEType  content: content	"create a MIMEDocument with the given content-type and content"	"MIMEDocument contentType: 'text/plain' content: 'This is a test'"		| ans idx |	ans := self new.	ans privateContent: content.	"parse the content-type"	(aMIMEType isNil or: [		idx := aMIMEType asString  indexOf: $/.		idx = 0]) 	ifTrue: [ 		ans type: (MIMEType main: 'application' sub: 'octet-stream')]	ifFalse: [ 		ans type: (MIMEType main: (aMIMEType asString copyFrom: 1 to: idx-1) sub:(aMIMEType asString copyFrom: idx+1 to: aMIMEType asString size))].	^ans! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'Noury 6/15/2009 22:54'!
contentType: type content: content url: url	^self contents: content mimeType: (MIMEType fromMIMEString: type asString) uri: url! !

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 12:25'!
contentTypeFormData	^'application/x-www-form-urlencoded'! !

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 13:05'!
contentTypeHtml	^'text/html'! !

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 12:25'!
contentTypeMultipart	^'multipart/form-data'! !

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 13:05'!
contentTypePlainText	^'text/plain'! !

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 13:05'!
contentTypeXml	^'text/xml'! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 18:23'!
contents: aString	^self contents: aString mimeType: MIMEType defaultStream! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:54'!
contents: content mimeType: aMimeType 	"create a MIMEDocument with the given content-type and content"	"MIMEDocument mimeType: 'text/plain' asMIMEType content: 'This is a test'"		^self contents: content mimeType: aMimeType uri: nil! !

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:57'!
contents: content mimeType: aMimeType uri: aURL	"create a MIMEDocument with the given content-type and content"	"MIMEDocument mimeType: 'text/plain' asMIMEType content: 'This is a test'"		^self new contents: content mimeType: aMimeType uri: aURL! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 12:36'!
defaultContentType	^self defaultMIMEType asString! !

!MIMEDocument class methodsFor: 'accessing' stamp: 'michael.rueger 2/25/2009 12:35'!
defaultMIMEType	^MIMEType fromMIMEString: 'application/octet-stream'! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 13:05'!
guessContentTypeFromExtension: ext	"guesses a content type from the extension"	^(self guessTypeFromExtension: ext) asString! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 13:05'!
guessTypeFromExtension: ext	"guesses a content type from the extension"	^self guessTypeFromName: ext! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'MarcusDenker 10/21/2011 14:58'!
guessTypeFromName: url	"guesses a content type from the url"	^ MIMEType forFileNameReturnSingleMimeTypeOrNil: url asString! !

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 12:29'!
resetMIMEdatabase	"no-op for catching Kom override"! !

!MIMELocalFileDocument methodsFor: 'accessing' stamp: 'michael.rueger 1/8/2009 19:19'!
content	^contents ifNil:[contents := contentStream contentsOfEntireFile].! !

!MIMELocalFileDocument methodsFor: 'accessing' stamp: 'ar 4/24/2001 16:27'!
contentStream	^contentStream ifNil:[super contentStream]! !

!MIMELocalFileDocument methodsFor: 'accessing' stamp: 'michael.rueger 1/8/2009 19:20'!
contentStream: aFileStream	contentStream := aFileStream.	contents := nil.! !

!MIMELocalFileDocument class methodsFor: 'instance creation' stamp: 'ar 4/24/2001 16:31'!
contentType: aString contentStream: aStream	^(self contentType: aString content: nil) contentStream: aStream! !

!MIMEType methodsFor: 'comparing' stamp: 'mir 3/6/2002 12:11'!
= anotherObject	anotherObject class == self class		ifFalse: [^false].	^self main = anotherObject main		and: [self sub = anotherObject sub]! !

!MIMEType methodsFor: 'converting' stamp: 'mir 3/4/2002 18:21'!
asMIMEType	^self! !

!MIMEType methodsFor: 'comparing' stamp: 'JMM 7/26/2006 16:26'!
beginsWith: aString	^self printString beginsWith: aString! !

!MIMEType methodsFor: 'comparing' stamp: 'mir 12/17/2005 14:17'!
hash	^self main hash bitXor: self sub hash! !

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
main	^main! !

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
main: mainType	main := mainType! !

!MIMEType methodsFor: 'accessing' stamp: 'mir 2/16/2006 23:33'!
parameters: params	parameters := params! !

!MIMEType methodsFor: 'printing' stamp: 'mir 3/4/2002 16:14'!
printOn: stream	stream		nextPutAll: main; nextPut: $/ ; nextPutAll: sub! !

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
sub	^sub! !

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
sub: subType	sub := subType! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/6/2002 13:07'!
contentTypeURLEncoded	^self main: 'application' sub: 'x-www-form-urlencoded'! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 17:06'!
defaultHTML	^self main: 'text' sub: 'html'! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 15:25'!
defaultStream	^self main: 'application' sub: 'octet-stream'! !

!MIMEType class methodsFor: 'accessing' stamp: 'michael.rueger 2/24/2009 18:42'!
defaultSuffixes	"MIMEType defaultSuffixes"	^DefaultSuffixes! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 15:23'!
defaultText	^self main: 'text' sub: 'plain'! !

!MIMEType class methodsFor: 'instance creation' stamp: 'michael.rueger 2/9/2009 15:02'!
forExtensionReturnMimeTypesOrNil: fileExtension	| loweredFileExtension |	loweredFileExtension := fileExtension asLowercase."	Disabled for now as the default Pharo image does not have FFI included.	Should probably be moved into a future version of the directory plugin.	SmalltalkImage current platformName = 'Mac OS'		ifTrue: 			[loweredFileExtension = '' ifTrue: [^nil].			mime :=  MacUTI callGetMimeTypeOrNilForFileExtension: loweredFileExtension].			mime ifNotNil: [^Array with: mime]."	^self mimeMappings at: loweredFileExtension ifAbsent: [^nil]! !

!MIMEType class methodsFor: 'instance creation' stamp: 'JMM 12/1/2007 17:03'!
forFileNameReturnMimeTypesOrDefault: fileName	| mimeTypes |	mimeTypes := self forFileNameReturnMimeTypesOrNil: fileName.	mimeTypes ifNil: [^Array with: (MIMEType defaultStream)].	^mimeTypes! !

!MIMEType class methodsFor: 'instance creation' stamp: 'michael.rueger 2/9/2009 15:02'!
forFileNameReturnMimeTypesOrNil: fileName	| ext |	ext := FileDirectory extensionFor: fileName."	Disabled for now as the default Pharo image does not have FFI included.	Should probably be moved into a future version of the directory plugin.	SmalltalkImage current platformName = 'Mac OS'		 ifTrue: 			[type := MacUTI callGetMimeTypeOrNilForFileExtension: ext.			type ifNil: 					[fileType := (FileDirectory default getMacFileTypeAndCreator: fileName) at: 1.					(fileType = '????' or: [fileType = ((ByteArray new: 4 withAll:0) asString asByteString)])						ifTrue: [^self forExtensionReturnMimeTypesOrNil: ext].					consider := MacUTI callGetMimeTypeOrNilForOSType: fileType.					consider ifNotNil: [^Array with: consider]]				ifNotNil: 					[^Array with: type]]."	^self forExtensionReturnMimeTypesOrNil: ext! !

!MIMEType class methodsFor: 'instance creation' stamp: 'JMM 12/1/2007 23:02'!
forFileNameReturnSingleMimeTypeOrDefault: fileName	| types |	types := self forFileNameReturnMimeTypesOrDefault: fileName.	^types first! !

!MIMEType class methodsFor: 'instance creation' stamp: 'JMM 12/1/2007 12:19'!
forFileNameReturnSingleMimeTypeOrNil: fileName	| types |	types := self forFileNameReturnMimeTypesOrNil: fileName.	types ifNotNil: [^types first].	^nil! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 2/16/2006 23:33'!
fromMIMEString: mimeString	| idx main rest sub parameters |	idx := mimeString indexOf: $/.	idx = 0		ifTrue: [self error: 'Illegal mime type string "' , mimeString , '".'].	main := mimeString copyFrom: 1 to: idx-1.	rest := mimeString copyFrom: idx+1 to: mimeString size.	idx := mimeString indexOf: $;.	idx = 0		ifTrue: [sub := rest]		ifFalse: [			sub := rest copyFrom: 1 to: idx.			parameters := rest copyFrom: idx+1 to: rest size].	 ^self		main: main		sub: sub		parameters: parameters! !

!MIMEType class methodsFor: 'accessing' stamp: 'JMM 10/2/2006 12:38'!
huntForDashAndRemove: aString	| n |	(n := aString lastIndexOf: $-) > 0 ifTrue: [^aString copyFrom: n+1 to: aString size].	^aString! !

!MIMEType class methodsFor: 'class initialization' stamp: 'michael.rueger 2/24/2009 18:42'!
initialize	"MIMEType initialize" 	self initializeStandardMIMETypes.   	self initializeDefaultSuffixes! !

!MIMEType class methodsFor: 'class initialization' stamp: 'MarcusDenker 1/24/2010 11:09'!
initializeDefaultSuffixes	"MIMEType initializeDefaultSuffixes"	DefaultSuffixes := Dictionary new: 43.	DefaultSuffixes	at: 'application/freeloader' put: 'frl';	at: 'application/gzip' put: 'gz';	at: 'application/ips' put: 'ips';	at: 'application/mac-binhex40' put: 'hqx';	at: 'application/mac-compactpro' put: 'cpt';	at: 'application/ms-word-document' put: 'doc';	at: 'application/msword' put: 'doc';	at: 'application/octet-stream' put: 'o';	at: 'application/oda' put: 'oda';	at: 'application/olescript' put: 'axs';	at: 'application/pcphoto' put: 'zpa';	at: 'application/pdf' put: 'pdf';	at: 'application/postscript' put: 'ps';	at: 'application/rtc' put: 'rtc';	at: 'application/rtf' put: 'rtf';	at: 'application/toolbook' put: 'tbk';	at: 'application/vnd.ms-excel' put: 'xls';	at: 'application/vnd.ms-powerpoint' put: 'pps';	at: 'application/x-DemoShield' put: 'wid';	at: 'application/x-authorware-map' put: 'aas';	at: 'application/x-bcpio' put: 'bcpio';	at: 'application/x-chat' put: 'chat';	at: 'application/x-compress' put: 'z';	at: 'application/x-connector' put: 'con';	at: 'application/x-cpio' put: 'cpio';	at: 'application/x-csh' put: 'csh';	at: 'application/x-dvi' put: 'dvi';	at: 'application/x-expandedbook' put: 'ebk';	at: 'application/x-fontbitmap' put: 'pcf';	at: 'application/x-fontdataforktruetype' put: 'dfont';	at: 'application/x-fontopentype' put: 'otf';	at: 'application/x-fontpostscripttype1' put: 'pfa';	at: 'application/x-fontsuitcase' put: 'suit';	at: 'application/x-fonttruetype' put: 'ttf';	at: 'application/x-gtar' put: 'gtar';	at: 'application/x-hdf' put: 'hdf';	at: 'application/x-javascript' put: 'js';	at: 'application/x-latex' put: 'latex';	at: 'application/x-msaddr' put: 'adr';	at: 'application/x-mswallet' put: 'wlt';	at: 'application/x-netcdf' put: 'cdf';	at: 'application/x-pgp-plugin' put: 'pgp';	at: 'application/x-sh' put: 'sh';	at: 'application/x-shar' put: 'shar';	at: 'application/x-shockwave-flash' put: 'swf';	at: 'application/x-stuffit' put: 'sit';	at: 'application/x-sv4cpio' put: 'sv4cpio';	at: 'application/x-sv4crc' put: 'sv4crc';	at: 'application/x-tar' put: 'tar';	at: 'application/x-texinfo' put: 'texi';	at: 'application/x-troff' put: 'tr';	at: 'application/x-troff-man' put: 'man';	at: 'application/x-troff-me' put: 'me';	at: 'application/x-troff-ms' put: 'ms';	at: 'application/x-wais-source' put: 'wsrc';	at: 'application/x.tex' put: 'tex';	at: 'application/zip' put: 'zip';	at: 'audio/aiff' put: 'aiff';	at: 'audio/basic' put: 'au';	at: 'audio/midi' put: 'midi';	at: 'audio/mpeg' put: 'mp3';	at: 'audio/wav' put: 'wav';	at: 'audio/x-aiff' put: 'aiff';	at: 'audio/x-dspeech' put: 'cht';	at: 'audio/x-midi' put: 'mid';	at: 'audio/x-mp4-audio' put: 'm4';	at: 'audio/x-ms-wma' put: 'wma';	at: 'audio/x-pn-realaudio' put: 'ram';	at: 'audio/x-pn-realaudio-plugin' put: 'rpm';	at: 'audio/x-quicktime-protected' put: 'm4p';	at: 'audio/x-quicktime-protected-b' put: 'm4b';	at: 'audio/x-realaudio' put: 'ra';	at: 'audio/x-wav' put: 'wav';	at: 'i-world/i-vrml' put: 'ivr';	at: 'image/bmp' put: 'bmp';	at: 'image/gif' put: 'gif';	at: 'image/ief' put: 'ief';	at: 'image/jpeg' put: 'jpg';	at: 'image/png' put: 'png';	at: 'image/tiff' put: 'tiff';	at: 'image/vnd' put: 'dxf';	at: 'image/vnd' put: 'dwg';	at: 'image/x-cmu-rast' put: 'ras';	at: 'image/x-freehand' put: 'fhc';	at: 'image/x-portable-anymap' put: 'pnm';	at: 'image/x-portable-bitmap' put: 'pbm';	at: 'image/x-portable-graymap' put: 'pgm';	at: 'image/x-portable-pixmap' put: 'ppm';	at: 'image/x-rgb' put: 'rgb';	at: 'image/x-xbitmap' put: 'xbm';	at: 'image/x-xwindowdump' put: 'xwd';	at: 'message/rfc822' put: 'mime';	at: 'model/vrml' put: 'vrml';	at: 'text/css' put: 'css';	at: 'text/html' put: 'html';	at: 'text/parsnegar-document' put: 'pgr';	at: 'text/plain' put: 'text';	at: 'text/rtf' put: 'rtf';	at: 'text/tab-separated-values' put: 'tsv';	at: 'text/x-css' put: 'css';	at: 'text/x-setext' put: 'etx';	at: 'text/xml' put: 'xml';	at: 'video/avi' put: 'avi';	at: 'video/mov' put: 'mov';	at: 'video/mpeg' put: 'mpeg';	at: 'video/mpg' put: 'mpg';	at: 'video/quicktime' put: 'qt';	at: 'video/vnd.vivo' put: 'vivo';	at: 'video/x-mp4-video' put: 'mp4v';	at: 'video/x-mpeg' put: 'mpeg';	at: 'video/x-ms-asf' put: 'asf';	at: 'video/x-ms-asf' put: 'asx';	at: 'video/x-ms-wm' put: 'wm';	at: 'video/x-ms-wmv' put: 'wmv';	at: 'video/x-sgi.movie' put: 'movie';	at: 'video/x-videogram' put: 'vgm';	at: 'video/x-videogram-plugin' put: 'vgp'.	^DefaultSuffixes"| stream reverse |stream := StandardFileStream forceNewFileNamed: 'foobar.txt'.reverse := OrderedCollection new. MIMEType mimeMappings associationsDo: [:m |	m value do: [:e | reverse add: m key->e]].sorted := SortedCollection sortBlock: [:n1 :n2 | n1 value printString <= n2 value printString].sorted addAll: reverse.sorted do: [:s | 	stream nextPutAll: '	at: '''.	stream nextPutAll: s value printString.	stream nextPutAll: ''' put: '''.	stream nextPutAll: s key.	stream nextPutAll: ''';';cr].stream close."! !

!MIMEType class methodsFor: 'class initialization' stamp: 'michael.rueger 2/24/2009 18:43'!
initializeStandardMIMETypes	"MIMEType initializeStandardMIMETypes"	StandardMIMEMappings := Dictionary new.	self standardMIMETypes keysAndValuesDo:[:extension :mimeStrings |		StandardMIMEMappings			at: extension asString asLowercase			put: (mimeStrings collect: [:mimeString | MIMEType fromMIMEString: mimeString]).	].! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 15:22'!
main: mainType sub: subType	^self new		main: mainType;		sub: subType! !

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 2/16/2006 23:33'!
main: mainType sub: subType parameters: parameters	^self new		main: mainType;		sub: subType;		parameters: parameters! !

!MIMEType class methodsFor: 'accessing' stamp: 'mir 3/4/2002 16:15'!
mimeMappings	^StandardMIMEMappings! !

!MIMEType class methodsFor: 'accessing' stamp: 'JMM 12/2/2007 14:32'!
simpleSuffixForMimeType: mimeType	^(self defaultSuffixes at: mimeType printString ifAbsent: [self  huntForDashAndRemove: mimeType sub]) asSymbol! !

!MIMEType class methodsFor: 'class initialization' stamp: 'MarcusDenker 1/24/2010 11:10'!
standardMIMETypes	"We had to split this method because of the 256 literal limit in methods.	Please keep it in alphabetical order for easier maintenance."	"MIMEType standardMIMETypes"	| mimeTypes |	mimeTypes := self standardMIMETypes2.	mimeTypes		at: 'a' put: #('application/octet-stream');		at: 'aam' put: #('application/x-authorware-map');		at: 'aas' put: #('application/x-authorware-map');		at: 'adr' put: #('application/x-msaddr');		at: 'ai' put: #('application/postscript');		at: 'aif' put: #('audio/x-aiff');		at: 'aifc' put: #('audio/x-aiff');		at: 'aiff' put: #('audio/aiff' 'audio/x-aiff');		at: 'arc' put: #('application/octet-stream');		at: 'asf' put: #('video/x-ms-asf');		at: 'asx' put: #('video/x-ms-asf');		at: 'au' put: #('audio/basic');		at: 'avi' put: #('video/avi');		at: 'axs' put: #('application/olescript');		at: 'bcpio' put: #('application/x-bcpio');		at: 'bdf' put: #('application/x-fontbitmap');		at: 'bin' put: #('application/octet-stream');		at: 'bmp' put: #('image/bmp');		at: 'c' put: #('text/plain');		at: 'cdf' put: #('application/x-netcdf');		at: 'chat' put: #('application/x-chat');		at: 'cht' put: #('audio/x-dspeech');		at: 'class' put: #('application/octet-stream');		at: 'con' put: #('application/x-connector');		at: 'cpio' put: #('application/x-cpio');		at: 'cpp' put: #('text/plain');		at: 'cpt' put: #('application/mac-compactpro');		at: 'csh' put: #('application/x-csh');		at: 'css' put: #('text/css' 'text/x-css');		at: 'dfon' put: #('application/x-fontdataforktruetype');		at: 'dfont' put: #('application/x-fontdataforktruetype');		at: 'dms' put: #('application/octet-stream');		at: 'doc' put: #('application/ms-word-document' 'application/msword');		at: 'dot' put: #('application/msword');		at: 'dump' put: #('application/octet-stream');		at: 'dus' put: #('audio/x-dspeech');		at: 'dvi' put: #('application/x-dvi');		at: 'dwg' put: #('image/vnd');		at: 'dxf' put: #('image/vnd');		at: 'ebk' put: #('application/x-expandedbook');		at: 'eps' put: #('application/postscript');		at: 'etx' put: #('text/x-setext');		at: 'exe' put: #('application/octet-stream');		at: 'ffil' put: #('application/x-fontsuitcase');		at: 'fh4' put: #('image/x-freehand');		at: 'fh5' put: #('image/x-freehand');		at: 'fhc' put: #('image/x-freehand');		at: 'frl' put: #('application/freeloader');		at: 'gif' put: #('image/gif');		at: 'gtar' put: #('application/x-gtar');		at: 'gtaru' put: #('application/x-gtar');		at: 'gz' put: #('application/gzip');		at: 'h' put: #('text/plain');		at: 'hdf' put: #('application/x-hdf');		at: 'hqx' put: #('application/mac-binhex40' 'application/octet-stream');		at: 'htm' put: #('text/html' 'text/plain');		at: 'html' put: #('text/html' 'text/plain');		at: 'ief' put: #('image/ief');		at: 'ips' put: #('application/ips');		at: 'ivr' put: #('i-world/i-vrml');		at: 'java' put: #('text/plain');		at: 'jfif' put: #('image/jpeg');		at: 'jfif-tbnl' put: #('image/jpeg');		at: 'jpe' put: #('image/jpeg');		at: 'jpeg' put: #('image/jpeg');		at: 'jpg' put: #('image/jpeg');		at: 'js' put: #('application/x-javascript');		at: 'latex' put: #('application/x-latex');		at: 'lha' put: #('application/octet-stream');		at: 'lwfn' put: #('application/x-fontpostscripttype1');		at: 'lzh' put: #('application/octet-stream');		at: 'm4' put: #('audio/x-mp4-audio');		at: 'm4b' put: #('audio/x-quicktime-protected-b');		at: 'm4p' put: #('audio/x-quicktime-protected');		at: 'm4v' put: #('video/x-mp4-video');		at: 'man' put: #('application/x-troff-man');		at: 'me' put: #('application/x-troff-me');		at: 'mid' put: #('audio/midi' 'audio/x-midi');		at: 'midi' put: #('audio/midi');		at: 'mime' put: #('message/rfc822');		at: 'mov' put: #('video/mov');		at: 'movie' put: #('video/x-sgi-movie' 'video/x-sgi.movie');		at: 'mp2' put: #('audio/mpeg');		at: 'mp3' put: #('audio/mpeg' 'audio/x-mpeg');		at: 'mp4' put: #('video/x-mp4-video');		at: 'mp4v' put: #('video/x-mp4-video');		at: 'mpe' put: #('video/mpeg');		at: 'mpeg' put: #('video/mpeg' 'video/x-mpeg');		at: 'mpg' put: #('video/mpg' 'video/mpeg' 'video/x-mpeg');		at: 'mpga' put: #('audio/mpeg');		at: 'ms' put: #('application/x-troff-ms');		at: 'mv' put: #('video/x-sgi-movie').	^mimeTypes! !

!MIMEType class methodsFor: 'class initialization' stamp: 'MarcusDenker 1/24/2010 11:09'!
standardMIMETypes2	"MIMEType standardMimeTypes2"	"We had to split this method because of the 256 literal limit in methods."	| mimeTypes |	mimeTypes := Dictionary new: 100.	mimeTypes		at: 'nc' put: #('application/x-netcdf');		at: 'o' put: #('application/octet-stream');		at: 'oda' put: #('application/oda');		at: 'ogg' put: #('audio/ogg');		at: 'otf' put: #('application/x-fontopentype');		at: 'otto' put: #('application/x-fontopentype');		at: 'pbm' put: #('image/x-portable-bitmap');		at: 'pcf' put: #('application/x-fontbitmap');		at: 'pdf' put: #('application/pdf');		at: 'pfa' put: #('application/x-fontpostscripttype1');		at: 'pfb' put: #('application/x-fontpostscripttype1');		at: 'pgm' put: #('image/x-portable-graymap');		at: 'pgp' put: #('application/x-pgp-plugin');		at: 'pgr' put: #('text/parsnegar-document');		at: 'pl' put: #('text/plain');		at: 'png' put: #('image/png');		at: 'pnm' put: #('image/x-portable-anymap');		at: 'pot' put: #('application/vnd.ms-powerpoint');		at: 'ppa' put: #('application/vnd.ms-powerpoint');		at: 'ppm' put: #('image/x-portable-pixmap');		at: 'pps' put: #('application/vnd.ms-powerpoint');		at: 'ppt' put: #('application/mspowerpoint');		at: 'ppz' put: #('application/vnd.ms-powerpoint');		at: 'pr' put: #('application/x-squeak-project');		at: 'ps' put: #('application/postscript');		at: 'pwz' put: #('application/vnd.ms-powerpoint');		at: 'qt' put: #('video/quicktime');		at: 'ra' put: #('audio/x-realaudio');		at: 'ram' put: #('audio/x-pn-realaudio');		at: 'ras' put: #('image/x-cmu-rast');		at: 'rgb' put: #('image/x-rgb');		at: 'rm' put: #('audio/x-pn-realaudio');		at: 'roff' put: #('application/x-troff');		at: 'rpm' put: #('audio/x-pn-realaudio-plugin');		at: 'rtc' put: #('application/rtc');		at: 'rtf' put: #('text/rtf' 'application/rtf');		at: 'rtx' put: #('application/rtf');		at: 'saveme' put: #('application/octet-stream');		at: 'sfnt' put: #('application/x-fontsuitcase');		at: 'sh' put: #('application/x-sh');		at: 'shar' put: #('application/x-shar');		at: 'sit' put: #('application/x-stuffit');		at: 'snd' put: #('audio/basic');		at: 'spx' put: #('audio/x-speex');		at: 'src' put: #('application/x-wais-source');		at: 'sts' put: #('application/x-squeak-source');		at: 'suit' put: #('application/x-fontsuitcase');		at: 'sv4cpio' put: #('application/x-sv4cpio');		at: 'sv4crc' put: #('application/x-sv4crc');		at: 'swf' put: #('application/x-shockwave-flash');		at: 't' put: #('application/x-troff');		at: 'tar' put: #('application/x-tar');		at: 'tbk' put: #('application/toolbook');		at: 'tex' put: #('application/x.tex');		at: 'texi' put: #('application/x-texinfo');		at: 'texinfo' put: #('application/x-texinfo');		at: 'text' put: #('text/plain');		at: 'tfil' put: #('application/x-fontsuitcase');		at: 'tif' put: #('image/tiff');		at: 'tiff' put: #('image/tiff');		at: 'tr' put: #('application/x-troff');		at: 'tsv' put: #('text/tab-separated-values');		at: 'ttc' put: #('application/x-fonttruetype');		at: 'ttcf' put: #('application/x-fonttruetype');		at: 'ttf' put: #('application/x-fonttruetype');		at: 'txt' put: #('text/plain');		at: 'ua' put: #('text/plain');		at: 'ustar' put: #('audio/basic');		at: 'uu' put: #('application/octet-stream');		at: 'vgm' put: #('video/x-videogram');		at: 'vgp' put: #('video/x-videogram-plugin');		at: 'vgx' put: #('video/x-videogram');		at: 'viv' put: #('video/vnd.vivo');		at: 'vivo' put: #('video/vnd.vivo');		at: 'vrml' put: #('model/vrml');		at: 'wav' put: #('audio/wav' 'audio/x-wav');		at: 'wid' put: #('application/x-DemoShield');		at: 'wiz' put: #('application/msword');		at: 'wlt' put: #('application/x-mswallet');		at: 'wm' put: #('video/x-ms-wm');		at: 'wma' put: #('audio/x-ms-wma');		at: 'wmv' put: #('video/x-ms-wmv');		at: 'wrl' put: #('model/vrml');		at: 'wsrc' put: #('application/x-wais-source');		at: 'xbm' put: #('image/x-xbitmap');		at: 'xlb' put: #('application/vnd.ms-excel');		at: 'xls' put: #('application/vnd.ms-excel');		at: 'xml' put: #('text/xml' 'text/html');		at: 'xpm' put: #('image/x-xpixmap');		at: 'xul' put: #('application/vnd.mozilla.xul+xml');		at: 'xwd' put: #('image/x-xwindowdump');		at: 'z' put: #('application/x-compress');		at: 'zip' put: #('application/zip');		at: 'zpa' put: #('application/pcphoto').	^mimeTypes! !

!MIMEType class methodsFor: 'accessing' stamp: 'JMM 12/2/2007 14:31'!
suffixForMimeType: mimeType	^self defaultSuffixes at: mimeType printString ifAbsent: [mimeType sub]! !

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:55'!
dataStream	^dataStream! !

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:51'!
dataStream: anObject	dataStream := anObject! !

!MimeConverter methodsFor: 'conversion' stamp: 'bf 11/12/1998 13:30'!
mimeDecode	"Do conversion reading from mimeStream writing to dataStream"	self subclassResponsibility! !

!MimeConverter methodsFor: 'conversion' stamp: 'bf 11/12/1998 13:31'!
mimeEncode	"Do conversion reading from dataStream writing to mimeStream"	self subclassResponsibility! !

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:53'!
mimeStream	^mimeStream! !

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:51'!
mimeStream: anObject	mimeStream := anObject! !

!MimeConverter class methodsFor: 'convenience' stamp: 'bf 3/10/2000 14:47'!
forEncoding: encodingString	"Answer a converter class for the given encoding or nil if unknown"	encodingString ifNil: [^nil].	^ encodingString asLowercase caseOf: 		{ ['base64'] -> [Base64MimeConverter].		  ['quoted-printable'] -> [QuotedPrintableMimeConverter]}		otherwise: [].! !

!MimeConverter class methodsFor: 'convenience' stamp: 'bf 3/10/2000 14:43'!
mimeDecode: aStringOrStream as: contentsClass	^ contentsClass streamContents: [:out |		self mimeDecode: aStringOrStream to: out]! !

!MimeConverter class methodsFor: 'convenience' stamp: 'damiencassou 5/30/2008 11:45'!
mimeDecode: aStringOrStream to: outStream 	self new		mimeStream: (aStringOrStream isStream 				ifTrue: [ aStringOrStream ]				ifFalse: [ aStringOrStream readStream ]);		dataStream: outStream;		mimeDecode! !

!MimeConverter class methodsFor: 'convenience' stamp: 'bf 3/10/2000 14:40'!
mimeEncode: aCollectionOrStream	^ String streamContents: [:out |		self mimeEncode: aCollectionOrStream to: out]! !

!MimeConverter class methodsFor: 'convenience' stamp: 'damiencassou 5/30/2008 11:45'!
mimeEncode: aCollectionOrStream to: outStream 	self new		dataStream: (aCollectionOrStream isStream 				ifTrue: [ aCollectionOrStream ]				ifFalse: [ aCollectionOrStream readStream ]);		mimeStream: outStream;		mimeEncode! !

!QuotedPrintableMimeConverter methodsFor: 'conversion' stamp: 'SvenVanCaekenberghe 1/8/2012 15:25'!
mimeDecode	"Do conversion reading from mimeStream writing to dataStream"	| line s c1 v1 c2 v2 |	[ (line := mimeStream nextLine) isNil ] whileFalse: 		[ line := line trimRight.		line size = 0 			ifTrue: [ dataStream cr ]			ifFalse: 				[ s := line readStream.								[ dataStream nextPutAll: (s upTo: $=).				s atEnd ] whileFalse: 					[ c1 := s next.					v1 := c1 digitValue.					((v1 						between: 0						and: 15) and: [ s atEnd not ]) 						ifFalse: 							[ dataStream								nextPut: $=;								nextPut: c1 ]						ifTrue: 							[ c2 := s next.							v2 := c2 digitValue.							(v2 								between: 0								and: 15) 								ifFalse: 									[ dataStream										nextPut: $=;										nextPut: c1;										nextPut: c2 ]								ifTrue: [ dataStream nextPut: (Character value: v1 * 16 + v2) ] ] ].				line last = $= ifFalse: [ dataStream cr ] ] ].	^ dataStream! !

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'bf 3/11/2000 23:16'!
encodeChar: aChar to: aStream	aChar = Character space		ifTrue: [^ aStream nextPut: $_].	((aChar asciiValue between: 32 and: 127) and: [('?=_' includes: aChar) not])		ifTrue: [^ aStream nextPut: aChar].	aStream nextPut: $=;		nextPut: (Character digitValue: aChar asciiValue // 16);		nextPut: (Character digitValue: aChar asciiValue \\ 16)! !

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'bf 3/11/2000 23:13'!
encodeWord: aString	(aString allSatisfy: [:c | c asciiValue < 128])		ifTrue: [^ aString].	^ String streamContents: [:stream |		stream nextPutAll: '=?iso-8859-1?Q?'.		aString do: [:c | self encodeChar: c to: stream].		stream nextPutAll: '?=']! !

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'bf 3/12/2000 14:36'!
isStructuredField: aString	| fName |	fName := aString copyUpTo: $:.	('Resent' sameAs: (fName copyUpTo: $-))		ifTrue: [fName := fName copyFrom: 8 to: fName size].	^#('Sender' 'From' 'Reply-To' 'To' 'cc' 'bcc') anySatisfy: [:each | fName sameAs: each]! !

!RFC2047MimeConverter methodsFor: 'conversion' stamp: 'sd 3/20/2008 22:23'!
mimeDecode	"Do conversion reading from mimeStream writing to dataStream. See String>>decodeMimeHeader"	| c |	[mimeStream atEnd] whileFalse: [		c := mimeStream next.		c = $=			ifTrue: [c := Character value: mimeStream next digitValue * 16				+ mimeStream next digitValue]			ifFalse: [c = $_ ifTrue: [c := $ ]].		dataStream nextPut: c].	^ dataStream! !

!RFC2047MimeConverter methodsFor: 'conversion' stamp: 'bf 3/10/2000 16:06'!
mimeEncode	"Do conversion reading from dataStream writing to mimeStream. Break long lines and escape non-7bit chars."	| word pos wasGood isGood max |	true ifTrue: [mimeStream nextPutAll: dataStream upToEnd].	pos := 0.	max := 72.	wasGood := true.	[dataStream atEnd] whileFalse: [		word := self readWord.		isGood := word allSatisfy: [:c | c asciiValue < 128].		wasGood & isGood ifTrue: [			pos + word size < max				ifTrue: [dataStream nextPutAll: word.					pos := pos + word size]				ifFalse: []		]	].	^ mimeStream! !

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'PeterHugossonMiller 9/3/2009 11:08'!
readWord	| strm |	strm := (String new: 20) writeStream.	dataStream skipSeparators.	[dataStream atEnd] whileFalse: 		[ | c |		c := dataStream next.		strm nextPut: c.		c isSeparator ifTrue: [^ strm contents]].	^ strm contents! !
Base64MimeConverter initialize!
MIMEType initialize!
