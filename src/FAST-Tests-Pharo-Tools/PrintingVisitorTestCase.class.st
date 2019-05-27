Class {
	#name : #PrintingVisitorTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Tools'
}

{ #category : #tests }
PrintingVisitorTestCase >> printMethod: aMethod [
	^ aMethod print withSeparatorsCompacted
]

{ #category : #tests }
PrintingVisitorTestCase >> printSourceText: aMethod [
	^ aMethod sourceText
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendCascadeMethod [
	self assert: (self printMethod: cascadeMethod) equals: (self printSourceText: cascadeMethod)
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendLiteralMethod [
	self assert: (self printMethod: literalMethod) equals: (self printSourceText: literalMethod)
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendMessageMethod [
	self assert: (self printMethod: sendMessageMethod) equals: (self printSourceText: sendMessageMethod)
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendMiddleMethod [
	self assert: (self printMethod: middleMethod) equals: (self printSourceText: middleMethod)
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendNestMethod [
	self assert: (self printMethod: nestMethod) equals: (self printSourceText: nestMethod)

]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendReturnMethod [
	self assert: (self printMethod: returnMethod) equals: (self printSourceText: returnMethod)
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendScopeMethod [
	self assert: (self printMethod: scopeMethod) equals: (self printSourceText: scopeMethod) 
]

{ #category : #tests }
PrintingVisitorTestCase >> testPrintingSendSpaceshipMethod [
	self assert: (self printMethod: spaceshipMethod) equals: '<=> other self = other ifTrue: [ ^ 0 ] ifFalse: [ ^ 1 ]'  

]
