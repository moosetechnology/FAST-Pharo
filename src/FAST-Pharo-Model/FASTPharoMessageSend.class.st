"
A node representing a smalltalk message.

Contains a reference to a receiver expression and a collection of parameters passed with a message.
"
Class {
	#name : #FASTPharoMessageSend,
	#superclass : #FASTExpression,
	#instVars : [
		'kind',
		'selector',
		'invocation',
		'inCascade',
		'concreteReceiver'
	],
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoMessageSend class >> annotation [
	<MSEClass: #PharoMessageSend super: #FASTExpression>
	<package: #FAST>
]

{ #category : #visiting }
FASTPharoMessageSend >> accept: aVisitor [
	aVisitor visitPharoMessageSend: self
]

{ #category : #accessing }
FASTPharoMessageSend >> addArgument: anExpression [
	self addChildExpression: anExpression
]

{ #category : #accessing }
FASTPharoMessageSend >> arguments [
	"first child expression is the receiver"
	^ childrenExpressions
]

{ #category : #accessing }
FASTPharoMessageSend >> arguments: aCollection [
	self childrenExpressions: aCollection
]

{ #category : #accessing }
FASTPharoMessageSend >> inCascade [
	<MSEProperty: #inCascade type: #FASTPharoCascade opposite: #messages>
	<MSEComment: 'Optional cascade including this message'>

	^ inCascade
]

{ #category : #accessing }
FASTPharoMessageSend >> inCascade: aPharoCascade [
	inCascade := aPharoCascade
]

{ #category : #accessing }
FASTPharoMessageSend >> invocation [
	<MSEProperty: #invocation type: #FAMIXInvocation opposite: #messageSend>
	<MSEComment: 'A Famix invocation corresponding to this message send'>
	^ invocation
]

{ #category : #accessing }
FASTPharoMessageSend >> invocation: anInvocation [
	invocation := anInvocation
]

{ #category : #testing }
FASTPharoMessageSend >> isBinary [
	<MSEProperty: #isBinary type: #Boolean>
	<derived>
	<MSEComment: 'True if message is binary'>
	
	^self kind = #binary
]

{ #category : #testing }
FASTPharoMessageSend >> isCascaded [
	<MSEProperty: #isCascaded type: #Boolean>
	<derived>
	<MSEComment: 'Shows if message is in cascade'>
	^ inCascade notNil
]

{ #category : #testing }
FASTPharoMessageSend >> isKeyword [
	<MSEProperty: #isKeyword type: #Boolean>
	<derived>
	<MSEComment: 'True if message is a keyword message'>
	
	^self kind = #keyword
]

{ #category : #testing }
FASTPharoMessageSend >> isUnary [
	<MSEProperty: #isUnary type: #Boolean>
	<derived>
	<MSEComment: 'True if message is unary'>
	
	^self kind = #unary

]

{ #category : #accessing }
FASTPharoMessageSend >> kind [
	<MSEProperty: #kind type: #String>
	<MSEComment: 'Tag indicating a unary, binary or keyword method'>
	
	^ kind
]

{ #category : #accessing }
FASTPharoMessageSend >> kind: aSymbol [
	"Set the kind of method, one of #unary, #binary or #keyword"

	| kindSymbol |
	kindSymbol := aSymbol ifNotNil: [aSymbol asSymbol].
	(#(#unary #binary #keyword) includes: kindSymbol)
		ifTrue: [kind := kindSymbol. ^ true]
		ifFalse: [^ false].
	
]

{ #category : #printing }
FASTPharoMessageSend >> mooseNameOn: aStream [
	self selector mooseNameOn: aStream.
	"aStream nextPutAll: ' arguments : ',self arguments asString"
]

{ #category : #accessing }
FASTPharoMessageSend >> parentNode [
	^ super parentNode ifNil: [ self inCascade ]
]

{ #category : #accessing }
FASTPharoMessageSend >> receiver [
	<MSEProperty: #receiver type: #FASTExpression  opposite: #messageReceived>
	<MSEComment: 'Receiver of the message'>
	^ concreteReceiver
]

{ #category : #accessing }
FASTPharoMessageSend >> receiver: aReceiver [
	concreteReceiver := aReceiver
]

{ #category : #accessing }
FASTPharoMessageSend >> selector [
	<MSEProperty: #selector type: #FASTPharoSelector opposite: #parentMessageSend>
	<MSEComment: 'Selector of the message'>
	^selector
]

{ #category : #accessing }
FASTPharoMessageSend >> selector: aSymbol [
	selector := aSymbol
]
