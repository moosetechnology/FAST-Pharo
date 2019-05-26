Extension { #name : #FASTPharoExpression }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoExpression >> accept: aVisitor [
	^ aVisitor visitPharoExpression: self
]
