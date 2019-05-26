Class {
	#name : #SmalltalkCascadeMethodFourthMessageTestCase,
	#superclass : #SmalltalkCascadeMethodTestCase,
	#instVars : [
		'message'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkCascadeMethodFourthMessageTestCase >> setUp [
	super setUp.
	message := cascadeMethod statements first expression messages at: 4
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageIsBinary [
	self assert: message isBinary not
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageIsKeyword [
	self assert: message isKeyword not
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageIsUnary [
	self assert: message isUnary
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageKind [
	self assert: message kind == #unary
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageParametersCount [
	self assert: (cascadeMethod statements first expression messages at: 4) arguments isEmpty
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageSelectorName [
	self assert: (cascadeMethod statements first expression messages at: 4) selector name equals: 'yourself'
]

{ #category : #tests }
SmalltalkCascadeMethodFourthMessageTestCase >> testFourthMessageSelectorParent [
	self
		assert: (cascadeMethod statements first expression messages at: 4) selector parentNode
		equals: (cascadeMethod statements first expression messages at: 4)
]
