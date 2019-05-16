Extension { #name : #FASTExpression }

{ #category : #'*FAST-Pharo-Model' }
FASTExpression >> messageReceived [
	<MSEProperty: #messageReceived type: #FASTPharoMessageSend  opposite: #receiver>
	<MSEComment: 'If used as a message receiver, this is the message'>
	^ self parentExpression
]

{ #category : #'*FAST-Pharo-Model' }
FASTExpression >> messageReceived: aMessageSend [
	self parentExpression: aMessageSend
]
