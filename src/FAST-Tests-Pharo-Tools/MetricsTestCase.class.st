Class {
	#name : #MetricsTestCase,
	#superclass : #SmalltalkImporterTestCase,
	#category : #'FAST-Tests-Pharo-Tools'
}

{ #category : #running }
MetricsTestCase >> modelClasses [
	^ {FastTesting.
	Object} asOrderedCollection
]

{ #category : #tests }
MetricsTestCase >> testCyclomaticComplexity [
	self assert: spaceshipMethod   cyclomaticComplexity equals: 2.
	self assert: scopeMethod       cyclomaticComplexity equals: 1.
	self assert: nestMethod        cyclomaticComplexity equals: 6.
	self assert: sendMessageMethod cyclomaticComplexity equals: 1.
	self assert: returnMethod      cyclomaticComplexity equals: 1.
	self assert: literalMethod     cyclomaticComplexity equals: 1.
	self assert: middleMethod      cyclomaticComplexity equals: 1
]

{ #category : #tests }
MetricsTestCase >> testStatementsCount [
	self assert: spaceshipMethod   statementsCount equals: 1.
	self assert: scopeMethod       statementsCount equals: 4.
	self assert: nestMethod        statementsCount equals: 1. 
	self assert: sendMessageMethod statementsCount equals: 1.
	self assert: returnMethod      statementsCount equals: 1.
	self assert: literalMethod     statementsCount equals: 9.
	self assert: middleMethod      statementsCount equals: 2
]
