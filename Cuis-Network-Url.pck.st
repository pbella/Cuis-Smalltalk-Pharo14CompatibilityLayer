'From Cuis 4.1 of 12 December 2012 [latest update: #1528] on 2 January 2013 at 8:24:03 am'!
'Description Please enter a description for this package '!
!classDefinition: #Authorizer category: #'Cuis-Network-Url'!
Object subclass: #Authorizer
	instanceVariableNames: 'users realm'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'Authorizer class' category: #'Cuis-Network-Url'!
Authorizer class
	instanceVariableNames: ''!

!classDefinition: #Url category: #'Cuis-Network-Url'!
Object subclass: #Url
	instanceVariableNames: 'fragment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'Url class' category: #'Cuis-Network-Url'!
Url class
	instanceVariableNames: ''!

!classDefinition: #FileUrl category: #'Cuis-Network-Url'!
Url subclass: #FileUrl
	instanceVariableNames: 'host path isAbsolute'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'FileUrl class' category: #'Cuis-Network-Url'!
FileUrl class
	instanceVariableNames: ''!

!classDefinition: #GenericUrl category: #'Cuis-Network-Url'!
Url subclass: #GenericUrl
	instanceVariableNames: 'schemeName locator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'GenericUrl class' category: #'Cuis-Network-Url'!
GenericUrl class
	instanceVariableNames: ''!

!classDefinition: #BrowserUrl category: #'Cuis-Network-Url'!
GenericUrl subclass: #BrowserUrl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'BrowserUrl class' category: #'Cuis-Network-Url'!
BrowserUrl class
	instanceVariableNames: ''!

!classDefinition: #HierarchicalUrl category: #'Cuis-Network-Url'!
Url subclass: #HierarchicalUrl
	instanceVariableNames: 'schemeName authority path query port username password'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'HierarchicalUrl class' category: #'Cuis-Network-Url'!
HierarchicalUrl class
	instanceVariableNames: ''!

!classDefinition: #FtpUrl category: #'Cuis-Network-Url'!
HierarchicalUrl subclass: #FtpUrl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'FtpUrl class' category: #'Cuis-Network-Url'!
FtpUrl class
	instanceVariableNames: ''!

!classDefinition: #HttpUrl category: #'Cuis-Network-Url'!
HierarchicalUrl subclass: #HttpUrl
	instanceVariableNames: 'realm'
	classVariableNames: 'Passwords'
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'HttpUrl class' category: #'Cuis-Network-Url'!
HttpUrl class
	instanceVariableNames: ''!

!classDefinition: #HttpsUrl category: #'Cuis-Network-Url'!
HttpUrl subclass: #HttpsUrl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'HttpsUrl class' category: #'Cuis-Network-Url'!
HttpsUrl class
	instanceVariableNames: ''!

!classDefinition: #MailtoUrl category: #'Cuis-Network-Url'!
GenericUrl subclass: #MailtoUrl
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cuis-Network-Url'!
!classDefinition: 'MailtoUrl class' category: #'Cuis-Network-Url'!
MailtoUrl class
	instanceVariableNames: ''!


!Authorizer commentStamp: '<historical>' prior: 0!
The Authorizer does user authorization checking. Each instance of authorizer keeps track of the realm that it is authorizing for, and the table of authorized users. An authorizer can be asked to return the user name/symbol associated with a userID (which concatenates the username and password from the HTTP request) with the user: method.

!BrowserUrl commentStamp: '<historical>' prior: 0!
URLs that instruct a browser to do something.!

!FileUrl commentStamp: 'gk 10/21/2005 10:58' prior: 0!
This class models a file URL according to (somewhat) RFC1738, see http://www.w3.org/Addressing/rfc1738.txt

!FtpUrl commentStamp: 'ls 6/15/2003 13:44' prior: 0!
a reference to a file which may be downloaded by anonymous ftp .

!GenericUrl commentStamp: '<historical>' prior: 0!
a URL type that can't be broken down in any systematic way.  For example, mailto: and telnet: URLs.  The part after the scheme name is stored available via the #locator message.!

!HierarchicalUrl commentStamp: '<historical>' prior: 0!
A URL which has a hierarchical encoding.  For instance, http and ftp URLs are hierarchical.!

!HttpUrl commentStamp: 'ls 6/15/2003 13:44' prior: 0!
A URL that can be accessed via the Hypertext Transfer Protocol (HTTP), ie, a standard Web URL

!MailtoUrl commentStamp: '<historical>' prior: 0!
a URL specifying a mailing address; activating it triggers a mail-sender to start up, if one is present.!

!Url commentStamp: '<historical>' prior: 0!
A Uniform Resource Locator.  It specifies the location of a document on the Internet.  The base class is abstract; child classes break different types of URLs down in ways appropriate for that type.!

!Authorizer methodsFor: 'authentication' stamp: 'PeterHugossonMiller 9/3/2009 00:12'!
encode: nameString password: pwdString

!Authorizer methodsFor: 'authentication' stamp: 'mjg 11/3/97 12:31'!
mapFrom: aKey to: aPerson

!Authorizer methodsFor: 'authentication' stamp: 'tk 5/21/1998 16:32'!
mapName: nameString password: pwdString to: aPerson

!Authorizer methodsFor: 'realms' stamp: 'mjg 11/3/97 12:33'!
realm

!Authorizer methodsFor: 'realms' stamp: 'mjg 11/3/97 12:33'!
realm: aString

!Authorizer methodsFor: 'authentication' stamp: 'ar 8/17/2001 18:19'!
user: userId

!Authorizer class methodsFor: 'as yet unclassified' stamp: 'adrian_lienhard 7/18/2009 15:52'!
unauthorizedFor: realm

!BrowserUrl methodsFor: 'downloading' stamp: 'ls 8/4/1998 20:42'!
hasContents

!BrowserUrl class methodsFor: 'constants' stamp: 'SeanDeNigris 1/29/2011 19:33'!
schemeName

!FileUrl methodsFor: 'downloading' stamp: 'VeronicaUquillas 6/11/2010 14:01'!
default

!FileUrl methodsFor: 'access' stamp: 'gk 10/21/2005 10:21'!
directoryUrl

!FileUrl methodsFor: 'access' stamp: 'gk 10/21/2005 11:14'!
fileName

!FileUrl methodsFor: 'testing' stamp: 'gk 2/9/2004 20:32'!
firstPartIsDriveLetter

!FileUrl methodsFor: 'downloading' stamp: 'ls 8/4/1998 20:42'!
hasContents

!FileUrl methodsFor: 'accessing' stamp: 'gk 2/10/2004 10:16'!
host

!FileUrl methodsFor: 'accessing' stamp: 'gk 2/12/2004 16:22'!
host: hostName

!FileUrl methodsFor: 'private-initialization' stamp: 'gk 2/10/2004 13:05'!
host: aHostString pathParts: aCollection isAbsolute: aBoolean

!FileUrl methodsFor: 'private-initialization' stamp: 'gk 2/12/2004 16:01'!
initializeFromPathString: aPathString

!FileUrl methodsFor: 'accessing' stamp: 'gk 10/21/2005 11:12'!
isAbsolute

!FileUrl methodsFor: 'accessing' stamp: 'gk 10/21/2005 11:13'!
isAbsolute: aBoolean

!FileUrl methodsFor: 'accessing' stamp: 'gk 2/10/2004 00:15'!
path

!FileUrl methodsFor: 'accessing' stamp: 'gk 10/21/2005 11:11'!
path: aCollection

!FileUrl methodsFor: 'paths' stamp: 'gk 2/10/2004 00:19'!
pathDirString

!FileUrl methodsFor: 'paths' stamp: 'gk 10/21/2005 10:01'!
pathForDirectory

!FileUrl methodsFor: 'access' stamp: 'ar 10/13/2004 17:54'!
pathForFile

!FileUrl methodsFor: 'private-initialization' stamp: 'gk 2/10/2004 13:04'!
pathParts: aCollection isAbsolute: aBoolean

!FileUrl methodsFor: 'paths' stamp: 'nice 1/5/2010 15:59'!
pathString

!FileUrl methodsFor: 'copying' stamp: 'nice 1/13/2010 21:57'!
postCopy

!FileUrl methodsFor: 'printing' stamp: 'fbs 2/2/2005 13:09'!
printOn: aStream

!FileUrl methodsFor: 'private-initialization' stamp: 'SvenVanCaekenberghe 1/8/2012 14:44'!
privateInitializeFromText: aString

!FileUrl methodsFor: 'private-initialization' stamp: 'gk 2/12/2004 16:29'!
privateInitializeFromText: pathString relativeTo: aUrl

!FileUrl methodsFor: 'downloading' stamp: 'nice 1/5/2010 15:59'!
retrieveContents

!FileUrl methodsFor: 'classification' stamp: 'gk 2/10/2004 10:34'!
scheme

!FileUrl methodsFor: 'classification' stamp: 'gk 2/10/2004 10:34'!
schemeName

!FileUrl class methodsFor: 'instance creation' stamp: 'gk 2/10/2004 12:16'!
absoluteFromText: aString

!FileUrl class methodsFor: 'instance creation' stamp: 'gk 2/10/2004 13:04'!
host: aHost pathParts: aCollectionOfPathParts isAbsolute: aBoolean

!FileUrl class methodsFor: 'instance creation' stamp: 'gk 2/10/2004 13:10'!
pathParts: aCollectionOfPathParts

!FileUrl class methodsFor: 'instance creation' stamp: 'gk 2/10/2004 13:06'!
pathParts: aCollectionOfPathParts isAbsolute: aBoolean

!FileUrl class methodsFor: 'constants' stamp: 'gk 2/10/2004 10:33'!
schemeName

!FtpUrl methodsFor: 'downloading' stamp: 'PeterHugossonMiller 9/3/2009 01:34'!
downloadUrl

!FtpUrl methodsFor: 'access' stamp: 'ls 7/24/1998 00:18'!
pathString

!FtpUrl methodsFor: 'downloading' stamp: 'adrian_lienhard 7/18/2009 15:56'!
retrieveContents

!FtpUrl class methodsFor: 'constants' stamp: 'SeanDeNigris 1/29/2011 19:34'!
schemeName

!GenericUrl methodsFor: 'access' stamp: 'ls 6/20/1998 19:46'!
locator

!GenericUrl methodsFor: 'printing' stamp: 'CamilloBruni 12/16/2011 11:27'!
printOn: aStream

!GenericUrl methodsFor: 'parsing' stamp: 'CamilloBruni 12/16/2011 11:24'!
privateInitializeFromText: aString

!GenericUrl methodsFor: 'parsing' stamp: 'ls 8/4/1998 01:28'!
privateInitializeFromText: aString relativeTo: aUrl

!GenericUrl methodsFor: 'classification' stamp: 'FBS 11/20/2003 13:39'!
scheme

!GenericUrl methodsFor: 'access' stamp: 'ls 6/20/1998 19:46'!
schemeName

!GenericUrl methodsFor: 'private' stamp: 'ls 6/20/1998 19:46'!
schemeName: schemeName0  locator: locator0

!GenericUrl class methodsFor: 'parsing' stamp: 'ls 7/26/1998 21:24'!
absoluteFromText: aString

!GenericUrl class methodsFor: 'instance creation' stamp: 'ls 6/20/1998 19:46'!
schemeName: schemeName  locator: locator

!HierarchicalUrl methodsFor: 'access' stamp: 'ls 6/20/1998 19:58'!
authority

!HierarchicalUrl methodsFor: 'access' stamp: 'gk 10/21/2005 10:21'!
directoryUrl

!HierarchicalUrl methodsFor: 'access' stamp: 'gk 10/21/2005 11:06'!
fileName

!HierarchicalUrl methodsFor: 'printing' stamp: 'PeterHugossonMiller 9/3/2009 02:00'!
fullPath

!HierarchicalUrl methodsFor: 'downloading' stamp: 'ls 8/4/1998 20:44'!
hasContents

!HierarchicalUrl methodsFor: 'access' stamp: 'tk 9/6/1998 12:45'!
isAbsolute

!HierarchicalUrl methodsFor: 'access' stamp: 'ls 6/15/2003 13:13'!
password

!HierarchicalUrl methodsFor: 'access' stamp: 'KLC 4/3/2006 10:05'!
path

!HierarchicalUrl methodsFor: 'access' stamp: 'gk 10/21/2005 11:15'!
path: aCollection

!HierarchicalUrl methodsFor: 'access' stamp: 'mir 7/30/1999 13:05'!
port

!HierarchicalUrl methodsFor: 'copying' stamp: 'nice 1/13/2010 21:58'!
postCopy

!HierarchicalUrl methodsFor: 'printing' stamp: 'StephaneDucasse 5/9/2010 20:19'!
printOn: aStream

!HierarchicalUrl methodsFor: 'parsing' stamp: 'StephaneDucasse 5/9/2010 20:26'!
privateInitializeFromText: aString 

!HierarchicalUrl methodsFor: 'parsing' stamp: 'ls 6/15/2003 13:40'!
privateInitializeFromText: aString relativeTo: aUrl 

!HierarchicalUrl methodsFor: 'parsing' stamp: 'PeterHugossonMiller 9/3/2009 02:00'!
privateParsePath: remainder relativeTo: basePath 

!HierarchicalUrl methodsFor: 'access' stamp: 'ls 6/20/1998 19:59'!
query

!HierarchicalUrl methodsFor: 'classification' stamp: 'FBS 11/20/2003 13:07'!
scheme

!HierarchicalUrl methodsFor: 'access' stamp: 'ls 6/20/1998 19:58'!
schemeName

!HierarchicalUrl methodsFor: 'private' stamp: 'ls 6/20/1998 19:41'!
schemeName: schemeName0  authority: authority0  path: path0  query: query0

!HierarchicalUrl methodsFor: 'access' stamp: 'ls 6/15/2003 13:13'!
username

!HierarchicalUrl class methodsFor: 'instance creation' stamp: 'ls 6/20/1998 19:41'!
schemeName: schemeName  authority: authority  path: path  query: query

!HttpUrl methodsFor: 'downloading' stamp: 'StephaneDucasse 9/7/2011 21:53'!
askNamePassword

!HttpUrl methodsFor: 'downloading' stamp: 'nk 8/30/2004 07:50'!
checkAuthorization: webDocument retry: retryBlock

!HttpUrl methodsFor: 'downloading' stamp: 'noha 5/28/2009 22:14'!
normalizeContents: webDocument

!HttpUrl methodsFor: 'downloading' stamp: 'fbs 2/2/2005 13:24'!
postFormArgs: args

!HttpUrl methodsFor: 'downloading' stamp: 'fbs 2/2/2005 13:24'!
postMultipartFormArgs: args

!HttpUrl methodsFor: 'downloading' stamp: 'tk 9/22/1998 19:49'!
privateInitializeFromText: aString relativeTo: aUrl

!HttpUrl methodsFor: 'downloading' stamp: 'tk 9/22/1998 19:47'!
realm

!HttpUrl methodsFor: 'downloading' stamp: 'tk 9/22/1998 20:21'!
retrieveContents

!HttpUrl methodsFor: 'downloading'!
retrieveContentsAccept: mimeType

!HttpUrl methodsFor: 'downloading' stamp: 'GabrielOmarCotelli 6/12/2009 21:25'!
retrieveContentsArgs: args 

!HttpUrl methodsFor: 'downloading' stamp: 'fbs 2/2/2005 13:24'!
retrieveContentsArgs: args accept: mimeType

!HttpUrl class methodsFor: 'constants' stamp: 'SeanDeNigris 1/30/2011 11:32'!
schemeName

!HttpUrl class methodsFor: 'system startup' stamp: 'tk 9/22/1998 23:13'!
shutDown

!HttpsUrl class methodsFor: 'constants' stamp: 'CamilloBruni 12/16/2011 11:17'!
schemeName

!MailtoUrl methodsFor: 'downloading' stamp: 'dvf 5/11/2002 00:47'!
activate

!MailtoUrl methodsFor: 'downloading' stamp: 'dvf 5/11/2002 01:00'!
composeText

!MailtoUrl class methodsFor: 'constants' stamp: 'SeanDeNigris 1/29/2011 19:33'!
schemeName

!String methodsFor: '*Cuis-Network-Url' stamp: 'gsa 12/7/2012 18:08'!
asUrl
	"convert to a Url"
	"'http://www.cc.gatech.edu/' asUrl"
	"msw://chaos.resnet.gatech.edu:9000/' asUrl"
	^Url absoluteFromText: self! !

!String methodsFor: '*Cuis-Network-Url' stamp: 'gsa 12/7/2012 18:09'!
asUrlRelativeTo: aUrl
	^aUrl newFromRelativeText: self! !

!Url methodsFor: 'downloading' stamp: 'ls 8/4/1998 20:41'!
activate

!Url methodsFor: 'converting' stamp: 'ls 7/14/1998 03:17'!
asText

!Url methodsFor: 'converting' stamp: 'tb 5/24/2006 22:05'!
asURI

!Url methodsFor: 'converting' stamp: 'ls 6/29/1998 00:36'!
asUrl

!Url methodsFor: 'converting' stamp: 'ls 7/3/1998 21:11'!
asUrlRelativeTo: aUrl

!Url methodsFor: 'accessing' stamp: 'mir 2/22/2000 18:05'!
authority

!Url methodsFor: 'converting' stamp: 'fbs 2/2/2005 13:24'!
downloadUrl

!Url methodsFor: 'fragment' stamp: 'ls 8/4/1998 01:41'!
fragment

!Url methodsFor: 'downloading' stamp: 'ls 8/4/1998 20:40'!
hasContents

!Url methodsFor: 'parsing' stamp: 'SvenVanCaekenberghe 1/8/2012 14:50'!
newFromRelativeText: aString

!Url methodsFor: 'printing' stamp: 'fbs 2/2/2005 13:26'!
printOn: aStream

!Url methodsFor: 'fragment' stamp: 'ls 8/4/1998 01:02'!
privateFragment: aString

!Url methodsFor: 'parsing' stamp: 'ls 8/4/1998 00:50'!
privateInitializeFromText: aString

!Url methodsFor: 'parsing' stamp: 'ls 8/4/1998 00:55'!
privateInitializeFromText: aString relativeTo: aUrl

!Url methodsFor: 'downloading' stamp: 'ls 7/23/1998 20:14'!
retrieveContents

!Url methodsFor: 'downloading' stamp: 'ls 7/23/1998 20:14'!
retrieveContentsForBrowser: aBrowser

!Url methodsFor: 'classification' stamp: 'ls 6/16/1998 16:22'!
scheme

!Url methodsFor: 'classification' stamp: 'ls 7/3/1998 21:11'!
schemeName

!Url methodsFor: 'fragment' stamp: 'ls 6/1/2000 16:19'!
withFragment: newFragment

!Url methodsFor: 'fragment' stamp: 'ls 6/1/2000 16:26'!
withoutFragment

!Url class methodsFor: 'instance creation' stamp: 'gk 10/21/2005 10:45'!
absoluteFromFileNameOrUrlString: aString

!Url class methodsFor: 'instance creation' stamp: 'SvenVanCaekenberghe 1/8/2012 14:50'!
absoluteFromText: aString

!Url class methodsFor: 'parsing' stamp: 'st 9/27/2004 15:47'!
combine: baseURL withRelative: relURL 

!Url class methodsFor: 'constants' stamp: 'SeanDeNigris 1/30/2011 12:00'!
schemeName

!Url class methodsFor: 'parsing' stamp: 'gk 10/21/2005 10:41'!
schemeNameForString: aString

!Url class methodsFor: 'parsing' stamp: 'CamilloBruni 12/16/2011 11:18'!
urlClassForScheme: scheme