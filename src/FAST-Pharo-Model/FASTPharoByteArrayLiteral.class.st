Class {
	#name : #FASTPharoByteArrayLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoByteArrayLiteral class >> annotation [

	<FMClass: #ByteArrayLiteral super: #FASTLiteral>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoByteArrayLiteral >> addContent: anObject [
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> contents [
	"Relation named: #contents type: #FASTExpression opposite: #pharoByteArrayLiteralExpressionExpressionOwner"

	<generated>
	<FMComment: 'The expression in the array'>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #pharoByteArrayLiteralExpressionExpressionOwner>
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
	^ MooseGroup withAll: self contents asSet
]
