Class {
	#name : #FASTPharoArrayLiteral,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTLiteral',
	#classTraits : 'FASTTLiteral classTrait',
	#instVars : [
		'#contents => FMMany type: #FASTPharoExpression opposite: #pharoArrayLiteralExpressionExpressionOwner'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoArrayLiteral class >> annotation [

	<FMClass: #ArrayLiteral super: #FASTPharoEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoArrayLiteral >> addContent: anObject [
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPharoArrayLiteral >> contents [
	"Relation named: #contents type: #FASTPharoExpression opposite: #pharoArrayLiteralExpressionExpressionOwner"

	<generated>
	<FMComment: 'The expression in the array'>
	<derived>
	^ contents
]

{ #category : #accessing }
FASTPharoArrayLiteral >> contents: anObject [

	<generated>
	contents value: anObject
]

{ #category : #navigation }
FASTPharoArrayLiteral >> contentsGroup [
	<generated>
	<navigation: 'Contents'>
	^ MooseSpecializedGroup withAll: self contents asSet
]
