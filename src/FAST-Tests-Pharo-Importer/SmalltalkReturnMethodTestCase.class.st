Class {
	#name : #SmalltalkReturnMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testExpressionParent [
	self assert: returnMethod statements first returnedExpression parentNode equals: returnMethod statements first
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testExpressionType [
	self assert: (returnMethod statements first returnedExpression isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testReturnVariableName [
	self assert: (returnMethod statements first returnedExpression isKindOf: FASTVariableExpression).
	self assert: returnMethod statements first returnedExpression variableName equals: 'variable'
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementParent [
	self assert: returnMethod statements first parentNode equals: returnMethod body
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementType [
	self assert: (returnMethod statements first isMemberOf: FASTReturnStatement)
]

{ #category : #tests }
SmalltalkReturnMethodTestCase >> testStatementsCount [
	self assert: returnMethod statements size equals: 1
]
