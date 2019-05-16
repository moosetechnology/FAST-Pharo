"
A byte array literal: #[...]
"
Class {
	#name : #FASTPharoByteArrayLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoByteArrayLiteral class >> annotation [
	<MSEClass: #PharoByteArrayLiteral super: #FASTLiteral>
	<package: #FAST>
]

{ #category : #visiting }
FASTPharoByteArrayLiteral >> accept: aVisitor [
	aVisitor visitArrayLiteralNode: self
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> contents [
	^ self childrenExpressions
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> contents: newElements [
	self childrenExpressions: newElements
]

{ #category : #accessing }
FASTPharoByteArrayLiteral >> value [
	^ (self contents inject: '#[' into: [ :acc :each | acc , ' ' , each value ]) , ' ]'
]
