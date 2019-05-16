Class {
	#name : #SmalltalkSpaceshipMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParameterParent [
	self
		assert: spaceshipMethod statements first expression receiver arguments first parentNode
		equals: spaceshipMethod statements first expression receiver
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParameterType [
	self assert: (spaceshipMethod statements first expression receiver arguments first isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParameterVariableName [
	self assert: (spaceshipMethod statements first expression receiver arguments first isKindOf: FASTVariableExpression).
	self assert: spaceshipMethod statements first expression receiver arguments first variableName equals: 'other'
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionParametersCount [
	self assert: spaceshipMethod statements first expression receiver arguments size equals: 1
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionReceiverParent [
	self
		assert: spaceshipMethod statements first expression receiver receiver parentNode  
		equals: spaceshipMethod statements first expression receiver
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionReceiverType [
	self assert: (spaceshipMethod statements first expression receiver receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionReceiverVariableName [
	self assert: (spaceshipMethod statements first expression receiver receiver isKindOf: FASTVariableExpression).
	self assert: spaceshipMethod statements first expression receiver receiver variableName equals: 'self'
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionSelectorName [
	self assert: spaceshipMethod statements first expression receiver selector name equals: '='
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testEqualsExpressionSelectorParent [
	self
		assert: spaceshipMethod statements first expression receiver selector parentNode
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
		do: [ :each | self assert: each parentNode equals: spaceshipMethod statements first expression ]
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionParent [
	self assert: spaceshipMethod statements first expression parentNode equals: spaceshipMethod statements first
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionReceiverParent [
	self assert: spaceshipMethod statements first expression receiver parentNode equals: spaceshipMethod statements first expression
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
	self assert: spaceshipMethod statements first expression selector name equals: 'ifTrue:ifFalse:'
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionSelectorParent [
	self
		assert: spaceshipMethod statements first expression selector parentNode
		equals: spaceshipMethod statements first expression
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testIfExpressionType [
	self assert: (spaceshipMethod statements first expression isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testStatementParent [
	self assert: spaceshipMethod statements first parentNode equals: spaceshipMethod body
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testStatementType [
	self assert: (spaceshipMethod statements first isMemberOf: FASTExpressionStatement)
]

{ #category : #tests }
SmalltalkSpaceshipMethodTestCase >> testStatementsCount [
	self assert: spaceshipMethod statements size equals: 1
]
