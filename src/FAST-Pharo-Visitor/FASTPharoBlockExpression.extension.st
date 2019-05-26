Extension { #name : #FASTPharoBlockExpression }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoBlockExpression >> accept: aVisitor [
	aVisitor visitPharoBlockExpression: self
]
