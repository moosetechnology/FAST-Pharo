Class {
	#name : #SmalltalkReturnMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testExpressionParent [
	self assert: returnMethod statements first expression parentNode equals: returnMethod statements first
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testExpressionType [
	self assert: (returnMethod statements first expression isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testReturnVariableName [
	self assert: (returnMethod statements first expression isKindOf: FASTVariableExpression).
	self assert: returnMethod statements first expression name equals: 'variable'
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementParent [
	self assert: returnMethod statements first parentNode equals: returnMethod
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementType [
	self assert: (returnMethod statements first isMemberOf: FASTReturnStatement)
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementsCount [
	self assert: returnMethod statements size equals: 1
]
