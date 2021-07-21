Class {
	#name : #SmalltalkSendMessageMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

{ #category : #running }
SmalltalkSendMessageMethodTestCase >> setUpMethods [
	"returnMethod      := self getFastMethodFromModelByName: 'return:'.
	literalMethod     := self getFastMethodFromModelByName: 'lotsOfLiterals'."
	sendMessageMethod := self getFastMethodFromModelByName: 'sendMessage'.
	"middleMethod      := self getFastMethodFromModelByName: 'middleOf:and:'.
	spaceshipMethod   := self getFastMethodFromModelByName: '<=>'.
	cascadeMethod     := self getFastMethodFromModelByName: 'cascade'.
	scopeMethod       := self getFastMethodFromModelByName: 'scope'.
	nestMethod        := self getFastMethodFromModelByName: 'nest:in:within:with:'."
	
	"allMethods := {literalMethod . sendMessageMethod . spaceshipMethod . returnMethod . middleMethod . cascadeMethod . scopeMethod . nestMethod}"
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageParametersCount [
	self assert: sendMessageMethod statements first expression arguments first arguments isEmpty
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageParent [
	self assert: sendMessageMethod statements first expression arguments first invoked invokedIn equals: sendMessageMethod statements first expression arguments first
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageReceiverParent [
	self assert: sendMessageMethod statements first expression arguments first receiver pharoMessageReceiver equals: sendMessageMethod statements first expression arguments first 
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageReceiverType [
	self assert: (sendMessageMethod statements first expression arguments first receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageReceiverVariableName [
	self assert: sendMessageMethod statements first expression arguments first receiver name equals: 'super'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageSelectorName [
	self assert: sendMessageMethod statements first expression arguments first invoked name equals: 'asString'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testAsStringMessageSelectorParent [
	self assert: sendMessageMethod statements first expression arguments first invoked invokedIn equals: sendMessageMethod statements first expression arguments first
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
	self assert: sendMessageMethod statements first expression expressionStatementOwner equals: sendMessageMethod statements first  
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageReceiverParent [
	self assert: sendMessageMethod statements first expression receiver pharoMessageReceiver equals: sendMessageMethod statements first expression
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageReceiverType [
	self assert: (sendMessageMethod statements first expression receiver isMemberOf: FASTPharoVariableExpression)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageReceiverVariableName [
	self assert: sendMessageMethod statements first expression receiver name equals: 'self'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageSelectorName [
	self assert: sendMessageMethod statements first expression invoked name equals: 'return:'
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageSelectorParent [
	self assert: sendMessageMethod statements first expression invoked invokedIn equals: sendMessageMethod statements first expression
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testReturnMessageType [
	self assert: (sendMessageMethod statements first expression isMemberOf: FASTPharoMessageSend)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testStatementParent [
	self assert: sendMessageMethod statements first statementContainer equals: sendMessageMethod statementBlock
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testStatementType [
	self assert: (sendMessageMethod statements first isMemberOf: FASTPharoExpressionStatement)
]

{ #category : #tests }
SmalltalkSendMessageMethodTestCase >> testStatementsCount [
	self assert: sendMessageMethod statements size equals: 1
]
