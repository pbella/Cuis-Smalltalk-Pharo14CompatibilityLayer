'From Cuis 4.0 of 21 April 2012 [latest update: #1308] on 7 December 2012 at 10:30:23 am'!
'Description Please enter a description for this package '!
!classDefinition: #MailAddressParserTest category: #'Cuis-NetworkTests-RFC822'!
TestCase subclass: #MailAddressParserTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-NetworkTests-RFC822'!
!classDefinition: 'MailAddressParserTest class' category: #'Cuis-NetworkTests-RFC822'!
MailAddressParserTest class
	instanceVariableNames: ''!


!MailAddressParserTest commentStamp: '<historical>' prior: 0!
This is the unit test for the class MailAddressParser. Unit tests are a good way to exercise the functionality of your system in a repeatable and automatic manner. They are therefore recommended if you plan to release anything. For more information, see: 

!MailAddressParserTest methodsFor: 'tests' stamp: 'sd 6/5/2005 10:31'!
testAddressesIn