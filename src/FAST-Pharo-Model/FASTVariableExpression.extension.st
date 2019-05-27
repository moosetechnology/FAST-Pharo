Extension { #name : #FASTVariableExpression }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableExpression >> pharoBlockDefinitionVariableEntityOwner [

	<generated>
	<container>

	<MSEProperty: #pharoBlockDefinitionVariableEntityOwner type: #Object>
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

	<generated>
	<container>

	<MSEProperty: #pharoMethodVariableEntityOwner type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoMethodVariableEntityOwner ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableExpression >> pharoMethodVariableEntityOwner: anObject [

	<generated>
	self privateState attributeAt: #pharoMethodVariableEntityOwner put: (FMMultivalueLink on: self update: #localVariables from: self pharoMethodVariableEntityOwner to: anObject).
]
