Class {
	#name : #SmalltalkCascadeMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageParametersCount [
	self assert: (cascadeMethod statements first expression messages at: 1) arguments first arguments isEmpty
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverParent [
	self
		assert: (cascadeMethod statements first expression messages at: 1) arguments first receiver parentNode
		equals: (cascadeMethod statements first expression messages at: 1) arguments first
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverSelectorName [
	self assert: (cascadeMethod statements first expression messages at: 1) arguments first selector name equals: 'asString'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverSelectorParent [
	self
		assert: (cascadeMethod statements first expression messages at: 1) arguments first selector parentNode
		equals: (cascadeMethod statements first expression messages at: 1) arguments first
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverType [
	self assert: ((cascadeMethod statements first expression messages at: 1) arguments first receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverVariableName [
	self assert: (cascadeMethod statements first expression messages at: 1) arguments first receiver variableName equals: 'super'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeChildrenBeingCascaded [
	self assert: (cascadeMethod statements first expression messages allSatisfy: [ :message | message isCascaded ])
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeChildrenConcreteReceiver [
	| cascadeMessage |
	cascadeMessage := cascadeMethod statements first expression.
	self assert: cascadeMessage messages first receiver equals: cascadeMessage receiver
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeChildrenCount [
	self assert: cascadeMethod statements first expression messages size = 4
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeChildrenDereference [
	| cascade |
	cascade := cascadeMethod statements first expression.
	self assert: (cascade messages allSatisfy: [ :message | message parentNode == cascade ])
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeChildrenReceiverResolution [
	| cascade |
	cascade := cascadeMethod statements first expression.
	self assert: cascade messages first receiver equals: cascade receiver
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeChildrenType [
	self assert: (cascadeMethod statements first expression messages allSatisfy: [ :message | message isMemberOf: FASTPharoMessageSend ])
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeReceiverParent [
	self
		assert: cascadeMethod statements first expression receiver parentNode parentNode
		equals: cascadeMethod statements first expression
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeReceiverType [
	self assert: (cascadeMethod statements first expression receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeReceiverVariableName [
	self assert: cascadeMethod statements first expression receiver value variableName equals: 'self'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testExpressionParent [
	self assert: cascadeMethod statements first"=FASTExpressionStatement" expression"=FASTPharoCascade" parentNode
		  equals: cascadeMethod statements first
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testExpressionType [
	self assert: (cascadeMethod statements first expression isMemberOf: FASTPharoCascade)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testSecondMessageSelectorName [
	self assert: (cascadeMethod statements first expression messages at: 2) selector name equals: 'return:'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testSecondMessageSelectorParent [
	self
		assert: (cascadeMethod statements first expression messages at: 2) selector parentNode
		equals: (cascadeMethod statements first expression messages at: 2)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testStatementParent [
	self assert: cascadeMethod statements first parentNode equals: cascadeMethod body
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testStatementType [
	self assert: (cascadeMethod statements first isMemberOf: FASTExpressionStatement)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testStatementsCount [
	self assert: cascadeMethod statements size equals: 1
]
