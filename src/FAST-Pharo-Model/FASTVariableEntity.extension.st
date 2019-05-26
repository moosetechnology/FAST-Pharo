Extension { #name : #FASTVariableEntity }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableEntity >> pharoParentAssignmentExpression [

	<generated>
	<container>

	<MSEProperty: #pharoParentAssignmentExpression type: #Object>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoParentAssignmentExpression ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableEntity >> pharoParentAssignmentExpression: anObject [

	<generated>
	(self privateState attributeAt: #pharoParentAssignmentExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #pharoParentAssignmentExpression put: anObject.
	anObject variable: self
]
