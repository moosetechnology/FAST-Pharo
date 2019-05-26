Class {
	#name : #SmalltalkCascadeMethodSecondMessageTestCase,
	#superclass : #SmalltalkCascadeMethodTestCase,
	#instVars : [
		'message'
	],
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #running }
SmalltalkCascadeMethodSecondMessageTestCase >> setUp [
	super setUp.
	message := cascadeMethod statements first expression messages at: 2
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageIsBinary [
	self assert: message isBinary not
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageIsKeyword [
	self assert: message isKeyword
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageIsUnary [
	self assert: message isUnary not
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageKind [
	self assert: message kind == #keyword
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageParameterParent [
	self assert: message arguments first parentNode equals: message
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageParameterType [
	self assert: (message arguments first isMemberOf: FASTVariableExpression)
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageParameterVariableName [
	self assert: message arguments first name equals: 'self'
]

{ #category : #tests }
SmalltalkCascadeMethodSecondMessageTestCase >> testSecondMessageParametersCount [
	self assert: message arguments size = 1
]
