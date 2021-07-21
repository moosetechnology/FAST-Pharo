Class {
	#name : #FASTPharoByteArrayLiteral,
	#superclass : #FASTPharoExpression,
	#traits : 'FASTTLiteral',
	#classTraits : 'FASTTLiteral classTrait',
	#instVars : [
		'#contents => FMMany type: #FASTPharoExpression opposite: #pharoByteArrayLiteralExpressionExpressionOwner'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoByteArrayLiteral class >> annotation [

	<FMClass: #ByteArrayLiteral super: #FASTPharoExpression>
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
	"Relation named: #contents type: #FASTPharoExpression opposite: #pharoByteArrayLiteralExpressionExpressionOwner"

	<generated>
	<FMComment: 'The expression in the array'>
	<derived>
	^ contents
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> contents: anObject [

	<generated>
	contents value: anObject
]

{ #category : #navigation }
FASTPharoByteArrayLiteral >> contentsGroup [
	<generated>
	<navigation: 'Contents'>
	^ MooseSpecializedGroup withAll: self contents asSet
]
