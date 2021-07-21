Class {
	#name : #SmalltalkSpaceshipMethodSecondBlockTestCase,
	#superclass : #SmalltalkSpaceshipMethodTestCase,
	#instVars : [
		'block'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkSpaceshipMethodSecondBlockTestCase >> setUp [
	super setUp.
	block := spaceshipMethod statements first expression arguments last block
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testExpressionParent [
	self assert: block statements first expression returnOwner equals: block statements first
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testExpressionType [
	self assert: (block statements first expression isOfType: FASTTLiteral)
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testLiteralValue [
	self assert: block statements first expression primitiveValue equals: 1
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testParentType [
	self assert: block blockExpression class equals: FASTPharoBlockExpression
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testStatementType [
	self assert: (block statements first isKindOf: FASTPharoReturnStatement)
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testStatementsCount [
	self assert: block statements size equals: 1
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testStatementsParent [
	self assert: (block statements allSatisfy: [ :statement | statement statementContainer == block statementBlock])
]

{ #category : #tests }
SmalltalkSpaceshipMethodSecondBlockTestCase >> testType [
	self assert: (block isMemberOf: FASTPharoBlockDefinition)
]
