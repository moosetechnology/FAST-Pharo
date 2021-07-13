Class {
	#name : #FASTPharoBlockDefinition,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTBehaviouralEntity',
	#classTraits : 'FASTTBehaviouralEntity classTrait',
	#instVars : [
		'#blockExpression => FMOne type: #FASTPharoBlockExpression opposite: #block',
		'#localVariables => FMMany type: #FASTPharoVariableExpression opposite: #pharoBlockDefinitionVariableEntityOwner'
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
