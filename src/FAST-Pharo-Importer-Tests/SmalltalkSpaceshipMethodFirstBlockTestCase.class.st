Class {
	#name : #SmalltalkSpaceshipMethodFirstBlockTestCase,
	#superclass : #SmalltalkSpaceshipMethodTestCase,
	#instVars : [
		'block'
	],
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkSpaceshipMethodFirstBlockTestCase >> setUp [
	super setUp.
	block := spaceshipMethod statements first expression arguments first block
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testExpressionParent [
	self assert: block statements first expression returnOwner equals: block statements first
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testExpressionType [
	self assert: (block statements first expression isOfType: FASTTLiteral)
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testLiteralValue [
	self assert: block statements first expression value equals: 0
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testParent [
	self assert: block blockExpression class equals: FASTPharoBlockExpression
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testStatementType [
	self assert: (block statements first isKindOf: FASTPharoReturnStatement)
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testStatementsCount [
	self assert: block statements size equals: 1
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testStatementsParent [
	self assert: (block statements allSatisfy: [ :statement | statement statementContainer == block statementBlock])
]

{ #category : #tests }
SmalltalkSpaceshipMethodFirstBlockTestCase >> testType [
	self assert: (block isMemberOf: FASTPharoBlockDefinition)
]
