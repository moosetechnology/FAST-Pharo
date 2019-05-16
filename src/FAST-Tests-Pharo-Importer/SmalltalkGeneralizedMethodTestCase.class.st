Class {
	#name : #SmalltalkGeneralizedMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkGeneralizedMethodTestCase >> testInvocationAndMessageSendNamings [
	allMethods do:[:method |
		method parentNode outgoingInvocations do: [:invocation |
			self assert: (invocation signature beginsWith: invocation messageSend selector name , '(')]]
]

{ #category : #tests }
SmalltalkGeneralizedMethodTestCase >> testMethodImport [
	allMethods do: [ :method | self assert: method notNil ]
]

{ #category : #tests }
SmalltalkGeneralizedMethodTestCase >> testMethodType [
	allMethods do: [ :method | self assert: (method isKindOf: FASTPharoMethodEntity) ]
]

{ #category : #tests }
SmalltalkGeneralizedMethodTestCase >> testStatementsMethodReference [
	allMethods do: [ :method |
		self assert: (method statements allSatisfy: [ :statement | statement parentNode == method body ]) ] 
]
