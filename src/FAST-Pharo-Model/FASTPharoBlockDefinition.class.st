"
An entity dedicated to represent a block node as defined.
It will often be wrapped in a PharoBlockExpression when used.
It contains a StatementBlock to store the statements and local variables

"
Class {
	#name : #FASTPharoBlockDefinition,
	#superclass : #FASTBehaviouralEntity,
	#instVars : [
		'statements',
		'parentExpr'
	],
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoBlockDefinition class >> annotation [
	<MSEClass: #PharoBlockDefinition super: #FASTBehaviouralEntity>
	<package: #FAST>
]

{ #category : #visiting }
FASTPharoBlockDefinition >> accept: aVisitor [
	^ aVisitor visitPharoBlockDefinition: self
]

{ #category : #accessing }
FASTPharoBlockDefinition >> addChildExpression: anExpression [
	| stmt |
	stmt := FASTExpressionStatement new
									expression: anExpression ;
									yourself.
	anExpression parentStatement: stmt.
	self mooseModel add: stmt.
	self addStatement: stmt.


]

{ #category : #accessing }
FASTPharoBlockDefinition >> blockExpression [
	<MSEProperty: #blockExpression type: #FASTPharoBlockExpression opposite: #block>
	<MSEComment: 'Expression entity that represents the block'>
	^ parentExpr
]

{ #category : #accessing }
FASTPharoBlockDefinition >> blockExpression: aFastBlockExpression [
	parentExpr := aFastBlockExpression
]

{ #category : #accessing }
FASTPharoBlockDefinition >> childExpression: anExpression [
	| stmt |
	stmt := FASTExpressionStatement new
									expression: anExpression ;
									yourself.
	anExpression parentStatement: stmt.
	self mooseModel add: stmt.
	self addStatement: stmt.


]

{ #category : #testing }
FASTPharoBlockDefinition >> isFASTExpression [
	^ true
]

{ #category : #testing }
FASTPharoBlockDefinition >> isFASTStatement [
	^ false
]

{ #category : #accessing }
FASTPharoBlockDefinition >> name [
	^ 'blockDefinition'
]

{ #category : #accessing }
FASTPharoBlockDefinition >> parentNode [
	^ parentExpr
]

{ #category : #accessing }
FASTPharoBlockDefinition >> parentScopableEntity [
	^ parentExpr ifNil: [ nil ] ifNotNil: [ :parent | parent parentScopableEntity]
]
