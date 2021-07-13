Class {
	#name : #SmalltalkMiddleMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkMiddleMethodTestCase >> setUpMethods [
	"returnMethod      := self getFastMethodFromModelByName: 'return:'.
	literalMethod     := self getFastMethodFromModelByName: 'lotsOfLiterals'.
	sendMessageMethod := self getFastMethodFromModelByName: 'sendMessage'."
	middleMethod      := self getFastMethodFromModelByName: 'middleOf:and:'.
	"spaceshipMethod   := self getFastMethodFromModelByName: '<=>'.
	cascadeMethod     := self getFastMethodFromModelByName: 'cascade'.
	scopeMethod       := self getFastMethodFromModelByName: 'scope'.
	nestMethod        := self getFastMethodFromModelByName: 'nest:in:within:with:'."
	
	allMethods := {"literalMethod . sendMessageMethod . spaceshipMethod . returnMethod ." middleMethod ". cascadeMethod . scopeMethod . nestMethod"}
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionAssigneeName [
	self assert: middleMethod statements first expression variable name equals: 'sum'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionAssigneeParent [
	self
		assert: middleMethod statements first expression variable parentAssignmentExpression
		equals: middleMethod statements first expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionAssigneeType [
	self assert: (middleMethod statements first expression variable isMemberOf: FASTPharoVariableEntity )
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionParent [
	self assert: middleMethod statements first expression expressionStatementOwner equals: middleMethod statements first 
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testAssignmentExpressionType [
	self assert: (middleMethod statements first expression isMemberOf: FASTPharoAssignment)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionParameterParent [
	self
		assert: middleMethod statements last expression arguments first argumentOwner
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
	self assert: middleMethod statements last expression returnOwner equals: middleMethod statements last
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionRecepientType [
	self assert: (middleMethod statements last expression receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionRecepientVariableName [
	self assert: middleMethod statements last expression receiver name equals: 'sum'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionRecepientVariableParent [
	self
		assert: middleMethod statements last expression receiver pharoMessageReceiver
		equals: middleMethod statements last expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionSelector [
	self assert: middleMethod statements last expression invoked name equals: '/'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testDivisionExpressionSelectorParent [
	self assert: middleMethod statements last expression invoked invokedIn equals: middleMethod statements last expression 
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
	middleMethod statements do: [ :each | self assert: each statementContainer equals: middleMethod statementBlock]
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testStatementsType [
	self
		assert: (middleMethod statements first isMemberOf: FASTPharoExpressionStatement);
		assert: (middleMethod statements last isMemberOf: FASTPharoReturnStatement)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParameterParent [
	self assert: middleMethod statements first expression expression arguments first argumentOwner equals: middleMethod statements first expression expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParameterType [
	self assert: (middleMethod statements first expression expression arguments first isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParameterVariableName [
	self assert: (middleMethod statements first expression  expression arguments first isKindOf: FASTPharoVariableExpression).
	self assert: middleMethod statements first expression expression arguments first name equals: 'b'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParametersCount [
	self assert: middleMethod statements first expression expression arguments size equals: 1
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionParent [
	self
		assert: middleMethod statements first expression expression assignedIn
		equals: middleMethod statements first expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionReceiverParent [
	self assert: middleMethod statements first expression expression receiver pharoMessageReceiver equals: middleMethod statements first expression expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionReceiverType [
	self assert: (middleMethod statements first expression expression receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionReceiverVariableName [
	self assert: (middleMethod statements first expression expression receiver isKindOf: FASTPharoVariableExpression).
	self assert: middleMethod statements first expression expression receiver name equals: 'a'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionSelectorName [
	self assert: middleMethod statements first expression expression invoked name equals: '+'
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionSelectorParent [
	self assert: middleMethod statements first expression expression invoked invokedIn equals: middleMethod statements first expression expression
]

{ #category : #tests }
SmalltalkMiddleMethodTestCase >> testSumExpressionType [
	self assert: (middleMethod statements first expression expression isMemberOf: FASTPharoMessageSend)
]
