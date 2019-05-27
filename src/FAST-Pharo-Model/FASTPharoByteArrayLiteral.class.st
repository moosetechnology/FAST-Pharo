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
FASTPharoByteArrayLiteral >> addContents: anObject [
			
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> contents [

	<generated>
	<MSEComment: 'The expression in the array'>
	<MSEProperty: #contents type: #Object>
	^ self privateState attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoByteArrayLiteralExpressionExpressionOwner: ]
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> contents: anObject [

	<generated>
	self contents value: anObject
]

{ #category : #navigation }
FASTPharoByteArrayLiteral >> contentsGroup [

	<generated>
	<navigation: 'Contents'>
	^ MooseGroup
			withAll: (self contents asSet)
]
