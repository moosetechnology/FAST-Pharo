Class {
	#name : #SmalltalkCascadeMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkCascadeMethodTestCase >> setUpMethods [
	"returnMethod      := self getFastMethodFromModelByName: 'return:'.
	literalMethod     := self getFastMethodFromModelByName: 'lotsOfLiterals'.
	sendMessageMethod := self getFastMethodFromModelByName: 'sendMessage'.
	middleMethod      := self getFastMethodFromModelByName: 'middleOf:and:'.
	spaceshipMethod   := self getFastMethodFromModelByName: '<=>'."
	cascadeMethod     := self getFastMethodFromModelByName: 'cascade'.
	"scopeMethod       := self getFastMethodFromModelByName: 'scope'.
	nestMethod        := self getFastMethodFromModelByName: 'nest:in:within:with:'."
	
	allMethods := {"literalMethod . sendMessageMethod . spaceshipMethod . returnMethod . middleMethod ." cascadeMethod ". scopeMethod . nestMethod"}
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageParametersCount [
	self assert: (cascadeMethod statements first expression messages at: 1) arguments first arguments isEmpty
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverParent [
	self
		assert: (cascadeMethod statements first expression messages at: 1) arguments first receiver pharoMessageReceiver
		equals: (cascadeMethod statements first expression messages at: 1) arguments first
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverSelectorName [
	self assert: (cascadeMethod statements first expression messages at: 1) arguments first invoked name equals: 'asString'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverSelectorParent [
	self
		assert: (cascadeMethod statements first expression messages at: 1) arguments first invoked invokedIn
		equals: (cascadeMethod statements first expression messages at: 1) arguments first
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverType [
	self assert: ((cascadeMethod statements first expression messages at: 1) arguments first receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testAsStringMessageReceiverVariableName [
	self assert: (cascadeMethod statements first expression messages at: 1) arguments first receiver name equals: 'super'
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
	self assert: (cascade messages allSatisfy: [ :message | message inCascade == cascade ])
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
		assert: cascadeMethod statements first expression receiver pharoMessageReceiver inCascade
		equals: cascadeMethod statements first expression
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeReceiverType [
	self assert: (cascadeMethod statements first expression receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testCascadeReceiverVariableName [
	self assert: cascadeMethod statements first expression receiver value name equals: 'self'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testExpressionParent [
	self assert: cascadeMethod statements first"=FASTExpressionStatement" expression"=FASTPharoCascade" expressionStatementOwner
		  equals: cascadeMethod statements first
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testExpressionType [
	self assert: (cascadeMethod statements first expression isMemberOf: FASTPharoCascade)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testSecondMessageSelectorName [
	self assert: (cascadeMethod statements first expression messages at: 2) invoked name equals: 'return:'
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testSecondMessageSelectorParent [
	self
		assert: (cascadeMethod statements first expression messages at: 2) invoked invokedIn
		equals: (cascadeMethod statements first expression messages at: 2)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testStatementParent [
	self assert: cascadeMethod statements first statementContainer equals: cascadeMethod statementBlock
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testStatementType [
	self assert: (cascadeMethod statements first isMemberOf: FASTPharoExpressionStatement)
]

{ #category : #tests }
SmalltalkCascadeMethodTestCase >> testStatementsCount [
	self assert: cascadeMethod statements size equals: 1
]
