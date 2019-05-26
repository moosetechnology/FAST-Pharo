Extension { #name : #FASTPharoMessageSend }

{ #category : #'*FAST-Pharo-Model-Extension' }
FASTPharoMessageSend >> isBinary [
	<MSEProperty: #isBinary type: #Boolean>
	<derived>
	<MSEComment: 'True if message is binary'>
	
	^self kind = #binary
]

{ #category : #'*FAST-Pharo-Model-Extension' }
FASTPharoMessageSend >> isCascaded [
	<MSEProperty: #isCascaded type: #Boolean>
	<derived>
	<MSEComment: 'Shows if message is in cascade'>
	^ inCascade notNil
]

{ #category : #'*FAST-Pharo-Model-Extension' }
FASTPharoMessageSend >> isKeyword [
	<MSEProperty: #isKeyword type: #Boolean>
	<derived>
	<MSEComment: 'True if message is a keyword message'>
	
	^self kind = #keyword
]

{ #category : #'*FAST-Pharo-Model-Extension' }
FASTPharoMessageSend >> isUnary [
	<MSEProperty: #isUnary type: #Boolean>
	<derived>
	<MSEComment: 'True if message is unary'>
	
	^self kind = #unary

]
