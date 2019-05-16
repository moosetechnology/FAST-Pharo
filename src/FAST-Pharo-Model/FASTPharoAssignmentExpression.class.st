"
An assignment expression mode.

Contains a referances to an assignee (a variable) and the expression that's being assigned.
"
Class {
	#name : #FASTPharoAssignmentExpression,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'variable'
	],
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoAssignmentExpression class >> annotation [
	<MSEClass: #PharoAssignmentExpression super: #FASTPharoExpression>
	<package: #FAST>
]

{ #category : #visiting }
FASTPharoAssignmentExpression >> accept: aVisitor [
	^ aVisitor visitPharoAssignmentExpression: self
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression [
	"Assigned expression (rhs of assignement)"
	^ self childrenExpressions ifEmpty: [ nil ] ifNotEmpty: [ :exps | exps anyOne ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression: anExpression [
	self childrenExpressions: { anExpression }
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> name [
	^ 'assignment expression'
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable [
	<MSEProperty: #variable type: #FASTVariableEntity opposite: #parentAssignmentExpression>
	<MSEComment: 'An assigned variable (lhs of assignement)'>
	^variable
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable: aStructuralEntity [
	variable := aStructuralEntity
]
