Class {
	#name : #SmalltalkFastMethodTemporariesTestCase,
	#superclass : #SmalltalkFastMethodTestCase,
	#category : #'FAST-Tests-Pharo-Importer'
}

{ #category : #tests }
SmalltalkFastMethodTemporariesTestCase >> testMethodNoTemporaries [
	self assert: sendMessageMethod localVariables isEmpty.
]

{ #category : #tests }
SmalltalkFastMethodTemporariesTestCase >> testMethodWithTemporaries [
	self assert: middleMethod localVariables size equals: 1
]

{ #category : #tests }
SmalltalkFastMethodTemporariesTestCase >> testMethodWithTemporariesName [
	self assert: middleMethod localVariables first name equals: 'sum'
]

{ #category : #tests }
SmalltalkFastMethodTemporariesTestCase >> testMethodWithTemporariesParent [
	self assert: middleMethod localVariables first parentNode equals: middleMethod
]
