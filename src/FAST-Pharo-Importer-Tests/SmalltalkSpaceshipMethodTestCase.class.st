Class {
	#name : #SmalltalkSpaceshipMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkSpaceshipMethodTestCase >> setUpMethods [
	"returnMethod      := self getFastMethodFromModelByName: 'return:'.
	literalMethod     := self getFastMethodFromModelByName: 'lotsOfLiterals'.
	sendMessageMethod := self getFastMethodFromModelByName: 'sendMessage'.
	middleMethod      := self getFastMethodFromModelByName: 'middleOf:and:'."
	spaceshipMethod   := self getFastMethodFromModelByName: '<=>'.
	"cascadeMethod     := self getFastMethodFromModelByName: 'cascade'.
	scopeMethod       := self getFastMethodFromModelByName: 'scope'.
	nestMethod        := self getFastMethodFromModelByName: 'nest:in:within:with:'."
	
	allMethods := {"literalMethod . sendMessageMethod ." spaceshipMethod ". returnMethod . middleMethod . cascadeMethod . scopeMethod . nestMethod"}
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParameterParent [
	self
		assert: spaceshipMethod statements first expression receiver arguments first argumentOwner
		equals: spaceshipMethod statements first expression receiver
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParameterType [
	self assert: (spaceshipMethod statements first expression receiver arguments first isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParameterVariableName [
	self assert: (spaceshipMethod statements first expression receiver arguments first isKindOf: FASTPharoVariableExpression).
	self assert: spaceshipMethod statements first expression receiver arguments first name equals: 'other'
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParametersCount [
	self assert: spaceshipMethod statements first expression receiver arguments size equals: 1
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionReceiverParent [
	self
		assert: spaceshipMethod statements first expression receiver receiver pharoMessageReceiver  
		equals: spaceshipMethod statements first expression receiver
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionReceiverType [
	self assert: (spaceshipMethod statements first expression receiver receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionReceiverVariableName [
	self assert: (spaceshipMethod statements first expression receiver receiver isKindOf: FASTPharoVariableExpression).
	self assert: spaceshipMethod statements first expression receiver receiver name equals: 'self'
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionSelectorName [
	self assert: spaceshipMethod statements first expression receiver invoked name equals: '='
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionSelectorParent [
	self
		assert: spaceshipMethod statements first expression receiver invoked invokedIn
		equals: spaceshipMethod statements first expression receiver
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionFirstParameterType [
	self assert: (spaceshipMethod statements first expression arguments first isMemberOf: FASTPharoBlockExpression)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionParametersCount [
	self assert: spaceshipMethod statements first expression arguments size = 2
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionParametersParent [
	spaceshipMethod statements first expression arguments
		do: [ :each | self assert: each argumentOwner equals: spaceshipMethod statements first expression ]
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionParent [
	self assert: spaceshipMethod statements first expression expressionStatementOwner equals: spaceshipMethod statements first
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionReceiverParent [
	self assert: spaceshipMethod statements first expression receiver pharoMessageReceiver equals: spaceshipMethod statements first expression
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionReceiverType [
	self assert: (spaceshipMethod statements first expression receiver isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionSecondParameterType [
	self assert: (spaceshipMethod statements first expression arguments last isMemberOf: FASTPharoBlockExpression)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionSelectorName [
	self assert: spaceshipMethod statements first expression invoked name equals: 'ifTrue:ifFalse:'
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionSelectorParent [
	self
		assert: spaceshipMethod statements first expression invoked invokedIn
		equals: spaceshipMethod statements first expression
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionType [
	self assert: (spaceshipMethod statements first expression isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testStatementParent [
	self assert: spaceshipMethod statements first statementContainer equals: spaceshipMethod statementBlock
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testStatementType [
	self assert: (spaceshipMethod statements first isMemberOf: FASTPharoExpressionStatement)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testStatementsCount [
	self assert: spaceshipMethod statements size equals: 1
]
