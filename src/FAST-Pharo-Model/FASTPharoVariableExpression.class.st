Class {
	#name : #FASTPharoVariableExpression,
	#superclass : #FASTPharoEntity,
	#traits : 'FASTTVariableExpression',
	#classTraits : 'FASTTVariableExpression classTrait',
	#instVars : [
		'#pharoParentAssignmentExpression => FMOne type: #FASTPharoAssignmentExpression opposite: #variable',
		'#pharoMethodVariableEntityOwner => FMOne type: #FASTPharoMethodEntity opposite: #localVariables',
		'#pharoBlockDefinitionVariableEntityOwner => FMOne type: #FASTPharoBlockDefinition opposite: #localVariables'
	],
	#category : #'FAST-Pharo-Model-Entities'
}

{ #category : #meta }
FASTPharoVariableExpression class >> annotation [

	<FMClass: #VariableExpression super: #FASTPharoEntity>
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

{ #category : #accessing }
FASTPharoVariableExpression >> pharoParentAssignmentExpression [
	"Relation named: #pharoParentAssignmentExpression type: #FASTPharoAssignmentExpression opposite: #variable"

	<generated>
	<container>
	<derived>
	^ pharoParentAssignmentExpression
]

{ #category : #accessing }
FASTPharoVariableExpression >> pharoParentAssignmentExpression: anObject [

	<generated>
	pharoParentAssignmentExpression := anObject
]

{ #category : #navigation }
FASTPharoVariableExpression >> pharoParentAssignmentExpressionGroup [
	<generated>
	<navigation: 'PharoParentAssignmentExpression'>
	^ MooseSpecializedGroup with: self pharoParentAssignmentExpression
]
