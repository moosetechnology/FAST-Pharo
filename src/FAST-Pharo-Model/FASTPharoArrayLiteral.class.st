Class {
	#name : #FASTPharoArrayLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoArrayLiteral class >> annotation [

	<MSEClass: #ArrayLiteral super: #FASTLiteral>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoArrayLiteral class >> generatedSlotNames [
	<generated>
	'FASTPharoArrayLiteral class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoArrayLiteral class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoArrayLiteral class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FASTPharoArrayLiteral >> addExpressions: anObject [
			
	<generated>
	^ self expressions add: anObject
]

{ #category : #accessing }
FASTPharoArrayLiteral >> expressions [

	<generated>
	<MSEComment: 'The expression in the array'>
	<MSEProperty: #expressions type: #Object>
	^ self privateState attributeAt: #expressions ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoArrayLiteralExpressionExpressionOwner: ]
]

{ #category : #accessing }
FASTPharoArrayLiteral >> expressions: anObject [

	<generated>
	self expressions value: anObject
]

{ #category : #navigation }
FASTPharoArrayLiteral >> expressionsGroup [

	<generated>
	<navigation: 'Expressions'>
	^ MooseGroup
			withAll: (self expressions asSet)
]
