Class {
	#name : #FASTPharoAssignmentExpression,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'#expression => FMOne type: #FASTPharoExpression opposite: #pharoParentAssignmentExpression',
		'#variable => FMOne type: #FASTPharoVariableExpression opposite: #pharoParentAssignmentExpression'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoAssignmentExpression class >> annotation [

	<FMClass: #AssignmentExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression [
	"Relation named: #expression type: #FASTPharoExpression opposite: #pharoParentAssignmentExpression"

	<generated>
	<FMComment: 'Assigned expression (rhs of assignement)'>
	^ expression
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable [
	"Relation named: #variable type: #FASTPharoVariableExpression opposite: #pharoParentAssignmentExpression"

	<generated>
	<FMComment: 'An assigned variable (lhs of assignement)'>
	^ variable
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable: anObject [

	<generated>
	variable := anObject
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> variableGroup [
	<generated>
	<navigation: 'Variable'>
	^ MooseSpecializedGroup with: self variable
]
