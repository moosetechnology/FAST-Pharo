Extension { #name : #FASTVariableEntity }

{ #category : #'*FAST-Pharo-Model' }
FASTVariableEntity >> parentAssignmentExpression [
	<MSEProperty: #parentAssignmentExpression type: #FASTPharoAssignmentExpression opposite: #variable>
	<MSEComment: 'Assignement in which this variable is lhs'>
	^ self propertyNamed: #parentAssignmentExpression
]

{ #category : #'*FAST-Pharo-Model' }
FASTVariableEntity >> parentAssignmentExpression: aFastExpression [
	self propertyNamed: #parentAssignmentExpression put: aFastExpression
]
