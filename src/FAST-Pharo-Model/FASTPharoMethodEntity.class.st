Class {
	#name : #FASTPharoMethodEntity,
	#superclass : #FASTNamedBehaviouralEntity,
	#traits : 'FamixTWithImmediateSource',
	#classTraits : 'FamixTWithImmediateSource classTrait',
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoMethodEntity class >> annotation [

	<MSEClass: #MethodEntity super: #FASTNamedBehaviouralEntity>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #generator }
FASTPharoMethodEntity class >> generatedSlotNames [
	<generated>
	'FASTPharoMethodEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FASTPharoMethodEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithImmediateSource)
]

{ #category : #meta }
FASTPharoMethodEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FASTPharoMethodEntity >> addLocalVariables: anObject [
			
	<generated>
	^ self localVariables add: anObject
]

{ #category : #adding }
FASTPharoMethodEntity >> addStatements: anObject [
			
	<generated>
	^ self statements add: anObject
]

{ #category : #accessing }
FASTPharoMethodEntity >> localVariables [

	<generated>
	<MSEComment: 'The local variables of the method'>
	<MSEProperty: #localVariables type: #Object>
	^ self privateState attributeAt: #localVariables ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoMethodVariableEntityOwner: ]
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
	^ MooseGroup
			withAll: (self localVariables asSet)
]

{ #category : #accessing }
FASTPharoMethodEntity >> statements [

	<generated>
	<MSEComment: 'The statements of the method'>
	<MSEProperty: #statements type: #Object>
	^ self privateState attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #pharoMethodStatementOwner: ]
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
	^ MooseGroup
			withAll: (self statements asSet)
]
