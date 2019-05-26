Extension { #name : #FASTPharoSelector }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoSelector >> accept: aVisitor [
	^ aVisitor visitPharoSelector: self
]
