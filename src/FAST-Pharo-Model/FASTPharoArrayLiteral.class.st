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
FASTPharoArrayLiteral >> addContents: anObject [
			
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPharoArrayLiteral >> contents [

	<generated>
	<MSEComment: 'The expression in the array'>
	<MSEProperty: #contents type: #Object>
	^ self privateState attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoArrayLiteralExpressionExpressionOwner: ]
]

{ #category : #accessing }
FASTPharoArrayLiteral >> contents: anObject [

	<generated>
	self contents value: anObject
]

{ #category : #navigation }
FASTPharoArrayLiteral >> contentsGroup [

	<generated>
	<navigation: 'Contents'>
	^ MooseGroup
			withAll: (self contents asSet)
]
