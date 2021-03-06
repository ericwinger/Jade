"Filed out from Dolphin Smalltalk 7"!

RowanService subclass: #RowanProjectService
	instanceVariableNames: 'sha branch isSkew'
	classVariableNames: 'DefaultProjectName'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RowanProjectService guid: (GUID fromString: '{d65732a3-f4fb-489b-ae7e-d104cddbf3d8}')!
RowanProjectService comment: ''!
!RowanProjectService categoriesForClass!Unclassified! !
!RowanProjectService methodsFor!

addProjectNamed: projectName
	transport
		send: #createProjectNamed:in:
		to: remoteService
		withAll: (Array with: projectName with: self class defaultProjectName).!

branch
	^branch!

branch: anObject
	branch := anObject!

branches
	| branchesString |
	branchesString := transport send: #branches to: remoteService.
	^branchesString subStrings asOrderedCollection
		remove: '*';
		yourself!

changes
	| stream patch readStream string  |
	self packageNames do: 
			[:packageName |
			stream := (WriteStream on: String new)
						nextPutAll: 'changesInPackage';
						tab;
						nextPutAll: packageName;
						tab;
						nextPutAll: name;
						tab;
						lf.
			string := transport
				serverPerform: #'systemBrowser:' 
				with: 0 printString , ' ' , stream contents. "0 = environment"
			readStream := JadeServerReadStream on: string.
			readStream nextLine. "ignore time and errors (at my own peril)"
			readStream nextLine."ignore unexpected response check (also at my own peril)"
			patch isNil ifTrue:[
				patch := RowanPatch fromString: readStream upToEnd session: transport]
			ifFalse:[ patch operations addAll: (RowanPatch fromString: readStream upToEnd session: transport) operations]
			].
	^patch!

checkout: branchName
	transport
		send: #checkout:
		to: remoteService
		withAll: (Array with: branchName)!

commitWithMessage: message

	transport send: #commitWithMessage: to: remoteService withAll: (Array with: message)  !

defaultProjectName
	^self class defaultProjectName!

defaultProjectName: aString
	"The server is the gold copy"

	transport
		send: #defaultProjectName:
		to: remoteService
		withAll: (Array with: aString).
	self class defaultProjectName: aString!

displayName
	"display with dirty indication * and/or default indication (default)"

	| displayName |
	displayName := name.
	name = self class defaultProjectName ifTrue: [displayName := displayName , '*'].
	^displayName!

displayStringFor: displayThing
	self isDirty
		ifTrue: 
			[displayThing font
				beItalic;
				beBold.
			displayThing forecolor: Color black].
	self isLoaded
		ifTrue: 
			[self isSkew
				ifTrue: [displayThing forecolor: Color red]
				ifFalse: [displayThing forecolor: Color black]]
		ifFalse: [displayThing forecolor: Color black]!

isLoaded

	^sha isEmpty not!

isSkew
	^isSkew!

isSkew: anObject
	isSkew := anObject!

loadProjectNamed: aString
	
	transport
		send: #loadProjectNamed:
		to: remoteService
		withAll: (Array with: aString).
	self class defaultProjectName: aString!

log

	^transport send: #log to: remoteService  !

newGitProject: url root: rootPath useSsh: aBoolean
	
	transport
		send: #newGitProject:root:useSsh:
		to: remoteService
		withAll: (Array
				with: url
				with: rootPath
				with: aBoolean)!

packageNames
	| arrayOop names size |
	self rowanFixMe.	"slow slow slow"
	arrayOop := transport send: #packageNames to: remoteService.
	names := OrderedCollection new.
	size := transport send: #size to: arrayOop.
	1 to: size do:[:idx |
		names add:  (transport send: #at: to: arrayOop withAll: (Array with: idx) )].
	^names!

packageNameString

	^transport send: #packageNameString to: remoteService  !

projects
	| oops services |
	oops := transport send: #projects to: remoteService.
	services := self createClientFrom: oops.
	services := services asSortedCollection: [:a :b | a name < b name].
	^services!

pullFromGit

	^transport send: #pullFromGit to: remoteService  !

pushToGit

	^transport send: #pushToGit to: remoteService  !

remoteDefaultProjectName

	^transport
		send: #defaultProjectName
		to: remoteService
!

remoteServiceName
	^'Rowan projectServiceClass'!

removeProjectNamed: projectName

	transport send: #removeProjectNamed: to: remoteService withAll: (Array with: projectName)!

removeSampleProject
	self removeProjectNamed: self sampleProjectName!

sampleProjectName
	^transport send: #sampleProjectName to: remoteService!

sha
	^sha!

sha: anObject
	sha := anObject!

write

	^transport send: #write to: remoteService  ! !
!RowanProjectService categoriesFor: #addProjectNamed:!public! !
!RowanProjectService categoriesFor: #branch!accessing!public! !
!RowanProjectService categoriesFor: #branch:!accessing!public! !
!RowanProjectService categoriesFor: #branches!public!rowan! !
!RowanProjectService categoriesFor: #changes!public!rowan! !
!RowanProjectService categoriesFor: #checkout:!public!rowan! !
!RowanProjectService categoriesFor: #commitWithMessage:!public!rowan! !
!RowanProjectService categoriesFor: #defaultProjectName!accessing!public! !
!RowanProjectService categoriesFor: #defaultProjectName:!accessing!public! !
!RowanProjectService categoriesFor: #displayName!accessing!public! !
!RowanProjectService categoriesFor: #displayStringFor:!displaying!public! !
!RowanProjectService categoriesFor: #isLoaded!public!testing! !
!RowanProjectService categoriesFor: #isSkew!accessing!private! !
!RowanProjectService categoriesFor: #isSkew:!accessing!private! !
!RowanProjectService categoriesFor: #loadProjectNamed:!public!rowan! !
!RowanProjectService categoriesFor: #log!public!rowan! !
!RowanProjectService categoriesFor: #newGitProject:root:useSsh:!public!rowan! !
!RowanProjectService categoriesFor: #packageNames!public!rowan! !
!RowanProjectService categoriesFor: #packageNameString!public!rowan! !
!RowanProjectService categoriesFor: #projects!public!rowan! !
!RowanProjectService categoriesFor: #pullFromGit!public!rowan! !
!RowanProjectService categoriesFor: #pushToGit!public!rowan! !
!RowanProjectService categoriesFor: #remoteDefaultProjectName!accessing!public! !
!RowanProjectService categoriesFor: #remoteServiceName!must not strip!public! !
!RowanProjectService categoriesFor: #removeProjectNamed:!public! !
!RowanProjectService categoriesFor: #removeSampleProject!public! !
!RowanProjectService categoriesFor: #sampleProjectName!public! !
!RowanProjectService categoriesFor: #sha!accessing!public! !
!RowanProjectService categoriesFor: #sha:!accessing!public! !
!RowanProjectService categoriesFor: #write!public!rowan! !

!RowanProjectService class methodsFor!

defaultIcon
	"Answer a suitable default icon to use for this class. Not all classes use their 
	default icon; one must define an appropriate #icon method in each class where the 
	icon required differs from that of the superclass."

	^(self environment at: #Icon) fromId: self defaultIconName.
!

defaultIconName
	"Answer a filename to use for an icon of this class."

	^File composeStem: 'Collection' extension: 'ico'.!

defaultProjectName
	"cached from the server class var"

	^DefaultProjectName!

defaultProjectName: aString

	DefaultProjectName := aString!

icon
	"Answers an Icon that can be used to represent this class"

	^##(self) defaultIcon!

initialize
	DefaultProjectName := nil! !
!RowanProjectService class categoriesFor: #defaultIcon!private! !
!RowanProjectService class categoriesFor: #defaultIconName!private! !
!RowanProjectService class categoriesFor: #defaultProjectName!public! !
!RowanProjectService class categoriesFor: #defaultProjectName:!public! !
!RowanProjectService class categoriesFor: #icon!private! !
!RowanProjectService class categoriesFor: #initialize!public! !

