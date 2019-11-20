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
	^ self privateState attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression: anObject [

	<generated>
	(self privateState attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self privateState attributeAt: #expression put: anObject.
		otherSide pharoParentAssignmentExpression: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #expression put: anObject.
		anObject pharoParentAssignmentExpression: self ]
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseGroup with: self expression
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable [
	"Relation named: #variable type: #FASTVariableEntity opposite: #pharoParentAssignmentExpression"

	<generated>
	<FMComment: 'An assigned variable (lhs of assignement)'>
	<FMProperty: #variable type: #FASTVariableEntity opposite: #pharoParentAssignmentExpression>
	^ self privateState attributeAt: #variable ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable: anObject [

	<generated>
	(self privateState attributeAt: #variable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self variable.
		self privateState attributeAt: #variable put: anObject.
		otherSide pharoParentAssignmentExpression: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #variable put: anObject.
		anObject pharoParentAssignmentExpression: self ]
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> variableGroup [
	<generated>
	<navigation: 'Variable'>
	^ MooseGroup with: self variable
]
