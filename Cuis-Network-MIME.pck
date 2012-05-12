'From Cuis 4.0 of 21 April 2012 [latest update: #1270] on 12 May 2012 at 8:35:26 pm'!
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
This class encodes and decodes data in Base64 format.  This is MIME encoding.  We translate a whole stream at once, taking a Stream as input and giving one as output.  Returns a whole stream for the caller to use.

!MIMEDocument commentStamp: '<historical>' prior: 0!
a MIME object, along with its type and the URL it was found at (if any)!

!MIMELocalFileDocument commentStamp: '<historical>' prior: 0!
For local files, we do not read the entire contents unless we absolutely have to.!

!MIMEType commentStamp: 'LaurentLaffont 6/8/2011 22:18' prior: 0!
I guess and represent the content type of a file. For a description of what is MIME, see

!MimeConverter commentStamp: 'LaurentLaffont 6/8/2011 22:18' prior: 0!
I'm the base class for converting some data from a MIME type to another. Subclasses should implement #mimeDecode and #mimeEncode.!

!QuotedPrintableMimeConverter commentStamp: '<historical>' prior: 0!
I do quoted printable MIME decoding as specified in RFC 2045 "MIME Part One: Format of Internet Message Bodies".

!RFC2047MimeConverter commentStamp: '<historical>' prior: 0!
I do quoted printable MIME decoding as specified in RFC 2047 ""MIME Part Three: Message Header Extensions for Non-ASCII Text". See String>>decodeMimeHeader!

!Base64MimeConverter methodsFor: 'initialize-release' stamp: 'dik 9/22/2010 18:09'!
initialize 

!Base64MimeConverter methodsFor: 'conversion' stamp: 'tk 12/9/97 13:34'!
mimeDecode

!Base64MimeConverter methodsFor: 'conversion' stamp: 'tk 12/9/97 13:39'!
mimeDecodeToByteArray

!Base64MimeConverter methodsFor: 'conversion' stamp: 'dik 9/22/2010 18:07'!
mimeEncode

!Base64MimeConverter methodsFor: 'accessing' stamp: 'dik 9/22/2010 18:07'!
multiLine

!Base64MimeConverter methodsFor: 'accessing' stamp: 'dik 9/22/2010 18:07'!
multiLine: anObject

!Base64MimeConverter methodsFor: 'conversion' stamp: 'tk 12/9/97 13:21'!
nextValue

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'damiencassou 5/30/2008 11:45'!
decodeInteger: mimeString 

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 2/21/2000 17:22'!
encodeInteger: int

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 12/9/97 13:53'!
initialize

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 12/12/97 11:41'!
mimeDecodeToBytes: aStream 

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'tk 12/9/97 13:01'!
mimeDecodeToChars: aStream 

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'dik 9/22/2010 18:08'!
mimeEncode: aStream

!Base64MimeConverter class methodsFor: 'as yet unclassified' stamp: 'dik 9/22/2010 18:08'!
mimeEncode: aStream multiLine: aBool

!MIMEDocument methodsFor: 'compatibility' stamp: 'mir 3/22/2005 22:55'!
content

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 18:19'!
contentStream

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/27/2005 10:53'!
contentStream: aStream mimeType: aMimeType uri: aUri

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/27/2005 10:50'!
contentStreamOnURI

!MIMEDocument methodsFor: 'compatibility' stamp: 'mir 3/4/2002 17:46'!
contentType

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/24/2005 17:26'!
contents

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/27/2005 10:53'!
contents: contentStringOrBytes mimeType: aMimeType uri: aURI

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/26/2005 11:12'!
discardContentStream

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/26/2005 11:13'!
discardContents

!MIMEDocument methodsFor: 'private' stamp: 'mir 3/24/2005 17:37'!
getContentFromStream

!MIMEDocument methodsFor: 'testing' stamp: 'sbw 1/21/2001 11:13'!
isGif

!MIMEDocument methodsFor: 'testing' stamp: 'sbw 1/21/2001 11:15'!
isJpeg

!MIMEDocument methodsFor: 'testing' stamp: 'ls 4/30/2000 18:07'!
isMultipart

!MIMEDocument methodsFor: 'testing' stamp: 'ls 4/30/2000 18:45'!
isMultipartAlternative

!MIMEDocument methodsFor: 'testing' stamp: 'st 9/18/2004 23:37'!
isPng

!MIMEDocument methodsFor: 'testing' stamp: 'st 9/18/2004 23:38'!
isPnm

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 17:19'!
mainType

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 17:19'!
mimeType

!MIMEDocument methodsFor: 'accessing' stamp: 'damiencassou 5/30/2008 15:52'!
parts

!MIMEDocument methodsFor: 'printing' stamp: 'mir 3/26/2005 17:48'!
printOn: aStream

!MIMEDocument methodsFor: 'private' stamp: 'mir 11/8/2005 13:39'!
privateContent: aString

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 17:19'!
subType

!MIMEDocument methodsFor: 'accessing' stamp: 'sma 4/28/2000 14:48'!
type

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/4/2002 16:24'!
type: mimeType

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/27/2005 10:55'!
uri

!MIMEDocument methodsFor: 'accessing' stamp: 'mir 3/27/2005 10:53'!
uri: aURI

!MIMEDocument methodsFor: 'accessing' stamp: 'asasa 8/31/2010 20:40'!
url

!MIMEDocument class methodsFor: 'instance creation' stamp: 'ls 7/23/1998 22:59'!
content: aString

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 18:26'!
contentStream: aStream

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:52'!
contentStream: aStream mimeType: aMimeType 

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:52'!
contentStream: aStream mimeType: aMimeType uri: aURI

!MIMEDocument class methodsFor: 'compatibility' stamp: 'MarcusDenker 11/30/2010 11:09'!
contentType: aMIMEType  content: content

!MIMEDocument class methodsFor: 'compatibility' stamp: 'Noury 6/15/2009 22:54'!
contentType: type content: content url: url

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 12:25'!
contentTypeFormData

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 13:05'!
contentTypeHtml

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 12:25'!
contentTypeMultipart

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 13:05'!
contentTypePlainText

!MIMEDocument class methodsFor: 'content-types' stamp: 'bolot 5/16/1999 13:05'!
contentTypeXml

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 18:23'!
contents: aString

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:54'!
contents: content mimeType: aMimeType 

!MIMEDocument class methodsFor: 'instance creation' stamp: 'mir 3/27/2005 10:57'!
contents: content mimeType: aMimeType uri: aURL

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 12:36'!
defaultContentType

!MIMEDocument class methodsFor: 'accessing' stamp: 'michael.rueger 2/25/2009 12:35'!
defaultMIMEType

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 13:05'!
guessContentTypeFromExtension: ext

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 13:05'!
guessTypeFromExtension: ext

!MIMEDocument class methodsFor: 'compatibility' stamp: 'MarcusDenker 10/21/2011 14:58'!
guessTypeFromName: url

!MIMEDocument class methodsFor: 'compatibility' stamp: 'michael.rueger 2/25/2009 12:29'!
resetMIMEdatabase

!MIMELocalFileDocument methodsFor: 'accessing' stamp: 'michael.rueger 1/8/2009 19:19'!
content

!MIMELocalFileDocument methodsFor: 'accessing' stamp: 'ar 4/24/2001 16:27'!
contentStream

!MIMELocalFileDocument methodsFor: 'accessing' stamp: 'michael.rueger 1/8/2009 19:20'!
contentStream: aFileStream

!MIMELocalFileDocument class methodsFor: 'instance creation' stamp: 'ar 4/24/2001 16:31'!
contentType: aString contentStream: aStream

!MIMEType methodsFor: 'comparing' stamp: 'mir 3/6/2002 12:11'!
= anotherObject

!MIMEType methodsFor: 'converting' stamp: 'mir 3/4/2002 18:21'!
asMIMEType

!MIMEType methodsFor: 'comparing' stamp: 'JMM 7/26/2006 16:26'!
beginsWith: aString

!MIMEType methodsFor: 'comparing' stamp: 'mir 12/17/2005 14:17'!
hash

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
main

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
main: mainType

!MIMEType methodsFor: 'accessing' stamp: 'mir 2/16/2006 23:33'!
parameters: params

!MIMEType methodsFor: 'printing' stamp: 'mir 3/4/2002 16:14'!
printOn: stream

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
sub

!MIMEType methodsFor: 'accessing' stamp: 'mir 3/4/2002 15:21'!
sub: subType

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/6/2002 13:07'!
contentTypeURLEncoded

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 17:06'!
defaultHTML

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 15:25'!
defaultStream

!MIMEType class methodsFor: 'accessing' stamp: 'michael.rueger 2/24/2009 18:42'!
defaultSuffixes

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 15:23'!
defaultText

!MIMEType class methodsFor: 'instance creation' stamp: 'michael.rueger 2/9/2009 15:02'!
forExtensionReturnMimeTypesOrNil: fileExtension

!MIMEType class methodsFor: 'instance creation' stamp: 'JMM 12/1/2007 17:03'!
forFileNameReturnMimeTypesOrDefault: fileName

!MIMEType class methodsFor: 'instance creation' stamp: 'michael.rueger 2/9/2009 15:02'!
forFileNameReturnMimeTypesOrNil: fileName

!MIMEType class methodsFor: 'instance creation' stamp: 'JMM 12/1/2007 23:02'!
forFileNameReturnSingleMimeTypeOrDefault: fileName

!MIMEType class methodsFor: 'instance creation' stamp: 'JMM 12/1/2007 12:19'!
forFileNameReturnSingleMimeTypeOrNil: fileName

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 2/16/2006 23:33'!
fromMIMEString: mimeString

!MIMEType class methodsFor: 'accessing' stamp: 'JMM 10/2/2006 12:38'!
huntForDashAndRemove: aString

!MIMEType class methodsFor: 'class initialization' stamp: 'michael.rueger 2/24/2009 18:42'!
initialize

!MIMEType class methodsFor: 'class initialization' stamp: 'MarcusDenker 1/24/2010 11:09'!
initializeDefaultSuffixes

!MIMEType class methodsFor: 'class initialization' stamp: 'michael.rueger 2/24/2009 18:43'!
initializeStandardMIMETypes

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 3/4/2002 15:22'!
main: mainType sub: subType

!MIMEType class methodsFor: 'instance creation' stamp: 'mir 2/16/2006 23:33'!
main: mainType sub: subType parameters: parameters

!MIMEType class methodsFor: 'accessing' stamp: 'mir 3/4/2002 16:15'!
mimeMappings

!MIMEType class methodsFor: 'accessing' stamp: 'JMM 12/2/2007 14:32'!
simpleSuffixForMimeType: mimeType

!MIMEType class methodsFor: 'class initialization' stamp: 'MarcusDenker 1/24/2010 11:10'!
standardMIMETypes

!MIMEType class methodsFor: 'class initialization' stamp: 'MarcusDenker 1/24/2010 11:09'!
standardMIMETypes2

!MIMEType class methodsFor: 'accessing' stamp: 'JMM 12/2/2007 14:31'!
suffixForMimeType: mimeType

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:55'!
dataStream

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:51'!
dataStream: anObject

!MimeConverter methodsFor: 'conversion' stamp: 'bf 11/12/1998 13:30'!
mimeDecode

!MimeConverter methodsFor: 'conversion' stamp: 'bf 11/12/1998 13:31'!
mimeEncode

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:53'!
mimeStream

!MimeConverter methodsFor: 'accessing' stamp: 'tk 12/9/97 13:51'!
mimeStream: anObject

!MimeConverter class methodsFor: 'convenience' stamp: 'bf 3/10/2000 14:47'!
forEncoding: encodingString

!MimeConverter class methodsFor: 'convenience' stamp: 'bf 3/10/2000 14:43'!
mimeDecode: aStringOrStream as: contentsClass

!MimeConverter class methodsFor: 'convenience' stamp: 'damiencassou 5/30/2008 11:45'!
mimeDecode: aStringOrStream to: outStream 

!MimeConverter class methodsFor: 'convenience' stamp: 'bf 3/10/2000 14:40'!
mimeEncode: aCollectionOrStream

!MimeConverter class methodsFor: 'convenience' stamp: 'damiencassou 5/30/2008 11:45'!
mimeEncode: aCollectionOrStream to: outStream 

!QuotedPrintableMimeConverter methodsFor: 'conversion' stamp: 'SvenVanCaekenberghe 1/8/2012 15:25'!
mimeDecode

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'bf 3/11/2000 23:16'!
encodeChar: aChar to: aStream

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'bf 3/11/2000 23:13'!
encodeWord: aString

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'bf 3/12/2000 14:36'!
isStructuredField: aString

!RFC2047MimeConverter methodsFor: 'conversion' stamp: 'sd 3/20/2008 22:23'!
mimeDecode

!RFC2047MimeConverter methodsFor: 'conversion' stamp: 'bf 3/10/2000 16:06'!
mimeEncode

!RFC2047MimeConverter methodsFor: 'private-encoding' stamp: 'PeterHugossonMiller 9/3/2009 11:08'!
readWord
Base64MimeConverter initialize!
MIMEType initialize!