'From Cuis 4.0 of 21 April 2012 [latest update: #1288] on 20 May 2012 at 6:19:35 pm'!
'Description Please enter a description for this package '!
!classDefinition: #EncodedCharSet category: #'Cuis-Multilingual-Encodings'!
Object subclass: #EncodedCharSet
	instanceVariableNames: ''
	classVariableNames: 'EncodedCharSets'
	poolDictionaries: ''
	category: 'Cuis-Multilingual-Encodings'!
!classDefinition: 'EncodedCharSet class' category: #'Cuis-Multilingual-Encodings'!
EncodedCharSet class
	instanceVariableNames: 'compoundTextSequence'!

!classDefinition: #Unicode category: #'Cuis-Multilingual-Encodings'!
EncodedCharSet subclass: #Unicode
	instanceVariableNames: ''
	classVariableNames: 'Cc Cf Cn Co Cs DecimalProperty GeneralCategory Ll Lm Lo Lt Lu Mc Me Mn Nd Nl No Pc Pd Pe Pf Pi Po Ps Sc Sk Sm So ToCasefold ToLower ToUpper Zl Zp Zs'
	poolDictionaries: ''
	category: 'Cuis-Multilingual-Encodings'!
!classDefinition: 'Unicode class' category: #'Cuis-Multilingual-Encodings'!
Unicode class
	instanceVariableNames: ''!


!EncodedCharSet commentStamp: 'yo 10/19/2004 19:08' prior: 0!
An abstract superclasss of the classes that represent encoded character sets.  In the old implementation, the charsets had more important role.  However, in the current implementation, the subclasses are used only for keeping the backward compatibility.

!Unicode commentStamp: 'yo 10/19/2004 20:44' prior: 0!
This class holds the entry points for the utility functions around characters.

!Character class methodsFor: '*Cuis-Multilingual-Encodings' stamp: 'gsa 5/20/2012 18:16'!
leadingChar: leadChar code: code

	code >= 16r400000 ifTrue: [
		self error: 'code is out of range'.
	].
	leadChar >= 256 ifTrue: [
		self error: 'lead is out of range'.
	].
	code < 256 ifTrue: [ ^self value: code ].
	^self value: (leadChar bitShift: 22) + code.! !

!EncodedCharSet class methodsFor: 'character classification' stamp: 'yo 8/5/2003 16:55'!
canBeGlobalVarInitial: char

!EncodedCharSet class methodsFor: 'character classification' stamp: 'yo 8/5/2003 17:18'!
canBeNonGlobalVarInitial: char

!EncodedCharSet class methodsFor: 'class methods' stamp: 'tak 11/5/2005 18:14'!
charFromUnicode: unicode

!EncodedCharSet class methodsFor: 'class methods' stamp: 'yo 9/4/2002 22:57'!
charsetAt: encoding

!EncodedCharSet class methodsFor: 'class methods' stamp: 'StephaneDucasse 2/13/2010 16:02'!
digitValueOf: char

!EncodedCharSet class methodsFor: 'class methods' stamp: 'pmm 8/16/2010 21:34'!
initialize

!EncodedCharSet class methodsFor: 'accessing - displaying' stamp: 'yo 12/18/2002 12:34'!
isBreakableAt: index in: text

!EncodedCharSet class methodsFor: 'class methods' stamp: 'yo 12/2/2004 16:13'!
isCharset

!EncodedCharSet class methodsFor: 'character classification' stamp: 'yo 8/5/2003 16:44'!
isDigit: char

!EncodedCharSet class methodsFor: 'character classification' stamp: 'yo 8/5/2003 16:40'!
isLetter: char

!EncodedCharSet class methodsFor: 'character classification' stamp: 'yo 8/5/2003 16:40'!
isLowercase: char

!EncodedCharSet class methodsFor: 'character classification' stamp: 'yo 8/5/2003 16:44'!
isUppercase: char

!EncodedCharSet class methodsFor: 'class methods' stamp: 'yo 9/2/2002 16:32'!
leadingChar

!EncodedCharSet class methodsFor: 'class methods' stamp: 'yo 11/4/2002 14:43'!
nextPutValue: ascii toStream: aStream withShiftSequenceIfNeededForTextConverterState: state

!EncodedCharSet class methodsFor: 'accessing - displaying' stamp: 'yo 9/4/2002 22:51'!
printingDirection

!EncodedCharSet class methodsFor: 'accessing - displaying' stamp: 'sn 7/31/2009 15:01'!
scanSelector

!EncodedCharSet class methodsFor: 'class methods' stamp: 'yo 10/14/2003 10:19'!
ucsTable

!Unicode class methodsFor: 'comments' stamp: 'yo 12/23/2002 13:04'!
blocks320Comment

!Unicode class methodsFor: 'comments' stamp: 'yo 3/17/2004 23:38'!
blocks320Comment2

!Unicode class methodsFor: 'instance creation' stamp: 'nice 5/1/2011 19:25'!
charFromUnicode: uniCode

!Unicode class methodsFor: 'class methods' stamp: 'yo 12/24/2002 07:49'!
compoundTextFinalChar

!Unicode class methodsFor: 'class methods' stamp: 'yo 12/24/2002 08:03'!
compoundTextSequence

!Unicode class methodsFor: 'class methods' stamp: 'StephaneDucasse 2/13/2010 16:04'!
digitValueOf: char

!Unicode class methodsFor: 'class methods' stamp: 'yo 2/20/2004 14:12'!
generalCategory

!Unicode class methodsFor: 'class methods' stamp: 'yo 8/5/2003 16:12'!
generalCategoryComment

!Unicode class methodsFor: 'class initialization' stamp: 'nice 3/28/2011 23:31'!
initialize

!Unicode class methodsFor: 'casing' stamp: 'SvenVanCaekenberghe 7/8/2011 15:07'!
initializeCaseMappings

!Unicode class methodsFor: 'class initialization' stamp: 'nice 3/28/2011 23:40'!
initializeTagConstants

!Unicode class methodsFor: 'class methods' stamp: 'yo 12/4/2004 22:47'!
isCharset

!Unicode class methodsFor: 'character classification' stamp: 'kwl 6/30/2006 02:55'!
isDigit: char 

!Unicode class methodsFor: 'subencodings' stamp: 'yo 1/12/2004 18:11'!
isJapanese: code

!Unicode class methodsFor: 'subencodings' stamp: 'yo 1/12/2004 18:11'!
isKorean: code

!Unicode class methodsFor: 'character classification' stamp: 'kwl 6/30/2006 02:56'!
isLetter: char 

!Unicode class methodsFor: 'character classification' stamp: 'kwl 6/30/2006 02:57'!
isLowercase: char 

!Unicode class methodsFor: 'subencodings' stamp: 'yo 1/12/2004 18:11'!
isSimplifiedChinese: code

!Unicode class methodsFor: 'subencodings' stamp: 'yo 1/12/2004 18:00'!
isTraditionalChinese: code

!Unicode class methodsFor: 'subencodings' stamp: 'yo 1/12/2004 17:55'!
isUnifiedKanji: code

!Unicode class methodsFor: 'character classification' stamp: 'kwl 6/30/2006 02:58'!
isUppercase: char 

!Unicode class methodsFor: 'class methods' stamp: 'nice 2/28/2010 16:34'!
leadingChar

!Unicode class methodsFor: 'casing' stamp: 'SvenVanCaekenberghe 1/8/2012 14:50'!
parseCaseMappingFrom: stream

!Unicode class methodsFor: 'class methods' stamp: 'HenrikSperreJohansen 6/12/2010 02:36'!
parseUnicodeDataFrom: stream

!Unicode class methodsFor: 'casing' stamp: 'nice 7/14/2010 15:00'!
toCasefold: aWideString

!Unicode class methodsFor: 'casing' stamp: 'nice 7/14/2010 13:11'!
toLowercase: aWideString

!Unicode class methodsFor: 'casing' stamp: 'nice 7/14/2010 13:08'!
toUppercase: aWideString

!Unicode class methodsFor: 'instance creation' stamp: 'nice 2/28/2010 20:05'!
value: code
EncodedCharSet initialize!
Unicode initialize!