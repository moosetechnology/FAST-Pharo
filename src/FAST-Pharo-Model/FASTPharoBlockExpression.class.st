Class {
	#name : #FASTPharoBlockExpression,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'#block => FMOne type: #FASTPharoBlockDefinition opposite: #blockExpression'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoBlockExpression class >> annotation [

	<FMClass: #BlockExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPharoBlockExpression >> block [
	"Relation named: #block type: #FASTPharoBlockDefinition opposite: #blockExpression"

	<generated>
	<FMComment: 'Behavioural entity that represents the block'>
	^ block
]

{ #category : #accessing }
FASTPharoBlockExpression >> block: anObject [

	<generated>
	block := anObject
]

{ #category : #navigation }
FASTPharoBlockExpression >> blockGroup [
	<generated>
	<navigation: 'Block'>
	^ MooseSpecializedGroup with: self block
]
