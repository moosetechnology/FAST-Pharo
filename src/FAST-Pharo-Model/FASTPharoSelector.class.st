Class {
	#name : #FASTPharoSelector,
	#superclass : #FASTEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#instVars : [
		'#parentMessageSend => FMOne type: #FASTPharoMessageSend opposite: #selector'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoSelector class >> annotation [

	<MSEClass: #Selector super: #FASTEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoSelector class >> generatedSlotNames [
	<generated>
	'FASTPharoSelector class>>#generatedSlotNames'.
	^ #(parentMessageSend)
]

{ #category : #generator }
FASTPharoSelector class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FASTPharoSelector class >> requirements [

	<generated>
	^ { FASTPharoMessageSend }
]

{ #category : #accessing }
FASTPharoSelector >> parentMessageSend [

	<generated>
	<MSEComment: 'The sended of this selector'>
	<container>

	^ parentMessageSend
]

{ #category : #accessing }
FASTPharoSelector >> parentMessageSend: anObject [

	<generated>
	parentMessageSend := anObject

]

{ #category : #navigation }
FASTPharoSelector >> parentMessageSendGroup [

	<generated>
	<navigation: 'ParentMessageSend'>
	^ MooseGroup
			with: (self parentMessageSend)
]
