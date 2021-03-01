Class {
	#name : #FASTPharoAssignmentExpression,
	#superclass : #FASTPharoExpression,
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
	"Relation named: #expression type: #FASTExpression opposite: #pharoParentAssignmentExpression"

	<generated>
	<FMComment: 'Assigned expression (rhs of assignement)'>
	<FMProperty: #expression type: #FASTExpression opposite: #pharoParentAssignmentExpression>
	^ self attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression: anObject [

	<generated>
	(self attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self attributeAt: #expression put: anObject.
		otherSide pharoParentAssignmentExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #expression put: anObject.
		anObject pharoParentAssignmentExpression: self ]
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable [
	"Relation named: #variable type: #FASTVariableExpression opposite: #pharoParentAssignmentExpression"

	<generated>
	<FMComment: 'An assigned variable (lhs of assignement)'>
	<FMProperty: #variable type: #FASTVariableExpression opposite: #pharoParentAssignmentExpression>
	^ self attributeAt: #variable ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable: anObject [

	<generated>
	(self attributeAt: #variable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self variable.
		self attributeAt: #variable put: anObject.
		otherSide pharoParentAssignmentExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #variable put: anObject.
		anObject pharoParentAssignmentExpression: self ]
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> variableGroup [
	<generated>
	<navigation: 'Variable'>
	^ MooseSpecializedGroup with: self variable
]
