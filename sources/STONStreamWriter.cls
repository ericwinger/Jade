"Filed out from Dolphin Smalltalk 7"!

Object subclass: #STONStreamWriter
	instanceVariableNames: 'writer first'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
STONStreamWriter guid: (GUID fromString: '{becb0d90-ba45-4633-8acf-d229c4a1514c}')!
STONStreamWriter comment: ''!
!STONStreamWriter categoriesForClass!Unclassified! !
!STONStreamWriter methodsFor!

initialize
	first := true!

on: stonWriter
	writer := stonWriter! !
!STONStreamWriter categoriesFor: #initialize!public! !
!STONStreamWriter categoriesFor: #on:!public! !

