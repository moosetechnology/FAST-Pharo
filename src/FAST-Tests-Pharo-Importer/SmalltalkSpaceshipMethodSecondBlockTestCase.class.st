Class {
	#name : #SmalltalkSpaceshipMethodSecondBlockTestCase,
	#superclass : #SmalltalkSpaceshipMethodTestCase,
	#instVars : [
		'block'
	],
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #running }
SmalltalkSpaceshipMethodSecondBlockTestCase >> setUp [
	super setUp.
	block := spaceshipMethod statements first expression arguments last block
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testExpressionParent [
	self assert: block statements first returnedExpression parentNode equals: block statements first
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testExpressionType [
	self assert: (block statements first returnedExpression isKindOf: FASTLiteral)
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testLiteralValue [
	self assert: block statements first returnedExpression value equals: '1'
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testParentType [
	self assert: block parentNode class equals: FASTPharoBlockExpression
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testStatementType [
	self assert: (block statements first isKindOf: FASTReturnStatement)
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testStatementsCount [
	self assert: block statements size equals: 1
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testStatementsParent [
	self assert: (block statements allSatisfy: [ :statement | statement parentNode == block body ])
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testType [
	self assert: (block isMemberOf: FASTPharoBlockDefinition)
]
