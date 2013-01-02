'From Cuis 4.1 of 12 December 2012 [latest update: #1528] on 2 January 2013 at 8:14:46 am'!
'Description Please enter a description for this package '!
!classDefinition: #FTPConnectionException category: #'Cuis-Network-Protocols'!
Error subclass: #FTPConnectionException
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'FTPConnectionException class' category: #'Cuis-Network-Protocols'!
FTPConnectionException class
	instanceVariableNames: ''!

!classDefinition: #HTTPClient category: #'Cuis-Network-Protocols'!
Object subclass: #HTTPClient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'HTTPClient class' category: #'Cuis-Network-Protocols'!
HTTPClient class
	instanceVariableNames: ''!

!classDefinition: #HTTPProgress category: #'Cuis-Network-Protocols'!
Notification subclass: #HTTPProgress
	instanceVariableNames: 'total amount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'HTTPProgress class' category: #'Cuis-Network-Protocols'!
HTTPProgress class
	instanceVariableNames: ''!

!classDefinition: #HTTPSocket category: #'Cuis-Network-Protocols'!
Socket subclass: #HTTPSocket
	instanceVariableNames: 'headerTokens headers responseCode'
	classVariableNames: 'HTTPBlabEmail HTTPProxyCredentials HTTPProxyExceptions HTTPProxyPort HTTPProxyServer ParamDelimiters'
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'HTTPSocket class' category: #'Cuis-Network-Protocols'!
HTTPSocket class
	instanceVariableNames: ''!

!classDefinition: #ProtocolClient category: #'Cuis-Network-Protocols'!
Object subclass: #ProtocolClient
	instanceVariableNames: 'stream connectInfo lastResponse pendingResponses progressObservers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'ProtocolClient class' category: #'Cuis-Network-Protocols'!
ProtocolClient class
	instanceVariableNames: ''!

!classDefinition: #POP3Client category: #'Cuis-Network-Protocols'!
ProtocolClient subclass: #POP3Client
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'POP3Client class' category: #'Cuis-Network-Protocols'!
POP3Client class
	instanceVariableNames: ''!

!classDefinition: #ProtocolClientError category: #'Cuis-Network-Protocols'!
Error subclass: #ProtocolClientError
	instanceVariableNames: 'protocolInstance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'ProtocolClientError class' category: #'Cuis-Network-Protocols'!
ProtocolClientError class
	instanceVariableNames: ''!

!classDefinition: #LoginFailedException category: #'Cuis-Network-Protocols'!
ProtocolClientError subclass: #LoginFailedException
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'LoginFailedException class' category: #'Cuis-Network-Protocols'!
LoginFailedException class
	instanceVariableNames: ''!

!classDefinition: #POP3LoginError category: #'Cuis-Network-Protocols'!
ProtocolClientError subclass: #POP3LoginError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'POP3LoginError class' category: #'Cuis-Network-Protocols'!
POP3LoginError class
	instanceVariableNames: ''!

!classDefinition: #TelnetProtocolClient category: #'Cuis-Network-Protocols'!
ProtocolClient subclass: #TelnetProtocolClient
	instanceVariableNames: 'responseCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'TelnetProtocolClient class' category: #'Cuis-Network-Protocols'!
TelnetProtocolClient class
	instanceVariableNames: ''!

!classDefinition: #FTPClient category: #'Cuis-Network-Protocols'!
TelnetProtocolClient subclass: #FTPClient
	instanceVariableNames: 'dataSocket'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'FTPClient class' category: #'Cuis-Network-Protocols'!
FTPClient class
	instanceVariableNames: ''!

!classDefinition: #SMTPClient category: #'Cuis-Network-Protocols'!
TelnetProtocolClient subclass: #SMTPClient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'SMTPClient class' category: #'Cuis-Network-Protocols'!
SMTPClient class
	instanceVariableNames: ''!

!classDefinition: #TelnetProtocolError category: #'Cuis-Network-Protocols'!
ProtocolClientError subclass: #TelnetProtocolError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Protocols'!
!classDefinition: 'TelnetProtocolError class' category: #'Cuis-Network-Protocols'!
TelnetProtocolError class
	instanceVariableNames: ''!


!FTPClient commentStamp: '<historical>' prior: 0!
A minimal FTP client program.  Could store all state in inst vars, and use an instance to represent the full state of a connection in progress.  But simpler to do all that in one method and have it be a complete transaction.

!HTTPClient commentStamp: '<historical>' prior: 0!
I'm a facade for doing simple HTTP GET/POST operations like downloading / uploading some content.

For example, I get HTML content for http://www.pharo-project.org web page like this:

      HTTPClient httpGet: 'http://www.pharo-project.org'.
      HTTPClient httpGetDocument: 'http://www.pharo-project.org'.

When successful, a Stream respectively a MIMEDocument is returned, in case of error, a String is returned.

Or, I can make a application/x-www-form-urlencoded post request to http://intranet.acme.com/login and send form data to the server like this:

      (args := Dictionary new)
		at: 'username' put: #('john@acme.com');
		at: 'password' put: #('secretpassword').
	result := HTTPClient httpPostDocument: 'http://intranet.acme.com/login' args: args.

Alternatively, I can do a multipart/formdata post request to http://intranet.acme.com/files and send a file like this:

      (args := Dictionary new)
		at: 'file' put: (Array with: (MIMEDocument contents: 'This is a test' mimeType: 'text/plain' uri: 'file:///test.txt').
	result := HTTPClient httpPostDocument: 'http://intranet.acme.com/files' args: args.
	
Pay attention, my code is not really good.

<trollmode>
I'm a good example of how not to write code. Turn around, walk away,
fast. I'm fully of bugs.

Somebody at some point thought that HTTP is a simple "hacker with
telnet"-protocol. It's not.
</trollmode>

[COTDC] 3 - Laurent Laffont, Francisco Ortiz Peñaloza, Sven Van Caekenberghe, Philippe Marschall.!

!HTTPProgress commentStamp: '<historical>' prior: 0!
A notification to show progress when using HTTP.

!HTTPSocket commentStamp: '<historical>' prior: 0!
HTTPSockets support HTTP requests, either directly or via an HTTP proxy server. An HTTPSocket saves the parse of the last ASCII header it saw, to avoid having to parse it repeatedly.

!LoginFailedException commentStamp: '<historical>' prior: 0!
Exception for signaling login failures of protocol clients.

!POP3Client commentStamp: '<historical>' prior: 0!
This class implements POP3 (Post Office Protocol 3) as specified in RFC 1939.  (see http://www.ietf.org/rfc.html)

!POP3LoginError commentStamp: '<historical>' prior: 0!
Exception for signaling POP3 login failures.!

!ProtocolClient commentStamp: '<historical>' prior: 0!
ProtocolClient is the abstract super class for a variety of network protocol clients.

!ProtocolClientError commentStamp: '<historical>' prior: 0!
Abstract super class for protocol clients

!SMTPClient commentStamp: '<historical>' prior: 0!
This class implements the SMTP (mail sending) protocol specified in RFC 821.

!TelnetProtocolClient commentStamp: '<historical>' prior: 0!
Abstract super class for protocol clients based on the generic telnet protocol "<response code> <response>"

!TelnetProtocolError commentStamp: '<historical>' prior: 0!
Abstract super class for exceptions signalled by clients based on the telnet protocol.

!FTPClient methodsFor: 'protocol' stamp: 'mir 2/13/2002 18:05'!
abortDataConnection

!FTPClient methodsFor: 'protocol' stamp: 'mir 3/7/2002 13:36'!
ascii

!FTPClient methodsFor: 'protocol' stamp: 'mir 3/7/2002 13:36'!
binary

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/13/2002 17:52'!
changeDirectoryTo: newDirName

!FTPClient methodsFor: 'private' stamp: 'mir 2/19/2002 18:27'!
closeDataSocket

!FTPClient methodsFor: 'private' stamp: 'mir 10/31/2000 16:24'!
dataSocket

!FTPClient methodsFor: 'private' stamp: 'mir 10/31/2000 18:23'!
dataSocket: aSocket

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/19/2002 17:11'!
deleteDirectory: dirName

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/19/2002 17:12'!
deleteFileNamed: fileName

!FTPClient methodsFor: 'private protocol' stamp: 'svp 10/28/2003 11:06'!
get: limit dataInto: dataStream

!FTPClient methodsFor: 'private protocol' stamp: 'mir 2/13/2002 18:06'!
getData

!FTPClient methodsFor: 'private protocol' stamp: 'svp 10/28/2003 11:04'!
getDataInto: dataStream

!FTPClient methodsFor: 'protocol' stamp: 'mir 2/20/2002 13:53'!
getDirectory

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/19/2002 16:50'!
getFileList

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/19/2002 19:23'!
getFileNamed: remoteFileName

!FTPClient methodsFor: 'protocol' stamp: 'mir 5/9/2003 15:50'!
getFileNamed: remoteFileName into: dataStream

!FTPClient methodsFor: 'protocol' stamp: 'mir 10/31/2000 19:03'!
getPartial: limit fileNamed: remoteFileName into: dataStream

!FTPClient methodsFor: 'private' stamp: 'mir 4/7/2003 17:20'!
login

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/12/2002 18:39'!
loginUser: userName password: passwdString

!FTPClient methodsFor: 'private protocol' stamp: 'LucFabresse 11/2/2010 22:10'!
lookForCode: code ifDifferent: handleBlock 

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/19/2002 17:10'!
makeDirectory: newDirName

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/14/2002 17:51'!
openDataSocket: remoteHostAddress port: dataPort

!FTPClient methodsFor: 'private protocol' stamp: 'michael.rueger 6/16/2009 11:28'!
openPassiveDataConnection

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/14/2002 16:55'!
passive

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/19/2002 16:54'!
putFileNamed: filePath as: fileNameOnServer

!FTPClient methodsFor: 'protocol' stamp: 'mir 12/8/2003 16:54'!
putFileStreamContents: fileStream as: fileNameOnServer

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/14/2002 16:43'!
pwd

!FTPClient methodsFor: 'protocol' stamp: 'mir 10/31/2000 13:12'!
quit

!FTPClient methodsFor: 'protocol' stamp: 'mir 11/13/2002 17:50'!
removeFileNamed: remoteFileName

!FTPClient methodsFor: 'protocol' stamp: 'nk 1/26/2005 16:40'!
renameFileNamed: oldFileName to: newFileName

!FTPClient methodsFor: 'private' stamp: 'mir 11/14/2002 18:14'!
sendStreamContents: aStream

!FTPClient class methodsFor: 'accessing' stamp: 'mir 10/30/2000 20:10'!
defaultPortNumber

!FTPClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 19:08'!
logFlag

!FTPClient class methodsFor: 'accessing' stamp: 'mir 2/13/2002 17:50'!
rawResponseCodes

!FTPConnectionException methodsFor: 'as yet unclassified' stamp: 'RAA 3/9/2001 07:47'!
defaultAction

!FTPConnectionException methodsFor: 'as yet unclassified' stamp: 'RAA 3/14/2001 15:57'!
isResumable

!HTTPClient class methodsFor: 'post/get' stamp: 'nk 8/30/2004 07:50'!
httpGet: url

!HTTPClient class methodsFor: 'post/get' stamp: 'MarcusDenker 2/23/2010 16:38'!
httpGetDocument: url

!HTTPClient class methodsFor: 'post/get' stamp: 'mir 5/1/2001 15:04'!
httpPostDocument: url args: argsDict

!HTTPClient class methodsFor: 'post/get' stamp: 'MarcusDenker 2/23/2010 16:38'!
httpPostDocument: url target: target args: argsDict

!HTTPClient class methodsFor: 'post/get' stamp: 'MarcusDenker 2/23/2010 16:39'!
httpPostMultipart: url args: argsDict

!HTTPClient class methodsFor: 'post/get' stamp: 'MarcusDenker 2/23/2010 16:40'!
requestURL: url target: target

!HTTPClient class methodsFor: 'utilities' stamp: 'mir 2/2/2001 17:59'!
uploadFileNamed: aFilename to: baseUrl user: user passwd: passwd

!HTTPProgress methodsFor: 'accessing' stamp: 'StephaneDucasse 3/28/2010 21:28'!
amount

!HTTPProgress methodsFor: 'accessing' stamp: 'StephaneDucasse 3/28/2010 21:28'!
amount: anObject

!HTTPProgress methodsFor: 'accessing' stamp: 'StephaneDucasse 3/28/2010 21:28'!
total

!HTTPProgress methodsFor: 'accessing' stamp: 'StephaneDucasse 3/28/2010 21:28'!
total: anObject

!HTTPSocket methodsFor: 'accessing' stamp: 'SvenVanCaekenberghe 1/8/2012 14:44'!
contentType

!HTTPSocket methodsFor: 'accessing' stamp: 'dc 10/21/2008 08:49'!
contentType: header

!HTTPSocket methodsFor: 'accessing' stamp: 'dc 10/21/2008 08:49'!
contentsLength: header

!HTTPSocket methodsFor: 'accessing' stamp: 'adrian-lienhard 6/5/2009 22:00'!
getHeader: name 

!HTTPSocket methodsFor: 'accessing' stamp: 'adrian-lienhard 6/5/2009 22:01'!
getHeader: name  default: defaultValue

!HTTPSocket methodsFor: 'receiving' stamp: 'asasa 8/31/2010 20:41'!
getResponseUpTo: markerString

!HTTPSocket methodsFor: 'receiving' stamp: 'PeterHugossonMiller 9/3/2009 01:58'!
getResponseUpTo: markerString ignoring: ignoreString

!HTTPSocket methodsFor: 'receiving' stamp: 'adrian-lienhard 6/5/2009 22:34'!
getRestOfBuffer: beginning

!HTTPSocket methodsFor: 'receiving' stamp: 'StephaneDucasse 3/28/2010 21:29'!
getRestOfBuffer: beginning totalLength: length

!HTTPSocket methodsFor: 'accessing' stamp: 'SvenVanCaekenberghe 1/8/2012 14:45'!
header: headerText

!HTTPSocket methodsFor: 'receiving' stamp: 'adrian-lienhard 6/5/2009 22:02'!
redirect

!HTTPSocket methodsFor: 'accessing' stamp: 'ls 8/12/1998 00:41'!
responseCode

!HTTPSocket methodsFor: 'accessing' stamp: 'StephaneDucasse 3/28/2010 21:43'!
sendCommandWithProgress: commandString

!HTTPSocket methodsFor: 'accessing' stamp: 'StephaneDucasse 3/28/2010 21:46'!
sendDataWithProgress: aStringOrByteArray

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'mir 7/30/1999 16:08'!
addProxyException: domainName

!HTTPSocket class methodsFor: 'utilities' stamp: 'PeterHugossonMiller 9/3/2009 01:44'!
argString: args

!HTTPSocket class methodsFor: 'utilities' stamp: 'PeterHugossonMiller 9/3/2009 01:44'!
argStringUnencoded: args

!HTTPSocket class methodsFor: 'initialization' stamp: 'AlainPlantec 12/3/2009 07:17'!
blabEmail

!HTTPSocket class methodsFor: 'initialization' stamp: 'tk 9/21/1998 10:45'!
blabEmail: aRequest

!HTTPSocket class methodsFor: 'magic numbers' stamp: 'ls 9/17/1998 07:17'!
defaultPort

!HTTPSocket class methodsFor: 'digest' stamp: 'gsa 12/17/2012 19:07'!
digestFor: serverText method: method url: url user: user password: password

!HTTPSocket class methodsFor: 'digest' stamp: 'damiencassou 2/17/2009 09:54'!
digestFrom: sock method: method url: url user: user password: password

!HTTPSocket class methodsFor: 'utilities' stamp: 'StephaneDucasse 3/27/2010 22:52'!
expandUrl: newUrl ip: byteArrayIP port: portNum

!HTTPSocket class methodsFor: 'get the page' stamp: 'dc 10/21/2008 08:55'!
httpGetNoError: url args: args accept: mimeType

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'AlainPlantec 12/2/2009 07:09'!
httpProxyExceptions

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'AlainPlantec 12/2/2009 07:27'!
httpProxyPort

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'AlainPlantec 12/2/2009 07:16'!
httpProxyPort: aPortNumber

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'AlainPlantec 12/2/2009 07:16'!
httpProxyServer

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'SvenVanCaekenberghe 1/8/2012 14:45'!
httpProxyServer: aStringOrNil

!HTTPSocket class methodsFor: 'utilities' stamp: 'nice 4/28/2009 21:42'!
initHTTPSocket: httpUrl ifError: aBlock

!HTTPSocket class methodsFor: 'utilities' stamp: 'nice 4/29/2009 21:31'!
initHTTPSocket: httpUrl timeoutSecs: timeout ifError: aBlock

!HTTPSocket class methodsFor: 'initialization' stamp: 'gsa 12/17/2012 19:04'!
initialize

!HTTPSocket class methodsFor: 'utilities' stamp: 'StephaneDucasse 3/27/2010 22:51'!
ip: byteArrayIP port: portNum urlPath: urlPathString 

!HTTPSocket class methodsFor: 'digest' stamp: 'lr 3/14/2010 21:13'!
md5Hash: aString

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'VeronicaUquillas 6/11/2010 14:46'!
proxyTestingComment

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'gsa 12/17/2012 19:06'!
proxyUser: userName password: password

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'mir 7/30/1999 15:03'!
removeProxyException: domainName

!HTTPSocket class methodsFor: 'utilities' stamp: 'hpt 12/10/2004 23:21'!
shouldUseProxy: serverName

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'hpt 12/9/2004 22:55'!
stopUsingProxyServer

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'AlainPlantec 12/3/2009 14:13'!
useProxyServerNamed: proxyServerName port: portNum

!HTTPSocket class methodsFor: 'proxy settings' stamp: 'al 1/8/2004 12:54'!
useProxyServerNamed: proxyServerName port: portNum proxyUser: aString password: anotherString

!HTTPSocket class methodsFor: 'utilities' stamp: 'tak 9/25/2008 15:09'!
userAgentString 

!LoginFailedException methodsFor: 'exceptiondescription' stamp: 'mir 2/15/2002 13:10'!
isResumable

!POP3Client methodsFor: 'private protocol' stamp: 'lr 3/14/2010 21:13'!
apopLogin

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:58'!
apopLoginUser: userName password: password

!POP3Client methodsFor: 'private protocol' stamp: 'mir 4/7/2003 17:38'!
clearTextLogin

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:35'!
deleteMessage: num

!POP3Client methodsFor: 'private protocol' stamp: 'PeterHugossonMiller 9/3/2009 10:12'!
getMultilineResponse

!POP3Client methodsFor: 'private protocol' stamp: 'mir 4/7/2003 17:39'!
login

!POP3Client methodsFor: 'private' stamp: 'mir 11/11/2002 16:20'!
loginMethod

!POP3Client methodsFor: 'private' stamp: 'mir 3/8/2002 11:41'!
loginMethod: aSymbol

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:57'!
loginUser: userName password: password

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/8/2002 11:40'!
loginUser: userName password: password loginMethod: aLoginMethod

!POP3Client methodsFor: 'public protocol' stamp: 'nice 1/5/2010 15:59'!
messageCount

!POP3Client methodsFor: 'public protocol' stamp: 'len 12/14/2002 17:50'!
quit

!POP3Client methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:43'!
responseIsError

!POP3Client methodsFor: 'private testing' stamp: 'mir 11/11/2002 15:44'!
responseIsWarning

!POP3Client methodsFor: 'public protocol' stamp: 'mir 3/7/2002 14:35'!
retrieveMessage: number

!POP3Client class methodsFor: 'accessing' stamp: 'mir 3/7/2002 12:51'!
defaultPortNumber

!POP3Client class methodsFor: 'example' stamp: 'rbb 3/1/2005 11:05'!
example

!POP3Client class methodsFor: 'accessing' stamp: 'mir 3/7/2002 12:52'!
logFlag

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:52'!
checkForPendingError

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 5/9/2003 18:47'!
checkResponse

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:51'!
checkResponse: aResponse onError: errorBlock onWarning: warningBlock

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:54'!
checkResponseOnError: errorBlock onWarning: warningBlock

!ProtocolClient methodsFor: 'actions' stamp: 'mir 3/7/2002 13:10'!
close

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:35'!
connectionInfo

!ProtocolClient methodsFor: 'private' stamp: 'mir 2/25/2002 19:34'!
defaultPortNumber

!ProtocolClient methodsFor: 'private' stamp: 'md 8/14/2005 18:27'!
ensureConnection

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 3/7/2002 13:16'!
fetchNextResponse

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 7/23/2003 16:50'!
fetchPendingResponse

!ProtocolClient methodsFor: 'private' stamp: 'mir 4/7/2003 16:56'!
host

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:37'!
host: hostId

!ProtocolClient methodsFor: 'testing' stamp: 'mir 3/7/2002 14:33'!
isConnected

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/7/2002 13:35'!
lastResponse

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/7/2002 13:35'!
lastResponse: aString

!ProtocolClient methodsFor: 'private' stamp: 'mir 2/25/2002 19:07'!
logFlag

!ProtocolClient methodsFor: 'private' stamp: 'mir 5/12/2003 18:10'!
logProgress: aString

!ProtocolClient methodsFor: 'accessing' stamp: 'mir 3/7/2002 14:55'!
logProgressToTranscript

!ProtocolClient methodsFor: 'accessing' stamp: 'mir 5/9/2003 15:52'!
messageText

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:40'!
openOnHost: hostIP port: portNumber

!ProtocolClient methodsFor: 'private' stamp: 'mir 4/7/2003 16:56'!
password

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:37'!
password: aString

!ProtocolClient methodsFor: 'private' stamp: 'mir 7/23/2003 16:45'!
pendingResponses

!ProtocolClient methodsFor: 'private' stamp: 'mir 7/23/2003 16:55'!
popResponse

!ProtocolClient methodsFor: 'private' stamp: 'mir 4/7/2003 16:57'!
port

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:38'!
port: aPortNumber

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/7/2002 14:54'!
progressObservers

!ProtocolClient methodsFor: 'private' stamp: 'mir 7/23/2003 16:45'!
pushResponse: aResponse

!ProtocolClient methodsFor: 'actions' stamp: 'mir 3/7/2002 13:11'!
reopen

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:35'!
resetConnectionInfo

!ProtocolClient methodsFor: 'accessing' stamp: 'mir 5/9/2003 15:52'!
response

!ProtocolClient methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:42'!
responseIsError

!ProtocolClient methodsFor: 'private testing' stamp: 'mir 3/7/2002 13:42'!
responseIsWarning

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 5/12/2003 18:10'!
sendCommand: aString

!ProtocolClient methodsFor: 'private protocol' stamp: 'mir 3/5/2002 14:31'!
sendStreamContents: aStream

!ProtocolClient methodsFor: 'accessing' stamp: 'mir 2/22/2002 17:33'!
stream

!ProtocolClient methodsFor: 'accessing' stamp: 'mir 2/22/2002 17:33'!
stream: aStream

!ProtocolClient methodsFor: 'private' stamp: 'mir 11/11/2002 16:19'!
user

!ProtocolClient methodsFor: 'private' stamp: 'mir 3/8/2002 11:39'!
user: aString

!ProtocolClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 16:00'!
defaultPortNumber

!ProtocolClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 19:07'!
logFlag

!ProtocolClient class methodsFor: 'instance creation' stamp: 'mir 2/25/2002 15:59'!
openOnHost: hostIP port: portNumber

!ProtocolClient class methodsFor: 'instance creation' stamp: 'gk 3/2/2004 11:10'!
openOnHostNamed: hostName

!ProtocolClient class methodsFor: 'instance creation' stamp: 'mir 2/25/2002 15:58'!
openOnHostNamed: hostName port: portNumber

!ProtocolClient class methodsFor: 'retrieval' stamp: 'mir 3/5/2002 16:21'!
retrieveMIMEDocument: aURI

!ProtocolClientError methodsFor: 'accessing' stamp: 'mir 5/16/2003 11:17'!
messageText

!ProtocolClientError methodsFor: 'accessing' stamp: 'mir 10/30/2000 13:48'!
protocolInstance

!ProtocolClientError methodsFor: 'accessing' stamp: 'mir 10/30/2000 13:48'!
protocolInstance: aProtocolInstance

!ProtocolClientError methodsFor: 'accessing' stamp: 'mir 5/16/2003 11:18'!
response

!ProtocolClientError class methodsFor: 'instance creation' stamp: 'mir 10/30/2000 16:15'!
protocolInstance: aProtocolInstance

!SMTPClient methodsFor: 'private protocol' stamp: 'nice 1/5/2010 15:59'!
data: messageData

!SMTPClient methodsFor: 'utility' stamp: 'StephaneDucasse 1/3/2010 21:31'!
encodeString: aString 

!SMTPClient methodsFor: 'private protocol' stamp: 'gk 8/4/2006 15:15'!
initiateSession

!SMTPClient methodsFor: 'public protocol' stamp: 'StephaneDucasse 1/3/2010 21:34'!
localHostName

!SMTPClient methodsFor: 'public protocol' stamp: 'StephaneDucasse 1/3/2010 21:34'!
localHostName: aString

!SMTPClient methodsFor: 'private protocol' stamp: 'MarcusDenker 2/14/2010 20:16'!
login

!SMTPClient methodsFor: 'private protocol' stamp: 'fbs 3/23/2004 17:16'!
mailFrom: fromAddress

!SMTPClient methodsFor: 'public protocol' stamp: 'mir 2/21/2002 15:43'!
mailFrom: sender to: recipientList text: messageText

!SMTPClient methodsFor: 'private protocol' stamp: 'mir 2/21/2002 17:52'!
quit

!SMTPClient methodsFor: 'private protocol' stamp: 'mir 2/21/2002 17:52'!
recipient: aRecipient

!SMTPClient methodsFor: 'public protocol' stamp: 'gk 8/4/2006 15:14'!
useHelo

!SMTPClient methodsFor: 'public protocol' stamp: 'gk 8/4/2006 15:14'!
useHelo: aBoolean

!SMTPClient class methodsFor: 'accessing' stamp: 'mir 2/21/2002 17:22'!
defaultPortNumber

!SMTPClient class methodsFor: 'sending mail' stamp: 'SeanDeNigris 12/6/2011 14:31'!
deliver: aMailMessage usingServer: aString

!SMTPClient class methodsFor: 'sending mail' stamp: 'SeanDeNigris 12/6/2011 14:32'!
deliverMailFrom: fromAddress to: recipientList text: messageText usingServer: aString

!SMTPClient class methodsFor: 'example' stamp: 'adrian_lienhard 7/18/2009 16:00'!
example

!SMTPClient class methodsFor: 'example' stamp: 'adrian_lienhard 7/18/2009 16:00'!
example2

!SMTPClient class methodsFor: 'accessing' stamp: 'mir 2/25/2002 19:07'!
logFlag

!TelnetProtocolClient methodsFor: 'private' stamp: 'mir 2/22/2002 17:34'!
determineResponseCode

!TelnetProtocolClient methodsFor: 'private protocol' stamp: 'nk 2/24/2005 18:21'!
fetchNextResponse

!TelnetProtocolClient methodsFor: 'private' stamp: 'mir 11/14/2002 18:27'!
lastResponse: aString

!TelnetProtocolClient methodsFor: 'private protocol' stamp: 'mir 4/7/2003 15:46'!
lookForCode: code

!TelnetProtocolClient methodsFor: 'private protocol' stamp: 'mir 11/14/2002 16:21'!
lookForCode: code ifDifferent: handleBlock

!TelnetProtocolClient methodsFor: 'accessing' stamp: 'mir 2/22/2002 17:33'!
responseCode

!TelnetProtocolClient methodsFor: 'private testing' stamp: 'mir 2/22/2002 17:35'!
responseIsContinuation

!TelnetProtocolClient methodsFor: 'private testing' stamp: 'mir 11/14/2002 16:18'!
responseIsContinuation: response

!TelnetProtocolClient methodsFor: 'private testing' stamp: 'mir 2/22/2002 17:35'!
responseIsError

!TelnetProtocolClient methodsFor: 'private testing' stamp: 'mir 2/22/2002 17:35'!
responseIsWarning

!TelnetProtocolClient class methodsFor: 'accessing' stamp: 'mir 2/21/2002 17:21'!
rawResponseCodes

!TelnetProtocolError methodsFor: 'accessing' stamp: 'mir 4/7/2003 16:47'!
code

!TelnetProtocolError methodsFor: 'private' stamp: 'len 12/14/2002 14:15'!
isCommandUnrecognized
HTTPSocket initialize!