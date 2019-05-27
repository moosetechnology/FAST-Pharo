Extension { #name : #FASTPharoMethodEntity }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoMethodEntity >> accept: aVisitor [
	^ aVisitor visitPharoMethodEntity: self
]
