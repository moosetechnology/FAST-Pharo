Extension { #name : #FASTPharoCascade }

{ #category : #'*FAST-Pharo-Model-Extension' }
FASTPharoCascade >> receiver [
	^ self messages anyOne receiver
]
