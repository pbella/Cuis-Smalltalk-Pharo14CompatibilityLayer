'From Cuis 4.0 of 21 April 2012 [latest update: #1270] on 20 May 2012 at 5:42:16 pm'!
'Description Please enter a description for this package '!
!classDefinition: #LanguageEnvironment category: #'Cuis-Multilingual-Languages'!
Object subclass: #LanguageEnvironment
	instanceVariableNames: 'id'
	classVariableNames: 'ClipboardInterpreterClass Current FileNameConverterClass InputInterpreterClass KnownEnvironments SystemConverterClass'
	poolDictionaries: ''
	category: 'Cuis-Multilingual-Languages'!
!classDefinition: 'LanguageEnvironment class' category: #'Cuis-Multilingual-Languages'!
LanguageEnvironment class
	instanceVariableNames: ''!


!LanguageEnvironment commentStamp: '<historical>' prior: 0!
The name multilingualized Squeak suggests that you can use multiple language at one time.  This is true, of course, but the system still how to manage the primary language; that provides the interpretation of data going out or coming in from outside world. It also provides how to render strings, as there rendering rule could be different in one language to another, even if the code points in a string is the same.

!LanguageEnvironment methodsFor: 'utilities' stamp: 'mir 7/21/2004 18:05'!
checkPhrase: phrase translation: translation

!LanguageEnvironment methodsFor: 'accessing' stamp: 'tak 8/4/2005 11:02'!
fontEncodingName

!LanguageEnvironment methodsFor: 'fonts support' stamp: 'tak 8/5/2005 20:46'!
fontFileName

!LanguageEnvironment methodsFor: 'fonts support' stamp: 'StephaneDucasse 3/27/2010 21:59'!
fontFullName

!LanguageEnvironment methodsFor: 'fonts support' stamp: 'adrian_lienhard 7/18/2009 15:28'!
isFontAvailable

!LanguageEnvironment methodsFor: 'accessing' stamp: 'mir 7/15/2004 15:32'!
isoCountry

!LanguageEnvironment methodsFor: 'accessing' stamp: 'mir 7/15/2004 15:32'!
isoLanguage

!LanguageEnvironment methodsFor: 'accessing' stamp: 'mir 7/15/2004 18:55'!
leadingChar

!LanguageEnvironment methodsFor: 'accessing' stamp: 'mir 7/15/2004 15:31'!
localeID

!LanguageEnvironment methodsFor: 'initialization' stamp: 'mir 7/15/2004 15:31'!
localeID: anID

!LanguageEnvironment methodsFor: 'fonts support' stamp: 'tak 8/4/2005 11:08'!
removeFonts

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 3/17/2004 15:24'!
canBeGlobalVarInitial: char

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 3/17/2004 15:24'!
canBeNonGlobalVarInitial: char

!LanguageEnvironment class methodsFor: 'initialization' stamp: 'yo 3/15/2004 21:15'!
clearDefault

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 7/28/2004 21:34'!
currentPlatform

!LanguageEnvironment class methodsFor: 'public query' stamp: 'StephaneDucasse 8/3/2010 22:48'!
defaultEncodingName

!LanguageEnvironment class methodsFor: 'public query' stamp: 'yo 7/28/2004 21:56'!
defaultFileNameConverter

!LanguageEnvironment class methodsFor: 'public query' stamp: 'yo 7/28/2004 21:56'!
defaultSystemConverter

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'StephaneDucasse 2/13/2010 12:14'!
digitValueOf: char

!LanguageEnvironment class methodsFor: 'subclass responsibilities' stamp: 'michael.rueger 2/5/2009 17:23'!
fileNameConverterClass

!LanguageEnvironment class methodsFor: 'private' stamp: 'nice 1/5/2010 15:59'!
initKnownEnvironments

!LanguageEnvironment class methodsFor: 'initialization' stamp: 'mir 7/15/2004 15:54'!
initialize

!LanguageEnvironment class methodsFor: 'rendering support' stamp: 'yo 3/17/2004 21:54'!
isBreakableAt: index in: text

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 12/2/2004 16:13'!
isCharset

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 3/17/2004 15:24'!
isDigit: char

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 3/17/2004 15:25'!
isLetter: char

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 3/17/2004 15:25'!
isLowercase: char

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'yo 3/17/2004 15:25'!
isUppercase: char

!LanguageEnvironment class methodsFor: 'private' stamp: 'mir 7/15/2004 15:45'!
knownEnvironments

!LanguageEnvironment class methodsFor: 'subclass responsibilities' stamp: 'yo 3/17/2004 15:11'!
leadingChar

!LanguageEnvironment class methodsFor: 'class initialization' stamp: 'mir 7/15/2004 16:13'!
localeChanged

!LanguageEnvironment class methodsFor: 'accessing' stamp: 'michael.rueger 3/15/2009 11:45'!
localeID: localeID

!LanguageEnvironment class methodsFor: 'initialization' stamp: 'mir 7/21/2004 19:10'!
resetKnownEnvironments

!LanguageEnvironment class methodsFor: 'language methods' stamp: 'yo 1/18/2005 15:56'!
scanSelector

!LanguageEnvironment class methodsFor: 'private'!
setUsePangoFlag

!LanguageEnvironment class methodsFor: 'class initialization' stamp: 'michael.rueger 3/2/2009 11:06'!
startUp

!LanguageEnvironment class methodsFor: 'subclass responsibilities' stamp: 'mir 7/1/2004 17:59'!
supportedLanguages

!LanguageEnvironment class methodsFor: 'subclass responsibilities' stamp: 'yo 3/17/2004 15:10'!
systemConverterClass
LanguageEnvironment initialize!