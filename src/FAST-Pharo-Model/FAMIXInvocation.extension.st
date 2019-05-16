Extension { #name : #FAMIXInvocation }

{ #category : #'*FAST-Pharo-Model' }
FAMIXInvocation >> messageSend [
	<MSEProperty: #messageSend type: #FASTPharoMessageSend opposite: #invocation>
	<MSEComment: 'Corresponding message send FAST entity'>
	^ self privateState cacheAt: #fastMessageSend ifAbsent: nil
]

{ #category : #'*FAST-Pharo-Model' }
FAMIXInvocation >> messageSend: aMessageSend [
	self privateState cacheAt: #fastMessageSend put: aMessageSend
]
