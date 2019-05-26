"
@FLAG: May be could be removed???
A FASTMethodEntity represents a method
It is useful to create the scope of the method and its parent scope (scope of the class) correctly, on the fly
"
Class {
	#name : #FASTPharoMethodEntity,
	#superclass : #FASTNamedBehaviouralEntity,
	#category : #'FAST-Pharo-Model'
}

{ #category : #'as yet unclassified' }
FASTPharoMethodEntity class >> annotation [
	<MSEClass: #PharoMethodEntity super: #FASTNamedBehaviouralEntity>
	<package: #FAST>
]

{ #category : #accessing }
FASTPharoMethodEntity >> addChildExpression: anExpression [
	| stmt |
	"in Smalltalk, there is little difference between a statement and an expression (see also FASTPharoExpression)"
	stmt := FASTExpressionStatement new
									expression: anExpression ;
									yourself.
	anExpression parentStatement: stmt.
	self mooseModel add: stmt.
	self addStatement: stmt.


]

{ #category : #printing }
FASTPharoMethodEntity >> mooseNameOn: aStream [
	self famixNamedEntity
		ifNil: [ aStream nextPutAll: name ]
		ifNotNil: [ :fmx | fmx mooseNameOn: aStream ]
]

{ #category : #accessing }
FASTPharoMethodEntity >> parentScopableEntity [
	^ nil
]
