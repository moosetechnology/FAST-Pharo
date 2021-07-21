Class {
	#name : #FASTPharoMessageSend,
	#superclass : #FASTPharoExpression,
	#traits : 'FASTTInvocation',
	#classTraits : 'FASTTInvocation classTrait',
	#instVars : [
		'#inCascade => FMOne type: #FASTPharoCascade opposite: #messages',
		'#kind => FMProperty',
		'#receiver => FMOne type: #FASTPharoExpression opposite: #pharoMessageReceiver'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoMessageSend class >> annotation [

	<FMClass: #MessageSend super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
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
