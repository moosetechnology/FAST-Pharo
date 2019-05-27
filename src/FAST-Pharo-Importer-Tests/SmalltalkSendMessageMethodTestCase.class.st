Class {
	#name : #SmalltalkSendMessageMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageParametersCount [
	self assert: sendMessageMethod statements first expression arguments first arguments isEmpty
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageParent [
	self assert: sendMessageMethod statements first expression arguments first selector parentNode equals: sendMessageMethod statements first expression arguments first
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageReceiverParent [
	self assert: sendMessageMethod statements first expression arguments first receiver parentNode equals: sendMessageMethod statements first expression arguments first 
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageReceiverType [
	self assert: (sendMessageMethod statements first expression arguments first receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageReceiverVariableName [
	self assert: sendMessageMethod statements first expression arguments first receiver name equals: 'super'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageSelectorName [
	self assert: sendMessageMethod statements first expression arguments first selector name equals: 'asString'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageSelectorParent [
	self assert: sendMessageMethod statements first expression arguments first selector parentNode equals: sendMessageMethod statements first expression arguments first
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageParameterType [
	self assert: (sendMessageMethod statements first expression arguments first isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageParametersCount [
	self assert: sendMessageMethod statements first expression arguments size = 1
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageParent [
	self assert: sendMessageMethod statements first expression parentNode equals: sendMessageMethod statements first  
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageReceiverParent [
	self assert: sendMessageMethod statements first expression receiver parentNode equals: sendMessageMethod statements first expression
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageReceiverType [
	self assert: (sendMessageMethod statements first expression receiver isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageReceiverVariableName [
	self assert: sendMessageMethod statements first expression receiver name equals: 'self'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageSelectorName [
	self assert: sendMessageMethod statements first expression selector name equals: 'return:'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageSelectorParent [
	self assert: sendMessageMethod statements first expression selector parentNode equals: sendMessageMethod statements first expression
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageType [
	self assert: (sendMessageMethod statements first expression isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testStatementParent [
	self assert: sendMessageMethod statements first parentNode equals: sendMessageMethod
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testStatementType [
	self assert: (sendMessageMethod statements first isMemberOf: FASTExpressionStatement)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testStatementsCount [
	self assert: sendMessageMethod statements size equals: 1
]
