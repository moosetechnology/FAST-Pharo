Class {
	#name : #FASTPharoVariableExpression,
	#superclass : #FASTPharoExpression,
	#traits : 'FASTTVariableExpression',
	#classTraits : 'FASTTVariableExpression classTrait',
	#instVars : [
		'#pharoBlockDefinitionVariableEntityOwner => FMOne type: #FASTPharoBlockDefinition opposite: #localVariables',
		'#pharoMethodVariableEntityOwner => FMOne type: #FASTPharoMethodEntity opposite: #localVariables'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoVariableExpression class >> annotation [

	<FMClass: #VariableExpression super: #FASTPharoExpression>
	<package: #'FAST-Pharo-Model'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPharoVariableExpression >> pharoBlockDefinitionVariableEntityOwner [
	"Relation named: #pharoBlockDefinitionVariableEntityOwner type: #FASTPharoBlockDefinition opposite: #localVariables"

	<generated>
	<container>
	^ pharoBlockDefinitionVariableEntityOwner
]

{ #category : #accessing }
FASTPharoVariableExpression >> pharoBlockDefinitionVariableEntityOwner: anObject [

	<generated>
	pharoBlockDefinitionVariableEntityOwner := anObject
]

{ #category : #navigation }
FASTPharoVariableExpression >> pharoBlockDefinitionVariableEntityOwnerGroup [
	<generated>
	<navigation: 'PharoBlockDefinitionVariableEntityOwner'>
	^ MooseSpecializedGroup with: self pharoBlockDefinitionVariableEntityOwner
]

{ #category : #accessing }
FASTPharoVariableExpression >> pharoMethodVariableEntityOwner [
	"Relation named: #pharoMethodVariableEntityOwner type: #FASTPharoMethodEntity opposite: #localVariables"

	<generated>
	<container>
	^ pharoMethodVariableEntityOwner
]

{ #category : #accessing }
FASTPharoVariableExpression >> pharoMethodVariableEntityOwner: anObject [

	<generated>
	pharoMethodVariableEntityOwner := anObject
]

{ #category : #navigation }
FASTPharoVariableExpression >> pharoMethodVariableEntityOwnerGroup [
	<generated>
	<navigation: 'PharoMethodVariableEntityOwner'>
	^ MooseSpecializedGroup with: self pharoMethodVariableEntityOwner
]
