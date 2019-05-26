Extension { #name : #FASTPharoCascade }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoCascade >> accept: aVisitor [
	aVisitor visitCascadeNode: self
]
