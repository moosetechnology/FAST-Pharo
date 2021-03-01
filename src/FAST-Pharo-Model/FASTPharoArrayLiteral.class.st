Class {
	#name : #FASTPharoArrayLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoArrayLiteral class >> annotation [

	<FMClass: #ArrayLiteral super: #FASTLiteral>
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
	"Relation named: #contents type: #FASTExpression opposite: #pharoArrayLiteralExpressionExpressionOwner"

	<generated>
	<FMComment: 'The expression in the array'>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #pharoArrayLiteralExpressionExpressionOwner>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoArrayLiteralExpressionExpressionOwner: ]
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
	^ MooseSpecializedGroup withAll: self contents asSet
]
