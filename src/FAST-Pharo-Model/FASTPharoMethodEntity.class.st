Class {
	#name : #FASTPharoMethodEntity,
	#superclass : #FASTNamedBehaviouralEntity,
	#traits : 'FamixTHasImmediateSource',
	#classTraits : 'FamixTHasImmediateSource classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoMethodEntity class >> annotation [

	<FMClass: #MethodEntity super: #FASTNamedBehaviouralEntity>
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
	"Relation named: #localVariables type: #FASTVariableExpression opposite: #pharoMethodVariableEntityOwner"

	<generated>
	<FMComment: 'The local variables of the method'>
	<derived>
	<FMProperty: #localVariables type: #FASTVariableExpression opposite: #pharoMethodVariableEntityOwner>
	^ self attributeAt: #localVariables ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoMethodVariableEntityOwner: ]
]

{ #category : #accessing }
FASTPharoMethodEntity >> localVariables: anObject [

	<generated>
	self localVariables value: anObject
]

{ #category : #navigation }
FASTPharoMethodEntity >> localVariablesGroup [
	<generated>
	<navigation: 'LocalVariables'>
	^ MooseSpecializedGroup withAll: self localVariables asSet
]

{ #category : #accessing }
FASTPharoMethodEntity >> statements [
	"Relation named: #statements type: #FASTStatement opposite: #pharoMethodStatementOwner"

	<generated>
	<FMComment: 'The statements of the method'>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #pharoMethodStatementOwner>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoMethodStatementOwner: ]
]

{ #category : #accessing }
FASTPharoMethodEntity >> statements: anObject [

	<generated>
	self statements value: anObject
]

{ #category : #navigation }
FASTPharoMethodEntity >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
