Extension { #name : #FASTPharoByteArrayLiteral }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoByteArrayLiteral >> accept: aVisitor [
	aVisitor visitArrayLiteralNode: self
]
