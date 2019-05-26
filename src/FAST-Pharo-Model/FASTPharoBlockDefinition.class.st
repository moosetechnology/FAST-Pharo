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

	<MSEClass: #BlockDefinition super: #FASTBehaviouralEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoBlockDefinition class >> generatedSlotNames [
	<generated>
	'FASTPharoBlockDefinition class>>#generatedSlotNames'.
	^ #(blockExpression)
]

{ #category : #generator }
FASTPharoBlockDefinition class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FASTPharoBlockDefinition class >> requirements [

	<generated>
	^ { FASTPharoBlockExpression }
]

{ #category : #adding }
FASTPharoBlockDefinition >> addLocalVariables: anObject [
			
	<generated>
	^ self localVariables add: anObject
]

{ #category : #adding }
FASTPharoBlockDefinition >> addStatements: anObject [
			
	<generated>
	^ self statements add: anObject
]

{ #category : #accessing }
FASTPharoBlockDefinition >> blockExpression [

	<generated>
	<MSEComment: 'Expression entity that represents the block'>
	<container>

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
	^ MooseGroup
			with: (self blockExpression)
]

{ #category : #accessing }
FASTPharoBlockDefinition >> localVariables [

	<generated>
	<MSEComment: 'The local variables of the block'>
	<MSEProperty: #localVariables type: #Object>
	^ self privateState attributeAt: #localVariables ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoBlockDefinitionVariableEntityOwner: ]
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
	^ MooseGroup
			withAll: (self localVariables asSet)
]

{ #category : #accessing }
FASTPharoBlockDefinition >> statements [

	<generated>
	<MSEComment: 'The statements of the method'>
	<MSEProperty: #statements type: #Object>
	^ self privateState attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoBlockStatementOwner: ]
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
	^ MooseGroup
			withAll: (self statements asSet)
]
