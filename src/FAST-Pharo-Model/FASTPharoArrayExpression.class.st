"
A representation of a dynamic array expression eg: {expr . expr. expr}
"
Class {
	#name : #FASTPharoArrayExpression,
	#superclass : #FASTPharoExpression,
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoArrayExpression class >> annotation [
	<MSEClass: #PharoArrayExpression super: #FASTPharoExpression>
	<package: #FAST>
]

{ #category : #initialization }
FASTPharoArrayExpression >> contents [
	^ self childrenExpressions
]

{ #category : #initialization }
FASTPharoArrayExpression >> contents: elements [
	self childrenExpressions: elements
]

{ #category : #resolving }
FASTPharoArrayExpression >> resolveAllSymbols [
	self childrenExpressions do: [:s | s resolveAllSymbols ]

]
