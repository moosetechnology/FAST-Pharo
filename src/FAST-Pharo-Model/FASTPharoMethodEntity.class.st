Class {
	#name : #FASTPharoMethodEntity,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTNamedBehaviouralEntity + FamixTHasImmediateSource',
	#classTraits : 'FASTTNamedBehaviouralEntity classTrait + FamixTHasImmediateSource classTrait',
	#instVars : [
		'#localVariables => FMMany type: #FASTPharoVariableExpression opposite: #pharoMethodVariableEntityOwner'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoMethodEntity class >> annotation [

	<FMClass: #MethodEntity super: #FASTPharoEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoMethodEntity >> addLocalVariable: anObject [
	<generated>
	^ self localVariables add: anObject
]

{ #category : #adding }
FASTPharoMethodEntity >> addStatement: aStatement [
	^ self statements add: aStatement
]

{ #category : #accessing }
FASTPharoMethodEntity >> localVariables [
	"Relation named: #localVariables type: #FASTPharoVariableExpression opposite: #pharoMethodVariableEntityOwner"

	<generated>
	<FMComment: 'The local variables of the method'>
	<derived>
	^ localVariables
]

{ #category : #accessing }
FASTPharoMethodEntity >> localVariables: anObject [

	<generated>
	localVariables value: anObject
]

{ #category : #navigation }
FASTPharoMethodEntity >> localVariablesGroup [
	<generated>
	<navigation: 'LocalVariables'>
	^ MooseSpecializedGroup withAll: self localVariables asSet
]

{ #category : #accessing }
FASTPharoMethodEntity >> statements [
	"Syntatic sugar"

	^ statementBlock statements
]

{ #category : #accessing }
FASTPharoMethodEntity >> statements: anObject [

	self statements value: anObject
]
