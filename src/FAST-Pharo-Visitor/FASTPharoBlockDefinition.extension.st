Extension { #name : #FASTPharoBlockDefinition }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoBlockDefinition >> accept: aVisitor [
	^ aVisitor visitPharoBlockDefinition: self
]
