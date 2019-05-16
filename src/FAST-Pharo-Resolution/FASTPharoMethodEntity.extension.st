Extension { #name : #FASTPharoMethodEntity }

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoMethodEntity >> resolvingAuthority [
	^ FASTPublicAccessChecker new
]
