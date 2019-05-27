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

	<MSEClass: #MessageSend super: #FASTExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoMessageSend class >> generatedSlotNames [
	<generated>
	'FASTPharoMessageSend class>>#generatedSlotNames'.
	^ #(inCascade kind selector)
]

{ #category : #generator }
FASTPharoMessageSend class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoMessageSend class >> requirements [

	<generated>
	^ { FASTPharoCascade }
]

{ #category : #adding }
FASTPharoMessageSend >> addArguments: anObject [
			
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FASTPharoMessageSend >> arguments [

	<generated>
	<MSEComment: 'The arguments of the message'>
	<MSEProperty: #arguments type: #Object>
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
	^ MooseGroup
			withAll: (self arguments asSet)
]

{ #category : #accessing }
FASTPharoMessageSend >> inCascade [

	<generated>
	<MSEComment: 'Optional cascade including this message'>
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
	^ MooseGroup
			with: (self inCascade)
]

{ #category : #accessing }
FASTPharoMessageSend >> kind [

	<MSEProperty: #kind type: #String>
	<generated>
	<MSEComment: 'The kind of message'>
	^ kind
]

{ #category : #accessing }
FASTPharoMessageSend >> kind: anObject [

	<generated>
	kind := anObject

]

{ #category : #accessing }
FASTPharoMessageSend >> receiver [

	<generated>
	<MSEComment: 'The receiver of the selector'>
	<MSEProperty: #receiver type: #Object>
	^ self privateState attributeAt: #receiver ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoMessageSend >> receiver: anObject [

	<generated>
	(self privateState attributeAt: #receiver ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #receiver put: anObject.
	anObject pharoMessageReceiver: self
]

{ #category : #navigation }
FASTPharoMessageSend >> receiverGroup [

	<generated>
	<navigation: 'Receiver'>
	^ MooseGroup
			with: (self receiver)
]

{ #category : #accessing }
FASTPharoMessageSend >> selector [

	<generated>
	<MSEComment: 'The sent selector'>
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
	^ MooseGroup
			with: (self selector)
]
