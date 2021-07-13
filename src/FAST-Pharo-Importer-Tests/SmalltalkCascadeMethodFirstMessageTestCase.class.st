Class {
	#name : #SmalltalkCascadeMethodFirstMessageTestCase,
	#superclass : #SmalltalkCascadeMethodTestCase,
	#instVars : [
		'message'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkCascadeMethodFirstMessageTestCase >> setUp [
	super setUp.
	message := cascadeMethod statements first expression messages at: 1
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageIsBinary [
	self assert: message isBinary
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageIsKeyword [
	self assert: message isKeyword not
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageIsUnary [
	self assert: message isUnary not
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageKind [
	self assert: message kind == #binary
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageParameterType [
	self assert: (message arguments first isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageParametersCount [
	self assert: message arguments size = 1
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageSelectorName [
	self assert: message invoked name equals: '<=>'
]

{ #category : #tests }
SmalltalkCascadeMethodFirstMessageTestCase >> testFirstMessageSelectorParent [
	self assert: message invoked invokedIn equals: message
]
