Extension { #name : #FASTVariableEntity }

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableEntity >> pharoParentAssignmentExpression [
	"Relation named: #pharoParentAssignmentExpression type: #FASTPharoAssignmentExpression opposite: #variable"

	<generated>
	<container>
	<derived>
	<FMProperty: #pharoParentAssignmentExpression type: #FASTPharoAssignmentExpression opposite: #variable>
	<package: #'FAST-Pharo-Model'>
	^ self privateState attributeAt: #pharoParentAssignmentExpression ifAbsent: [ nil ]
]

{ #category : #'*FAST-Pharo-Model-accessing' }
FASTVariableEntity >> pharoParentAssignmentExpression: anObject [

	<generated>
	(self privateState attributeAt: #pharoParentAssignmentExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self pharoParentAssignmentExpression.
		self privateState attributeAt: #pharoParentAssignmentExpression put: anObject.
		otherSide variable: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #pharoParentAssignmentExpression put: anObject.
		anObject variable: self ]
]
