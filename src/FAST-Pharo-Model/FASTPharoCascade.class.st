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

	<FMClass: #Cascade super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoCascade >> addMessage: anObject [
	<generated>
	^ self messages add: anObject
]

{ #category : #accessing }
FASTPharoCascade >> messages [
	"Relation named: #messages type: #FASTPharoMessageSend opposite: #inCascade"

	<generated>
	<FMComment: 'The messages of the cascade'>
	<derived>
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
	^ MooseGroup withAll: self messages asSet
]
