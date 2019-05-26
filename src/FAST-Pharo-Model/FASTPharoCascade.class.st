Class {
	#name : #FASTPharoCascade,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'#messages => FMMany type: #FASTPharoMessageSend opposite: #inCascade'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoCascade class >> annotation [

	<MSEClass: #Cascade super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoCascade class >> generatedSlotNames [
	<generated>
	'FASTPharoCascade class>>#generatedSlotNames'.
	^ #(messages)
]

{ #category : #generator }
FASTPharoCascade class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoCascade class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FASTPharoCascade >> addMessages: anObject [
			
	<generated>
	^ self messages add: anObject
]

{ #category : #accessing }
FASTPharoCascade >> messages [

	<generated>
	<MSEComment: 'The messages of the cascade'>
	^ messages
]

{ #category : #accessing }
FASTPharoCascade >> messages: anObject [

	<generated>
	messages value: anObject

]

{ #category : #navigation }
FASTPharoCascade >> messagesGroup [

	<generated>
	<navigation: 'Messages'>
	^ MooseGroup
			withAll: (self messages asSet)
]
