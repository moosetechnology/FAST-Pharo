Extension { #name : #FASTPharoCascade }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoCascade >> accept: aVisitor [
	aVisitor visitPharoCascade: self
]
