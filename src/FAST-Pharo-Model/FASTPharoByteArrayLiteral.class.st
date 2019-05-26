Class {
	#name : #FASTPharoByteArrayLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoByteArrayLiteral class >> annotation [

	<MSEClass: #ByteArrayLiteral super: #FASTLiteral>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoByteArrayLiteral class >> generatedSlotNames [
	<generated>
	'FASTPharoByteArrayLiteral class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoByteArrayLiteral class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoByteArrayLiteral class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FASTPharoByteArrayLiteral >> addExpressions: anObject [
			
	<generated>
	^ self expressions add: anObject
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> expressions [

	<generated>
	<MSEComment: 'The expression in the array'>
	<MSEProperty: #expressions type: #Object>
	^ self privateState attributeAt: #expressions ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoByteArrayLiteralExpressionExpressionOwner: ]
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> expressions: anObject [

	<generated>
	self expressions value: anObject
]

{ #category : #navigation }
FASTPharoByteArrayLiteral >> expressionsGroup [

	<generated>
	<navigation: 'Expressions'>
	^ MooseGroup
			withAll: (self expressions asSet)
]
