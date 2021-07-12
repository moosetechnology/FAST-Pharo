Class {
	#name : #FASTPharoMethodEntity,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTNamedBehaviouralEntity + FamixTHasImmediateSource',
	#classTraits : 'FASTTNamedBehaviouralEntity classTrait + FamixTHasImmediateSource classTrait',
	#instVars : [
		'#localVariables => FMMany type: #FASTPharoVariableExpression opposite: #pharoMethodVariableEntityOwner',
		'#statements => FMMany type: #FASTPharoStatement opposite: #pharoMethodStatementOwner'
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
FASTPharoMethodEntity >> addStatement: anObject [
	<generated>
	^ self statements add: anObject
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
	"Relation named: #statements type: #FASTPharoStatement opposite: #pharoMethodStatementOwner"

	<generated>
	<FMComment: 'The statements of the method'>
	<derived>
	^ statements
]

{ #category : #accessing }
FASTPharoMethodEntity >> statements: anObject [

	<generated>
	statements value: anObject
]

{ #category : #navigation }
FASTPharoMethodEntity >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
