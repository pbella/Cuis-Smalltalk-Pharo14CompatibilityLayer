'From Cuis 4.0 of 21 April 2012 [latest update: #1308] on 22 November 2012 at 3:21:45 pm'!
'Description Please enter a description for this package '!
!classDefinition: #UUIDPrimitivesTest category: #'NetworkTests-UUID'!
TestCase subclass: #UUIDPrimitivesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NetworkTests-UUID'!
!classDefinition: 'UUIDPrimitivesTest class' category: #'NetworkTests-UUID'!
UUIDPrimitivesTest class
	instanceVariableNames: ''!

!classDefinition: #UUIDTest category: #'NetworkTests-UUID'!
TestCase subclass: #UUIDTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NetworkTests-UUID'!
!classDefinition: 'UUIDTest class' category: #'NetworkTests-UUID'!
UUIDTest class
	instanceVariableNames: ''!


!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'StephaneDucasse 11/5/2011 15:35'!
testComparison

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'JMM 11/22/2001 17:14'!
testCreation

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'JMM 11/22/2001 17:27'!
testCreationEquality

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'JMM 11/22/2001 17:17'!
testCreationFromString

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'StephaneDucasse 8/21/2010 20:54'!
testCreationFromString36NotNil

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'StephaneDucasse 8/21/2010 20:58'!
testCreationFromString36With0

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'StephaneDucasse 8/21/2010 20:59'!
testCreationFromString36WithNillUUID

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'JMM 11/22/2001 17:18'!
testCreationFromStringNotNil

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'JMM 11/22/2001 17:16'!
testCreationNil

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'nice 1/5/2010 15:59'!
testCreationNodeBased

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'nice 1/5/2010 15:59'!
testDuplicationsKinda

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'nice 1/5/2010 15:59'!
testOrder

!UUIDPrimitivesTest methodsFor: 'tests' stamp: 'StephaneDucasse 7/22/2011 18:09'!
testUniqueness 

!UUIDTest methodsFor: 'testing' stamp: 'EstebanLorenzano 11/18/2011 13:58'!
testComparison