Class {
	#name : #SmalltalkGeneralizedMethodTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Pharo-Importer-Tests'
}

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
		self assert: (method statements allSatisfy: [ :statement | statement parentNode == method ]) ] 
]
