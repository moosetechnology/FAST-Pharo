Class {
	#name : #FASTPharoBlockDefinition,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTBehaviouralEntity',
	#classTraits : 'FASTTBehaviouralEntity classTrait',
	#instVars : [
		'#blockExpression => FMOne type: #FASTPharoBlockExpression opposite: #block',
		'#localVariables => FMMany type: #FASTPharoVariableExpression opposite: #pharoBlockDefinitionVariableEntityOwner',
		'#statements => FMMany type: #FASTPharoStatement opposite: #pharoBlockStatementOwner'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoBlockDefinition class >> annotation [

	<FMClass: #BlockDefinition super: #FASTPharoEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #adding }
FASTPharoBlockDefinition >> addLocalVariable: anObject [
	<generated>
	^ self localVariables add: anObject
]

{ #category : #adding }
FASTPharoBlockDefinition >> addStatement: anObject [
	<generated>
	^ self statements add: anObject
]

{ #category : #accessing }
FASTPharoBlockDefinition >> blockExpression [
	"Relation named: #blockExpression type: #FASTPharoBlockExpression opposite: #block"

	<generated>
	<FMComment: 'Expression entity that represents the block'>
	<container>
	<derived>
	^ blockExpression
]

{ #category : #accessing }
FASTPharoBlockDefinition >> blockExpression: anObject [

	<generated>
	blockExpression := anObject
]

{ #category : #navigation }
FASTPharoBlockDefinition >> blockExpressionGroup [
	<generated>
	<navigation: 'BlockExpression'>
	^ MooseSpecializedGroup with: self blockExpression
]

{ #category : #accessing }
FASTPharoBlockDefinition >> localVariables [
	"Relation named: #localVariables type: #FASTPharoVariableExpression opposite: #pharoBlockDefinitionVariableEntityOwner"

	<generated>
	<FMComment: 'The local variables of the block'>
	<derived>
	^ localVariables
]

{ #category : #accessing }
FASTPharoBlockDefinition >> localVariables: anObject [

	<generated>
	localVariables value: anObject
]

{ #category : #navigation }
FASTPharoBlockDefinition >> localVariablesGroup [
	<generated>
	<navigation: 'LocalVariables'>
	^ MooseSpecializedGroup withAll: self localVariables asSet
]

{ #category : #accessing }
FASTPharoBlockDefinition >> statements [
	"Relation named: #statements type: #FASTPharoStatement opposite: #pharoBlockStatementOwner"

	<generated>
	<FMComment: 'The statements of the method'>
	<derived>
	^ statements
]

{ #category : #accessing }
FASTPharoBlockDefinition >> statements: anObject [

	<generated>
	statements value: anObject
]

{ #category : #navigation }
FASTPharoBlockDefinition >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
