Class {
	#name : #FASTPharoBlockDefinition,
	#superclass : #FASTBehaviouralEntity,
	#instVars : [
		'#blockExpression => FMOne type: #FASTPharoBlockExpression opposite: #block'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoBlockDefinition class >> annotation [

	<FMClass: #BlockDefinition super: #FASTBehaviouralEntity>
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
	"Relation named: #localVariables type: #FASTVariableExpression opposite: #pharoBlockDefinitionVariableEntityOwner"

	<generated>
	<FMComment: 'The local variables of the block'>
	<derived>
	<FMProperty: #localVariables type: #FASTVariableExpression opposite: #pharoBlockDefinitionVariableEntityOwner>
	^ self attributeAt: #localVariables ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoBlockDefinitionVariableEntityOwner: ]
]

{ #category : #accessing }
FASTPharoBlockDefinition >> localVariables: anObject [

	<generated>
	self localVariables value: anObject
]

{ #category : #navigation }
FASTPharoBlockDefinition >> localVariablesGroup [
	<generated>
	<navigation: 'LocalVariables'>
	^ MooseSpecializedGroup withAll: self localVariables asSet
]

{ #category : #accessing }
FASTPharoBlockDefinition >> statements [
	"Relation named: #statements type: #FASTStatement opposite: #pharoBlockStatementOwner"

	<generated>
	<FMComment: 'The statements of the method'>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #pharoBlockStatementOwner>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoBlockStatementOwner: ]
]

{ #category : #accessing }
FASTPharoBlockDefinition >> statements: anObject [

	<generated>
	self statements value: anObject
]

{ #category : #navigation }
FASTPharoBlockDefinition >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
