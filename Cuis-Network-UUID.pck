'From Cuis 4.0 of 21 April 2012 [latest update: #1308] on 22 November 2012 at 3:21:41 pm'!
'Description Please enter a description for this package '!
!classDefinition: #UUID category: #'Network-UUID'!
ByteArray variableByteSubclass: #UUID
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-UUID'!
!classDefinition: 'UUID class' category: #'Network-UUID'!
UUID class
	instanceVariableNames: ''!

!classDefinition: #UUIDGenerator category: #'Network-UUID'!
Object subclass: #UUIDGenerator
	instanceVariableNames: 'timeLow timeMid timeHiAndVersion clockSeqHiAndReserved clockSeqLow node randomCounter randomGenerator semaphoreForGenerator'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Network-UUID'!
!classDefinition: 'UUIDGenerator class' category: #'Network-UUID'!
UUIDGenerator class
	instanceVariableNames: ''!


!UUID commentStamp: '<historical>' prior: 0!
A class to generate UUID

!UUIDGenerator commentStamp: '<historical>' prior: 0!
This class generates a pseudo-random UUID

!UUID methodsFor: 'comparing' stamp: 'EstebanLorenzano 11/18/2011 13:56'!
< aMagnitude 

!UUID methodsFor: 'comparing' stamp: 'JMM 11/22/2001 17:30'!
<= aMagnitude 

!UUID methodsFor: 'comparing' stamp: 'JMM 11/22/2001 17:30'!
> aMagnitude 

!UUID methodsFor: 'comparing' stamp: 'JMM 11/22/2001 17:30'!
>= aMagnitude 

!UUID methodsFor: 'converting' stamp: 'PeterHugossonMiller 9/3/2009 11:46'!
asString

!UUID methodsFor: 'converting' stamp: 'gk 4/18/2006 22:15'!
asString36

!UUID methodsFor: 'converting' stamp: 'damiencassou 5/30/2008 15:52'!
asUUID: aString 

!UUID methodsFor: 'converting' stamp: 'PeterHugossonMiller 9/3/2009 11:46'!
createStringStartingAt: index for: bytes

!UUID methodsFor: 'initalize-release' stamp: 'alain.plantec 5/28/2009 11:15'!
initialize

!UUID methodsFor: 'testing' stamp: 'JMM 10/9/2001 14:17'!
isNilUUID

!UUID methodsFor: 'system primitives' stamp: 'ar 2/3/2002 19:42'!
primMakeUUID

!UUID methodsFor: 'converting' stamp: 'ar 2/8/2004 12:16'!
printHexAt: index to: aStream

!UUID methodsFor: 'printing' stamp: 'JMM 10/9/2001 14:46'!
printOn: aStream

!UUID methodsFor: 'printing' stamp: 'ar 2/8/2004 12:16'!
printString

!UUID class methodsFor: 'instance creation' stamp: 'StephaneDucasse 8/21/2010 22:01'!
fromString36: aString

!UUID class methodsFor: 'instance creation' stamp: 'dvf 9/10/2004 23:10'!
fromString: aString

!UUID class methodsFor: 'instance creation' stamp: 'nk 7/30/2004 21:49'!
new

!UUID class methodsFor: 'instance creation' stamp: 'nk 6/28/2004 16:10'!
nilUUID

!UUIDGenerator methodsFor: 'instance creation' stamp: 'JMM 11/22/2001 13:45'!
generateBytes: aPlaceHolder forVersion: aVersion

!UUIDGenerator methodsFor: 'instance creation' stamp: 'JMM 11/22/2001 23:13'!
generateFieldsVersion4

!UUIDGenerator methodsFor: 'generator' stamp: 'nice 1/5/2010 20:55'!
generateOneOrZero

!UUIDGenerator methodsFor: 'generator' stamp: 'JMM 11/21/2001 15:12'!
generateRandomBitsOfLength: aNumberOfBits

!UUIDGenerator methodsFor: 'instance creation' stamp: 'alain.plantec 5/28/2009 11:15'!
initialize

!UUIDGenerator methodsFor: 'random seed' stamp: 'dew 2/8/2003 00:28'!
makeSeed

!UUIDGenerator methodsFor: 'random seed' stamp: 'gk 2/23/2004 21:09'!
makeSeedFromSound

!UUIDGenerator methodsFor: 'random seed' stamp: 'StephaneDucasse 2/2/2010 22:18'!
makeUnixSeed

!UUIDGenerator methodsFor: 'instance creation' stamp: 'JMM 11/22/2001 23:12'!
placeFields: aByteArray

!UUIDGenerator methodsFor: 'accessors and mutators' stamp: 'JMM 11/21/2001 14:28'!
randomCounter

!UUIDGenerator methodsFor: 'accessors and mutators' stamp: 'JMM 11/21/2001 14:29'!
randomCounter: aNumber

!UUIDGenerator methodsFor: 'accessors and mutators' stamp: 'JMM 11/21/2001 14:27'!
randomGenerator

!UUIDGenerator methodsFor: 'accessors and mutators' stamp: 'JMM 11/21/2001 14:27'!
randomGenerator: aGenerator

!UUIDGenerator methodsFor: 'accessors and mutators' stamp: 'JMM 11/21/2001 14:29'!
semaphoreForGenerator

!UUIDGenerator methodsFor: 'accessors and mutators' stamp: 'JMM 11/21/2001 14:29'!
semaphoreForGenerator: aSema

!UUIDGenerator methodsFor: 'instance creation' stamp: 'CdG 11/19/2002 21:30'!
setupRandom

!UUIDGenerator class methodsFor: 'instance creation' stamp: 'JMM 11/22/2001 13:41'!
default

!UUIDGenerator class methodsFor: 'instance creation' stamp: 'nk 7/30/2004 21:51'!
generateDefault

!UUIDGenerator class methodsFor: 'initialization' stamp: 'PavelKrivanek 6/10/2011 17:00'!
initialize

!UUIDGenerator class methodsFor: 'initialization' stamp: 'CdG 11/19/2002 21:07'!
startUp
UUIDGenerator initialize!