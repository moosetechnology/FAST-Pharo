Extension { #name : #FASTVariableExpression }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableExpression >> pharoBlockDefinitionVariableEntityOwner [
	"Relation named: #pharoBlockDefinitionVariableEntityOwner type: #FASTPharoBlockDefinition opposite: #localVariables"

	<generated>
	<container>
	<FMProperty: #pharoBlockDefinitionVariableEntityOwner type: #FASTPharoBlockDefinition opposite: #localVariables>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoBlockDefinitionVariableEntityOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableExpression >> pharoBlockDefinitionVariableEntityOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoBlockDefinitionVariableEntityOwner put: (FMMultivalueLink on: self update: #localVariables from: self pharoBlockDefinitionVariableEntityOwner to: anObject).
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableExpression >> pharoMethodVariableEntityOwner [
	"Relation named: #pharoMethodVariableEntityOwner type: #FASTPharoMethodEntity opposite: #localVariables"

	<generated>
	<container>
	<FMProperty: #pharoMethodVariableEntityOwner type: #FASTPharoMethodEntity opposite: #localVariables>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoMethodVariableEntityOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableExpression >> pharoMethodVariableEntityOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoMethodVariableEntityOwner put: (FMMultivalueLink on: self update: #localVariables from: self pharoMethodVariableEntityOwner to: anObject).
]
