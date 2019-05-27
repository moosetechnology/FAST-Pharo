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

	<MSEClass: #BlockExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoBlockExpression class >> generatedSlotNames [
	<generated>
	'FASTPharoBlockExpression class>>#generatedSlotNames'.
	^ #(block)
]

{ #category : #generator }
FASTPharoBlockExpression class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoBlockExpression class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FASTPharoBlockExpression >> block [

	<generated>
	<MSEComment: 'Behavioural entity that represents the block'>
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
	^ MooseGroup
			with: (self block)
]
