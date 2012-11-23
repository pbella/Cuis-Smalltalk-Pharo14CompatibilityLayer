'From Cuis 4.0 of 21 April 2012 [latest update: #1270] on 20 May 2012 at 5:41:07 pm'!
'Description Please enter a description for this package '!
!classDefinition: #ISOLanguageDefinition category: #'Cuis-System-Localization'!
Object subclass: #ISOLanguageDefinition
	instanceVariableNames: 'iso3 iso2 iso3Alternate language'
	classVariableNames: 'ISO2Countries ISO2Table ISO3Countries ISO3Table'
	poolDictionaries: ''
	category: 'Cuis-System-Localization'!
!classDefinition: 'ISOLanguageDefinition class' category: #'Cuis-System-Localization'!
ISOLanguageDefinition class
	instanceVariableNames: ''!

!classDefinition: #Locale category: #'Cuis-System-Localization'!
Object subclass: #Locale
	instanceVariableNames: 'id shortDate longDate time decimalSymbol digitGrouping currencySymbol currencyNotation measurement offsetLocalToUTC offsetVMToUTC dstActive'
	classVariableNames: 'Activated Current CurrentPlatform KnownLocales LanguageSymbols LocaleChangeListeners PlatformEncodings'
	poolDictionaries: ''
	category: 'Cuis-System-Localization'!
!classDefinition: 'Locale class' category: #'Cuis-System-Localization'!
Locale class
	instanceVariableNames: ''!

!classDefinition: #LocaleID category: #'Cuis-System-Localization'!
Object subclass: #LocaleID
	instanceVariableNames: 'isoLanguage isoCountry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-System-Localization'!
!classDefinition: 'LocaleID class' category: #'Cuis-System-Localization'!
LocaleID class
	instanceVariableNames: ''!

!classDefinition: #NaturalLanguageFormTranslator category: #'Cuis-System-Localization'!
Object subclass: #NaturalLanguageFormTranslator
	instanceVariableNames: 'id generics'
	classVariableNames: 'CachedTranslations'
	poolDictionaries: ''
	category: 'Cuis-System-Localization'!
!classDefinition: 'NaturalLanguageFormTranslator class' category: #'Cuis-System-Localization'!
NaturalLanguageFormTranslator class
	instanceVariableNames: ''!

!classDefinition: #NaturalLanguageTranslator category: #'Cuis-System-Localization'!
Object subclass: #NaturalLanguageTranslator
	instanceVariableNames: ''
	classVariableNames: 'AllKnownPhrases'
	poolDictionaries: ''
	category: 'Cuis-System-Localization'!
!classDefinition: 'NaturalLanguageTranslator class' category: #'Cuis-System-Localization'!
NaturalLanguageTranslator class
	instanceVariableNames: ''!


!Locale commentStamp: '<historical>' prior: 0!
Main comment stating the purpose of this class and relevant relationship to other classes.

!NaturalLanguageFormTranslator commentStamp: 'LaurentLaffont 3/4/2011 22:44' prior: 0!
Provides support for looking up Forms by name for presentation in the UI.

!NaturalLanguageTranslator commentStamp: 'HilaireFernandes 5/13/2010 11:48' prior: 0!
A NaturalLanguageTranslator is a dummy translator.

!ISOLanguageDefinition methodsFor: 'accessing' stamp: 'mir 7/1/2004 18:20'!
iso2

!ISOLanguageDefinition methodsFor: 'initialize' stamp: 'mir 6/30/2004 15:54'!
iso2: aString

!ISOLanguageDefinition methodsFor: 'accessing' stamp: 'mir 7/1/2004 18:21'!
iso3

!ISOLanguageDefinition methodsFor: 'initialize' stamp: 'mir 6/30/2004 15:54'!
iso3: aString

!ISOLanguageDefinition methodsFor: 'accessing' stamp: 'mir 6/30/2004 15:47'!
iso3Alternate

!ISOLanguageDefinition methodsFor: 'initialize' stamp: 'mir 6/30/2004 15:54'!
iso3Alternate: aString

!ISOLanguageDefinition methodsFor: 'accessing' stamp: 'mir 8/15/2003 13:13'!
language

!ISOLanguageDefinition methodsFor: 'initialize' stamp: 'mir 8/15/2003 13:40'!
language: aString

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 9/1/2005 14:06'!
buildIso3166CodesTables

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 9/1/2005 14:14'!
extraCountryDefinitions

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 7/15/2004 18:14'!
extraISO3Definitions

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 7/15/2004 18:13'!
initISO3LanguageTable

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 9/1/2005 14:12'!
initISOCountries

!ISOLanguageDefinition class methodsFor: 'initialization' stamp: 'mir 7/1/2004 18:19'!
initialize

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 9/1/2005 14:18'!
iso2Countries

!ISOLanguageDefinition class methodsFor: 'accessing' stamp: 'mir 7/1/2004 18:06'!
iso2LanguageDefinition: aString

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 7/1/2004 18:14'!
iso2LanguageTable

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 9/1/2005 13:57'!
iso3166Codes

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 9/1/2005 14:18'!
iso3Countries

!ISOLanguageDefinition class methodsFor: 'accessing' stamp: 'mir 7/1/2004 18:06'!
iso3LanguageDefinition: aString

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 7/21/2004 13:10'!
iso3LanguageTable

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'yo 12/3/2004 17:46'!
isoLanguages

!ISOLanguageDefinition class methodsFor: 'private' stamp: 'mir 7/1/2004 18:07'!
readISOLanguagesFrom: stream

!Locale methodsFor: 'accessing' stamp: 'mir 8/31/2005 17:03'!
determineLocale

!Locale methodsFor: 'accessing' stamp: 'mir 8/31/2005 16:32'!
determineLocaleID

!Locale methodsFor: 'private' stamp: 'StephaneDucasse 5/28/2011 13:45'!
fetchISO2Language

!Locale methodsFor: 'accessing' stamp: 'nk 8/31/2004 09:39'!
isoCountry

!Locale methodsFor: 'accessing' stamp: 'nk 8/31/2004 09:39'!
isoLanguage

!Locale methodsFor: 'accessing' stamp: 'mir 7/15/2004 12:41'!
isoLocale

!Locale methodsFor: 'accessing' stamp: 'mir 7/15/2004 15:52'!
languageEnvironment

!Locale methodsFor: 'accessing' stamp: 'mir 7/15/2004 14:55'!
localeID

!Locale methodsFor: 'accessing' stamp: 'mir 7/15/2004 14:55'!
localeID: anID

!Locale methodsFor: 'system primitives' stamp: 'jannik.laval 2/4/2010 15:09'!
primCountry

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/1/2005 18:45'!
primCurrencyNotation

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/1/2005 18:47'!
primCurrencySymbol

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/1/2005 18:48'!
primDST

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/2/2005 13:42'!
primDecimalSymbol

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/2/2005 13:42'!
primDigitGrouping

!Locale methodsFor: 'system primitives' stamp: 'jannik.laval 2/4/2010 15:07'!
primLanguage

!Locale methodsFor: 'system primitives' stamp: 'jannik.laval 2/4/2010 15:09'!
primLongDateFormat

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/2/2005 13:43'!
primMeasurement

!Locale methodsFor: 'system primitives' stamp: 'jannik.laval 2/4/2010 15:11'!
primShortDateFormat

!Locale methodsFor: 'system primitives' stamp: 'jannik.laval 2/4/2010 15:11'!
primTimeFormat

!Locale methodsFor: 'system primitives' stamp: 'jannik.laval 2/4/2010 15:08'!
primTimezone

!Locale methodsFor: 'system primitives' stamp: 'tpr 6/2/2005 13:44'!
primVMOffsetToUTC

!Locale methodsFor: 'accessing' stamp: 'tak 8/4/2005 15:18'!
printOn: aStream 

!Locale class methodsFor: 'settings' stamp: 'AlainPlantec 12/11/2009 10:59'!
activated

!Locale class methodsFor: 'settings' stamp: 'AlainPlantec 12/11/2009 10:59'!
activated: aBoolean

!Locale class methodsFor: 'notification' stamp: 'mir 6/30/2004 16:15'!
addLocalChangedListener: anObjectOrClass

!Locale class methodsFor: 'accessing' stamp: 'mir 8/31/2005 17:36'!
current

!Locale class methodsFor: 'accessing' stamp: 'yo 7/28/2004 20:32'!
currentPlatform

!Locale class methodsFor: 'accessing' stamp: 'yo 7/28/2004 20:39'!
currentPlatform: locale

!Locale class methodsFor: 'accessing' stamp: 'tak 10/18/2005 22:33'!
currentPlatform: locale during: aBlock 

!Locale class methodsFor: 'platform specific' stamp: 'simon.denier 6/11/2010 17:35'!
defaultEncodingName: languageSymbol 

!Locale class methodsFor: 'private' stamp: 'mir 7/28/2005 00:24'!
determineCurrentLocale

!Locale class methodsFor: 'private' stamp: 'mir 7/15/2004 19:44'!
initKnownLocales

!Locale class methodsFor: 'initialization' stamp: 'AlainPlantec 1/5/2010 12:24'!
initialize

!Locale class methodsFor: 'initialization' stamp: 'MarcusDenker 1/24/2010 11:07'!
initializePlatformEncodings

!Locale class methodsFor: 'accessing' stamp: 'mir 7/15/2004 14:20'!
isoLanguage: isoLanguage

!Locale class methodsFor: 'accessing' stamp: 'mir 7/15/2004 14:31'!
isoLanguage: isoLanguage isoCountry: isoCountry

!Locale class methodsFor: 'accessing' stamp: 'mir 7/15/2004 12:42'!
isoLocale: aString

!Locale class methodsFor: 'private' stamp: 'mir 7/15/2004 16:44'!
knownLocales

!Locale class methodsFor: 'accessing' stamp: 'mir 7/13/2004 00:24'!
languageSymbol: languageSymbol

!Locale class methodsFor: 'notification' stamp: 'MarcusDenker 3/24/2011 16:36'!
localeChanged! !

!Locale class methodsFor: 'notification' stamp: 'mir 6/30/2004 16:15'!
localeChangedListeners

!Locale class methodsFor: 'accessing' stamp: 'mir 7/15/2004 14:30'!
localeID: id

!Locale class methodsFor: 'initialization' stamp: 'nk 8/29/2004 13:20'!
platformEncodings

!Locale class methodsFor: 'system startup' stamp: 'jannik.laval 2/4/2010 15:14'!
startUp: resuming

!Locale class methodsFor: 'accessing' stamp: 'HilaireFernandes 5/6/2010 21:31'!
stringForLanguageNameIs: localeID 

!Locale class methodsFor: 'accessing' stamp: 'tak 8/4/2005 16:30'!
switchTo: locale 

!Locale class methodsFor: 'accessing' stamp: 'mir 7/15/2004 19:07'!
switchToID: localeID

!LocaleID methodsFor: 'comparing' stamp: 'mir 7/15/2004 14:23'!
= anotherObject

!LocaleID methodsFor: 'accessing' stamp: 'mir 9/1/2005 14:17'!
displayCountry

!LocaleID methodsFor: 'accessing' stamp: 'tak 3/23/2006 12:26'!
displayLanguage

!LocaleID methodsFor: 'testing' stamp: 'mir 7/15/2004 14:34'!
hasParent

!LocaleID methodsFor: 'comparing' stamp: 'mir 7/15/2004 14:23'!
hash

!LocaleID methodsFor: 'accessing' stamp: 'mir 7/15/2004 12:43'!
isoCountry

!LocaleID methodsFor: 'accessing' stamp: 'mir 7/15/2004 12:43'!
isoLanguage

!LocaleID methodsFor: 'initialize' stamp: 'mir 7/15/2004 12:44'!
isoLanguage: langString isoCountry: countryStringOrNil

!LocaleID methodsFor: 'accessing' stamp: 'mir 7/21/2004 19:17'!
isoString

!LocaleID methodsFor: 'accessing' stamp: 'mir 7/15/2004 14:34'!
parent

!LocaleID methodsFor: 'printing' stamp: 'tak 8/6/2007 12:16'!
posixName

!LocaleID methodsFor: 'printing' stamp: 'mir 7/15/2004 12:45'!
printOn: stream

!LocaleID methodsFor: 'printing' stamp: 'tak 11/15/2004 12:45'!
storeOn: aStream 

!LocaleID methodsFor: 'accessing' stamp: 'HilaireFernandes 5/6/2010 21:30'!
translator

!LocaleID class methodsFor: 'accessing' stamp: 'mir 7/15/2004 15:09'!
current

!LocaleID class methodsFor: 'instance creation' stamp: 'mir 7/15/2004 14:35'!
isoLanguage: langString

!LocaleID class methodsFor: 'instance creation' stamp: 'mir 7/15/2004 12:46'!
isoLanguage: langString isoCountry: countryStringOrNil

!LocaleID class methodsFor: 'instance creation' stamp: 'mir 7/21/2004 13:59'!
isoString: isoString

!LocaleID class methodsFor: 'instance creation' stamp: 'HilaireFernandes 4/30/2010 18:00'!
posixName: aString 

!LocaleID class methodsFor: 'accessing' stamp: 'bf 9/26/2007 16:24'!
previous

!NaturalLanguageFormTranslator methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:15'!
generics

!NaturalLanguageFormTranslator methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:27'!
localeID

!NaturalLanguageFormTranslator methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:26'!
localeID: anID

!NaturalLanguageFormTranslator methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:17'!
name: formName form: translatedForm 

!NaturalLanguageFormTranslator methodsFor: 'i/o' stamp: 'yo 1/13/2005 14:02'!
saveFormsOn: aStream

!NaturalLanguageFormTranslator methodsFor: 'utilities' stamp: 'yo 1/13/2005 11:35'!
translate: aString

!NaturalLanguageFormTranslator class methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:13'!
cachedTranslations

!NaturalLanguageFormTranslator class methodsFor: 'cleanup' stamp: 'StephaneDucasse 3/9/2010 22:11'!
cleanUp

!NaturalLanguageFormTranslator class methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:13'!
isoLanguage: isoLanguage

!NaturalLanguageFormTranslator class methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:13'!
isoLanguage: isoLanguage isoCountry: isoCountry

!NaturalLanguageFormTranslator class methodsFor: 'i/o' stamp: 'StephaneDucasse 3/9/2010 22:10'!
loadFormsFrom: aStream

!NaturalLanguageFormTranslator class methodsFor: 'accessing' stamp: 'yo 1/13/2005 11:13'!
localeID: localeID 

!NaturalLanguageTranslator class methodsFor: 'cleanup' stamp: 'MarcusDenker 4/22/2011 10:34'!
cleanUp

!NaturalLanguageTranslator class methodsFor: 'translate' stamp: 'HilaireFernandes 5/13/2010 11:43'!
translate: aString

!NaturalLanguageTranslator class methodsFor: 'translate' stamp: 'HilaireFernandes 5/13/2010 11:43'!
translate: aString toLocale: localeID
ISOLanguageDefinition initialize!
Locale initialize!