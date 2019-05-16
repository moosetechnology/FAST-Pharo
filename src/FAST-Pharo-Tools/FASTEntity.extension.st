Extension { #name : #FASTEntity }

{ #category : #'*FAST-Pharo-Tools' }
FASTEntity >> print [
	^ FASTPharoPrintingVisitor print: self
]
