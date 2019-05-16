"
An array literal: #(...)
"
Class {
	#name : #FASTPharoArrayLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoArrayLiteral class >> annotation [
	<MSEClass: #PharoArrayLiteral super: #FASTLiteral>
	<package: #FAST>
]

{ #category : #visiting }
FASTPharoArrayLiteral >> accept: aVisitor [
	aVisitor visitArrayLiteralNode: self
]

{ #category : #accessing }
FASTPharoArrayLiteral >> contents [
	^ self childrenExpressions
]

{ #category : #accessing }
FASTPharoArrayLiteral >> contents: newElements [
	self childrenExpressions: newElements
]

{ #category : #accessing }
FASTPharoArrayLiteral >> value [
	^ (self childrenExpressions inject: '#(' into: [ :acc :each | acc , ' ' , each value ]) , ' )'
]

{ #category : #accessing }
FASTPharoArrayLiteral >> value: aLiteral [
	self childrenExpressions: aLiteral
]
