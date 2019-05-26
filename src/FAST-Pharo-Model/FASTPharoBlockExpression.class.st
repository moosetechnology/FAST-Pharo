"
A block expression, this is a wrapper around  PharoBlockDefinition which is the  ""real"" block.
Note that this one in turn contains a StatementBlock (which is the one containing the statements)
"
Class {
	#name : #FASTPharoBlockExpression,
	#superclass : #FASTPharoExpression,
	#instVars : [
		'block'
	],
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoBlockExpression class >> annotation [
	<MSEClass: #PharoBlockExpression super: #FASTPharoExpression>
	<package: #FAST>
]

{ #category : #accessing }
FASTPharoBlockExpression >> block [
	<MSEProperty: #block type: #FASTPharoBlockDefinition opposite: #blockExpression>
	<MSEComment: 'Behavioural entity that represents the block'>
	^ block
]

{ #category : #accessing }
FASTPharoBlockExpression >> block: aBehaviouralEntity [
	block := aBehaviouralEntity
]

{ #category : #accessing }
FASTPharoBlockExpression >> name [
	^ 'block literal'
]

{ #category : #resolving }
FASTPharoBlockExpression >> resolveAllSymbols [
	self block resolveAllSymbols

]
