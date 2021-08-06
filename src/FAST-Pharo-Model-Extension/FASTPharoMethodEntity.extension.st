Extension { #name : #FASTPharoMethodEntity }

{ #category : #'*FAST-Pharo-Model-Extension' }
FASTPharoMethodEntity >> sourceText [

	^ self source ifNil: [ self parentNode ifNil: [ '' ] ifNotNil: [ :existingParentNode | existingParentNode sourceText ] ]
]
