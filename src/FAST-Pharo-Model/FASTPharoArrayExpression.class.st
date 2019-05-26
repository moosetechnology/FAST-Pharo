Class {
	#name : #FASTPharoArrayExpression,
	#superclass : #FASTPharoExpression,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoArrayExpression class >> annotation [

	<MSEClass: #ArrayExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoArrayExpression class >> generatedSlotNames [
	<generated>
	'FASTPharoArrayExpression class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoArrayExpression class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoArrayExpression class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FASTPharoArrayExpression >> addExpressions: anObject [
			
	<generated>
	^ self expressions add: anObject
]

{ #category : #accessing }
FASTPharoArrayExpression >> expressions [

	<generated>
	<MSEComment: 'The expression in the array'>
	<MSEProperty: #expressions type: #Object>
	^ self privateState attributeAt: #expressions ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoArrayExpressionExpressionOwner: ]
]

{ #category : #accessing }
FASTPharoArrayExpression >> expressions: anObject [

	<generated>
	self expressions value: anObject
]

{ #category : #navigation }
FASTPharoArrayExpression >> expressionsGroup [

	<generated>
	<navigation: 'Expressions'>
	^ MooseGroup
			withAll: (self expressions asSet)
]
