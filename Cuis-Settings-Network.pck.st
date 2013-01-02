'From Cuis 4.1 of 12 December 2012 [latest update: #1528] on 2 January 2013 at 8:29 am'!
'Description Please enter a description for this package '!
!classDefinition: #NetworkSystemSettings category: #'Cuis-Settings-Network'!
Object subclass: #NetworkSystemSettings
	instanceVariableNames: ''
	classVariableNames: 'BlabEmail LastHTTPProxyPort LastHTTPProxyServer ProxyPassword ProxyUser UseHTTPProxy UseNetworkAuthentification'
	poolDictionaries: ''
	category: 'Cuis-Settings-Network'!
!classDefinition: 'NetworkSystemSettings class' category: #'Cuis-Settings-Network'!
NetworkSystemSettings class
	instanceVariableNames: ''!


!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/3/2009 07:19'!
blabEmail

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/18/2009 07:37'!
blabEmail: aBlabEmailString

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 1/31/2010 17:07'!
httpProxyPort  

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/2/2009 07:34'!
httpProxyPort: aPort

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/2/2009 07:33'!
httpProxyServer

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/2/2009 07:36'!
httpProxyServer: aServerName

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/9/2009 08:39'!
lastHTTPProxyPort

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/2/2009 07:36'!
lastHTTPProxyServer

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/28/2010 22:39'!
networkSettingsOn: aBuilder 

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/2/2009 23:03'!
proxyPassword

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 5/7/2010 19:41'!
proxyPassword: aPassword

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 1/10/2010 09:36'!
proxyUser

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 5/7/2010 19:48'!
proxyUser: aUser

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/2/2009 07:23'!
useHTTPProxy

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/18/2009 07:33'!
useHTTPProxy: aBoolean

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/3/2009 06:46'!
useNetworkAuthentification

!NetworkSystemSettings class methodsFor: 'settings' stamp: 'AlainPlantec 12/18/2009 07:34'!
useNetworkAuthentification: aBoolean