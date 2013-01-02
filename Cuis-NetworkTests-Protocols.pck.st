'From Cuis 4.1 of 12 December 2012 [latest update: #1528] on 2 January 2013 at 8:26:36 am'!
'Description Please enter a description for this package '!
!classDefinition: #HTTPSocketTest category: #'Cuis-NetworkTests-Protocols'!
TestCase subclass: #HTTPSocketTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-NetworkTests-Protocols'!
!classDefinition: 'HTTPSocketTest class' category: #'Cuis-NetworkTests-Protocols'!
HTTPSocketTest class
	instanceVariableNames: ''!

!classDefinition: #MockSocketStream category: #'Cuis-NetworkTests-Protocols'!
Stream subclass: #MockSocketStream
	instanceVariableNames: 'atEnd inStream outStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-NetworkTests-Protocols'!
!classDefinition: 'MockSocketStream class' category: #'Cuis-NetworkTests-Protocols'!
MockSocketStream class
	instanceVariableNames: ''!

!classDefinition: #SMTPClientTest category: #'Cuis-NetworkTests-Protocols'!
TestCase subclass: #SMTPClientTest
	instanceVariableNames: 'smtp socket'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-NetworkTests-Protocols'!
!classDefinition: 'SMTPClientTest class' category: #'Cuis-NetworkTests-Protocols'!
SMTPClientTest class
	instanceVariableNames: ''!


!MockSocketStream commentStamp: 'gsa 12/7/2012 10:16' prior: 0!
This class in Pharo 1.4 is on NetworkTests-Kernel, but how is only used in tests of SMTPClient I decided to put in this package Cuis-NetworkTests-Protocols. GSA - 07/12/2012!

!HTTPSocketTest methodsFor: 'tests' stamp: 'StephaneDucasse 3/27/2010 22:24'!
expandUrl

!HTTPSocketTest methodsFor: 'tests' stamp: 'StephaneDucasse 3/27/2010 22:36'!
testExpandUrl

!HTTPSocketTest methodsFor: 'tests' stamp: 'StephaneDucasse 3/27/2010 22:51'!
testIpPortUrlPath

!MockSocketStream methodsFor: 'testing' stamp: 'fbs 3/22/2004 13:08'!
atEnd

!MockSocketStream methodsFor: 'accessing' stamp: 'fbs 3/22/2004 12:51'!
atEnd: aBoolean

!MockSocketStream methodsFor: 'accessing' stamp: 'fbs 3/22/2004 13:29'!
inStream

!MockSocketStream methodsFor: 'initialization' stamp: 'alain.plantec 5/28/2009 10:08'!
initialize

!MockSocketStream methodsFor: 'stream in' stamp: 'fbs 3/22/2004 13:10'!
nextLine

!MockSocketStream methodsFor: 'stream in' stamp: 'gsa 12/7/2012 17:02'!
nextLineCrLf

!MockSocketStream methodsFor: 'accessing' stamp: 'fbs 3/22/2004 13:08'!
outStream

!MockSocketStream methodsFor: 'stream in' stamp: 'PeterHugossonMiller 9/3/2009 10:05'!
resetInStream

!MockSocketStream methodsFor: 'stream out' stamp: 'PeterHugossonMiller 9/3/2009 10:05'!
resetOutStream

!MockSocketStream methodsFor: 'stream out' stamp: 'gsa 12/7/2012 17:01'!
sendCommand: aString

!MockSocketStream methodsFor: 'stream in' stamp: 'fbs 3/22/2004 13:09'!
upToAll: delims

!MockSocketStream class methodsFor: 'instance creation' stamp: 'fbs 3/22/2004 12:46'!
on: socket

!SMTPClientTest methodsFor: 'running' stamp: 'fbs 3/22/2004 13:11'!
setUp

!SMTPClientTest methodsFor: 'testing' stamp: 'gsa 12/7/2012 17:03'!
testMailFrom
	smtp mailFrom: 'frank@angband.za.org'.
	self assert: socket outStream contents = ('MAIL FROM: <frank@angband.za.org>', String crlfString).
	
	socket resetOutStream.
	smtp mailFrom: '<frank@angband.za.org>'.
	self assert: socket outStream contents = ('MAIL FROM: <frank@angband.za.org>', String crlfString).
	
	socket resetOutStream.
	smtp mailFrom: 'Frank <frank@angband.za.org>'.
	self assert: socket outStream contents = ('MAIL FROM: <frank@angband.za.org>', String crlfString).! !