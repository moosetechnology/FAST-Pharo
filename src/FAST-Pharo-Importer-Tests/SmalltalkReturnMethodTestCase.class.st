Class {
	#name : #SmalltalkReturnMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkReturnMethodTestCase >> setUpMethods [
	returnMethod      := self getFastMethodFromModelByName: 'return:'.
	"literalMethod     := self getFastMethodFromModelByName: 'lotsOfLiterals'.
	sendMessageMethod := self getFastMethodFromModelByName: 'sendMessage'.
	middleMethod      := self getFastMethodFromModelByName: 'middleOf:and:'.
	spaceshipMethod   := self getFastMethodFromModelByName: '<=>'.
	cascadeMethod     := self getFastMethodFromModelByName: 'cascade'.
	scopeMethod       := self getFastMethodFromModelByName: 'scope'.
	nestMethod        := self getFastMethodFromModelByName: 'nest:in:within:with:'."
	
	allMethods := {"literalMethod . sendMessageMethod . spaceshipMethod ." returnMethod ". middleMethod . cascadeMethod . scopeMethod . nestMethod"}
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testExpressionParent [
	self assert: returnMethod statements first expression argumentOwner equals: returnMethod statements first
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testExpressionType [
	self assert: (returnMethod statements first expression isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testReturnVariableName [
	self assert: (returnMethod statements first expression isKindOf: FASTPharoVariableExpression).
	self assert: returnMethod statements first expression name equals: 'variable'
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementParent [
	self assert: returnMethod statements first statementContainer equals: returnMethod statementBlock
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementType [
	self assert: (returnMethod statements first isMemberOf: FASTPharoReturnStatement)
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementsCount [
	self assert: returnMethod statements size equals: 1
]
