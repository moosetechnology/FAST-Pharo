Class {
	#name : #SmalltalkCascadeMethodThirdMessageTestCase,
	#superclass : #SmalltalkCascadeMethodTestCase,
	#instVars : [
		'message'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkCascadeMethodThirdMessageTestCase >> setUp [
	super setUp.
	message := cascadeMethod statements first expression messages at: 3
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageIsBinary [
	self assert: message isBinary not
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageIsKeyword [
	self assert: message isKeyword not
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageIsUnary [
	self assert: message isUnary
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageKind [
	self assert: message kind == #unary
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageParametersCount [
	self assert: (cascadeMethod statements first expression messages at: 3) arguments isEmpty
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageSelectorName [
	self assert: (cascadeMethod statements first expression messages at: 3) selector name equals: 'sendMessage'
]

{ #category : #tests }
SmalltalkCascadeMethodThirdMessageTestCase >> testThirdMessageSelectorParent [
	self assert: (cascadeMethod statements first expression messages at: 3) selector parentNode equals: (cascadeMethod statements first expression messages at: 3)
]
