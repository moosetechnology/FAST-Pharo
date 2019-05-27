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
FASTPharoArrayExpression >> addContents: anObject [
			
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPharoArrayExpression >> contents [

	<generated>
	<MSEComment: 'The expression in the array'>
	<MSEProperty: #contents type: #Object>
	^ self privateState attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoArrayExpressionExpressionOwner: ]
]

{ #category : #accessing }
FASTPharoArrayExpression >> contents: anObject [

	<generated>
	self contents value: anObject
]

{ #category : #navigation }
FASTPharoArrayExpression >> contentsGroup [

	<generated>
	<navigation: 'Contents'>
	^ MooseGroup
			withAll: (self contents asSet)
]
