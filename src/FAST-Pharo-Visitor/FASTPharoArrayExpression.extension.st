Extension { #name : #FASTPharoArrayExpression }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoArrayExpression >> accept: aVisitor [
	^ aVisitor visitArrayExpressionNode: self
]
