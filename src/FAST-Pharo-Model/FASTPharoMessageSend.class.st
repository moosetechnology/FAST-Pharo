Class {
	#name : #FASTPharoMessageSend,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTInvocation',
	#classTraits : 'FASTTInvocation classTrait',
	#instVars : [
		'#arguments => FMMany type: #FASTPharoExpression opposite: #pharoMessageArgumentOwner',
		'#inCascade => FMOne type: #FASTPharoCascade opposite: #messages',
		'#kind => FMProperty',
		'#receiver => FMOne type: #FASTPharoExpression opposite: #pharoMessageReceiver',
		'#selector => FMOne type: #FASTPharoSelector opposite: #parentMessageSend'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoMessageSend class >> annotation [

	<FMClass: #MessageSend super: #FASTPharoEntity>
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
	"Relation named: #arguments type: #FASTPharoExpression opposite: #pharoMessageArgumentOwner"

	<generated>
	<FMComment: 'The arguments of the message'>
	<derived>
	^ arguments
]

{ #category : #accessing }
FASTPharoMessageSend >> arguments: anObject [

	<generated>
	arguments value: anObject
]

{ #category : #navigation }
FASTPharoMessageSend >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseSpecializedGroup withAll: self arguments asSet
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
	^ MooseSpecializedGroup with: self inCascade
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
	"Relation named: #receiver type: #FASTPharoExpression opposite: #pharoMessageReceiver"

	<generated>
	<FMComment: 'The receiver of the selector'>
	^ receiver
]

{ #category : #accessing }
FASTPharoMessageSend >> receiver: anObject [

	<generated>
	receiver := anObject
]

{ #category : #navigation }
FASTPharoMessageSend >> receiverGroup [
	<generated>
	<navigation: 'Receiver'>
	^ MooseSpecializedGroup with: self receiver
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
	^ MooseSpecializedGroup with: self selector
]
