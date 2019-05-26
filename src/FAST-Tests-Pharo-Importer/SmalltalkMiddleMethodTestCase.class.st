Class {
	#name : #SmalltalkMiddleMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionAssigneeName [
	self assert: middleMethod statements first expression variable name equals: 'sum'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionAssigneeParent [
	self
		assert: middleMethod statements first expression variable parentNode
		equals: middleMethod statements first expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionAssigneeType [
	self assert: (middleMethod statements first expression variable isMemberOf: FASTVariableExpression )
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionParent [
	self assert: middleMethod statements first expression parentNode equals: middleMethod statements first 
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionType [
	self assert: (middleMethod statements first expression isMemberOf: FASTPharoAssignmentExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionParameterParent [
	self
		assert: middleMethod statements last expression arguments first parentNode
		equals: middleMethod statements last expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionParameterType [
	self assert: (middleMethod statements last expression arguments first isMemberOf: FASTPharoNumberLiteral)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionParameterValue [
	self assert: middleMethod statements last expression arguments first value equals: 2
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionParametersCount [
	self assert: middleMethod statements last expression arguments size equals: 1
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionParent [
	self assert: middleMethod statements last expression parentNode equals: middleMethod statements last
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionRecepientType [
	self assert: (middleMethod statements last expression receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionRecepientVariableName [
	self assert: middleMethod statements last expression receiver name equals: 'sum'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionRecepientVariableParent [
	self
		assert: middleMethod statements last expression receiver parentNode
		equals: middleMethod statements last expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionSelector [
	self assert: middleMethod statements last expression selector name equals: '/'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionSelectorParent [
	self assert: middleMethod statements last expression selector parentNode equals: middleMethod statements last expression 
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionType [
	self assert: (middleMethod statements last expression isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testStatementsCount [
	self assert: middleMethod statements size equals: 2
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testStatementsParent [
	middleMethod statements do: [ :each | self assert: each parentNode equals: middleMethod ]
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testStatementsType [
	self
		assert: (middleMethod statements first isMemberOf: FASTExpressionStatement);
		assert: (middleMethod statements last isMemberOf: FASTReturnStatement)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParameterParent [
	self assert: middleMethod statements first expression expression arguments first parentNode equals: middleMethod statements first expression expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParameterType [
	self assert: (middleMethod statements first expression expression arguments first isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParameterVariableName [
	self assert: (middleMethod statements first expression  expression arguments first isKindOf: FASTVariableExpression).
	self assert: middleMethod statements first expression expression arguments first name equals: 'b'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParametersCount [
	self assert: middleMethod statements first expression expression arguments size equals: 1
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParent [
	self
		assert: middleMethod statements first expression expression parentNode
		equals: middleMethod statements first expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionReceiverParent [
	self assert: middleMethod statements first expression expression receiver parentNode equals: middleMethod statements first expression expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionReceiverType [
	self assert: (middleMethod statements first expression expression receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionReceiverVariableName [
	self assert: (middleMethod statements first expression expression receiver isKindOf: FASTVariableExpression).
	self assert: middleMethod statements first expression expression receiver name equals: 'a'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionSelectorName [
	self assert: middleMethod statements first expression expression selector name equals: '+'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionSelectorParent [
	self assert: middleMethod statements first expression expression selector parentNode equals: middleMethod statements first expression expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionType [
	self assert: (middleMethod statements first expression expression isMemberOf: FASTPharoMessageSend)
]
