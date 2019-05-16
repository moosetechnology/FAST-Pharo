Extension { #name : #FAMIXSmalltalkSourceLanguage }

{ #category : #'*FAST-Pharo-Model' }
FAMIXSmalltalkSourceLanguage >> fastCollectingVisitor [
Halt now.
self flag: 'to remove'.
	^ FASTPharoCollectorVisitor
]
