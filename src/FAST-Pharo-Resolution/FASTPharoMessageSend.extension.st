Extension { #name : #FASTPharoMessageSend }

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoMessageSend >> matches: anEntity [
	"here receiver is considered as the symbol of the method called"
	^ anEntity isKindOf: FAMIXBehaviouralEntity
]

{ #category : #'*FAST-Pharo-Resolution' }
FASTPharoMessageSend >> resolveAllSymbols [
	self arguments do: [:s | s resolveAllSymbols ].
	self resolve: concreteReceiver.
	self resolve: self
]
