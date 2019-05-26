"
A node that represents a smalltalk cascade message.

Contains a referance to a receiver variable and a collection of messages sent to it.
"
Class {
	#name : #FASTPharoCascade,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'messages'
	],
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoCascade class >> annotation [
	<MSEClass: #PharoCascade super: #FASTPharoExpression>
	<package: #FAST>
]

{ #category : #accessing }
FASTPharoCascade >> initialize [
	super initialize.
	messages := FMMultivalueLink on: self opposite: #inCascade:
]

{ #category : #accessing }
FASTPharoCascade >> messages [
	<MSEProperty: #messages type: #FASTPharoMessageSend opposite: #inCascade>
	<multivalued>
	<MSEComment: 'Messages of cascade'>
	^messages
]

{ #category : #accessing }
FASTPharoCascade >> messages: aMessage [
	messages value: aMessage
]

{ #category : #accessing }
FASTPharoCascade >> name [
	^ 'cascade'
]

{ #category : #resolving }
FASTPharoCascade >> resolveAllSymbols [
	self messages do: [:s | s resolveAllSymbols ].
	self resolve: self receiver

]
