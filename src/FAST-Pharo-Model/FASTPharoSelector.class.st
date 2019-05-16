"
A FAST node representing the selector in a MessageSend
"
Class {
	#name : #FASTPharoSelector,
	#superclass : #FASTEntity,
	#instVars : [
		'name',
		'parentExpression',
		'parentMessageSend'
	],
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoSelector class >> annotation [
	<MSEClass: #PharoSelector super: #FASTEntity>
	<package: #FAST>
]

{ #category : #visiting }
FASTPharoSelector >> accept: aVisitor [
	^ aVisitor acceptPharoSelectorNode: self
]

{ #category : #accessing }
FASTPharoSelector >> name [
	<MSEProperty: #name type: #String>
	<MSEComment: 'Name of the method'>
	^ name
]

{ #category : #accessing }
FASTPharoSelector >> name: aName [
	name := aName
]

{ #category : #accessing }
FASTPharoSelector >> parentMessageSend [
	<MSEProperty: #parentMessageSend type: #FASTPharoMessageSend opposite: #selector>
	<MSEComment: 'An expression referencing this selector'>
	^ parentMessageSend
]

{ #category : #accessing }
FASTPharoSelector >> parentMessageSend: aMessageSend [
	parentMessageSend := aMessageSend
]

{ #category : #accessing }
FASTPharoSelector >> parentNode [
	^ self parentMessageSend
]
