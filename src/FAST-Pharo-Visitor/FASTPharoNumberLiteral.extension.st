Extension { #name : #FASTPharoNumberLiteral }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoNumberLiteral >> accept: aVisitor [
	^ aVisitor visitPharoNumberLiteral: self
]
