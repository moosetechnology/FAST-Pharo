Extension { #name : #FASTPharoSelector }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoSelector >> accept: aVisitor [
	^ aVisitor acceptPharoSelectorNode: self
]
