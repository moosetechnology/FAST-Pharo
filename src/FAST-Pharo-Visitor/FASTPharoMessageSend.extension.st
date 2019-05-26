Extension { #name : #FASTPharoMessageSend }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoMessageSend >> accept: aVisitor [
	aVisitor visitPharoMessageSend: self
]
