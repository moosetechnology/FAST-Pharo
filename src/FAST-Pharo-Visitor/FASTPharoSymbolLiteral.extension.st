Extension { #name : #FASTPharoSymbolLiteral }

{ #category : #'*FAST-Pharo-Visitor' }
FASTPharoSymbolLiteral >> accept: aVisitor [
	^ aVisitor visitPharoSymbolLiteral: self
]
