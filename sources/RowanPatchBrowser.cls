"Filed out from Dolphin Smalltalk 7"!

MCPatchBrowser subclass: #RowanPatchBrowser
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RowanPatchBrowser guid: (GUID fromString: '{5754d2bc-5a68-40d5-a2b0-36ac0383ab9f}')!
RowanPatchBrowser comment: ''!
!RowanPatchBrowser categoriesForClass!Unclassified! !
!RowanPatchBrowser methodsFor!

createComponents
	super createComponents.
	includeIdenticalPresenter value: true!

name
	^name!

name: anObject
	name := anObject!

operationSelected

	| operation |
	leftTextPresenter 		value: ''.
	leftMemoPresenter	value: ''.
	rightTextPresenter	value: ''.
	rightMemoPresenter	value: ''.
	operationListPresenter hasSelection ifFalse: [^self].
	operation := operationListPresenter selection.
	leftTextPresenter 		value: 'Disk'.
	leftMemoPresenter	value: operation obsoletionMemo.
	rightTextPresenter	value: 'Image'.
	rightMemoPresenter	value: operation modificationMemo. 
	operation obsoletionMemoMarkers do: [:each | 
		leftMemoPresenter view addMarkerType: each key at: each value.
	].
	operation modificationMemoMarkers do: [:each |
		rightMemoPresenter view addMarkerType: each key at: each value.
	].
!

shellName

	^name, ' Changes'
! !
!RowanPatchBrowser categoriesFor: #createComponents!public! !
!RowanPatchBrowser categoriesFor: #name!accessing!public! !
!RowanPatchBrowser categoriesFor: #name:!accessing!public! !
!RowanPatchBrowser categoriesFor: #operationSelected!public! !
!RowanPatchBrowser categoriesFor: #shellName!overrides!private! !

!RowanPatchBrowser class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 524550 ##(Smalltalk.ColorRef) 8 4278190080 328198 ##(Smalltalk.Point) 1601 1201 551 nil nil nil 416 1180166 ##(Smalltalk.ProportionalLayout) 170 176 8 #() true 170 192 592 nil nil nil nil nil 1 nil nil nil nil 1 nil nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 2 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 3839 21 514 1601 1201 416 690 #updateMenuBar 592 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 127 7 0 0 10 0 0 0 159 10 0 0 98 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 848 nil nil nil 7 nil nil nil 848 852230 ##(Smalltalk.FramingLayout) 170 176 34 4 410 ##(Smalltalk.ListView) 34 30 nil 848 34 2 8 1409355853 1025 976 590662 2 ##(Smalltalk.ListModel) 138 144 592 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 466 8 4278190080 nil 7 265030 4 ##(Smalltalk.Menu) nil true 34 2 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) #inspectLine 8 'Inspect' 1 1 nil nil nil 1202 1 1234 #browseChangedThing 8 'Browse' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 976 nil 8 4294904973 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 4 920646 5 ##(Smalltalk.ListViewColumn) 8 'Type' 201 #left 1362 #displayString 8 #() 1362 #<= 1536 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:each | each typeString]' 8 #[30 105 226 0 106] #typeString 1584 7 257 nil nil 976 nil 1 nil nil 1474 8 'Class' 201 #left 1362 #displayString 1392 ##(Smalltalk.SortedCollection) 1570 0 nil 1602 2 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:each | each className]' 8 #[30 105 226 0 106] #className 1728 7 257 nil nil 976 nil 1 nil nil 1474 8 'Selector' 201 #left 1362 #displayString 1536 1362 #<= 1536 1570 0 nil 1602 2 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:each | each selector]' 8 #[30 105 226 0 106] #selector 1872 7 257 nil nil 976 nil 1 nil nil 1474 8 'Detail' 961 #left 1362 #displayString 1536 1362 #<= 1536 1570 0 nil 1602 2 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:each | each detailsString]' 8 #[30 105 226 0 106] #detailsString 2016 7 257 nil nil 976 nil 3 nil nil #report 592 nil 131169 nil 34 4 nil nil 514 1 1 nil 626 138 144 34 3 690 #createAt:extent: 34 2 514 1 41 514 1569 517 976 690 #contextMenu: 34 1 1168 976 690 #text: 34 1 8 'Type' 976 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 20 0 0 0 16 3 0 0 22 1 0 0] 8 #() 514 193 193 nil 27 1181766 2 ##(Smalltalk.FramingConstraints) 1180678 ##(Smalltalk.FramingCalculation) #fixedParentLeft 1 2418 #fixedParentRight 1 2418 #fixedParentTop 41 2418 #fixedParentBottom 1 410 ##(Smalltalk.CheckBox) 34 16 nil 848 34 2 8 1409363203 1 2496 721990 2 ##(Smalltalk.ValueHolder) nil false 1114118 ##(Smalltalk.NeverSearchPolicy) true nil nil 7 nil nil nil 2496 nil 8 4294905041 852486 ##(Smalltalk.NullConverter) nil nil nil 626 138 144 34 2 690 #createAt:extent: 34 2 514 5 1 514 511 41 2496 690 #text: 34 1 8 'Include methods with identical source' 2496 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 2 0 0 0 0 0 0 0 1 1 0 0 20 0 0 0] 8 #() 2368 nil 27 2386 2432 5 2418 #fixedViewLeft 511 2464 1 2418 #fixedViewTop 41 170 192 34 4 976 8 'operationList' 2496 8 'includeIdenticalSource' nil 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 1 514 1569 557 848 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 16 3 0 0 22 1 0 0] 34 2 2496 976 2368 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 416 34 2 8 1140850688 1 3152 nil 466 8 4278190080 nil 519 nil nil nil 3152 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 557 514 1569 11 3152 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 22 1 0 0 16 3 0 0 27 1 0 0] 8 #() 2368 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 3408 nil nil nil 7 nil nil nil 3408 546 170 176 592 false 170 192 592 nil 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 567 514 1569 557 3408 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 27 1 0 0 16 3 0 0 49 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 3408 34 2 8 1140850688 131073 3680 nil nil nil 7 nil nil nil 3680 914 170 176 34 4 410 ##(Smalltalk.ScintillaView) 34 50 nil 3680 34 2 8 1445007428 1025 3792 2562 nil false 1310726 ##(Smalltalk.EqualitySearchPolicy) nil 466 8 4278190080 nil 7 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 86 101 114 100 97 110 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 514 193 193 nil 3792 nil 8 4294904625 2642 nil nil 11 nil 170 192 34 4 #normal 1182790 1 ##(Smalltalk.ScintillaTextStyle) 1 nil nil 1 nil nil nil nil #normal nil nil nil #callTip 4098 77 786694 ##(Smalltalk.IndexedColor) 33554457 4146 33554471 1 nil nil nil nil #callTip nil nil nil 34 256 4112 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 4128 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 1377542 ##(Smalltalk.SmalltalkMethodStyler) 1 nil nil false 138 144 592 170 192 34 8 #changed 1641542 1 ##(Smalltalk.ScintillaMarkerDefinition) 7 5 nil nil 3792 #changed nil nil nil nil nil nil #removed 4290 5 20091 nil nil 3792 #removed nil nil nil nil nil nil #added 4290 3 20087 nil nil 3792 #added nil nil nil nil nil nil #circle 4290 1 nil nil nil 3792 #circle nil nil nil nil nil nil 138 ##(Smalltalk.IdentitySet) 592 nil 170 176 592 9215 nil nil nil nil 4146 33554447 nil nil 65 nil nil 170 192 34 6 #specialCharacter 8 '()[]<>' #literalArray 8 '()' #literalBytes 8 '[]' 8 '' 3 170 192 34 2 #container 170 192 34 2 #normal 4112 nil nil nil nil 1 nil 170 192 34 6 1 1510470 2 ##(Smalltalk.ScintillaIndicatorStyle) 1 3792 65025 3 false 1 nil nil nil nil nil nil 3 4610 3 3792 33423361 5 false 3 nil nil nil nil nil nil 5 4610 5 3792 511 1 false 5 nil nil nil nil nil nil nil nil 170 192 34 6 #Notification 4098 1027 nil 196934 1 ##(Smalltalk.RGB) 31185883 1 nil nil nil nil #Notification nil nil nil #Warning 4098 1031 4722 60239 4722 31326207 1 nil nil nil nil #Warning nil nil nil #Error 4098 1029 4722 335 4722 31317503 1 nil nil nil nil #Error nil nil nil nil 626 138 144 34 6 690 #createAt:extent: 34 2 514 1 41 514 779 517 3792 690 #modificationEventMask: 8 #(4607) 3792 690 #caretPeriod: 8 #(530) 3792 690 #margins: 34 1 34 3 985158 2 ##(Smalltalk.ScintillaMargin) 1 3792 1 3 nil nil nil nil 5074 3 3792 33 nil nil 67108863 nil nil 5074 5 3792 1 nil 3 -67108863 nil nil 3792 690 #tabWidth: 8 #(4) 3792 690 #maxCompletionListHeight: 8 #(9) 3792 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 20 0 0 0 133 1 0 0 22 1 0 0] 8 #() 2368 nil 29 2386 2432 1 2448 1 2464 41 2480 1 410 ##(Smalltalk.TextEdit) 34 16 nil 3680 34 2 8 1140916352 1025 5264 nil 466 8 4278190080 nil 7 nil nil nil 5264 nil 8 4294904951 2642 nil nil 3 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 1 514 779 39 5264 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 1 0 0 19 0 0 0] 8 #() 2368 nil 27 2386 2432 1 2448 1 2464 1 2912 39 170 192 34 4 3792 8 'leftMemo' 5264 8 'leftText' nil 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 1 514 779 557 3680 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 133 1 0 0 22 1 0 0] 34 2 5264 3792 2368 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 3408 34 2 8 1140850688 1 5792 nil 466 3232 nil 519 nil nil nil 5792 626 138 144 34 1 690 #createAt:extent: 34 2 514 779 1 514 11 557 5792 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 133 1 0 0 0 0 0 0 138 1 0 0 22 1 0 0] 8 #() 2368 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 3408 34 2 8 1140850688 131073 6032 nil nil nil 7 nil nil nil 6032 914 170 176 34 4 410 ##(Smalltalk.TextEdit) 34 16 nil 6032 34 2 8 1140916352 1025 6144 nil 466 5344 nil 7 nil nil nil 6144 nil 8 4294904951 2642 nil nil 3 626 138 144 34 1 690 #createAt:extent: 34 2 514 1 1 514 781 39 6144 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 134 1 0 0 19 0 0 0] 8 #() 2368 nil 27 2386 2432 1 2448 1 2464 1 2912 39 410 ##(Smalltalk.ScintillaView) 34 50 nil 6032 34 2 8 1445007428 1025 6432 2562 nil false 3888 nil 466 3920 nil 7 nil 3938 nil true 3970 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 86 101 114 100 97 110 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 514 193 193 nil 6432 nil 8 4294904625 2642 nil nil 11 nil 170 192 34 4 #normal 4098 1 nil nil 1 nil nil nil nil #normal nil nil nil #callTip 4098 77 4160 4176 1 nil nil nil nil #callTip nil nil nil 34 256 6656 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 6672 nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil 4210 1 nil nil false 138 144 592 170 192 34 8 #changed 4290 7 5 nil nil 6432 #changed nil nil nil nil nil nil #removed 4290 5 20091 nil nil 6432 #removed nil nil nil nil nil nil #added 4290 3 20087 nil nil 6432 #added nil nil nil nil nil nil #circle 4290 1 nil nil nil 6432 #circle nil nil nil nil nil nil 138 ##(Smalltalk.IdentitySet) 592 nil 170 176 592 9215 nil nil nil nil 4400 nil nil 65 nil nil 4416 8 '' 3 170 192 34 2 #container 170 192 34 2 #normal 6656 nil nil nil nil 1 nil 170 192 34 6 1 4610 1 6432 65025 3 false 1 nil nil nil nil nil nil 3 4610 3 6432 33423361 5 false 3 nil nil nil nil nil nil 5 4610 5 6432 511 1 false 5 nil nil nil nil nil nil nil nil 170 192 34 6 #Notification 4098 1027 nil 4722 31185883 1 nil nil nil nil #Notification nil nil nil #Warning 4098 1031 4722 60239 4722 31326207 1 nil nil nil nil #Warning nil nil nil #Error 4098 1029 4722 335 4722 31317503 1 nil nil nil nil #Error nil nil nil nil 626 138 144 34 6 690 #createAt:extent: 34 2 514 1 41 514 781 517 6432 690 #modificationEventMask: 8 #(4607) 6432 690 #caretPeriod: 8 #(530) 6432 690 #margins: 34 1 34 3 5074 1 6432 1 3 nil nil nil nil 5074 3 6432 33 nil nil 67108863 nil nil 5074 5 6432 1 nil 3 -67108863 nil nil 6432 690 #tabWidth: 8 #(4) 6432 690 #maxCompletionListHeight: 8 #(9) 6432 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 20 0 0 0 134 1 0 0 22 1 0 0] 8 #() 2368 nil 29 2386 2432 1 2448 1 2464 41 2480 1 170 192 34 4 6144 8 'rightText' 6432 8 'rightMemo' nil 626 138 144 34 1 690 #createAt:extent: 34 2 514 789 1 514 781 557 6032 786 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 138 1 0 0 0 0 0 0 16 3 0 0 22 1 0 0] 34 2 6144 6432 2368 nil 27 2368 nil 27 2368 nil 27 )!

showOn: aModel name: aString
	| browser | 
	browser := self on: aModel.
	browser name: aString. 
	^browser
		createView: self defaultView;
		showShell;
		yourself! !
!RowanPatchBrowser class categoriesFor: #resource_Default_view!public!resources-views! !
!RowanPatchBrowser class categoriesFor: #showOn:name:!public! !

