Class {
	#name : #FASTPharoAssignmentExpression,
	#superclass : #FASTPharoExpression,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoAssignmentExpression class >> annotation [

	<MSEClass: #AssignmentExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoAssignmentExpression class >> generatedSlotNames [
	<generated>
	'FASTPharoAssignmentExpression class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoAssignmentExpression class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoAssignmentExpression class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression [

	<generated>
	<MSEComment: 'Assigned expression (rhs of assignement)'>
	<MSEProperty: #expression type: #Object>
	^ self privateState attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> expression: anObject [

	<generated>
	(self privateState attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #expression put: anObject.
	anObject pharoParentAssignmentExpression: self
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> expressionGroup [

	<generated>
	<navigation: 'Expression'>
	^ MooseGroup
			with: (self expression)
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable [

	<generated>
	<MSEComment: 'An assigned variable (lhs of assignement)'>
	<MSEProperty: #variable type: #Object>
	^ self privateState attributeAt: #variable ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPharoAssignmentExpression >> variable: anObject [

	<generated>
	(self privateState attributeAt: #variable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #variable put: anObject.
	anObject pharoParentAssignmentExpression: self
]

{ #category : #navigation }
FASTPharoAssignmentExpression >> variableGroup [

	<generated>
	<navigation: 'Variable'>
	^ MooseGroup
			with: (self variable)
]
