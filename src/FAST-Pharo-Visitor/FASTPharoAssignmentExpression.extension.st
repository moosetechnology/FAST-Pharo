Extension { #name : #FASTPharoAssignmentExpression }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoAssignmentExpression >> accept: aVisitor [
	^ aVisitor visitPharoAssignmentExpression: self
]
