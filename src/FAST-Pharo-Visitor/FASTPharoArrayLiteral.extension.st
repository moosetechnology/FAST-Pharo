Extension { #name : #FASTPharoArrayLiteral }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoArrayLiteral >> accept: aVisitor [
	aVisitor visitArrayLiteral: self
]
