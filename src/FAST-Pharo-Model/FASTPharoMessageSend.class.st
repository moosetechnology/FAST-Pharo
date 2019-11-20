Class {
	#name : #FASTPharoMessageSend,
	#superclass : #FASTExpression,
	#instVars : [
		'#inCascade => FMOne type: #FASTPharoCascade opposite: #messages',
		'#kind',
		'#selector => FMOne type: #FASTPharoSelector opposite: #parentMessageSend'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoMessageSend class >> annotation [

	<FMClass: #MessageSend super: #FASTExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoMessageSend >> addArgument: anObject [
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FASTPharoMessageSend >> arguments [
	"Relation named: #arguments type: #FASTExpression opposite: #pharoMessageArgumentOwner"

	<generated>
	<FMComment: 'The arguments of the message'>
	<derived>
	<FMProperty: #arguments type: #FASTExpression opposite: #pharoMessageArgumentOwner>
	^ self privateState attributeAt: #arguments ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoMessageArgumentOwner: ]
]

{ #category : #accessing }
FASTPharoMessageSend >> arguments: anObject [

	<generated>
	self arguments value: anObject
]

{ #category : #navigation }
FASTPharoMessageSend >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseGroup withAll: self arguments asSet
]

{ #category : #accessing }
FASTPharoMessageSend >> inCascade [
	"Relation named: #inCascade type: #FASTPharoCascade opposite: #messages"

	<generated>
	<FMComment: 'Optional cascade including this message'>
	<container>
	^ inCascade
]

{ #category : #accessing }
FASTPharoMessageSend >> inCascade: anObject [

	<generated>
	inCascade := anObject
]

{ #category : #navigation }
FASTPharoMessageSend >> inCascadeGroup [
	<generated>
	<navigation: 'InCascade'>
	^ MooseGroup with: self inCascade
]

{ #category : #accessing }
FASTPharoMessageSend >> kind [

	<FMProperty: #kind type: #String>
	<generated>
	<FMComment: 'The kind of message'>
	^ kind
]

{ #category : #accessing }
FASTPharoMessageSend >> kind: anObject [
	<generated>
	kind := anObject
]

{ #category : #accessing }
FASTPharoMessageSend >> receiver [
	"Relation named: #receiver type: #FASTExpression opposite: #pharoMessageReceiver"

	<generated>
	<FMComment: 'The receiver of the selector'>
	<FMProperty: #receiver type: #FASTExpression opposite: #pharoMessageReceiver>
	^ self privateState attributeAt: #receiver ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoMessageSend >> receiver: anObject [

	<generated>
	(self privateState attributeAt: #receiver ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self receiver.
		self privateState attributeAt: #receiver put: anObject.
		otherSide pharoMessageReceiver: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #receiver put: anObject.
		anObject pharoMessageReceiver: self ]
]

{ #category : #navigation }
FASTPharoMessageSend >> receiverGroup [
	<generated>
	<navigation: 'Receiver'>
	^ MooseGroup with: self receiver
]

{ #category : #accessing }
FASTPharoMessageSend >> selector [
	"Relation named: #selector type: #FASTPharoSelector opposite: #parentMessageSend"

	<generated>
	<FMComment: 'The sent selector'>
	^ selector
]

{ #category : #accessing }
FASTPharoMessageSend >> selector: anObject [

	<generated>
	selector := anObject
]

{ #category : #navigation }
FASTPharoMessageSend >> selectorGroup [
	<generated>
	<navigation: 'Selector'>
	^ MooseGroup with: self selector
]
