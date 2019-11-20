Class {
	#name : #FASTPharoArrayExpression,
	#superclass : #FASTPharoExpression,
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
	"Relation named: #contents type: #FASTExpression opposite: #pharoArrayExpressionExpressionOwner"

	<generated>
	<FMComment: 'The expression in the array'>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #pharoArrayExpressionExpressionOwner>
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
	^ MooseGroup withAll: self contents asSet
]
