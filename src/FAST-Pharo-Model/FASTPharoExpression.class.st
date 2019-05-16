"
Introduced to implement resolvingAuthority in a unified way for all PharoExpressions

Also introduce FASTStatement behavior as there is little difference between statements and expressions in Pharo (message send is an expression, assignement is an expression, ...)
"
Class {
	#name : #FASTPharoExpression,
	#superclass : #FASTExpression,
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoExpression class >> annotation [
	<MSEClass: #PharoExpression super: #FASTExpression>
	<package: #FAST>
]

{ #category : #accessing }
FASTPharoExpression >> statementContainer [
	^ self parentStatement
]

{ #category : #accessing }
FASTPharoExpression >> statementContainer: aContainer [
	self parentStatement: aContainer
]
