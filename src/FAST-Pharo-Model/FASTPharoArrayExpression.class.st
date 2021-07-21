Class {
	#name : #FASTPharoArrayExpression,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'#contents => FMMany type: #FASTPharoExpression opposite: #pharoArrayExpressionExpressionOwner'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoArrayExpression class >> annotation [

	<FMClass: #ArrayExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoArrayExpression >> addContent: anObject [
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPharoArrayExpression >> contents [
	"Relation named: #contents type: #FASTPharoExpression opposite: #pharoArrayExpressionExpressionOwner"

	<generated>
	<FMComment: 'The expression in the array'>
	<derived>
	^ contents
]

{ #category : #accessing }
FASTPharoArrayExpression >> contents: anObject [

	<generated>
	contents value: anObject
]

{ #category : #navigation }
FASTPharoArrayExpression >> contentsGroup [
	<generated>
	<navigation: 'Contents'>
	^ MooseSpecializedGroup withAll: self contents asSet
]
